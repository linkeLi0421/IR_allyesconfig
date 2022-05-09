; ModuleID = '/llk/IR_all_yes/drivers/staging/rts5208/sd.c_pt.bc'
source_filename = "../drivers/staging/rts5208/sd.c"
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
%struct.rtsx_dev = type { ptr, i32, ptr, i32, %struct.spinlock, ptr, ptr, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.wait_queue_head, %struct.mutex, ptr, i32, i8, i8, ptr, i32, ptr }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.timing_phase_path = type { i32, i32, i32, i32 }

@REG_SD_BYTE_CNT_L = internal global { i1, [31 x i8] } zeroinitializer, align 32
@REG_SD_BYTE_CNT_H = internal global { i1, [31 x i8] } zeroinitializer, align 32
@reset_sd_card.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 3, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rts5208\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reset_sd_card\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/staging/rts5208/sd.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sd_card->sd_type = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@sd_rw.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 3, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sd_rw\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Read %d %s from 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sectors\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sector\00", [25 x i8] zeroinitializer }, align 32
@sd_rw.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.8, i8 3, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Write %d %s to 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@REG_SD_BLOCK_CNT_L = internal global { i1, [31 x i8] } zeroinitializer, align 32
@REG_SD_BLOCK_CNT_H = internal global { i1, [31 x i8] } zeroinitializer, align 32
@REG_SD_CFG1 = internal global { i1, [31 x i8] } zeroinitializer, align 32
@REG_SD_CFG2 = internal global { i1, [31 x i8] } zeroinitializer, align 32
@REG_SD_TRANSFER = internal global { i1, [31 x i8] } zeroinitializer, align 32
@sd_rw.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.9, i8 3, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SD/MMC CMD %d\0A\00", [17 x i8] zeroinitializer }, align 32
@REG_SD_CMD0 = internal global { i1, [31 x i8] } zeroinitializer, align 32
@REG_SD_CMD1 = internal global { i1, [31 x i8] } zeroinitializer, align 32
@REG_SD_CMD2 = internal global { i1, [31 x i8] } zeroinitializer, align 32
@REG_SD_CMD3 = internal global { i1, [31 x i8] } zeroinitializer, align 32
@REG_SD_CMD4 = internal global { i1, [31 x i8] } zeroinitializer, align 32
@REG_SD_STAT1 = internal global { i1, [31 x i8] } zeroinitializer, align 32
@sd_rw.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.10, i8 3, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No card exist, exit %s\0A\00", [40 x i8] zeroinitializer }, align 32
@sd_rw.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.11, i8 3, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SD CRC error, tune clock!\0A\00", [37 x i8] zeroinitializer }, align 32
@sd_rw.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.10, i8 3, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ext_sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 3, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ext_sd_send_cmd_get_rsp\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EXT SD/MMC CMD %d\0A\00", [45 x i8] zeroinitializer }, align 32
@REG_SD_CMD5 = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ext_sd_get_rsp.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 3, i8 -91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ext_sd_get_rsp\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"min_len = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@ext_sd_get_rsp.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 3, i8 -91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Response in cmd buf: 0x%x 0x%x 0x%x 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@__const.sd_pass_thru_mode.buf = private unnamed_addr constant [18 x i8] c"\00\00\00\0E\00\00\00\00SD Card\00\00\00", align 1
@sd_execute_read_data.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 3, i8 -19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sd_execute_read_data\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bus_width = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@sd_execute_write_data.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 4, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sd_execute_write_data\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Lock command fail!\0A\00", [44 x i8] zeroinitializer }, align 32
@sd_execute_write_data.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.21, i8 4, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lock_cmd_type = 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@sd_execute_write_data.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.22, i8 4, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"sd_lock_state = 0x%x, sd_card->sd_lock_status = 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@sd_get_cmd_rsp.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 4, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sd_get_cmd_rsp\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Response length: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@sd_get_cmd_rsp.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.25, i8 4, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Response: 0x%x 0x%x 0x%x 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@sd_cleanup_work.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 4, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sd_cleanup_work\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SD: stop transmission\0A\00", [41 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sd_send_cmd_get_rsp\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SD/MMC CMD %d, arg = 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SD_STAT1: 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@REG_SD_CFG3 = internal global { i1, [31 x i8] } zeroinitializer, align 32
@sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.31, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SD_CFG3: 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.32, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ptr[1]: 0x%02x\0A\00", [16 x i8] zeroinitializer }, align 32
@sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.33, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ptr[2]: 0x%02x\0A\00", [16 x i8] zeroinitializer }, align 32
@sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.34, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ptr[3]: 0x%02x\0A\00", [16 x i8] zeroinitializer }, align 32
@sd_ddr_pre_tuning_tx.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 1, i8 -56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sd_ddr_pre_tuning_tx\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DDR TX pre tune phase_map = 0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@sd_ddr_pre_tuning_tx.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.37, i8 1, i8 -53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DDR TX pre tune phase: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@sd_search_final_phase.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 1, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sd_search_final_phase\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No continuous phase path\0A\00", [38 x i8] zeroinitializer }, align 32
@sd_search_final_phase.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.40, i8 1, i8 -90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"path[%d].start = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@sd_search_final_phase.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.41, i8 1, i8 -90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"path[%d].end = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@sd_search_final_phase.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.42, i8 1, i8 -90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"path[%d].len = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@sd_search_final_phase.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.43, i8 1, i8 -89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"path[%d].mid = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@sd_search_final_phase.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.44, i8 1, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@sd_search_final_phase.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.45, i8 1, i8 -81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Final chosen phase: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@sd_change_phase.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 -50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sd_change_phase\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s (sample_point = %d, tune_dir = %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@sd_change_phase.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.48, i8 0, i8 -42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SD_VP_CTL: 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@sd_change_phase.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.49, i8 0, i8 -41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SD_DCMPS_CTL: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@sd_change_phase.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.48, i8 0, i8 -23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sd_change_phase.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.49, i8 0, i8 -23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sd_tuning_rx.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 1, i8 -70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sd_tuning_rx\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RX raw_phase_map[%d] = 0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@sd_tuning_rx.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.52, i8 1, i8 -69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX phase_map = 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@sd_ddr_tuning_rx_cmd.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 1, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sd_ddr_tuning_rx_cmd\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sd ddr tuning rx\0A\00", [46 x i8] zeroinitializer }, align 32
@sd_wait_data_idle.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 1, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sd_wait_data_idle\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SD_DATA_STATE: 0x%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@mmc_ddr_tuning_rx_cmd.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 1, i8 120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mmc_ddr_tuning_rx_cmd\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mmc ddr tuning rx\0A\00", [45 x i8] zeroinitializer }, align 32
@sd_tuning_tx.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 1, i8 -42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sd_tuning_tx\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TX raw_phase_map[%d] = 0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@sd_tuning_tx.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.61, i8 1, i8 -41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TX phase_map = 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@sd_write_data.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.9, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sd_write_data\00", [18 x i8] zeroinitializer }, align 32
@sd_init_power.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 2, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sd_init_power\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Over current, OCPSTAT is 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@sd_check_csd.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.67, i8 0, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sd_check_csd\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CSD Response:\0A\00", [17 x i8] zeroinitializer }, align 32
@sd_check_csd.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.68, i8 0, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*ph\0A\00", [26 x i8] zeroinitializer }, align 32
@sd_check_csd.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.69, i8 0, i8 105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"csd_ver = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@sd_check_csd.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.70, i8 0, i8 122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CSD WP Status: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@mmc_switch_timing_bus.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.9, i8 2, i8 -78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mmc_switch_timing_bus\00", [42 x i8] zeroinitializer }, align 32
@mmc_test_switch_bus.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.9, i8 2, i8 -100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mmc_test_switch_bus\00", [44 x i8] zeroinitializer }, align 32
@mmc_test_switch_bus.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.73, i8 2, i8 -90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"BUSTEST_R [8bits]: 0x%02x 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@mmc_test_switch_bus.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.74, i8 2, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"BUSTEST_R [4bits]: 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@reset_sd.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 2, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reset_sd\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SD_IO card (Function number: %d)!\0A\00", [61 x i8] zeroinitializer }, align 32
@reset_sd.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.77, i8 2, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Normal card!\0A\00", [18 x i8] zeroinitializer }, align 32
@reset_sd.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.80, i8 2, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"support_1v8 = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@sd_switch_function.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.85, i8 1, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sd_switch_function\00", [45 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"SD_FUNC_GROUP_1: func_to_switch = 0x%02x\00", [55 x i8] zeroinitializer }, align 32
@sd_switch_function.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.86, i8 1, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Using SDR50 instead of DDR50 for SD Lock\0A\00", [54 x i8] zeroinitializer }, align 32
@sd_switch_function.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.87, i8 1, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"SD_FUNC_GROUP_4: func_to_switch = 0x%02x\00", [55 x i8] zeroinitializer }, align 32
@sd_switch_function.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.88, i8 1, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Switch current limit finished! (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@sd_check_switch_mode.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.90, i8 1, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sd_check_switch_mode\00", [43 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s (mode = %d, func_group = %d, func_to_switch = %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@sd_check_switch_mode.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.68, i8 1, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sd_check_switch_mode.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.91, i8 1, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"func_group1_mask = 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@sd_check_switch_mode.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.92, i8 1, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"func_group2_mask = 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@sd_check_switch_mode.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.93, i8 1, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"func_group3_mask = 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@sd_check_switch_mode.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.94, i8 1, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"func_group4_mask = 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@sd_check_switch_mode.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.95, i8 1, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Maximum current consumption: %dmA\0A\00", [61 x i8] zeroinitializer }, align 32
@sd_check_switch.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.96, ptr @.str.2, ptr @.str.97, i8 1, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sd_check_switch\00", [16 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SD CRC16 error when switching mode\0A\00", [60 x i8] zeroinitializer }, align 32
@sd_check_wp_state.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.2, ptr @.str.99, i8 2, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sd_check_wp_state\00", [46 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ACMD13:\0A\00", [23 x i8] zeroinitializer }, align 32
@sd_check_wp_state.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.2, ptr @.str.68, i8 2, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sd_check_wp_state.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.2, ptr @.str.100, i8 2, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sd_card_type = 0x%04x\0A\00", [41 x i8] zeroinitializer }, align 32
@reset_mmc_only.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.2, ptr @.str.102, i8 3, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reset_mmc_only\00", [17 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"In %s, sd_card->sd_type = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@sd_update_lock_status.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.104, i8 0, i8 -92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sd_update_lock_status\00", [42 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sd_card->sd_lock_status = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@sd_read_data.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.2, ptr @.str.9, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sd_read_data\00", [19 x i8] zeroinitializer }, align 32
@switch.table.sd_execute_no_data = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\04\01\09\02\05", [27 x i8] zeroinitializer }, align 32
@switch.table.sd_execute_no_data.106 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 6, i32 6, i32 17, i32 6], [44 x i8] zeroinitializer }, align 32
@switch.table.sd_execute_read_data = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\04\01\09\02\05", [27 x i8] zeroinitializer }, align 32
@switch.table.sd_execute_read_data.107 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 6, i32 6, i32 17, i32 6], [44 x i8] zeroinitializer }, align 32
@switch.table.sd_execute_write_data = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\04\01\09\02\05", [27 x i8] zeroinitializer }, align 32
@switch.table.sd_execute_write_data.108 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 6, i32 6, i32 17, i32 6], [44 x i8] zeroinitializer }, align 32
@switch.table.sd_check_switch_mode = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 4, i32 8, i32 16], [16 x i8] zeroinitializer }, align 32
@switch.table.sd_check_switch_mode.109 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 4, i32 8], [20 x i8] zeroinitializer }, align 32
@switch.table.sd_check_switch_mode.110 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 4, i32 8], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 9]
@__sancov_gen_cov_switch_values.112 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 8, i64 12]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 16, i64 21000, i64 21128]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.117 = internal global [6 x i64] [i64 4, i64 8, i64 7, i64 12, i64 13, i64 55]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 16, i64 21000, i64 21128]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 40]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.130 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.131 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.132 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.133 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.134 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.135 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.137 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.138 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.139 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.140 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.141 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.142 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@___asan_gen_.144 = private unnamed_addr constant [18 x i8] c"REG_SD_BYTE_CNT_L\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [18 x i8] c"REG_SD_BYTE_CNT_H\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 3125, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 3295, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 3299, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [19 x i8] c"REG_SD_BLOCK_CNT_L\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [19 x i8] c"REG_SD_BLOCK_CNT_H\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [12 x i8] c"REG_SD_CFG1\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [12 x i8] c"REG_SD_CFG2\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [16 x i8] c"REG_SD_TRANSFER\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 3417, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant [12 x i8] c"REG_SD_CMD0\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [12 x i8] c"REG_SD_CMD1\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [12 x i8] c"REG_SD_CMD2\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [12 x i8] c"REG_SD_CMD3\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [12 x i8] c"REG_SD_CMD4\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [13 x i8] c"REG_SD_STAT1\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 3510, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 3525, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 3586, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [12 x i8] c"REG_SD_CMD5\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 3733, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 3734, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 4023, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 4436, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 4489, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 4498, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 4573, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 4574, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 4651, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 125, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 170, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant [12 x i8] c"REG_SD_CFG3\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 173, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 233, i32 5 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 238, i32 5 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 243, i32 5 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1824, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1835, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1658, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1688, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1690, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1691, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1692, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1693, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1727, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 823, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 858, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 860, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1769, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1772, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1463, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1421, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1505, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1881, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1884, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 354, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2175, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 418, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 419, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 422, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 491, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2761, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2675, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2714, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2732, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2335, i32 6 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2349, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2425, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1290, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1298, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1382, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1392, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1095, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1135, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1137, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1139, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1141, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1149, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1221, i32 5 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2267, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 2271, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 3177, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 656, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.457 = private constant [32 x i8] c"../drivers/staging/rts5208/sd.c\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 280, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant [32 x i8] c"switch.table.sd_execute_no_data\00", align 1
@___asan_gen_.460 = private unnamed_addr constant [36 x i8] c"switch.table.sd_execute_no_data.106\00", align 1
@___asan_gen_.461 = private unnamed_addr constant [34 x i8] c"switch.table.sd_execute_read_data\00", align 1
@___asan_gen_.462 = private unnamed_addr constant [38 x i8] c"switch.table.sd_execute_read_data.107\00", align 1
@___asan_gen_.463 = private unnamed_addr constant [35 x i8] c"switch.table.sd_execute_write_data\00", align 1
@___asan_gen_.464 = private unnamed_addr constant [39 x i8] c"switch.table.sd_execute_write_data.108\00", align 1
@___asan_gen_.465 = private unnamed_addr constant [34 x i8] c"switch.table.sd_check_switch_mode\00", align 1
@___asan_gen_.466 = private unnamed_addr constant [38 x i8] c"switch.table.sd_check_switch_mode.109\00", align 1
@___asan_gen_.467 = private unnamed_addr constant [38 x i8] c"switch.table.sd_check_switch_mode.110\00", align 1
@llvm.compiler.used = appending global [124 x ptr] [ptr @REG_SD_BYTE_CNT_L, ptr @REG_SD_BYTE_CNT_H, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @REG_SD_BLOCK_CNT_L, ptr @REG_SD_BLOCK_CNT_H, ptr @REG_SD_CFG1, ptr @REG_SD_CFG2, ptr @REG_SD_TRANSFER, ptr @.str.9, ptr @REG_SD_CMD0, ptr @REG_SD_CMD1, ptr @REG_SD_CMD2, ptr @REG_SD_CMD3, ptr @REG_SD_CMD4, ptr @REG_SD_STAT1, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @REG_SD_CMD5, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @REG_SD_CFG3, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.80, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @switch.table.sd_execute_no_data, ptr @switch.table.sd_execute_no_data.106, ptr @switch.table.sd_execute_read_data, ptr @switch.table.sd_execute_read_data.107, ptr @switch.table.sd_execute_write_data, ptr @switch.table.sd_execute_write_data.108, ptr @switch.table.sd_check_switch_mode, ptr @switch.table.sd_check_switch_mode.109, ptr @switch.table.sd_check_switch_mode.110], section "llvm.metadata"
@0 = internal global [124 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REG_SD_BYTE_CNT_L to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REG_SD_BYTE_CNT_H to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REG_SD_BLOCK_CNT_L to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REG_SD_BLOCK_CNT_H to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REG_SD_CFG1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REG_SD_CFG2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REG_SD_TRANSFER to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REG_SD_CMD0 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REG_SD_CMD1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REG_SD_CMD2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REG_SD_CMD3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REG_SD_CMD4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REG_SD_STAT1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REG_SD_CMD5 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REG_SD_CFG3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_execute_no_data to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_execute_no_data.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_execute_read_data to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_execute_read_data.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_execute_write_data to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_execute_write_data.108 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_check_switch_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_check_switch_mode.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_check_switch_mode.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sd_select_card(ptr noundef %chip, i32 noundef %select) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %select)
  %tobool.not = icmp eq i32 %select, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sd_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %0 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sd_addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cmd_type.0 = phi i8 [ 1, %if.then ], [ 4, %entry.if.end_crit_edge ]
  %addr.0 = phi i32 [ %1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call = tail call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 7, i32 noundef %addr.0, i8 noundef zeroext %cmd_type.0, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp ne i32 %call, 0
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext %cmd_idx, i32 noundef %arg, i8 noundef zeroext %rsp_type, ptr noundef writeonly %rsp, i32 noundef %rsp_len) #0 align 64 {
entry:
  %stat.i = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %err_code.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  %0 = ptrtoint ptr %err_code.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %err_code.i, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_send_cmd_get_rsp, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !336

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %conv = zext i8 %cmd_idx to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug287, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef %conv, i32 noundef %arg) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv6 = zext i8 %rsp_type to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %rsp_type)
  %cmp = icmp eq i8 %rsp_type, 9
  %spec.select = select i1 %cmp, i32 3000, i32 100
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %or = or i8 %cmd_idx, 64
  %shr = lshr i32 %arg, 24
  %conv12 = trunc i32 %shr to i8
  %shr13 = lshr i32 %arg, 16
  %conv14 = trunc i32 %shr13 to i8
  %shr15 = lshr i32 %arg, 8
  %conv16 = trunc i32 %shr15 to i8
  %conv17 = trunc i32 %arg to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %rsp_type)
  %cmp99 = icmp eq i8 %rsp_type, 4
  %host_cmds_ptr.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 4
  %and111 = and i32 %conv6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %cmd_idx)
  %cmp120 = icmp eq i8 %cmd_idx, 25
  br label %RTY_SEND_CMD

RTY_SEND_CMD:                                     ; preds = %__here, %do.end
  %rty_cnt.0 = phi i32 [ 0, %do.end ], [ %inc204, %__here ]
  %stat_idx.0 = phi i32 [ 0, %do.end ], [ %stat_idx.1, %__here ]
  %5 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ci, align 4
  %.b406 = load i1, ptr @REG_SD_CMD0, align 2
  %6 = select i1 %.b406, i16 -716, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %6, i8 noundef zeroext -1, i8 noundef zeroext %or) #7
  %.b407 = load i1, ptr @REG_SD_CMD1, align 2
  %7 = select i1 %.b407, i16 -715, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %7, i8 noundef zeroext -1, i8 noundef zeroext %conv12) #7
  %.b408 = load i1, ptr @REG_SD_CMD2, align 2
  %8 = select i1 %.b408, i16 -714, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %8, i8 noundef zeroext -1, i8 noundef zeroext %conv14) #7
  %.b409 = load i1, ptr @REG_SD_CMD3, align 2
  %9 = select i1 %.b409, i16 -713, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %9, i8 noundef zeroext -1, i8 noundef zeroext %conv16) #7
  %.b411 = load i1, ptr @REG_SD_CMD4, align 2
  %10 = select i1 %.b411, i16 -712, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %10, i8 noundef zeroext -1, i8 noundef zeroext %conv17) #7
  %.b = load i1, ptr @REG_SD_CFG2, align 2
  %11 = select i1 %.b, i16 -717, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %11, i8 noundef zeroext -1, i8 noundef zeroext %rsp_type) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %.b404 = load i1, ptr @REG_SD_TRANSFER, align 2
  %12 = select i1 %.b404, i16 -718, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %12, i8 noundef zeroext -1, i8 noundef zeroext -120) #7
  %.b403 = load i1, ptr @REG_SD_TRANSFER, align 2
  %13 = select i1 %.b403, i16 -718, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext %13, i8 noundef zeroext 96, i8 noundef zeroext 96) #7
  %14 = zext i8 %rsp_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %rsp_type, label %if.then28 [
    i8 2, label %for.body.preheader
    i8 4, label %RTY_SEND_CMD.if.end39_crit_edge
  ]

RTY_SEND_CMD.if.end39_crit_edge:                  ; preds = %RTY_SEND_CMD
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

for.body.preheader:                               ; preds = %RTY_SEND_CMD
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1536, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1535, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1534, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1533, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1532, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1531, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1530, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1529, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1528, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1527, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1526, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1525, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1524, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1523, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1522, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1521, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  br label %if.end39

if.then28:                                        ; preds = %RTY_SEND_CMD
  %.b405 = load i1, ptr @REG_SD_CMD0, align 2
  %15 = select i1 %.b405, i16 -716, i16 0
  %conv30468 = zext i16 %15 to i32
  %.b410469 = load i1, ptr @REG_SD_CMD4, align 2
  %conv31470 = select i1 %.b410469, i32 64824, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %conv31470, i32 %conv30468)
  %cmp32.not471 = icmp ult i32 %conv31470, %conv30468
  br i1 %cmp32.not471, label %if.then28.if.end39_crit_edge, label %if.then28.for.body34_crit_edge

if.then28.for.body34_crit_edge:                   ; preds = %if.then28
  br label %for.body34

if.then28.if.end39_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %if.then28.for.body34_crit_edge
  %reg_addr.1472 = phi i16 [ %inc36, %for.body34.for.body34_crit_edge ], [ %15, %if.then28.for.body34_crit_edge ]
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext %reg_addr.1472, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %inc36 = add i16 %reg_addr.1472, 1
  %conv30 = zext i16 %inc36 to i32
  %.b410 = load i1, ptr @REG_SD_CMD4, align 2
  %conv31 = select i1 %.b410, i32 64824, i32 0
  %cmp32.not = icmp ult i32 %conv31, %conv30
  br i1 %cmp32.not, label %for.body34.if.end39_crit_edge, label %for.body34.for.body34_crit_edge

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body34

for.body34.if.end39_crit_edge:                    ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end39:                                         ; preds = %for.body34.if.end39_crit_edge, %if.then28.if.end39_crit_edge, %for.body.preheader, %RTY_SEND_CMD.if.end39_crit_edge
  %stat_idx.1 = phi i32 [ %stat_idx.0, %RTY_SEND_CMD.if.end39_crit_edge ], [ 5, %if.then28.if.end39_crit_edge ], [ 16, %for.body.preheader ], [ 5, %for.body34.if.end39_crit_edge ]
  %.b413 = load i1, ptr @REG_SD_STAT1, align 2
  %16 = select i1 %.b413, i16 -720, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext %16, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %call40 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 4, i32 noundef %spec.select) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.end97

if.then43:                                        ; preds = %if.end39
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %val, align 1, !annotation !337
  %.b412 = load i1, ptr @REG_SD_STAT1, align 2
  %18 = select i1 %.b412, i16 -720, i16 0
  %call44 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext %18, ptr noundef nonnull %val) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_send_cmd_get_rsp, %if.then57)) #7
          to label %do.end62 [label %if.then57], !srcloc !336

if.then57:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %dev.i432 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %val, align 1
  %conv59 = zext i8 %24 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug288, ptr noundef %dev.i432, ptr noundef nonnull @.str.30, i32 noundef %conv59) #7
  br label %do.end62

do.end62:                                         ; preds = %if.then57, %if.then43
  %.b414 = load i1, ptr @REG_SD_CFG3, align 2
  %25 = select i1 %.b414, i16 -706, i16 0
  %call63 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext %25, ptr noundef nonnull %val) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_send_cmd_get_rsp, %if.then76)) #7
          to label %do.end81 [label %if.then76], !srcloc !336

if.then76:                                        ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %dev.i433 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %val, align 1
  %conv78 = zext i8 %31 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug289, ptr noundef %dev.i433, ptr noundef nonnull @.str.31, i32 noundef %conv78) #7
  br label %do.end81

do.end81:                                         ; preds = %if.then76, %do.end62
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call40)
  %cmp82 = icmp eq i32 %call40, -110
  br i1 %cmp82, label %if.then84, label %do.end81.cleanup_crit_edge

do.end81.cleanup_crit_edge:                       ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then84:                                        ; preds = %do.end81
  %and = and i32 %conv6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool86.not = icmp eq i32 %and, 0
  br i1 %tobool86.not, label %if.else93, label %if.then87

if.then87:                                        ; preds = %if.then84
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stat.i) #7
  %32 = ptrtoint ptr %stat.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %stat.i, align 1, !annotation !337
  %.b.i = load i1, ptr @REG_SD_STAT1, align 2
  %33 = select i1 %.b.i, i16 -720, i16 0
  %call.i = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext %33, ptr noundef nonnull %stat.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then87.if.then91_crit_edge

if.then87.if.then91_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then91

if.end.i:                                         ; preds = %if.then87
  %34 = ptrtoint ptr %stat.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %stat.i, align 1
  %36 = and i8 %35, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool2.not.i = icmp eq i8 %36, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %sd_check_data0_status.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %err_code.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %err_code.i, align 2
  %or5.i.i = or i8 %38, 16
  store i8 %or5.i.i, ptr %err_code.i, align 2
  br label %if.then91

sd_check_data0_status.exit:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat.i) #7
  br label %cleanup

if.then91:                                        ; preds = %if.then3.i, %if.then87.if.then91_crit_edge
  %retval.0.i434.ph = phi i32 [ %call.i, %if.then87.if.then91_crit_edge ], [ 1, %if.then3.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat.i) #7
  br label %cleanup

if.else93:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %err_code.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %err_code.i, align 2
  %or5.i = or i8 %40, 64
  store i8 %or5.i, ptr %err_code.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.else93, %if.then91, %sd_check_data0_status.exit, %do.end81.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i434.ph, %if.then91 ], [ 2, %sd_check_data0_status.exit ], [ 2, %if.else93 ], [ 1, %do.end81.cleanup_crit_edge ]
  %call.i436 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  br label %cleanup323

if.end97:                                         ; preds = %if.end39
  br i1 %cmp99, label %if.end97.cleanup323_crit_edge, label %if.end102

if.end97.cleanup323_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup323

if.end102:                                        ; preds = %if.end97
  %41 = ptrtoint ptr %host_cmds_ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host_cmds_ptr.i, align 4
  %add.ptr = getelementptr i8, ptr %42, i32 1
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %44)
  %cmp106.not = icmp ult i8 %44, 64
  br i1 %cmp106.not, label %if.end109, label %if.then108

if.then108:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %err_code.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %err_code.i, align 2
  %or5.i438 = or i8 %46, 8
  store i8 %or5.i438, ptr %err_code.i, align 2
  br label %cleanup323

if.end109:                                        ; preds = %if.end102
  br i1 %tobool112.not, label %if.then113, label %if.end109.if.end207_crit_edge

if.end109.if.end207_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end207

if.then113:                                       ; preds = %if.end109
  %arrayidx114 = getelementptr i8, ptr %add.ptr, i32 %stat_idx.1
  %47 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx114, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %48)
  %tobool117.not = icmp sgt i8 %48, -1
  br i1 %tobool117.not, label %if.then113.if.end207_crit_edge, label %if.then118

if.then113.if.end207_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end207

if.then118:                                       ; preds = %if.then113
  br i1 %cmp120, label %if.then122, label %if.end123

if.then122:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %err_code.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %err_code.i, align 2
  %or5.i440 = or i8 %50, -128
  store i8 %or5.i440, ptr %err_code.i, align 2
  br label %cleanup323

if.end123:                                        ; preds = %if.then118
  %exitcond.not = icmp eq i32 %rty_cnt.0, 3
  br i1 %exitcond.not, label %if.else205, label %__here

__here:                                           ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  %51 = tail call i32 @llvm.read_register.i32(metadata !326) #7
  %and.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 212
  %55 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 ptrtoint (ptr blockaddress(@sd_send_cmd_get_rsp, %__here) to i32), ptr %task_state_change, align 4
  %56 = load ptr, ptr %task, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 1, ptr %56, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !338
  %call201 = tail call i32 @schedule_timeout(i32 noundef 2) #7
  %inc204 = add nuw nsw i32 %rty_cnt.0, 1
  br label %RTY_SEND_CMD

if.else205:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %err_code.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %err_code.i, align 2
  %or5.i442 = or i8 %59, -128
  store i8 %or5.i442, ptr %err_code.i, align 2
  br label %cleanup323

if.end207:                                        ; preds = %if.then113.if.end207_crit_edge, %if.end109.if.end207_crit_edge
  %60 = zext i8 %rsp_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.111)
  switch i8 %rsp_type, label %if.end207.if.end317_crit_edge [
    i8 9, label %if.end207.switch.early.test_crit_edge
    i8 1, label %if.end207.switch.early.test_crit_edge529
  ]

if.end207.switch.early.test_crit_edge529:         ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #9
  br label %switch.early.test

if.end207.switch.early.test_crit_edge:            ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #9
  br label %switch.early.test

if.end207.if.end317_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end317

switch.early.test:                                ; preds = %if.end207.switch.early.test_crit_edge, %if.end207.switch.early.test_crit_edge529
  %61 = zext i8 %cmd_idx to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.112)
  switch i8 %cmd_idx, label %if.then225 [
    i8 8, label %switch.early.test.if.end317_crit_edge
    i8 3, label %switch.early.test.if.end317_crit_edge530
    i8 12, label %switch.early.test.if.end232_crit_edge
  ]

switch.early.test.if.end232_crit_edge:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end232

switch.early.test.if.end317_crit_edge530:         ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end317

switch.early.test.if.end317_crit_edge:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end317

if.then225:                                       ; preds = %switch.early.test
  %arrayidx226 = getelementptr i8, ptr %42, i32 2
  %62 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx226, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %63)
  %tobool229.not = icmp sgt i8 %63, -1
  br i1 %tobool229.not, label %if.then225.if.end232_crit_edge, label %if.then225.cleanup323_crit_edge

if.then225.cleanup323_crit_edge:                  ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup323

if.then225.if.end232_crit_edge:                   ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end232

if.end232:                                        ; preds = %if.then225.if.end232_crit_edge, %switch.early.test.if.end232_crit_edge
  %arrayidx233 = getelementptr i8, ptr %42, i32 2
  %64 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx233, align 1
  %66 = and i8 %65, 125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool236.not = icmp eq i8 %66, 0
  br i1 %tobool236.not, label %if.end257, label %do.body238

do.body238:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_send_cmd_get_rsp, %if.then250)) #7
          to label %cleanup323 [label %if.then250], !srcloc !336

if.then250:                                       ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %chip, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %dev.i443 = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  %71 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx233, align 1
  %conv253 = zext i8 %72 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug291, ptr noundef %dev.i443, ptr noundef nonnull @.str.32, i32 noundef %conv253) #7
  br label %cleanup323

if.end257:                                        ; preds = %if.end232
  %arrayidx258 = getelementptr i8, ptr %42, i32 3
  %73 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx258, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool261.not = icmp eq i8 %74, 0
  br i1 %tobool261.not, label %if.end282, label %do.body263

do.body263:                                       ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_send_cmd_get_rsp, %if.then275)) #7
          to label %cleanup323 [label %if.then275], !srcloc !336

if.then275:                                       ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %chip, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %dev.i444 = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  %79 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx258, align 1
  %conv278 = zext i8 %80 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug292, ptr noundef %dev.i444, ptr noundef nonnull @.str.33, i32 noundef %conv278) #7
  br label %cleanup323

if.end282:                                        ; preds = %if.end257
  %arrayidx283 = getelementptr i8, ptr %42, i32 4
  %81 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx283, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %82)
  %tobool286.not = icmp sgt i8 %82, -1
  br i1 %tobool286.not, label %if.end307, label %do.body288

do.body288:                                       ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_send_cmd_get_rsp, %if.then300)) #7
          to label %cleanup323 [label %if.then300], !srcloc !336

if.then300:                                       ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %chip, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %dev.i445 = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  %87 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx283, align 1
  %conv303 = zext i8 %88 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug293, ptr noundef %dev.i445, ptr noundef nonnull @.str.34, i32 noundef %conv303) #7
  br label %cleanup323

if.end307:                                        ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #9
  %and310 = and i8 %82, 1
  %sd_data_buf_ready314 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 2
  %89 = ptrtoint ptr %sd_data_buf_ready314 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %and310, ptr %sd_data_buf_ready314, align 1
  br label %if.end317

if.end317:                                        ; preds = %if.end307, %switch.early.test.if.end317_crit_edge, %switch.early.test.if.end317_crit_edge530, %if.end207.if.end317_crit_edge
  %tobool318.not = icmp eq ptr %rsp, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rsp_len)
  %tobool320.not = icmp eq i32 %rsp_len, 0
  %or.cond416 = or i1 %tobool318.not, %tobool320.not
  br i1 %or.cond416, label %if.end317.cleanup323_crit_edge, label %if.then321

if.end317.cleanup323_crit_edge:                   ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup323

if.then321:                                       ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #9
  %90 = call ptr @memcpy(ptr %rsp, ptr %add.ptr, i32 %rsp_len)
  br label %cleanup323

cleanup323:                                       ; preds = %if.then321, %if.end317.cleanup323_crit_edge, %if.then300, %do.body288, %if.then275, %do.body263, %if.then250, %do.body238, %if.then225.cleanup323_crit_edge, %if.else205, %if.then122, %if.then108, %if.end97.cleanup323_crit_edge, %cleanup
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ 1, %if.then108 ], [ 1, %if.then122 ], [ 1, %if.else205 ], [ 1, %if.then225.cleanup323_crit_edge ], [ 1, %if.then250 ], [ 1, %if.then275 ], [ 1, %if.then300 ], [ 0, %if.then321 ], [ 0, %if.end317.cleanup323_crit_edge ], [ 1, %do.body238 ], [ 1, %do.body263 ], [ 1, %do.body288 ], [ 0, %if.end97.cleanup323_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sd_switch_clock(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @select_card(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sd_clock = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  %0 = ptrtoint ptr %sd_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sd_clock, align 4
  %asic_code.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %2 = ptrtoint ptr %asic_code.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asic_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %1) #7
  br label %switch_clock.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %1) #7
  br label %switch_clock.exit

switch_clock.exit:                                ; preds = %if.else.i, %if.then.i
  %retval1.0.i = phi i32 [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i)
  %cmp4.not = icmp ne i32 %retval1.0.i, 0
  %spec.select = zext i1 %cmp4.not to i32
  br label %cleanup

cleanup:                                          ; preds = %switch_clock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %spec.select, %switch_clock.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @select_card(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sd_pull_ctl_enable(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ci, align 4
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %1 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %product_id, align 2
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.113)
  switch i16 %2, label %entry.if.end12_crit_edge [
    i16 21000, label %if.then
    i16 21128, label %if.then7
  ]

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -672, i8 noundef zeroext -1, i8 noundef zeroext 98) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -671, i8 noundef zeroext -1, i8 noundef zeroext -90) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -670, i8 noundef zeroext -1, i8 noundef zeroext -117) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -669, i8 noundef zeroext -1, i8 noundef zeroext 105) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -668, i8 noundef zeroext -1, i8 noundef zeroext -40) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -667, i8 noundef zeroext -1, i8 noundef zeroext 5) #7
  br label %if.end12

if.then7:                                         ; preds = %entry
  %baro_pkg = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 73
  %4 = ptrtoint ptr %baro_pkg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %baro_pkg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8 = icmp eq i32 %5, 0
  br i1 %cmp8, label %if.then10, label %if.then7.if.end12_crit_edge

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -672, i8 noundef zeroext -1, i8 noundef zeroext -88) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -671, i8 noundef zeroext -1, i8 noundef zeroext 90) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -670, i8 noundef zeroext -1, i8 noundef zeroext -107) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -669, i8 noundef zeroext -1, i8 noundef zeroext -86) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then7.if.end12_crit_edge, %if.then, %entry.if.end12_crit_edge
  %call = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 4, i32 noundef 100) #7
  %call.lobit = lshr i32 %call, 31
  ret i32 %call.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_add_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_send_cmd(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reset_sd_card(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  store i1 true, ptr @REG_SD_CFG1, align 2
  store i1 true, ptr @REG_SD_CFG2, align 2
  store i1 true, ptr @REG_SD_CFG3, align 2
  store i1 true, ptr @REG_SD_STAT1, align 2
  store i1 true, ptr @REG_SD_CMD0, align 2
  store i1 true, ptr @REG_SD_CMD1, align 2
  store i1 true, ptr @REG_SD_CMD2, align 2
  store i1 true, ptr @REG_SD_CMD3, align 2
  store i1 true, ptr @REG_SD_CMD4, align 2
  store i1 true, ptr @REG_SD_CMD5, align 2
  store i1 true, ptr @REG_SD_BYTE_CNT_L, align 2
  store i1 true, ptr @REG_SD_BYTE_CNT_H, align 2
  store i1 true, ptr @REG_SD_BLOCK_CNT_L, align 2
  store i1 true, ptr @REG_SD_BLOCK_CNT_H, align 2
  store i1 true, ptr @REG_SD_TRANSFER, align 2
  %0 = call ptr @memset(ptr %sd_card1, i32 0, i32 104)
  %arrayidx = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 4
  %idxprom = zext i8 %2 to i32
  %arrayidx3 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 31, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx3, align 4
  %call = tail call i32 @enable_card_clock(ptr noundef %chip, i8 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ignore_sd = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 82
  %4 = ptrtoint ptr %ignore_sd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ignore_sd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.if.end25_crit_edge, label %land.lhs.true

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end
  %sdio_func_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 77
  %6 = ptrtoint ptr %sdio_func_exist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sdio_func_exist, align 4
  %8 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %if.then9, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then9:                                         ; preds = %land.lhs.true
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %10 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then9
  %call12 = tail call i32 @sd_pull_ctl_enable(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.then11.if.end20_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11.if.end20_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.else:                                          ; preds = %if.then9
  %call16 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -995, i8 noundef zeroext 40, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.else.if.end20_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end20:                                         ; preds = %if.else.if.end20_crit_edge, %if.then11.if.end20_crit_edge
  %call21 = tail call i32 @card_share_mode(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %sd_io = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 51
  %12 = ptrtoint ptr %sd_io to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %sd_io, align 4
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %call26 = tail call fastcc i32 @sd_init_power(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27.not = icmp eq i32 %call26, 0
  br i1 %cmp27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %sd_ctl = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 146
  %13 = ptrtoint ptr %sd_ctl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sd_ctl, align 4
  %and30 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.else45, label %if.then32

if.then32:                                        ; preds = %if.end29
  %call33 = tail call fastcc i32 @reset_mmc(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34.not = icmp eq i32 %call33, 0
  br i1 %cmp34.not, label %if.then32.if.end62_crit_edge, label %if.then35

if.then32.if.end62_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then35:                                        ; preds = %if.then32
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  %15 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %err_code2.i, align 2
  %and4.i = and i8 %16, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and4.i)
  %tobool37.not = icmp eq i8 %and4.i, 0
  br i1 %tobool37.not, label %if.end39, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %if.then35
  %call40 = tail call fastcc i32 @reset_sd(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41.not = icmp eq i32 %call40, 0
  br i1 %cmp41.not, label %if.end39.if.end62_crit_edge, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39.if.end62_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.else45:                                        ; preds = %if.end29
  %call46 = tail call fastcc i32 @reset_sd(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47.not = icmp eq i32 %call46, 0
  br i1 %cmp47.not, label %if.else45.if.end62_crit_edge, label %if.then48

if.else45.if.end62_crit_edge:                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then48:                                        ; preds = %if.else45
  %err_code2.i138 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  %17 = ptrtoint ptr %err_code2.i138 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %err_code2.i138, align 2
  %and4.i139 = and i8 %18, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and4.i139)
  %tobool50.not = icmp eq i8 %and4.i139, 0
  br i1 %tobool50.not, label %if.end52, label %if.then48.cleanup_crit_edge

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %if.then48
  %sd_io53 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 51
  %19 = ptrtoint ptr %sd_io53 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sd_io53, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool54.not = icmp eq i8 %20, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end56:                                         ; preds = %if.end52
  %call57 = tail call fastcc i32 @reset_mmc(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58.not = icmp eq i32 %call57, 0
  br i1 %cmp58.not, label %if.end56.if.end62_crit_edge, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end56.if.end62_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.end62:                                         ; preds = %if.end56.if.end62_crit_edge, %if.else45.if.end62_crit_edge, %if.end39.if.end62_crit_edge, %if.then32.if.end62_crit_edge
  %.b.i = load i1, ptr @REG_SD_CFG1, align 2
  %21 = select i1 %.b.i, i16 -719, i16 0
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %21, i8 noundef zeroext 96, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp64.not = icmp eq i32 %call.i, 0
  br i1 %cmp64.not, label %if.end66, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end66:                                         ; preds = %if.end62
  %.b = load i1, ptr @REG_SD_BYTE_CNT_L, align 2
  %22 = select i1 %.b, i16 -711, i16 0
  %call67 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %22, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end70:                                         ; preds = %if.end66
  %.b137 = load i1, ptr @REG_SD_BYTE_CNT_H, align 2
  %23 = select i1 %.b137, i16 -710, i16 0
  %call71 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %23, i8 noundef zeroext -1, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end74:                                         ; preds = %if.end70
  %capacity75 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 4
  %24 = ptrtoint ptr %capacity75 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %capacity75, align 4
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 4
  %idxprom79 = zext i8 %27 to i32
  %arrayidx80 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 31, i32 %idxprom79
  %28 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %arrayidx80, align 4
  %call81 = tail call fastcc i32 @sd_set_init_para(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82.not = icmp eq i32 %call81, 0
  br i1 %cmp82.not, label %do.body, label %if.end74.cleanup_crit_edge

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reset_sd_card.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_sd_card, %if.then89)) #7
          to label %cleanup [label %if.then89], !srcloc !336

if.then89:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %33 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sd_card1, align 4
  %conv = zext i16 %34 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reset_sd_card.__UNIQUE_ID_ddebug360, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %conv) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then89, %do.body, %if.end74.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.then48.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end24, %if.end20.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end24 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.then11.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ], [ 1, %if.end20.cleanup_crit_edge ], [ 1, %if.end25.cleanup_crit_edge ], [ 1, %if.then35.cleanup_crit_edge ], [ 1, %if.end39.cleanup_crit_edge ], [ 1, %if.then48.cleanup_crit_edge ], [ 1, %if.end52.cleanup_crit_edge ], [ 1, %if.end56.cleanup_crit_edge ], [ 1, %if.end62.cleanup_crit_edge ], [ %call67, %if.end66.cleanup_crit_edge ], [ %call71, %if.end70.cleanup_crit_edge ], [ 1, %if.end74.cleanup_crit_edge ], [ 0, %if.then89 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enable_card_clock(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_write_register(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @card_share_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_init_power(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sd_power_off_card3v3(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ft2_fast_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 131
  %0 = ptrtoint ptr %ft2_fast_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ft2_fast_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %__here, label %if.end.if.end70_crit_edge

if.end.if.end70_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

__here:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = tail call i32 @llvm.read_register.i32(metadata !326) #7
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 212
  %6 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 ptrtoint (ptr blockaddress(@sd_init_power, %__here) to i32), ptr %task_state_change, align 4
  %7 = load ptr, ptr %task, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %7, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !339
  %call67 = tail call i32 @schedule_timeout(i32 noundef 25) #7
  br label %if.end70

if.end70:                                         ; preds = %__here, %if.end.if.end70_crit_edge
  %call71 = tail call i32 @enable_card_clock(ptr noundef %chip, i8 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72.not = icmp eq i32 %call71, 0
  br i1 %cmp72.not, label %if.end74, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end74:                                         ; preds = %if.end70
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %9 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool75.not = icmp eq i32 %10, 0
  br i1 %tobool75.not, label %if.else, label %if.then76

if.then76:                                        ; preds = %if.end74
  %call77 = tail call i32 @sd_pull_ctl_enable(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78.not = icmp eq i32 %call77, 0
  br i1 %cmp78.not, label %if.then76.if.end85_crit_edge, label %if.then76.cleanup_crit_edge

if.then76.cleanup_crit_edge:                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then76.if.end85_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.else:                                          ; preds = %if.end74
  %call81 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -995, i8 noundef zeroext 40, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.else.if.end85_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.if.end85_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.end85:                                         ; preds = %if.else.if.end85_crit_edge, %if.then76.if.end85_crit_edge
  %11 = ptrtoint ptr %ft2_fast_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ft2_fast_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool87.not = icmp eq i32 %12, 0
  br i1 %tobool87.not, label %if.then88, label %if.end85.if.end197_crit_edge

if.end85.if.end197_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end197

if.then88:                                        ; preds = %if.end85
  %call89 = tail call i32 @card_power_on(ptr noundef %chip, i8 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90.not = icmp eq i32 %call89, 0
  br i1 %cmp90.not, label %__here144, label %if.then88.cleanup_crit_edge

if.then88.cleanup_crit_edge:                      ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

__here144:                                        ; preds = %if.then88
  %13 = tail call i32 @llvm.read_register.i32(metadata !326) #7
  %and.i224 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i224 to ptr
  %task147 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task147 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task147, align 8
  %task_state_change148 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 212
  %17 = ptrtoint ptr %task_state_change148 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 ptrtoint (ptr blockaddress(@sd_init_power, %__here144) to i32), ptr %task_state_change148, align 4
  %18 = load ptr, ptr %task147, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 1, ptr %18, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !340
  %call174 = tail call i32 @schedule_timeout(i32 noundef 26) #7
  %ocp_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 19
  %20 = ptrtoint ptr %ocp_stat to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ocp_stat, align 4
  %22 = and i8 %21, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool177.not = icmp eq i8 %22, 0
  br i1 %tobool177.not, label %__here144.if.end197_crit_edge, label %do.body179

__here144.if.end197_crit_edge:                    ; preds = %__here144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end197

do.body179:                                       ; preds = %__here144
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_init_power.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_init_power, %if.then189)) #7
          to label %cleanup [label %if.then189], !srcloc !336

if.then189:                                       ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chip, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %27 = ptrtoint ptr %ocp_stat to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ocp_stat, align 4
  %conv192 = zext i8 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_init_power.__UNIQUE_ID_ddebug344, ptr noundef %dev.i, ptr noundef nonnull @.str.65, i32 noundef %conv192) #7
  br label %cleanup

if.end197:                                        ; preds = %__here144.if.end197_crit_edge, %if.end85.if.end197_crit_edge
  %call198 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -683, i8 noundef zeroext 4, i8 noundef zeroext 4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end197, %if.then189, %do.body179, %if.then88.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then76.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end70.cleanup_crit_edge ], [ 1, %if.then76.cleanup_crit_edge ], [ %call81, %if.else.cleanup_crit_edge ], [ 1, %if.then88.cleanup_crit_edge ], [ 1, %if.then189 ], [ %call198, %if.end197 ], [ 1, %do.body179 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reset_mmc(ptr noundef %chip) #0 align 64 {
entry:
  %cmd.i = alloca [5 x i8], align 1
  %rsp.i376 = alloca [5 x i8], align 1
  %rsp.i = alloca [5 x i8], align 1
  %rsp = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rsp) #7
  %0 = getelementptr inbounds [16 x i8], ptr %rsp, i32 0, i32 1
  %sd_lock_status = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %1 = call ptr @memset(ptr %rsp, i32 255, i32 16)
  %2 = ptrtoint ptr %sd_lock_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sd_lock_status, align 4
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.switch_fail_crit_edge, label %entry.MMC_UNLOCK_ENTRY_crit_edge

entry.MMC_UNLOCK_ENTRY_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %MMC_UNLOCK_ENTRY

entry.switch_fail_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %switch_fail

switch_fail:                                      ; preds = %if.then245.switch_fail_crit_edge, %if.then231.switch_fail_crit_edge, %if.end191, %entry.switch_fail_crit_edge
  %i.0 = phi i32 [ %i.3, %if.end191 ], [ 0, %entry.switch_fail_crit_edge ], [ %i.3, %if.then231.switch_fail_crit_edge ], [ %i.3, %if.then245.switch_fail_crit_edge ]
  %j.0 = phi i32 [ %j.2, %if.end191 ], [ 0, %entry.switch_fail_crit_edge ], [ %j.2, %if.then231.switch_fail_crit_edge ], [ %j.2, %if.then245.switch_fail_crit_edge ]
  %k.0 = phi i32 [ %k.2, %if.end191 ], [ 0, %entry.switch_fail_crit_edge ], [ %k.2, %if.then231.switch_fail_crit_edge ], [ %k.2, %if.then245.switch_fail_crit_edge ]
  %switch_ddr.0.off0 = phi i1 [ %switch_ddr.1.off0, %if.end191 ], [ true, %entry.switch_fail_crit_edge ], [ false, %if.then231.switch_fail_crit_edge ], [ false, %if.then245.switch_fail_crit_edge ]
  %call = call fastcc i32 @sd_prepare_reset(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end5, label %switch_fail.cleanup_crit_edge

switch_fail.cleanup_crit_edge:                    ; preds = %switch_fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %switch_fail
  %5 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %sd_card1, align 4
  %call6407411 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 4, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6407411)
  %cmp7.not408412 = icmp eq i32 %call6407411, 0
  br i1 %cmp7.not408412, label %do.body.preheader.lr.ph.lr.ph, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.preheader.lr.ph.lr.ph:                    ; preds = %if.end5
  %err_code2.i362 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  br label %do.body.preheader.lr.ph

do.body.preheader.lr.ph:                          ; preds = %if.then32.do.body.preheader.lr.ph_crit_edge, %do.body.preheader.lr.ph.lr.ph
  %k.1.ph415 = phi i32 [ %k.0, %do.body.preheader.lr.ph.lr.ph ], [ %k.1410, %if.then32.do.body.preheader.lr.ph_crit_edge ]
  %j.1.ph414 = phi i32 [ %j.0, %do.body.preheader.lr.ph.lr.ph ], [ %inc29, %if.then32.do.body.preheader.lr.ph_crit_edge ]
  %i.1.ph413 = phi i32 [ %i.0, %do.body.preheader.lr.ph.lr.ph ], [ %i.2, %if.then32.do.body.preheader.lr.ph_crit_edge ]
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.then27.do.body.preheader_crit_edge, %do.body.preheader.lr.ph
  %k.1410 = phi i32 [ %k.1.ph415, %do.body.preheader.lr.ph ], [ %inc, %if.then27.do.body.preheader_crit_edge ]
  %i.1409 = phi i32 [ %i.1.ph413, %do.body.preheader.lr.ph ], [ %i.2, %if.then27.do.body.preheader_crit_edge ]
  br label %do.body

do.body:                                          ; preds = %__here.do.body_crit_edge, %do.body.preheader
  %i.2 = phi i32 [ %inc104, %__here.do.body_crit_edge ], [ %i.1409, %do.body.preheader ]
  %call11 = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %err_code2.i362 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %err_code2.i362, align 2
  %or5.i = or i8 %7, 32
  store i8 %or5.i, ptr %err_code2.i362, align 2
  br label %cleanup

if.end15:                                         ; preds = %do.body
  %call16 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 1, i32 noundef 1077673984, i8 noundef zeroext 5, ptr noundef nonnull %rsp, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %__here, label %if.then19

if.then19:                                        ; preds = %if.end15
  %8 = ptrtoint ptr %err_code2.i362 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %err_code2.i362, align 2
  %10 = and i8 %9, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %if.else28, label %if.then24

if.then24:                                        ; preds = %if.then19
  %inc = add i32 %k.1410, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %inc)
  %cmp25 = icmp slt i32 %inc, 20
  br i1 %cmp25, label %if.then27, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then27:                                        ; preds = %if.then24
  %12 = ptrtoint ptr %err_code2.i362 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %err_code2.i362, align 2
  %call6 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 4, ptr noundef null, i32 noundef 0)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.then27.do.body.preheader_crit_edge, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then27.do.body.preheader_crit_edge:            ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.preheader

if.else28:                                        ; preds = %if.then19
  %inc29 = add i32 %j.1.ph414, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc29)
  %cmp30 = icmp slt i32 %inc29, 100
  br i1 %cmp30, label %if.then32, label %if.else28.cleanup_crit_edge

if.else28.cleanup_crit_edge:                      ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then32:                                        ; preds = %if.else28
  %13 = ptrtoint ptr %err_code2.i362 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %err_code2.i362, align 2
  %call6407 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 4, ptr noundef null, i32 noundef 0)
  %cmp7.not408 = icmp eq i32 %call6407, 0
  br i1 %cmp7.not408, label %if.then32.do.body.preheader.lr.ph_crit_edge, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then32.do.body.preheader.lr.ph_crit_edge:      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.preheader.lr.ph

__here:                                           ; preds = %if.end15
  %14 = call i32 @llvm.read_register.i32(metadata !326) #7
  %and.i367 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i367 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 212
  %18 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 ptrtoint (ptr blockaddress(@reset_mmc, %__here) to i32), ptr %task_state_change, align 4
  %19 = load ptr, ptr %task, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %19, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !341
  %call101 = call i32 @schedule_timeout(i32 noundef 2) #7
  %inc104 = add i32 %i.2, 1
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %tobool108.not = icmp sgt i8 %22, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %inc104)
  %cmp110 = icmp slt i32 %inc104, 255
  %or.cond = select i1 %tobool108.not, i1 %cmp110, i1 false
  br i1 %or.cond, label %__here.do.body_crit_edge, label %do.end113

__here.do.body_crit_edge:                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end113:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %inc104)
  %cmp114 = icmp eq i32 %inc104, 255
  br i1 %cmp114, label %do.end113.cleanup_crit_edge, label %if.end117

do.end113.cleanup_crit_edge:                      ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end117:                                        ; preds = %do.end113
  %23 = and i8 %22, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %23)
  %cmp121 = icmp eq i8 %23, 64
  %24 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sd_card1, align 4
  %26 = and i16 %25, -4097
  %masksel = select i1 %cmp121, i16 4096, i16 0
  %storemerge = or i16 %26, %masksel
  store i16 %storemerge, ptr %sd_card1, align 4
  %call133 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 2, i32 noundef 0, i8 noundef zeroext 2, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134.not = icmp eq i32 %call133, 0
  br i1 %cmp134.not, label %if.end137, label %if.end117.cleanup_crit_edge

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end137:                                        ; preds = %if.end117
  %sd_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %27 = ptrtoint ptr %sd_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1048576, ptr %sd_addr, align 4
  %call140 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 3, i32 noundef 1048576, i8 noundef zeroext 1, ptr noundef nonnull %rsp, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %cmp141.not = icmp eq i32 %call140, 0
  br i1 %cmp141.not, label %if.end144, label %if.end137.cleanup_crit_edge

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end144:                                        ; preds = %if.end137
  %call145 = call fastcc i32 @sd_check_csd(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp146.not = icmp eq i32 %call145, 0
  br i1 %cmp146.not, label %if.end149, label %if.end144.cleanup_crit_edge

if.end144.cleanup_crit_edge:                      ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end149:                                        ; preds = %if.end144
  %raw_csd = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 5
  %28 = ptrtoint ptr %raw_csd to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %raw_csd, align 4
  %30 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sd_addr, align 4
  %call.i = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 7, i32 noundef %31, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i.not, label %if.end158, label %if.end149.cleanup_crit_edge

if.end149.cleanup_crit_edge:                      ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end158:                                        ; preds = %if.end149
  %32 = lshr i8 %29, 2
  %33 = and i8 %32, 15
  %call159 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 16, i32 noundef 512, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %cmp160.not = icmp eq i32 %call159, 0
  br i1 %cmp160.not, label %if.end158.MMC_UNLOCK_ENTRY_crit_edge, label %if.end158.cleanup_crit_edge

if.end158.cleanup_crit_edge:                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end158.MMC_UNLOCK_ENTRY_crit_edge:             ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %MMC_UNLOCK_ENTRY

MMC_UNLOCK_ENTRY:                                 ; preds = %if.end158.MMC_UNLOCK_ENTRY_crit_edge, %entry.MMC_UNLOCK_ENTRY_crit_edge
  %i.3 = phi i32 [ 0, %entry.MMC_UNLOCK_ENTRY_crit_edge ], [ %inc104, %if.end158.MMC_UNLOCK_ENTRY_crit_edge ]
  %j.2 = phi i32 [ 0, %entry.MMC_UNLOCK_ENTRY_crit_edge ], [ %j.1.ph414, %if.end158.MMC_UNLOCK_ENTRY_crit_edge ]
  %k.2 = phi i32 [ 0, %entry.MMC_UNLOCK_ENTRY_crit_edge ], [ %k.1410, %if.end158.MMC_UNLOCK_ENTRY_crit_edge ]
  %switch_ddr.1.off0 = phi i1 [ true, %entry.MMC_UNLOCK_ENTRY_crit_edge ], [ %switch_ddr.0.off0, %if.end158.MMC_UNLOCK_ENTRY_crit_edge ]
  %spec_ver.0 = phi i8 [ 0, %entry.MMC_UNLOCK_ENTRY_crit_edge ], [ %33, %if.end158.MMC_UNLOCK_ENTRY_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %rsp.i) #7
  %34 = getelementptr inbounds [5 x i8], ptr %rsp.i, i32 0, i32 1
  %sd_addr.i368 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %35 = call ptr @memset(ptr %rsp.i, i32 255, i32 5)
  %36 = ptrtoint ptr %sd_addr.i368 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sd_addr.i368, align 4
  %call.i369 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %37, i8 noundef zeroext 1, ptr noundef nonnull %rsp.i, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i369)
  %cmp.not.i370 = icmp eq i32 %call.i369, 0
  br i1 %cmp.not.i370, label %if.end.i, label %sd_update_lock_status.exit.thread

sd_update_lock_status.exit.thread:                ; preds = %MMC_UNLOCK_ENTRY
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rsp.i) #7
  br label %cleanup

if.end.i:                                         ; preds = %MMC_UNLOCK_ENTRY
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %34, align 1
  %40 = ptrtoint ptr %sd_lock_status to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sd_lock_status, align 4
  %42 = and i8 %41, 127
  %43 = shl i8 %39, 6
  %44 = and i8 %43, -128
  %.sink.i = or i8 %42, %44
  store i8 %.sink.i, ptr %sd_lock_status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_update_lock_status.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_mmc, %if.then15.i)) #7
          to label %sd_update_lock_status.exit [label %if.then15.i], !srcloc !336

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chip, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %49 = ptrtoint ptr %sd_lock_status to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %sd_lock_status, align 4
  %conv18.i = zext i8 %50 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_update_lock_status.__UNIQUE_ID_ddebug304, ptr noundef %dev.i.i, ptr noundef nonnull @.str.104, i32 noundef %conv18.i) #7
  br label %sd_update_lock_status.exit

sd_update_lock_status.exit:                       ; preds = %if.then15.i, %if.end.i
  %51 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %34, align 1
  %53 = and i8 %52, 1
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rsp.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp165.not = icmp eq i8 %53, 0
  br i1 %cmp165.not, label %if.end168, label %sd_update_lock_status.exit.cleanup_crit_edge

sd_update_lock_status.exit.cleanup_crit_edge:     ; preds = %sd_update_lock_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end168:                                        ; preds = %sd_update_lock_status.exit
  %.b.i = load i1, ptr @REG_SD_CFG1, align 2
  %54 = select i1 %.b.i, i16 -719, i16 0
  %call.i371 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %54, i8 noundef zeroext 96, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i371)
  %cmp170.not = icmp eq i32 %call.i371, 0
  br i1 %cmp170.not, label %if.end173, label %if.end168.cleanup_crit_edge

if.end168.cleanup_crit_edge:                      ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end173:                                        ; preds = %if.end168
  %arrayidx174 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 4
  %55 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx174, align 4
  %idxprom = zext i8 %56 to i32
  %arrayidx175 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 30, i32 %idxprom
  %57 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %arrayidx175, align 1
  %mmc_dont_switch_bus = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 13
  %58 = ptrtoint ptr %mmc_dont_switch_bus to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mmc_dont_switch_bus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool176.not = icmp eq i32 %59, 0
  br i1 %tobool176.not, label %if.then177, label %if.end173.if.end254_crit_edge

if.end173.if.end254_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end254

if.then177:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %spec_ver.0)
  %cmp179 = icmp eq i8 %spec_ver.0, 4
  br i1 %cmp179, label %if.then181, label %if.then177.if.end194_crit_edge

if.then177.if.end194_crit_edge:                   ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end194

if.then181:                                       ; preds = %if.then177
  %call183 = call fastcc i32 @mmc_switch_timing_bus(ptr noundef %chip, i1 noundef zeroext %switch_ddr.1.off0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %cmp184.not = icmp eq i32 %call183, 0
  br i1 %cmp184.not, label %if.then181.if.end194_crit_edge, label %if.then186

if.then181.if.end194_crit_edge:                   ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end194

if.then186:                                       ; preds = %if.then181
  %call187 = call fastcc i32 @sd_init_power(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %cmp188.not = icmp eq i32 %call187, 0
  br i1 %cmp188.not, label %if.end191, label %if.then186.cleanup_crit_edge

if.then186.cleanup_crit_edge:                     ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end191:                                        ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %mmc_dont_switch_bus to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %mmc_dont_switch_bus, align 4
  br label %switch_fail

if.end194:                                        ; preds = %if.then181.if.end194_crit_edge, %if.then177.if.end194_crit_edge
  %61 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %sd_card1, align 4
  %conv196 = zext i16 %62 to i32
  %63 = and i32 %conv196, 4351
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %63)
  %.not = icmp eq i32 %63, 4097
  br i1 %.not, label %land.lhs.true204, label %if.end194.if.end208_crit_edge

if.end194.if.end208_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end208

land.lhs.true204:                                 ; preds = %if.end194
  %capacity = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 4
  %64 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %capacity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp205 = icmp eq i32 %65, 0
  br i1 %cmp205, label %land.lhs.true204.cleanup_crit_edge, label %land.lhs.true204.if.end208_crit_edge

land.lhs.true204.if.end208_crit_edge:             ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end208

land.lhs.true204.cleanup_crit_edge:               ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end208:                                        ; preds = %land.lhs.true204.if.end208_crit_edge, %if.end194.if.end208_crit_edge
  %66 = and i32 %conv196, 8447
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %66)
  %.not395 = icmp eq i32 %66, 8193
  %or.cond397 = select i1 %switch_ddr.1.off0, i1 %.not395, i1 false
  br i1 %or.cond397, label %if.then222, label %if.end208.if.end254_crit_edge

if.end208.if.end254_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end254

if.then222:                                       ; preds = %if.end208
  %call223 = call fastcc i32 @sd_set_init_para(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %cmp224.not = icmp eq i32 %call223, 0
  br i1 %cmp224.not, label %if.end227, label %if.then222.cleanup_crit_edge

if.then222.cleanup_crit_edge:                     ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end227:                                        ; preds = %if.then222
  %sd_ctl.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 146
  %67 = ptrtoint ptr %sd_ctl.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sd_ctl.i, align 4
  %and.i372 = and i32 %68, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i372)
  %tobool.not.i = icmp eq i32 %and.i372, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end227
  %call.i373 = call fastcc i32 @sd_ddr_pre_tuning_tx(ptr noundef %chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i373)
  %cmp.not.i374 = icmp eq i32 %call.i373, 0
  br i1 %cmp.not.i374, label %if.then.i.if.end8.i_crit_edge, label %if.then.i.if.then231_crit_edge

if.then.i.if.then231_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then231

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.else.i:                                        ; preds = %if.end227
  %mmc_ddr_tx_phase.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 124
  %69 = ptrtoint ptr %mmc_ddr_tx_phase.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mmc_ddr_tx_phase.i, align 4
  %conv.i = trunc i32 %70 to i8
  %call3.i = call fastcc i32 @sd_change_phase(ptr noundef %chip, i8 noundef zeroext %conv.i, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.not.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.not.i, label %if.else.i.if.end8.i_crit_edge, label %if.else.i.if.then231_crit_edge

if.else.i.if.then231_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then231

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i.if.end8.i_crit_edge, %if.then.i.if.end8.i_crit_edge
  %call9.i = call fastcc i32 @sd_tuning_rx(ptr noundef %chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.not.i = icmp eq i32 %call9.i, 0
  br i1 %cmp10.not.i, label %if.end13.i, label %if.end8.i.if.then231_crit_edge

if.end8.i.if.then231_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then231

if.end13.i:                                       ; preds = %if.end8.i
  %71 = ptrtoint ptr %sd_ctl.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sd_ctl.i, align 4
  %and15.i = and i32 %72, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end13.i.if.end237_crit_edge

if.end13.i.if.end237_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end237

if.then17.i:                                      ; preds = %if.end13.i
  %call18.i = call fastcc i32 @sd_tuning_tx(ptr noundef %chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.not.i = icmp eq i32 %call18.i, 0
  br i1 %cmp19.not.i, label %if.then17.i.if.end237_crit_edge, label %if.then17.i.if.then231_crit_edge

if.then17.i.if.then231_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then231

if.then17.i.if.end237_crit_edge:                  ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end237

if.then231:                                       ; preds = %if.then17.i.if.then231_crit_edge, %if.end8.i.if.then231_crit_edge, %if.else.i.if.then231_crit_edge, %if.then.i.if.then231_crit_edge
  %call232 = call fastcc i32 @sd_init_power(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232)
  %cmp233.not = icmp eq i32 %call232, 0
  br i1 %cmp233.not, label %if.then231.switch_fail_crit_edge, label %if.then231.cleanup_crit_edge

if.then231.cleanup_crit_edge:                     ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then231.switch_fail_crit_edge:                 ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #9
  br label %switch_fail

if.end237:                                        ; preds = %if.then17.i.if.end237_crit_edge, %if.end13.i.if.end237_crit_edge
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %rsp.i376) #7
  %73 = getelementptr inbounds [5 x i8], ptr %rsp.i376, i32 0, i32 3
  %74 = call ptr @memset(ptr %rsp.i376, i32 255, i32 5)
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end.i379
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %for.cond.i.sd_wait_state_data_ready.exit.thread_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.sd_wait_state_data_ready.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_wait_state_data_ready.exit.thread

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end237
  %i.01.i = phi i32 [ 0, %if.end237 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %75 = ptrtoint ptr %sd_addr.i368 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sd_addr.i368, align 4
  %call.i378 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %76, i8 noundef zeroext 1, ptr noundef nonnull %rsp.i376, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i378)
  %cmp3.not.i = icmp eq i32 %call.i378, 0
  br i1 %cmp3.not.i, label %if.end.i379, label %for.body.i.sd_wait_state_data_ready.exit.thread_crit_edge

for.body.i.sd_wait_state_data_ready.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_wait_state_data_ready.exit.thread

if.end.i379:                                      ; preds = %for.body.i
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %73, align 1
  %79 = and i8 %78, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %79)
  %.not.i = icmp eq i8 %79, 9
  br i1 %.not.i, label %if.then241, label %for.cond.i

sd_wait_state_data_ready.exit.thread:             ; preds = %for.body.i.sd_wait_state_data_ready.exit.thread_crit_edge, %for.cond.i.sd_wait_state_data_ready.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rsp.i376) #7
  br label %if.end254

if.then241:                                       ; preds = %if.end.i379
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rsp.i376) #7
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %cmd.i) #7
  %80 = getelementptr inbounds [5 x i8], ptr %cmd.i, i32 0, i32 1
  %81 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 81, ptr %cmd.i, align 1
  %82 = ptrtoint ptr %80 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 0, ptr %80, align 1
  %83 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %sd_card1, align 4
  %conv.i381 = zext i16 %84 to i32
  %trunc.i = trunc i16 %84 to i8
  %85 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.114)
  switch i8 %trunc.i, label %if.then241.if.else17.i_crit_edge [
    i8 0, label %if.then241.if.end31.i_crit_edge
    i8 1, label %land.lhs.true.i
  ]

if.then241.if.end31.i_crit_edge:                  ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.then241.if.else17.i_crit_edge:                 ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else17.i

land.lhs.true.i:                                  ; preds = %if.then241
  %and15.i382 = and i32 %conv.i381, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i382)
  %tobool.not.i383 = icmp eq i32 %and15.i382, 0
  br i1 %tobool.not.i383, label %land.lhs.true.i.if.else17.i_crit_edge, label %land.lhs.true.i.if.end31.i_crit_edge

land.lhs.true.i.if.end31.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

land.lhs.true.i.if.else17.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else17.i

if.else17.i:                                      ; preds = %land.lhs.true.i.if.else17.i_crit_edge, %if.then241.if.else17.i_crit_edge
  %86 = and i32 %conv.i381, 1279
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %86)
  %.not.i384 = icmp eq i32 %86, 1025
  %spec.select.i = zext i1 %.not.i384 to i8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else17.i, %land.lhs.true.i.if.end31.i_crit_edge, %if.then241.if.end31.i_crit_edge
  %bus_width.0.i = phi i8 [ 1, %if.then241.if.end31.i_crit_edge ], [ 2, %land.lhs.true.i.if.end31.i_crit_edge ], [ %spec.select.i, %if.else17.i ]
  %call.i385 = call fastcc i32 @sd_read_data(ptr noundef %chip, i8 noundef zeroext 12, ptr noundef nonnull %cmd.i, i16 noundef zeroext 512, i8 noundef zeroext %bus_width.0.i, ptr noundef null, i32 noundef 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i385)
  %cmp32.not.i = icmp eq i32 %call.i385, 0
  br i1 %cmp32.not.i, label %sd_read_lba0.exit.thread, label %if.then245

sd_read_lba0.exit.thread:                         ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cmd.i) #7
  br label %if.end254

if.then245:                                       ; preds = %if.end31.i
  %call.i.i = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cmd.i) #7
  %call246 = call fastcc i32 @sd_init_power(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call246)
  %cmp247.not = icmp eq i32 %call246, 0
  br i1 %cmp247.not, label %if.then245.switch_fail_crit_edge, label %if.then245.cleanup_crit_edge

if.then245.cleanup_crit_edge:                     ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then245.switch_fail_crit_edge:                 ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #9
  br label %switch_fail

if.end254:                                        ; preds = %sd_read_lba0.exit.thread, %sd_wait_state_data_ready.exit.thread, %if.end208.if.end254_crit_edge, %if.end173.if.end254_crit_edge
  %87 = ptrtoint ptr %sd_lock_status to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %sd_lock_status, align 4
  %89 = and i8 %88, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool258.not = icmp eq i8 %89, 0
  br i1 %tobool258.not, label %if.end254.if.end268_crit_edge, label %if.then259

if.end254.if.end268_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end268

if.then259:                                       ; preds = %if.end254
  %.b358 = load i1, ptr @REG_SD_BLOCK_CNT_H, align 2
  %90 = select i1 %.b358, i16 -708, i16 0
  %call260 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %90, i8 noundef zeroext -1, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call260)
  %tobool261.not = icmp eq i32 %call260, 0
  br i1 %tobool261.not, label %if.end263, label %if.then259.cleanup_crit_edge

if.then259.cleanup_crit_edge:                     ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end263:                                        ; preds = %if.then259
  %.b = load i1, ptr @REG_SD_BLOCK_CNT_L, align 2
  %91 = select i1 %.b, i16 -709, i16 0
  %call264 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %91, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264)
  %tobool265.not = icmp eq i32 %call264, 0
  br i1 %tobool265.not, label %if.end263.if.end268_crit_edge, label %if.end263.cleanup_crit_edge

if.end263.cleanup_crit_edge:                      ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end263.if.end268_crit_edge:                    ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end268

if.end268:                                        ; preds = %if.end263.if.end268_crit_edge, %if.end254.if.end268_crit_edge
  %92 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %chip, align 4
  %remap_addr = getelementptr inbounds %struct.rtsx_dev, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %95, i32 20
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !343
  %97 = and i32 %96, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool271.not = icmp eq i32 %97, 0
  br i1 %tobool271.not, label %if.end268.cleanup_crit_edge, label %if.then272

if.end268.cleanup_crit_edge:                      ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then272:                                       ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #9
  %card_wp = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 24
  %98 = ptrtoint ptr %card_wp to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %card_wp, align 1
  %100 = or i8 %99, 4
  store i8 %100, ptr %card_wp, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then272, %if.end268.cleanup_crit_edge, %if.end263.cleanup_crit_edge, %if.then259.cleanup_crit_edge, %if.then245.cleanup_crit_edge, %if.then231.cleanup_crit_edge, %if.then222.cleanup_crit_edge, %land.lhs.true204.cleanup_crit_edge, %if.then186.cleanup_crit_edge, %if.end168.cleanup_crit_edge, %sd_update_lock_status.exit.cleanup_crit_edge, %sd_update_lock_status.exit.thread, %if.end158.cleanup_crit_edge, %if.end149.cleanup_crit_edge, %if.end144.cleanup_crit_edge, %if.end137.cleanup_crit_edge, %if.end117.cleanup_crit_edge, %do.end113.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %if.else28.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %if.then14, %if.end5.cleanup_crit_edge, %switch_fail.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then14 ], [ %call, %switch_fail.cleanup_crit_edge ], [ 1, %do.end113.cleanup_crit_edge ], [ 1, %if.end117.cleanup_crit_edge ], [ 1, %if.end137.cleanup_crit_edge ], [ 1, %if.end144.cleanup_crit_edge ], [ 1, %if.end149.cleanup_crit_edge ], [ 1, %if.end158.cleanup_crit_edge ], [ 1, %sd_update_lock_status.exit.cleanup_crit_edge ], [ 1, %if.end168.cleanup_crit_edge ], [ 1, %if.then186.cleanup_crit_edge ], [ 1, %land.lhs.true204.cleanup_crit_edge ], [ 1, %if.then222.cleanup_crit_edge ], [ 1, %if.then231.cleanup_crit_edge ], [ 1, %if.then245.cleanup_crit_edge ], [ %call260, %if.then259.cleanup_crit_edge ], [ %call264, %if.end263.cleanup_crit_edge ], [ 0, %if.then272 ], [ 0, %if.end268.cleanup_crit_edge ], [ 1, %sd_update_lock_status.exit.thread ], [ 1, %if.end5.cleanup_crit_edge ], [ 1, %if.then24.cleanup_crit_edge ], [ 1, %if.then27.cleanup_crit_edge ], [ 1, %if.else28.cleanup_crit_edge ], [ 1, %if.then32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rsp) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reset_sd(ptr noundef %chip) #0 align 64 {
entry:
  %cmd.i925 = alloca [5 x i8], align 1
  %rsp.i919 = alloca [5 x i8], align 1
  %cmd.i = alloca [5 x i8], align 1
  %buf.i = alloca [8 x i8], align 8
  %rsp.i = alloca [5 x i8], align 1
  %rsp = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rsp) #7
  %0 = getelementptr inbounds [16 x i8], ptr %rsp, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %rsp, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %rsp, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %rsp, i32 0, i32 4
  %4 = call ptr @memset(ptr %rsp, i32 255, i32 16)
  %5 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %sd_card1, align 4
  %sd_lock_status = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %sdio_func_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 77
  %sdio_retry_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 134
  %sd_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %6 = getelementptr inbounds [5 x i8], ptr %rsp.i, i32 0, i32 1
  %arrayidx534 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 5, i32 4
  %sd_switch_fail = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 22
  %7 = getelementptr inbounds [5 x i8], ptr %cmd.i, i32 0, i32 1
  %raw_scr.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 6
  %sd30_drive_sel_1v8 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 111
  %sd_ctl.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 146
  %sd_ddr_tx_phase.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 123
  %8 = getelementptr inbounds [5 x i8], ptr %rsp.i919, i32 0, i32 3
  %9 = getelementptr inbounds [5 x i8], ptr %cmd.i925, i32 0, i32 1
  br label %switch_fail.outer

switch_fail.outer:                                ; preds = %switch_fail.outer.backedge, %entry
  %sd20_mode.0.off0.ph = phi i1 [ false, %entry ], [ true, %switch_fail.outer.backedge ]
  %voltage.0.ph = phi i32 [ 0, %entry ], [ %voltage.4, %switch_fail.outer.backedge ]
  %sd_dont_switch.0.off0.ph = phi i1 [ false, %entry ], [ %spec.select879, %switch_fail.outer.backedge ]
  br label %switch_fail

switch_fail:                                      ; preds = %if.then552, %switch_fail.outer
  %voltage.0 = phi i32 [ %voltage.4, %if.then552 ], [ %voltage.0.ph, %switch_fail.outer ]
  %try_sdio.0.off0 = phi i1 [ true, %if.then552 ], [ %sd20_mode.0.off0.ph, %switch_fail.outer ]
  %sd_dont_switch.0.off0 = phi i1 [ true, %if.then552 ], [ %sd_dont_switch.0.off0.ph, %switch_fail.outer ]
  %10 = ptrtoint ptr %sd_lock_status to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sd_lock_status, align 4
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end, label %switch_fail.SD_UNLOCK_ENTRY_crit_edge

switch_fail.SD_UNLOCK_ENTRY_crit_edge:            ; preds = %switch_fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %SD_UNLOCK_ENTRY

if.end:                                           ; preds = %switch_fail
  %call = call fastcc i32 @sd_prepare_reset(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup704_crit_edge

if.end.cleanup704_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @sd_dummy_clock(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end10, label %if.end5.cleanup704_crit_edge

if.end5.cleanup704_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

if.end10:                                         ; preds = %if.end5
  %13 = ptrtoint ptr %sdio_func_exist to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sdio_func_exist, align 4
  %15 = and i32 %14, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %16 = icmp ne i32 %15, 1
  %brmerge = or i1 %try_sdio.0.off0, %16
  br i1 %brmerge, label %if.end10.RTY_SD_RST.outer_crit_edge, label %for.cond.preheader

if.end10.RTY_SD_RST.outer_crit_edge:              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %RTY_SD_RST.outer

for.cond.preheader:                               ; preds = %if.end10
  %17 = ptrtoint ptr %sdio_retry_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sdio_retry_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp201024 = icmp sgt i32 %18, 0
  br i1 %cmp201024, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.do.body46_crit_edge

for.cond.preheader.do.body46_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body46

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end43.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %rty_cnt.01025 = phi i32 [ %inc, %if.end43.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call22 = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  %19 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %err_code2.i, align 2
  %or5.i = or i8 %20, 32
  store i8 %or5.i, ptr %err_code2.i, align 2
  br label %cleanup704

if.end26:                                         ; preds = %for.body
  %call27 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 5, i32 noundef 0, i8 noundef zeroext 5, ptr noundef nonnull %rsp, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end43

if.then30:                                        ; preds = %if.end26
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %0, align 1
  %23 = lshr i8 %22, 4
  %24 = and i8 %23, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool33.not = icmp eq i8 %24, 0
  br i1 %tobool33.not, label %if.then30.do.body46_crit_edge, label %do.body

if.then30.do.body46_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body46

do.body:                                          ; preds = %if.then30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reset_sd.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_sd, %if.then39)) #7
          to label %do.end [label %if.then39], !srcloc !336

if.then39:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %and32.le = zext i8 %24 to i32
  %25 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reset_sd.__UNIQUE_ID_ddebug349, ptr noundef %dev.i, ptr noundef nonnull @.str.76, i32 noundef %and32.le) #7
  br label %do.end

do.end:                                           ; preds = %if.then39, %do.body
  %sd_io = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 51
  %29 = ptrtoint ptr %sd_io to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %sd_io, align 4
  br label %cleanup704

if.end43:                                         ; preds = %if.end26
  %call44 = call fastcc i32 @sd_init_power(ptr noundef %chip)
  %call45 = call fastcc i32 @sd_dummy_clock(ptr noundef %chip)
  %inc = add nuw nsw i32 %rty_cnt.01025, 1
  %30 = ptrtoint ptr %sdio_retry_cnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sdio_retry_cnt, align 4
  %cmp20 = icmp slt i32 %inc, %31
  br i1 %cmp20, label %if.end43.for.body_crit_edge, label %if.end43.do.body46_crit_edge

if.end43.do.body46_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body46

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body46:                                        ; preds = %if.end43.do.body46_crit_edge, %if.then30.do.body46_crit_edge, %for.cond.preheader.do.body46_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reset_sd.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_sd, %if.then58)) #7
          to label %RTY_SD_RST.outer [label %if.then58], !srcloc !336

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %dev.i895 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reset_sd.__UNIQUE_ID_ddebug350, ptr noundef %dev.i895, ptr noundef nonnull @.str.77) #7
  br label %RTY_SD_RST.outer

RTY_SD_RST.outer:                                 ; preds = %if.then278.RTY_SD_RST.outer_crit_edge, %if.then58, %do.body46, %if.end10.RTY_SD_RST.outer_crit_edge
  %voltage.1.ph = phi i32 [ %voltage.3, %if.then278.RTY_SD_RST.outer_crit_edge ], [ %voltage.0, %if.then58 ], [ %voltage.0, %do.body46 ], [ %voltage.0, %if.end10.RTY_SD_RST.outer_crit_edge ]
  %k.0.ph = phi i32 [ %inc279, %if.then278.RTY_SD_RST.outer_crit_edge ], [ 0, %if.then58 ], [ 0, %do.body46 ], [ 0, %if.end10.RTY_SD_RST.outer_crit_edge ]
  %j.0.ph = phi i32 [ %j.0, %if.then278.RTY_SD_RST.outer_crit_edge ], [ 0, %if.then58 ], [ 0, %do.body46 ], [ 0, %if.end10.RTY_SD_RST.outer_crit_edge ]
  %i.0.ph = phi i32 [ %i.1, %if.then278.RTY_SD_RST.outer_crit_edge ], [ 0, %if.then58 ], [ 0, %do.body46 ], [ 0, %if.end10.RTY_SD_RST.outer_crit_edge ]
  %hi_cap_flow.0.off0.ph = phi i1 [ %hi_cap_flow.1.off0938, %if.then278.RTY_SD_RST.outer_crit_edge ], [ false, %if.then58 ], [ false, %do.body46 ], [ false, %if.end10.RTY_SD_RST.outer_crit_edge ]
  br label %RTY_SD_RST

RTY_SD_RST:                                       ; preds = %if.end268.RTY_SD_RST_crit_edge, %RTY_SD_RST.outer
  %voltage.1 = phi i32 [ %voltage.3, %if.end268.RTY_SD_RST_crit_edge ], [ %voltage.1.ph, %RTY_SD_RST.outer ]
  %j.0 = phi i32 [ %inc269, %if.end268.RTY_SD_RST_crit_edge ], [ %j.0.ph, %RTY_SD_RST.outer ]
  %i.0 = phi i32 [ %i.1, %if.end268.RTY_SD_RST_crit_edge ], [ %i.0.ph, %RTY_SD_RST.outer ]
  %hi_cap_flow.0.off0 = phi i1 [ %hi_cap_flow.1.off0938, %if.end268.RTY_SD_RST_crit_edge ], [ %hi_cap_flow.0.off0.ph, %RTY_SD_RST.outer ]
  %call66 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 4, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67.not = icmp eq i32 %call66, 0
  br i1 %cmp67.not, label %__here, label %RTY_SD_RST.cleanup704_crit_edge

RTY_SD_RST.cleanup704_crit_edge:                  ; preds = %RTY_SD_RST
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

__here:                                           ; preds = %RTY_SD_RST
  %36 = call i32 @llvm.read_register.i32(metadata !326) #7
  %and.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 212
  %40 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 ptrtoint (ptr blockaddress(@reset_sd, %__here) to i32), ptr %task_state_change, align 4
  %41 = load ptr, ptr %task, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 1, ptr %41, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !344
  %call145 = call i32 @schedule_timeout(i32 noundef 2) #7
  %call149 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 8, i32 noundef 426, i8 noundef zeroext 1, ptr noundef nonnull %rsp, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %cmp150 = icmp eq i32 %call149, 0
  br i1 %cmp150, label %if.then152, label %__here.if.end165_crit_edge

__here.if.end165_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165

if.then152:                                       ; preds = %__here
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %44)
  %cmp155 = icmp eq i8 %44, -86
  br i1 %cmp155, label %land.lhs.true157, label %if.then152.if.end165_crit_edge

if.then152.if.end165_crit_edge:                   ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165

land.lhs.true157:                                 ; preds = %if.then152
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %2, align 1
  %47 = and i8 %46, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %47)
  %cmp161 = icmp eq i8 %47, 1
  %spec.select = select i1 %cmp161, i32 1077673984, i32 %voltage.1
  %spec.select877 = or i1 %hi_cap_flow.0.off0, %cmp161
  br i1 %spec.select877, label %land.lhs.true157.if.end258_crit_edge, label %land.lhs.true157.if.then167_crit_edge

land.lhs.true157.if.then167_crit_edge:            ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then167

land.lhs.true157.if.end258_crit_edge:             ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

if.end165:                                        ; preds = %if.then152.if.end165_crit_edge, %__here.if.end165_crit_edge
  br i1 %hi_cap_flow.0.off0, label %if.end165.if.end258_crit_edge, label %if.end165.if.then167_crit_edge

if.end165.if.then167_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then167

if.end165.if.end258_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

if.then167:                                       ; preds = %if.end165.if.then167_crit_edge, %land.lhs.true157.if.then167_crit_edge
  %call168 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 4, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %cmp169.not = icmp eq i32 %call168, 0
  br i1 %cmp169.not, label %__here225, label %if.then167.cleanup704_crit_edge

if.then167.cleanup704_crit_edge:                  ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

__here225:                                        ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task, align 8
  %task_state_change229 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 212
  %50 = ptrtoint ptr %task_state_change229 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 ptrtoint (ptr blockaddress(@reset_sd, %__here225) to i32), ptr %task_state_change229, align 4
  %51 = load ptr, ptr %task, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 1, ptr %51, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !345
  %call255 = call i32 @schedule_timeout(i32 noundef 2) #7
  br label %if.end258

if.end258:                                        ; preds = %__here225, %if.end165.if.end258_crit_edge, %land.lhs.true157.if.end258_crit_edge
  %hi_cap_flow.1.off0938 = phi i1 [ true, %if.end165.if.end258_crit_edge ], [ false, %__here225 ], [ true, %land.lhs.true157.if.end258_crit_edge ]
  %voltage.3 = phi i32 [ %voltage.1, %if.end165.if.end258_crit_edge ], [ 3932160, %__here225 ], [ %spec.select, %land.lhs.true157.if.end258_crit_edge ]
  br label %do.body259

do.body259:                                       ; preds = %__here338.do.body259_crit_edge, %if.end258
  %i.1 = phi i32 [ %i.0, %if.end258 ], [ %inc285, %__here338.do.body259_crit_edge ]
  %call260 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 55, i32 noundef 0, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call260)
  %cmp261.not = icmp eq i32 %call260, 0
  br i1 %cmp261.not, label %if.end273, label %if.then263

if.then263:                                       ; preds = %do.body259
  %call264 = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264)
  %cmp265.not = icmp eq i32 %call264, 0
  br i1 %cmp265.not, label %if.end268, label %if.then267

if.then267:                                       ; preds = %if.then263
  call void @__sanitizer_cov_trace_pc() #9
  %err_code2.i896 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  %53 = ptrtoint ptr %err_code2.i896 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %err_code2.i896, align 2
  %or5.i897 = or i8 %54, 32
  store i8 %or5.i897, ptr %err_code2.i896, align 2
  br label %cleanup704

if.end268:                                        ; preds = %if.then263
  %inc269 = add i32 %j.0, 1
  %cmp270 = icmp slt i32 %inc269, 3
  br i1 %cmp270, label %if.end268.RTY_SD_RST_crit_edge, label %if.end268.cleanup704_crit_edge

if.end268.cleanup704_crit_edge:                   ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

if.end268.RTY_SD_RST_crit_edge:                   ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #9
  br label %RTY_SD_RST

if.end273:                                        ; preds = %do.body259
  %call275 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 41, i32 noundef %voltage.3, i8 noundef zeroext 5, ptr noundef nonnull %rsp, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call275)
  %cmp276.not = icmp eq i32 %call275, 0
  br i1 %cmp276.not, label %__here338, label %if.then278

if.then278:                                       ; preds = %if.end273
  %inc279 = add nuw nsw i32 %k.0.ph, 1
  %exitcond.not = icmp eq i32 %inc279, 3
  br i1 %exitcond.not, label %if.then278.cleanup704_crit_edge, label %if.then278.RTY_SD_RST.outer_crit_edge

if.then278.RTY_SD_RST.outer_crit_edge:            ; preds = %if.then278
  call void @__sanitizer_cov_trace_pc() #9
  br label %RTY_SD_RST.outer

if.then278.cleanup704_crit_edge:                  ; preds = %if.then278
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

__here338:                                        ; preds = %if.end273
  %inc285 = add i32 %i.1, 1
  %55 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task, align 8
  %task_state_change342 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 212
  %57 = ptrtoint ptr %task_state_change342 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 ptrtoint (ptr blockaddress(@reset_sd, %__here338) to i32), ptr %task_state_change342, align 4
  %58 = load ptr, ptr %task, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile i32 1, ptr %58, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !346
  %call368 = call i32 @schedule_timeout(i32 noundef 2) #7
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %61)
  %tobool375.not = icmp sgt i8 %61, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %inc285)
  %cmp377 = icmp slt i32 %inc285, 255
  %or.cond878 = select i1 %tobool375.not, i1 %cmp377, i1 false
  br i1 %or.cond878, label %__here338.do.body259_crit_edge, label %do.end380

__here338.do.body259_crit_edge:                   ; preds = %__here338
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body259

do.end380:                                        ; preds = %__here338
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %inc285)
  %cmp381 = icmp eq i32 %inc285, 255
  br i1 %cmp381, label %do.end380.cleanup704_crit_edge, label %if.end384

do.end380.cleanup704_crit_edge:                   ; preds = %do.end380
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

if.end384:                                        ; preds = %do.end380
  br i1 %hi_cap_flow.1.off0938, label %if.then386, label %if.else401

if.then386:                                       ; preds = %if.end384
  %62 = and i8 %61, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool390.not = icmp eq i8 %62, 0
  %63 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %sd_card1, align 4
  br i1 %tobool390.not, label %if.else395, label %if.then391

if.then391:                                       ; preds = %if.then386
  call void @__sanitizer_cov_trace_pc() #9
  %65 = or i16 %64, 4096
  br label %do.body407

if.else395:                                       ; preds = %if.then386
  call void @__sanitizer_cov_trace_pc() #9
  %66 = and i16 %64, -4097
  br label %do.body407

if.else401:                                       ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %sd_card1, align 4
  %69 = and i16 %68, -4097
  br label %do.body407

do.body407:                                       ; preds = %if.else401, %if.else395, %if.then391
  %storemerge875 = phi i16 [ %69, %if.else401 ], [ %66, %if.else395 ], [ %65, %if.then391 ]
  %70 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %storemerge875, ptr %sd_card1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reset_sd.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_sd, %if.then419)) #7
          to label %if.end433 [label %if.then419], !srcloc !336

if.then419:                                       ; preds = %do.body407
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %chip, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %dev.i898 = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reset_sd.__UNIQUE_ID_ddebug354, ptr noundef %dev.i898, ptr noundef nonnull @.str.80, i32 noundef 0) #7
  br label %if.end433

if.end433:                                        ; preds = %if.then419, %do.body407
  %call434 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 2, i32 noundef 0, i8 noundef zeroext 2, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call434)
  %cmp435.not = icmp eq i32 %call434, 0
  br i1 %cmp435.not, label %for.body442, label %if.end433.cleanup704_crit_edge

if.end433.cleanup704_crit_edge:                   ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

for.body442:                                      ; preds = %if.end433
  %call444 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 3, i32 noundef 0, i8 noundef zeroext 1, ptr noundef nonnull %rsp, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call444)
  %cmp445.not = icmp eq i32 %call444, 0
  br i1 %cmp445.not, label %if.end448, label %for.body442.cleanup704_crit_edge

for.body442.cleanup704_crit_edge:                 ; preds = %for.body442
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

if.end448:                                        ; preds = %for.body442
  %75 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %0, align 1
  %conv450 = zext i8 %76 to i32
  %shl = shl nuw i32 %conv450, 24
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %1, align 1
  %conv452 = zext i8 %78 to i32
  %shl453 = shl nuw nsw i32 %conv452, 16
  %add = or i32 %shl453, %shl
  %79 = ptrtoint ptr %sd_addr to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add, ptr %sd_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool456.not = icmp eq i32 %add, 0
  br i1 %tobool456.not, label %for.body442.1, label %if.end448.for.end461_crit_edge

if.end448.for.end461_crit_edge:                   ; preds = %if.end448
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end461

for.body442.1:                                    ; preds = %if.end448
  %call444.1 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 3, i32 noundef 0, i8 noundef zeroext 1, ptr noundef nonnull %rsp, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call444.1)
  %cmp445.not.1 = icmp eq i32 %call444.1, 0
  br i1 %cmp445.not.1, label %if.end448.1, label %for.body442.1.cleanup704_crit_edge

for.body442.1.cleanup704_crit_edge:               ; preds = %for.body442.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

if.end448.1:                                      ; preds = %for.body442.1
  %80 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %0, align 1
  %conv450.1 = zext i8 %81 to i32
  %shl.1 = shl nuw i32 %conv450.1, 24
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %1, align 1
  %conv452.1 = zext i8 %83 to i32
  %shl453.1 = shl nuw nsw i32 %conv452.1, 16
  %add.1 = or i32 %shl453.1, %shl.1
  %84 = ptrtoint ptr %sd_addr to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add.1, ptr %sd_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.1)
  %tobool456.not.1 = icmp eq i32 %add.1, 0
  br i1 %tobool456.not.1, label %for.body442.2, label %if.end448.1.for.end461_crit_edge

if.end448.1.for.end461_crit_edge:                 ; preds = %if.end448.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end461

for.body442.2:                                    ; preds = %if.end448.1
  %call444.2 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 3, i32 noundef 0, i8 noundef zeroext 1, ptr noundef nonnull %rsp, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call444.2)
  %cmp445.not.2 = icmp eq i32 %call444.2, 0
  br i1 %cmp445.not.2, label %if.end448.2, label %for.body442.2.cleanup704_crit_edge

for.body442.2.cleanup704_crit_edge:               ; preds = %for.body442.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

if.end448.2:                                      ; preds = %for.body442.2
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %0, align 1
  %conv450.2 = zext i8 %86 to i32
  %shl.2 = shl nuw i32 %conv450.2, 24
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %1, align 1
  %conv452.2 = zext i8 %88 to i32
  %shl453.2 = shl nuw nsw i32 %conv452.2, 16
  %add.2 = or i32 %shl453.2, %shl.2
  %89 = ptrtoint ptr %sd_addr to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %add.2, ptr %sd_addr, align 4
  br label %for.end461

for.end461:                                       ; preds = %if.end448.2, %if.end448.1.for.end461_crit_edge, %if.end448.for.end461_crit_edge
  %call462 = call fastcc i32 @sd_check_csd(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call462)
  %cmp463.not = icmp eq i32 %call462, 0
  br i1 %cmp463.not, label %if.end466, label %for.end461.cleanup704_crit_edge

for.end461.cleanup704_crit_edge:                  ; preds = %for.end461
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

if.end466:                                        ; preds = %for.end461
  %90 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sd_addr, align 4
  %call.i = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 7, i32 noundef %91, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i.not, label %if.end466.SD_UNLOCK_ENTRY_crit_edge, label %if.end466.cleanup704_crit_edge

if.end466.cleanup704_crit_edge:                   ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

if.end466.SD_UNLOCK_ENTRY_crit_edge:              ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #9
  br label %SD_UNLOCK_ENTRY

SD_UNLOCK_ENTRY:                                  ; preds = %if.end466.SD_UNLOCK_ENTRY_crit_edge, %switch_fail.SD_UNLOCK_ENTRY_crit_edge
  %voltage.4 = phi i32 [ %voltage.0, %switch_fail.SD_UNLOCK_ENTRY_crit_edge ], [ %voltage.3, %if.end466.SD_UNLOCK_ENTRY_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %rsp.i) #7
  %92 = call ptr @memset(ptr %rsp.i, i32 255, i32 5)
  %93 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sd_addr, align 4
  %call.i900 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %94, i8 noundef zeroext 1, ptr noundef nonnull %rsp.i, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i900)
  %cmp.not.i901 = icmp eq i32 %call.i900, 0
  br i1 %cmp.not.i901, label %if.end.i, label %sd_update_lock_status.exit.thread

sd_update_lock_status.exit.thread:                ; preds = %SD_UNLOCK_ENTRY
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rsp.i) #7
  br label %cleanup704

if.end.i:                                         ; preds = %SD_UNLOCK_ENTRY
  %95 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %6, align 1
  %97 = ptrtoint ptr %sd_lock_status to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %sd_lock_status, align 4
  %99 = and i8 %98, 127
  %100 = shl i8 %96, 6
  %101 = and i8 %100, -128
  %.sink.i = or i8 %99, %101
  store i8 %.sink.i, ptr %sd_lock_status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_update_lock_status.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_sd, %if.then15.i)) #7
          to label %sd_update_lock_status.exit [label %if.then15.i], !srcloc !336

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %chip, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 44
  %106 = ptrtoint ptr %sd_lock_status to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %sd_lock_status, align 4
  %conv18.i = zext i8 %107 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_update_lock_status.__UNIQUE_ID_ddebug304, ptr noundef %dev.i.i, ptr noundef nonnull @.str.104, i32 noundef %conv18.i) #7
  br label %sd_update_lock_status.exit

sd_update_lock_status.exit:                       ; preds = %if.then15.i, %if.end.i
  %108 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %6, align 1
  %110 = and i8 %109, 1
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rsp.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp473.not = icmp eq i8 %110, 0
  br i1 %cmp473.not, label %if.end476, label %sd_update_lock_status.exit.cleanup704_crit_edge

sd_update_lock_status.exit.cleanup704_crit_edge:  ; preds = %sd_update_lock_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

if.end476:                                        ; preds = %sd_update_lock_status.exit
  %111 = ptrtoint ptr %sd_lock_status to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %sd_lock_status, align 4
  %conv478 = zext i8 %112 to i32
  %and479 = and i32 %conv478, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and479)
  %tobool480.not = icmp eq i32 %and479, 0
  br i1 %tobool480.not, label %if.else486, label %if.then481

if.then481:                                       ; preds = %if.end476
  call void @__sanitizer_cov_trace_pc() #9
  %or484 = or i8 %112, 96
  %113 = ptrtoint ptr %sd_lock_status to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %or484, ptr %sd_lock_status, align 4
  br label %cleanup704

if.else486:                                       ; preds = %if.end476
  %and489 = and i32 %conv478, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and489)
  %tobool490.not = icmp eq i32 %and489, 0
  br i1 %tobool490.not, label %if.then491, label %if.else486.if.end497_crit_edge

if.else486.if.end497_crit_edge:                   ; preds = %if.else486
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end497

if.then491:                                       ; preds = %if.else486
  call void @__sanitizer_cov_trace_pc() #9
  %and494 = and i8 %112, -33
  %114 = ptrtoint ptr %sd_lock_status to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %and494, ptr %sd_lock_status, align 4
  br label %if.end497

if.end497:                                        ; preds = %if.then491, %if.else486.if.end497_crit_edge
  %115 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %sd_addr, align 4
  %call499 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 55, i32 noundef %116, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call499)
  %cmp500.not = icmp eq i32 %call499, 0
  br i1 %cmp500.not, label %if.end503, label %if.end497.cleanup704_crit_edge

if.end497.cleanup704_crit_edge:                   ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

if.end503:                                        ; preds = %if.end497
  %call504 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 42, i32 noundef 0, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call504)
  %cmp505.not = icmp eq i32 %call504, 0
  br i1 %cmp505.not, label %if.end523, label %if.end503.cleanup704_crit_edge

if.end503.cleanup704_crit_edge:                   ; preds = %if.end503
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

if.end523:                                        ; preds = %if.end503
  %call524 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 16, i32 noundef 512, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call524)
  %cmp525.not = icmp eq i32 %call524, 0
  br i1 %cmp525.not, label %if.end528, label %if.end523.cleanup704_crit_edge

if.end523.cleanup704_crit_edge:                   ; preds = %if.end523
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

if.end528:                                        ; preds = %if.end523
  %.b.i = load i1, ptr @REG_SD_CFG1, align 2
  %117 = select i1 %.b.i, i16 -719, i16 0
  %call.i903 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %117, i8 noundef zeroext 96, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i903)
  %cmp530.not = icmp eq i32 %call.i903, 0
  br i1 %cmp530.not, label %if.end533, label %if.end528.cleanup704_crit_edge

if.end528.cleanup704_crit_edge:                   ; preds = %if.end528
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

if.end533:                                        ; preds = %if.end528
  %118 = ptrtoint ptr %arrayidx534 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx534, align 4
  %120 = and i8 %119, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool537.not = icmp eq i8 %120, 0
  %spec.select879 = or i1 %tobool537.not, %sd_dont_switch.0.off0
  br i1 %spec.select879, label %if.end533.if.then563_crit_edge, label %if.then541

if.end533.if.then563_crit_edge:                   ; preds = %if.end533
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then563

if.then541:                                       ; preds = %if.end533
  br i1 %sd20_mode.0.off0.ph, label %if.then543, label %if.then541.if.end544_crit_edge

if.then541.if.end544_crit_edge:                   ; preds = %if.then541
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end544

if.then543:                                       ; preds = %if.then541
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %sd_switch_fail to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 28, ptr %sd_switch_fail, align 2
  br label %if.end544

if.end544:                                        ; preds = %if.then543, %if.then541.if.end544_crit_edge
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %cmd.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i) #7
  %122 = ptrtoint ptr %buf.i to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 -1, ptr %buf.i, align 8
  %123 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %sd_addr, align 4
  %call.i905 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 55, i32 noundef %124, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i905)
  %cmp.not.i906 = icmp eq i32 %call.i905, 0
  br i1 %cmp.not.i906, label %if.end.i907, label %if.end544.sd_check_spec.exit.thread_crit_edge

if.end544.sd_check_spec.exit.thread_crit_edge:    ; preds = %if.end544
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_check_spec.exit.thread

if.end.i907:                                      ; preds = %if.end544
  %125 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 115, ptr %cmd.i, align 1
  %126 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 4)
  store i32 0, ptr %7, align 1
  %call8.i = call fastcc i32 @sd_read_data(ptr noundef %chip, i8 noundef zeroext 12, ptr noundef nonnull %cmd.i, i16 noundef zeroext 8, i8 noundef zeroext 0, ptr noundef nonnull %buf.i, i32 noundef 8, i32 noundef 250) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.not.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.not.i, label %sd_check_spec.exit, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i907
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  br label %sd_check_spec.exit.thread

sd_check_spec.exit.thread:                        ; preds = %if.then10.i, %if.end544.sd_check_spec.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cmd.i) #7
  br label %if.then563

sd_check_spec.exit:                               ; preds = %if.end.i907
  %127 = ptrtoint ptr %buf.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %buf.i, align 8
  %129 = ptrtoint ptr %raw_scr.i to i32
  call void @__asan_storeN_noabort(i32 %129, i32 8)
  store i64 %128, ptr %raw_scr.i, align 4
  %130 = and i64 %128, 1080863910568919040
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %130)
  %cmp15.i.not = icmp eq i64 %130, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cmd.i) #7
  br i1 %cmp15.i.not, label %sd_check_spec.exit.if.then563_crit_edge, label %if.then548

sd_check_spec.exit.if.then563_crit_edge:          ; preds = %sd_check_spec.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then563

if.then548:                                       ; preds = %sd_check_spec.exit
  %call549 = call fastcc i32 @sd_switch_function(ptr noundef %chip)
  %cmp550.not = icmp eq i32 %call549, 0
  br i1 %cmp550.not, label %if.then548.if.then563_crit_edge, label %if.then552

if.then548.if.then563_crit_edge:                  ; preds = %if.then548
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then563

if.then552:                                       ; preds = %if.then548
  call void @__sanitizer_cov_trace_pc() #9
  %call553 = call fastcc i32 @sd_init_power(ptr noundef %chip)
  br label %switch_fail

if.then563:                                       ; preds = %if.then548.if.then563_crit_edge, %sd_check_spec.exit.if.then563_crit_edge, %sd_check_spec.exit.thread, %if.end533.if.then563_crit_edge
  %131 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %sd_addr, align 4
  %call565 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 55, i32 noundef %132, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call565)
  %cmp566.not = icmp eq i32 %call565, 0
  br i1 %cmp566.not, label %if.end569, label %if.then563.cleanup704_crit_edge

if.then563.cleanup704_crit_edge:                  ; preds = %if.then563
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

if.end569:                                        ; preds = %if.then563
  %call570 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 6, i32 noundef 2, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call570)
  %cmp571.not = icmp eq i32 %call570, 0
  br i1 %cmp571.not, label %if.end575, label %if.end569.cleanup704_crit_edge

if.end569.cleanup704_crit_edge:                   ; preds = %if.end569
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

if.end575:                                        ; preds = %if.end569
  %133 = ptrtoint ptr %sd_lock_status to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %sd_lock_status, align 4
  %135 = and i8 %134, -65
  store i8 %135, ptr %sd_lock_status, align 4
  br i1 %sd20_mode.0.off0.ph, label %if.end575.if.end682_crit_edge, label %land.lhs.true581

if.end575.if.end682_crit_edge:                    ; preds = %if.end575
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end682

land.lhs.true581:                                 ; preds = %if.end575
  %136 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %sd_card1, align 4
  %conv583 = zext i16 %137 to i32
  %138 = and i32 %conv583, 767
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %138)
  %.not = icmp eq i32 %138, 512
  %139 = and i32 %conv583, 1279
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %139)
  %.not971 = icmp eq i32 %139, 1024
  %or.cond = or i1 %.not, %.not971
  %140 = and i32 %conv583, 2303
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %140)
  %.not972 = icmp eq i32 %140, 2048
  %or.cond973 = select i1 %or.cond, i1 true, i1 %.not972
  br i1 %or.cond973, label %if.then613, label %land.lhs.true581.if.end682_crit_edge

land.lhs.true581.if.end682_crit_edge:             ; preds = %land.lhs.true581
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end682

if.then613:                                       ; preds = %land.lhs.true581
  %141 = ptrtoint ptr %sd30_drive_sel_1v8 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %sd30_drive_sel_1v8, align 1
  %call614 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -674, i8 noundef zeroext 7, i8 noundef zeroext %142) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call614)
  %tobool615.not = icmp eq i32 %call614, 0
  br i1 %tobool615.not, label %if.end617, label %if.then613.cleanup704_crit_edge

if.then613.cleanup704_crit_edge:                  ; preds = %if.then613
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

if.end617:                                        ; preds = %if.then613
  %call618 = call fastcc i32 @sd_set_init_para(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call618)
  %cmp619.not = icmp eq i32 %call618, 0
  br i1 %cmp619.not, label %if.end622, label %if.end617.cleanup704_crit_edge

if.end617.cleanup704_crit_edge:                   ; preds = %if.end617
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

if.end622:                                        ; preds = %if.end617
  %143 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %sd_card1, align 4
  %145 = and i16 %144, 1279
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %145)
  %.not969 = icmp eq i16 %145, 1024
  br i1 %.not969, label %if.then633, label %if.else635

if.then633:                                       ; preds = %if.end622
  %146 = ptrtoint ptr %sd_ctl.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %sd_ctl.i, align 4
  %and.i910 = and i32 %147, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i910)
  %tobool.not.i = icmp eq i32 %and.i910, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then633
  %call.i911 = call fastcc i32 @sd_ddr_pre_tuning_tx(ptr noundef %chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i911)
  %cmp.not.i912 = icmp eq i32 %call.i911, 0
  br i1 %cmp.not.i912, label %if.then.i.if.end8.i_crit_edge, label %if.then.i.if.then640_crit_edge

if.then.i.if.then640_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then640

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.else.i:                                        ; preds = %if.then633
  %148 = ptrtoint ptr %sd_ddr_tx_phase.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %sd_ddr_tx_phase.i, align 4
  %conv.i = trunc i32 %149 to i8
  %call3.i = call fastcc i32 @sd_change_phase(ptr noundef %chip, i8 noundef zeroext %conv.i, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.not.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.not.i, label %if.else.i.if.end8.i_crit_edge, label %if.else.i.if.then640_crit_edge

if.else.i.if.then640_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then640

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i.if.end8.i_crit_edge, %if.then.i.if.end8.i_crit_edge
  %call9.i = call fastcc i32 @sd_tuning_rx(ptr noundef %chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.not.i = icmp eq i32 %call9.i, 0
  br i1 %cmp10.not.i, label %if.end13.i, label %if.end8.i.if.then640_crit_edge

if.end8.i.if.then640_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then640

if.end13.i:                                       ; preds = %if.end8.i
  %150 = ptrtoint ptr %sd_ctl.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %sd_ctl.i, align 4
  %and15.i = and i32 %151, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end13.i.if.end646_crit_edge

if.end13.i.if.end646_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end646

if.then17.i:                                      ; preds = %if.end13.i
  %call18.i = call fastcc i32 @sd_tuning_tx(ptr noundef %chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.not.i = icmp eq i32 %call18.i, 0
  br i1 %cmp19.not.i, label %if.then17.i.if.end646_crit_edge, label %if.then17.i.if.then640_crit_edge

if.then17.i.if.then640_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then640

if.then17.i.if.end646_crit_edge:                  ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end646

if.else635:                                       ; preds = %if.end622
  %call.i914 = call fastcc i32 @sd_tuning_tx(ptr noundef %chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i914)
  %cmp.not.i915 = icmp eq i32 %call.i914, 0
  br i1 %cmp.not.i915, label %if.end637, label %if.else635.if.then640_crit_edge

if.else635.if.then640_crit_edge:                  ; preds = %if.else635
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then640

if.end637:                                        ; preds = %if.else635
  %call2.i = call fastcc i32 @sd_tuning_rx(ptr noundef %chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.not.i.not = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i.not, label %if.end637.if.end646_crit_edge, label %if.end637.if.then640_crit_edge

if.end637.if.then640_crit_edge:                   ; preds = %if.end637
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then640

if.end637.if.end646_crit_edge:                    ; preds = %if.end637
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end646

if.then640:                                       ; preds = %if.end637.if.then640_crit_edge, %if.else635.if.then640_crit_edge, %if.then17.i.if.then640_crit_edge, %if.end8.i.if.then640_crit_edge, %if.else.i.if.then640_crit_edge, %if.then.i.if.then640_crit_edge
  %call641 = call fastcc i32 @sd_init_power(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call641)
  %cmp642.not = icmp eq i32 %call641, 0
  br i1 %cmp642.not, label %if.then640.switch_fail.outer.backedge_crit_edge, label %if.then640.cleanup704_crit_edge

if.then640.cleanup704_crit_edge:                  ; preds = %if.then640
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

if.then640.switch_fail.outer.backedge_crit_edge:  ; preds = %if.then640
  call void @__sanitizer_cov_trace_pc() #9
  br label %switch_fail.outer.backedge

if.end646:                                        ; preds = %if.end637.if.end646_crit_edge, %if.then17.i.if.end646_crit_edge, %if.end13.i.if.end646_crit_edge
  %152 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %sd_addr, align 4
  %call648 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %153, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  %154 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %sd_card1, align 4
  %156 = and i16 %155, 1279
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %156)
  %.not970 = icmp eq i16 %156, 1024
  br i1 %.not970, label %if.then659, label %if.end646.if.then667_crit_edge

if.end646.if.then667_crit_edge:                   ; preds = %if.end646
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then667

if.then659:                                       ; preds = %if.end646
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %rsp.i919) #7
  %157 = call ptr @memset(ptr %rsp.i919, i32 255, i32 5)
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end.i923
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %for.cond.i..thread_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i..thread_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %.thread

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then659
  %i.01.i = phi i32 [ 0, %if.then659 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %158 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %sd_addr, align 4
  %call.i921 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %159, i8 noundef zeroext 1, ptr noundef nonnull %rsp.i919, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i921)
  %cmp3.not.i922 = icmp eq i32 %call.i921, 0
  br i1 %cmp3.not.i922, label %if.end.i923, label %for.body.i..thread_crit_edge

for.body.i..thread_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %.thread

if.end.i923:                                      ; preds = %for.body.i
  %160 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %8, align 1
  %162 = and i8 %161, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %162)
  %.not.i = icmp eq i8 %162, 9
  br i1 %.not.i, label %163, label %for.cond.i

.thread:                                          ; preds = %for.body.i..thread_crit_edge, %for.cond.i..thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rsp.i919) #7
  br label %if.end682

163:                                              ; preds = %if.end.i923
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rsp.i919) #7
  br label %if.then667

if.then667:                                       ; preds = %163, %if.end646.if.then667_crit_edge
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %cmd.i925) #7
  %164 = ptrtoint ptr %cmd.i925 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 81, ptr %cmd.i925, align 1
  %165 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %165, i32 4)
  store i32 0, ptr %9, align 1
  %166 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %sd_card1, align 4
  %conv.i926 = zext i16 %167 to i32
  %trunc.i = trunc i16 %167 to i8
  %168 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %168, ptr @__sancov_gen_cov_switch_values.115)
  switch i8 %trunc.i, label %if.then667.if.else17.i_crit_edge [
    i8 0, label %if.then667.if.end31.i_crit_edge
    i8 1, label %land.lhs.true.i
  ]

if.then667.if.end31.i_crit_edge:                  ; preds = %if.then667
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.then667.if.else17.i_crit_edge:                 ; preds = %if.then667
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else17.i

land.lhs.true.i:                                  ; preds = %if.then667
  %and15.i927 = and i32 %conv.i926, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i927)
  %tobool.not.i928 = icmp eq i32 %and15.i927, 0
  br i1 %tobool.not.i928, label %land.lhs.true.i.if.else17.i_crit_edge, label %land.lhs.true.i.if.end31.i_crit_edge

land.lhs.true.i.if.end31.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

land.lhs.true.i.if.else17.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else17.i

if.else17.i:                                      ; preds = %land.lhs.true.i.if.else17.i_crit_edge, %if.then667.if.else17.i_crit_edge
  %169 = and i32 %conv.i926, 1279
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %169)
  %.not.i929 = icmp eq i32 %169, 1025
  %spec.select.i = zext i1 %.not.i929 to i8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else17.i, %land.lhs.true.i.if.end31.i_crit_edge, %if.then667.if.end31.i_crit_edge
  %bus_width.0.i = phi i8 [ 1, %if.then667.if.end31.i_crit_edge ], [ 2, %land.lhs.true.i.if.end31.i_crit_edge ], [ %spec.select.i, %if.else17.i ]
  %call.i930 = call fastcc i32 @sd_read_data(ptr noundef %chip, i8 noundef zeroext 12, ptr noundef nonnull %cmd.i925, i16 noundef zeroext 512, i8 noundef zeroext %bus_width.0.i, ptr noundef null, i32 noundef 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i930)
  %cmp32.not.i = icmp eq i32 %call.i930, 0
  br i1 %cmp32.not.i, label %sd_read_lba0.exit.thread, label %if.then671

sd_read_lba0.exit.thread:                         ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cmd.i925) #7
  br label %if.end682

if.then671:                                       ; preds = %if.end31.i
  %call.i.i931 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cmd.i925) #7
  %call672 = call fastcc i32 @sd_init_power(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call672)
  %cmp673.not = icmp eq i32 %call672, 0
  br i1 %cmp673.not, label %if.then671.switch_fail.outer.backedge_crit_edge, label %if.then671.cleanup704_crit_edge

if.then671.cleanup704_crit_edge:                  ; preds = %if.then671
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

if.then671.switch_fail.outer.backedge_crit_edge:  ; preds = %if.then671
  call void @__sanitizer_cov_trace_pc() #9
  br label %switch_fail.outer.backedge

switch_fail.outer.backedge:                       ; preds = %if.then671.switch_fail.outer.backedge_crit_edge, %if.then640.switch_fail.outer.backedge_crit_edge
  br label %switch_fail.outer

if.end682:                                        ; preds = %sd_read_lba0.exit.thread, %.thread, %land.lhs.true581.if.end682_crit_edge, %if.end575.if.end682_crit_edge
  %call683 = call fastcc i32 @sd_check_wp_state(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call683)
  %cmp684.not = icmp eq i32 %call683, 0
  br i1 %cmp684.not, label %if.end687, label %if.end682.cleanup704_crit_edge

if.end682.cleanup704_crit_edge:                   ; preds = %if.end682
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

if.end687:                                        ; preds = %if.end682
  %arrayidx688 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 4
  %170 = ptrtoint ptr %arrayidx688 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx688, align 4
  %idxprom = zext i8 %171 to i32
  %arrayidx689 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 30, i32 %idxprom
  %172 = ptrtoint ptr %arrayidx689 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 4, ptr %arrayidx689, align 1
  %173 = ptrtoint ptr %sd_lock_status to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %sd_lock_status, align 4
  %175 = and i8 %174, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool693.not = icmp eq i8 %175, 0
  br i1 %tobool693.not, label %if.end687.if.end703_crit_edge, label %if.then694

if.end687.if.end703_crit_edge:                    ; preds = %if.end687
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end703

if.then694:                                       ; preds = %if.end687
  %.b859 = load i1, ptr @REG_SD_BLOCK_CNT_H, align 2
  %176 = select i1 %.b859, i16 -708, i16 0
  %call695 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %176, i8 noundef zeroext -1, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call695)
  %tobool696.not = icmp eq i32 %call695, 0
  br i1 %tobool696.not, label %if.end698, label %if.then694.cleanup704_crit_edge

if.then694.cleanup704_crit_edge:                  ; preds = %if.then694
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

if.end698:                                        ; preds = %if.then694
  %.b = load i1, ptr @REG_SD_BLOCK_CNT_L, align 2
  %177 = select i1 %.b, i16 -709, i16 0
  %call699 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %177, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call699)
  %tobool700.not = icmp eq i32 %call699, 0
  br i1 %tobool700.not, label %if.end698.if.end703_crit_edge, label %if.end698.cleanup704_crit_edge

if.end698.cleanup704_crit_edge:                   ; preds = %if.end698
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup704

if.end698.if.end703_crit_edge:                    ; preds = %if.end698
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end703

if.end703:                                        ; preds = %if.end698.if.end703_crit_edge, %if.end687.if.end703_crit_edge
  br label %cleanup704

cleanup704:                                       ; preds = %if.end703, %if.end698.cleanup704_crit_edge, %if.then694.cleanup704_crit_edge, %if.end682.cleanup704_crit_edge, %if.then671.cleanup704_crit_edge, %if.then640.cleanup704_crit_edge, %if.end617.cleanup704_crit_edge, %if.then613.cleanup704_crit_edge, %if.end569.cleanup704_crit_edge, %if.then563.cleanup704_crit_edge, %if.end528.cleanup704_crit_edge, %if.end523.cleanup704_crit_edge, %if.end503.cleanup704_crit_edge, %if.end497.cleanup704_crit_edge, %if.then481, %sd_update_lock_status.exit.cleanup704_crit_edge, %sd_update_lock_status.exit.thread, %if.end466.cleanup704_crit_edge, %for.end461.cleanup704_crit_edge, %for.body442.2.cleanup704_crit_edge, %for.body442.1.cleanup704_crit_edge, %for.body442.cleanup704_crit_edge, %if.end433.cleanup704_crit_edge, %do.end380.cleanup704_crit_edge, %if.then278.cleanup704_crit_edge, %if.end268.cleanup704_crit_edge, %if.then267, %if.then167.cleanup704_crit_edge, %RTY_SD_RST.cleanup704_crit_edge, %do.end, %if.then25, %if.end5.cleanup704_crit_edge, %if.end.cleanup704_crit_edge
  %retval.2 = phi i32 [ 0, %if.then481 ], [ 0, %if.end703 ], [ %call695, %if.then694.cleanup704_crit_edge ], [ %call699, %if.end698.cleanup704_crit_edge ], [ 1, %sd_update_lock_status.exit.thread ], [ 1, %if.end682.cleanup704_crit_edge ], [ 1, %if.then267 ], [ 1, %if.then25 ], [ 1, %do.end ], [ 1, %if.end268.cleanup704_crit_edge ], [ 1, %if.then167.cleanup704_crit_edge ], [ 1, %RTY_SD_RST.cleanup704_crit_edge ], [ 1, %for.body442.2.cleanup704_crit_edge ], [ 1, %for.body442.1.cleanup704_crit_edge ], [ 1, %for.body442.cleanup704_crit_edge ], [ 1, %if.then278.cleanup704_crit_edge ], [ 1, %if.end528.cleanup704_crit_edge ], [ 1, %if.end523.cleanup704_crit_edge ], [ 1, %if.end503.cleanup704_crit_edge ], [ 1, %if.end497.cleanup704_crit_edge ], [ 1, %sd_update_lock_status.exit.cleanup704_crit_edge ], [ 1, %if.end466.cleanup704_crit_edge ], [ 1, %for.end461.cleanup704_crit_edge ], [ 1, %if.end433.cleanup704_crit_edge ], [ 1, %do.end380.cleanup704_crit_edge ], [ 1, %if.end5.cleanup704_crit_edge ], [ 1, %if.end.cleanup704_crit_edge ], [ 1, %if.end569.cleanup704_crit_edge ], [ 1, %if.then563.cleanup704_crit_edge ], [ %call614, %if.then613.cleanup704_crit_edge ], [ 1, %if.end617.cleanup704_crit_edge ], [ 1, %if.then640.cleanup704_crit_edge ], [ 1, %if.then671.cleanup704_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rsp) #7
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_set_init_para(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_card2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  %sd_ctl.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 146
  %0 = ptrtoint ptr %sd_ctl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sd_ctl.i, align 4
  %and.i = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1
  %spec.select.i = select i1 %cmp.i, i8 16, i8 0
  %and5.i = and i32 %1, 12
  %2 = zext i32 %and5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %and5.i, label %entry.sd_set_sample_push_timing.exit_crit_edge [
    i32 8, label %if.then8.i
    i32 4, label %if.then60.i
  ]

entry.sd_set_sample_push_timing.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_set_sample_push_timing.exit

if.then8.i:                                       ; preds = %entry
  %asic_code.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %3 = ptrtoint ptr %asic_code.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %asic_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.else41.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.then8.i
  %5 = ptrtoint ptr %sd_card2.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sd_card2.i, align 4
  %conv10.i = zext i16 %6 to i32
  %7 = and i32 %conv10.i, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %7)
  %.not.i = icmp eq i32 %7, 256
  %8 = and i32 %conv10.i, 767
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %8)
  %.not100.i = icmp eq i32 %8, 513
  %or.cond.i = or i1 %.not.i, %.not100.i
  br i1 %or.cond.i, label %if.then28.i, label %if.then9.i.sd_set_sample_push_timing.exit_crit_edge

if.then9.i.sd_set_sample_push_timing.exit_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_set_sample_push_timing.exit

if.then28.i:                                      ; preds = %if.then9.i
  br i1 %cmp.i, label %if.then32.i, label %if.else.i

if.then32.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = or i8 %spec.select.i, 4
  br label %sd_set_sample_push_timing.exit

if.else.i:                                        ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  %or37.i = or i8 %spec.select.i, 8
  br label %sd_set_sample_push_timing.exit

if.else41.i:                                      ; preds = %if.then8.i
  br i1 %cmp.i, label %if.then45.i, label %if.else49.i

if.then45.i:                                      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = or i8 %spec.select.i, 4
  br label %sd_set_sample_push_timing.exit

if.else49.i:                                      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #9
  %or51.i = or i8 %spec.select.i, 8
  br label %sd_set_sample_push_timing.exit

if.then60.i:                                      ; preds = %entry
  br i1 %cmp.i, label %if.then64.i, label %if.else68.i

if.then64.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = or i8 %spec.select.i, 4
  br label %sd_set_sample_push_timing.exit

if.else68.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #9
  %or70.i = or i8 %spec.select.i, 8
  br label %sd_set_sample_push_timing.exit

sd_set_sample_push_timing.exit:                   ; preds = %if.else68.i, %if.then64.i, %if.else49.i, %if.then45.i, %if.else.i, %if.then32.i, %if.then9.i.sd_set_sample_push_timing.exit_crit_edge, %entry.sd_set_sample_push_timing.exit_crit_edge
  %val.1.i = phi i8 [ %9, %if.then32.i ], [ %or37.i, %if.else.i ], [ %10, %if.then45.i ], [ %or51.i, %if.else49.i ], [ %11, %if.then64.i ], [ %or70.i, %if.else68.i ], [ %spec.select.i, %entry.sd_set_sample_push_timing.exit_crit_edge ], [ %spec.select.i, %if.then9.i.sd_set_sample_push_timing.exit_crit_edge ]
  %.b.i = load i1, ptr @REG_SD_CFG1, align 2
  %12 = select i1 %.b.i, i16 -719, i16 0
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %12, i8 noundef zeroext 28, i8 noundef zeroext %val.1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end, label %sd_set_sample_push_timing.exit.cleanup_crit_edge

sd_set_sample_push_timing.exit.cleanup_crit_edge: ; preds = %sd_set_sample_push_timing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sd_set_sample_push_timing.exit
  tail call fastcc void @sd_choose_proper_clock(ptr noundef %chip)
  %sd_clock = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  %13 = ptrtoint ptr %sd_clock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sd_clock, align 4
  %asic_code.i12 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %15 = ptrtoint ptr %asic_code.i12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %asic_code.i12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i13 = icmp eq i32 %16, 0
  br i1 %tobool.not.i13, label %if.else.i15, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i14 = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %14) #7
  br label %switch_clock.exit

if.else.i15:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %14) #7
  br label %switch_clock.exit

switch_clock.exit:                                ; preds = %if.else.i15, %if.then.i
  %retval1.0.i = phi i32 [ %call.i14, %if.then.i ], [ %call2.i, %if.else.i15 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i)
  %cmp4.not = icmp ne i32 %retval1.0.i, 0
  %. = zext i1 %cmp4.not to i32
  br label %cleanup

cleanup:                                          ; preds = %switch_clock.exit, %sd_set_sample_push_timing.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sd_set_sample_push_timing.exit.cleanup_crit_edge ], [ %., %switch_clock.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sd_stop_seq_mode(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %rsp.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %seq_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 7
  %0 = ptrtoint ptr %seq_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %seq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @select_card(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %sd_clock.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  %2 = ptrtoint ptr %sd_clock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sd_clock.i, align 4
  %asic_code.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %4 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %3) #7
  br label %sd_switch_clock.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %3) #7
  br label %sd_switch_clock.exit

sd_switch_clock.exit:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval1.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i)
  %cmp4.not.i.not = icmp eq i32 %retval1.0.i.i, 0
  br i1 %cmp4.not.i.not, label %if.end, label %sd_switch_clock.exit.cleanup_crit_edge

sd_switch_clock.exit.cleanup_crit_edge:           ; preds = %sd_switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sd_switch_clock.exit
  %call3 = tail call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 12, i32 noundef 0, i8 noundef zeroext 9, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  %6 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %err_code2.i, align 2
  %or5.i = or i8 %7, 8
  store i8 %or5.i, ptr %err_code2.i, align 2
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %rsp.i) #7
  %8 = getelementptr inbounds [5 x i8], ptr %rsp.i, i32 0, i32 3
  %sd_addr.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %9 = call ptr @memset(ptr %rsp.i, i32 255, i32 5)
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end.i25
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %for.cond.i.if.then9_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.if.then9_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end6
  %i.01.i = phi i32 [ 0, %if.end6 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %sd_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sd_addr.i, align 4
  %call.i24 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %11, i8 noundef zeroext 1, ptr noundef nonnull %rsp.i, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %cmp3.not.i = icmp eq i32 %call.i24, 0
  br i1 %cmp3.not.i, label %if.end.i25, label %for.body.i.if.then9_crit_edge

for.body.i.if.then9_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.end.i25:                                       ; preds = %for.body.i
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %8, align 1
  %14 = and i8 %13, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %14)
  %.not.i = icmp eq i8 %14, 9
  br i1 %.not.i, label %sd_wait_state_data_ready.exit, label %for.cond.i

sd_wait_state_data_ready.exit:                    ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rsp.i) #7
  br label %if.end10

if.then9:                                         ; preds = %for.body.i.if.then9_crit_edge, %for.cond.i.if.then9_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rsp.i) #7
  %err_code2.i27 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  %15 = ptrtoint ptr %err_code2.i27 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %err_code2.i27, align 2
  %or5.i28 = or i8 %16, 8
  store i8 %or5.i28, ptr %err_code2.i27, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %sd_wait_state_data_ready.exit
  %17 = ptrtoint ptr %seq_mode to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %seq_mode, align 4
  %call12 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -460, i8 noundef zeroext -128, i8 noundef zeroext -128) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %sd_switch_clock.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sd_rw(ptr nocapture noundef readonly %srb, ptr noundef %chip, i32 noundef %start_sector, i16 noundef zeroext %sector_cnt) local_unnamed_addr #0 align 64 {
entry:
  %stat = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 15
  %0 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %do.body, label %do.body10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_rw.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_rw, %if.then5)) #7
          to label %if.end32 [label %if.then5], !srcloc !336

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %conv = zext i16 %sector_cnt to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %sector_cnt)
  %cmp8 = icmp ugt i16 %sector_cnt, 1
  %cond = select i1 %cmp8, ptr @.str.6, ptr @.str.7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_rw.__UNIQUE_ID_ddebug362, ptr noundef %dev.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef %conv, ptr noundef nonnull %cond, i32 noundef %start_sector) #7
  br label %if.end32

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_rw.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_rw, %if.then22)) #7
          to label %if.end32 [label %if.then22], !srcloc !336

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev.i765 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %conv24 = zext i16 %sector_cnt to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %sector_cnt)
  %cmp26 = icmp ugt i16 %sector_cnt, 1
  %cond28 = select i1 %cmp26, ptr @.str.6, ptr @.str.7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_rw.__UNIQUE_ID_ddebug363, ptr noundef %dev.i765, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, i32 noundef %conv24, ptr noundef nonnull %cond28, i32 noundef %start_sector) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then22, %do.body10, %if.then5, %do.body
  %cleanup_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 11
  %10 = ptrtoint ptr %cleanup_counter to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %cleanup_counter, align 4
  %card_ready = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 21
  %11 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %card_ready, align 2
  %13 = and i8 %12, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool34.not = icmp eq i8 %13, 0
  br i1 %tobool34.not, label %if.then35, label %if.end32.if.end57_crit_edge

if.end32.if.end57_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then35:                                        ; preds = %if.end32
  %seq_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 7
  %14 = ptrtoint ptr %seq_mode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %seq_mode, align 4
  %call36 = tail call i32 @reset_sd_card(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp eq i32 %call36, 0
  %15 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %card_ready, align 2
  br i1 %cmp37, label %if.then39, label %if.else46

if.then39:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  %17 = or i8 %16, 4
  %18 = ptrtoint ptr %card_ready to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %card_ready, align 2
  %card_fail = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 22
  %19 = ptrtoint ptr %card_fail to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %card_fail, align 1
  %21 = and i8 %20, -5
  store i8 %21, ptr %card_fail, align 1
  br label %if.end57

if.else46:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  %22 = and i8 %16, -5
  %23 = ptrtoint ptr %card_ready to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %card_ready, align 2
  %card_fail51 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 22
  %24 = ptrtoint ptr %card_fail51 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %card_fail51, align 1
  %26 = or i8 %25, 4
  store i8 %26, ptr %card_fail51, align 1
  %arrayidx = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 4
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 4
  %idxprom = zext i8 %28 to i32
  %arrayidx55 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 31, i32 %idxprom
  %29 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arrayidx55, align 4
  %rw_need_retry = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 17
  %30 = ptrtoint ptr %rw_need_retry to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %rw_need_retry, align 4
  br label %cleanup517

if.end57:                                         ; preds = %if.then39, %if.end32.if.end57_crit_edge
  %31 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sd_card1, align 4
  %shl = shl i32 %start_sector, 9
  %33 = and i16 %32, 4350
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %33)
  %34 = icmp eq i16 %33, 4096
  %data_addr.0 = select i1 %34, i32 %start_sector, i32 %shl
  %err_code.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  %35 = ptrtoint ptr %err_code.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %err_code.i, align 2
  %call.i = tail call i32 @select_card(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end57.if.then83_crit_edge

if.end57.if.then83_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83

if.end.i:                                         ; preds = %if.end57
  %sd_clock.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  %36 = ptrtoint ptr %sd_clock.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sd_clock.i, align 4
  %asic_code.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %38 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %37) #7
  br label %sd_switch_clock.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %37) #7
  br label %sd_switch_clock.exit

sd_switch_clock.exit:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval1.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i)
  %cmp4.not.i.not = icmp eq i32 %retval1.0.i.i, 0
  br i1 %cmp4.not.i.not, label %if.end84, label %sd_switch_clock.exit.if.then83_crit_edge

sd_switch_clock.exit.if.then83_crit_edge:         ; preds = %sd_switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83

if.then83:                                        ; preds = %sd_switch_clock.exit.if.then83_crit_edge, %if.end57.if.then83_crit_edge
  %40 = ptrtoint ptr %err_code.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %err_code.i, align 2
  %or5.i = or i8 %41, 2
  store i8 %or5.i, ptr %err_code.i, align 2
  br label %RW_FAIL

if.end84:                                         ; preds = %sd_switch_clock.exit
  %seq_mode85 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 7
  %42 = ptrtoint ptr %seq_mode85 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %seq_mode85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool86.not = icmp eq i32 %43, 0
  br i1 %tobool86.not, label %if.end84.if.end258_crit_edge, label %land.lhs.true87

if.end84.if.end258_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

land.lhs.true87:                                  ; preds = %if.end84
  %pre_dir = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 8
  %44 = ptrtoint ptr %pre_dir to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pre_dir, align 4
  %46 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp89.not = icmp eq i32 %45, %47
  br i1 %cmp89.not, label %lor.lhs.false, label %land.lhs.true87.if.then94_crit_edge

land.lhs.true87.if.then94_crit_edge:              ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then94

lor.lhs.false:                                    ; preds = %land.lhs.true87
  %pre_sec_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 9
  %48 = ptrtoint ptr %pre_sec_addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pre_sec_addr, align 4
  %pre_sec_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 10
  %50 = ptrtoint ptr %pre_sec_cnt to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %pre_sec_cnt, align 4
  %conv91 = zext i16 %51 to i32
  %add = add i32 %49, %conv91
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %start_sector)
  %cmp92.not = icmp eq i32 %add, %start_sector
  br i1 %cmp92.not, label %lor.lhs.false.if.end258_crit_edge, label %lor.lhs.false.if.then94_crit_edge

lor.lhs.false.if.then94_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then94

lor.lhs.false.if.end258_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

if.then94:                                        ; preds = %lor.lhs.false.if.then94_crit_edge, %land.lhs.true87.if.then94_crit_edge
  %pre_sec_cnt95 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 10
  %52 = ptrtoint ptr %pre_sec_cnt95 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %pre_sec_cnt95, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %53)
  %cmp97 = icmp ult i16 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp101 = icmp eq i32 %45, 2
  %or.cond800 = select i1 %cmp97, i1 %cmp101, i1 false
  br i1 %or.cond800, label %land.lhs.true103, label %if.then94.if.end171_crit_edge

if.then94.if.end171_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end171

land.lhs.true103:                                 ; preds = %if.then94
  %54 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %sd_card1, align 4
  %conv105 = zext i16 %55 to i32
  %56 = and i32 %conv105, 767
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %56)
  %.not812 = icmp eq i32 %56, 512
  %57 = and i32 %conv105, 1279
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %57)
  %.not813 = icmp eq i32 %57, 1024
  %or.cond = or i1 %.not812, %.not813
  %58 = and i32 %conv105, 2303
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %58)
  %.not814 = icmp eq i32 %58, 2048
  %or.cond817 = select i1 %or.cond, i1 true, i1 %.not814
  %59 = and i32 %conv105, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %59)
  %.not815 = icmp eq i32 %59, 256
  %or.cond818 = select i1 %or.cond817, i1 true, i1 %.not815
  %60 = and i32 %conv105, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 769, i32 %60)
  %.not816 = icmp eq i32 %60, 769
  %or.cond819 = select i1 %or.cond818, i1 true, i1 %.not816
  br i1 %or.cond819, label %land.lhs.true103.if.end171_crit_edge, label %if.then169

land.lhs.true103.if.end171_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end171

if.then169:                                       ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #9
  %sd_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %61 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sd_addr, align 4
  %call170 = tail call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %62, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  br label %if.end171

if.end171:                                        ; preds = %if.then169, %land.lhs.true103.if.end171_crit_edge, %if.then94.if.end171_crit_edge
  %call172 = tail call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 12, i32 noundef 0, i8 noundef zeroext 9, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %cmp173.not = icmp eq i32 %call172, 0
  br i1 %cmp173.not, label %if.end177, label %if.then175

if.then175:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #9
  %rw_need_retry176 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 17
  %63 = ptrtoint ptr %rw_need_retry176 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %rw_need_retry176, align 4
  %64 = ptrtoint ptr %err_code.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %err_code.i, align 2
  %or5.i768 = or i8 %65, 8
  store i8 %or5.i768, ptr %err_code.i, align 2
  br label %RW_FAIL

if.end177:                                        ; preds = %if.end171
  %66 = ptrtoint ptr %seq_mode85 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %seq_mode85, align 4
  %call179 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -460, i8 noundef zeroext -128, i8 noundef zeroext -128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %cmp180.not = icmp eq i32 %call179, 0
  br i1 %cmp180.not, label %if.end183, label %if.then182

if.then182:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %err_code.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %err_code.i, align 2
  %or5.i770 = or i8 %68, 2
  store i8 %or5.i770, ptr %err_code.i, align 2
  br label %RW_FAIL

if.end183:                                        ; preds = %if.end177
  %69 = ptrtoint ptr %pre_sec_cnt95 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %pre_sec_cnt95, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %70)
  %cmp186 = icmp ult i16 %70, 128
  br i1 %cmp186, label %land.lhs.true188, label %if.end183.if.end258_crit_edge

if.end183.if.end258_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

land.lhs.true188:                                 ; preds = %if.end183
  %71 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %sd_card1, align 4
  %conv190 = zext i16 %72 to i32
  %73 = and i32 %conv190, 767
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %73)
  %.not807 = icmp eq i32 %73, 512
  %74 = and i32 %conv190, 1279
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %74)
  %.not808 = icmp eq i32 %74, 1024
  %or.cond820 = or i1 %.not807, %.not808
  %75 = and i32 %conv190, 2303
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %75)
  %.not809 = icmp eq i32 %75, 2048
  %or.cond821 = select i1 %or.cond820, i1 true, i1 %.not809
  %76 = and i32 %conv190, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %76)
  %.not810 = icmp eq i32 %76, 256
  %or.cond822 = select i1 %or.cond821, i1 true, i1 %.not810
  %77 = and i32 %conv190, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 769, i32 %77)
  %.not811 = icmp eq i32 %77, 769
  %or.cond823 = select i1 %or.cond822, i1 true, i1 %.not811
  br i1 %or.cond823, label %land.lhs.true188.if.end258_crit_edge, label %if.then254

land.lhs.true188.if.end258_crit_edge:             ; preds = %land.lhs.true188
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

if.then254:                                       ; preds = %land.lhs.true188
  call void @__sanitizer_cov_trace_pc() #9
  %sd_addr255 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %78 = ptrtoint ptr %sd_addr255 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sd_addr255, align 4
  %call256 = tail call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %79, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  br label %if.end258

if.end258:                                        ; preds = %if.then254, %land.lhs.true188.if.end258_crit_edge, %if.end183.if.end258_crit_edge, %lor.lhs.false.if.end258_crit_edge, %if.end84.if.end258_crit_edge
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %80 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %ci, align 4
  %.b = load i1, ptr @REG_SD_BYTE_CNT_L, align 2
  %81 = select i1 %.b, i16 -711, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %81, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  %.b709 = load i1, ptr @REG_SD_BYTE_CNT_H, align 2
  %82 = select i1 %.b709, i16 -710, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %82, i8 noundef zeroext -1, i8 noundef zeroext 2) #7
  %.b710 = load i1, ptr @REG_SD_BLOCK_CNT_L, align 2
  %83 = select i1 %.b710, i16 -709, i16 0
  %conv259 = trunc i16 %sector_cnt to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %83, i8 noundef zeroext -1, i8 noundef zeroext %conv259) #7
  %.b711 = load i1, ptr @REG_SD_BLOCK_CNT_H, align 2
  %84 = select i1 %.b711, i16 -708, i16 0
  %conv260 = zext i16 %sector_cnt to i32
  %85 = lshr i16 %sector_cnt, 8
  %conv261 = trunc i16 %85 to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %84, i8 noundef zeroext -1, i8 noundef zeroext %conv261) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %86 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %sd_card1, align 4
  %conv263 = zext i16 %87 to i32
  %88 = and i32 %conv263, 2303
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %88)
  %.not805 = icmp eq i32 %88, 2049
  br i1 %.not805, label %if.then272, label %if.else273

if.then272:                                       ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #9
  %.b714 = load i1, ptr @REG_SD_CFG1, align 2
  %89 = select i1 %.b714, i16 -719, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %89, i8 noundef zeroext 3, i8 noundef zeroext 2) #7
  br label %if.end293

if.else273:                                       ; preds = %if.end258
  %90 = and i32 %conv263, 1279
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %90)
  %.not806 = icmp eq i32 %90, 1025
  %91 = and i16 %87, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %cmp288 = icmp eq i16 %91, 0
  %or.cond801 = select i1 %.not806, i1 true, i1 %cmp288
  %.b713 = load i1, ptr @REG_SD_CFG1, align 2
  %92 = select i1 %.b713, i16 -719, i16 0
  br i1 %or.cond801, label %if.then290, label %if.else291

if.then290:                                       ; preds = %if.else273
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %92, i8 noundef zeroext 3, i8 noundef zeroext 1) #7
  br label %if.end293

if.else291:                                       ; preds = %if.else273
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %92, i8 noundef zeroext 3, i8 noundef zeroext 0) #7
  br label %if.end293

if.end293:                                        ; preds = %if.else291, %if.then290, %if.then272
  %93 = ptrtoint ptr %seq_mode85 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %seq_mode85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool295.not = icmp eq i32 %94, 0
  br i1 %tobool295.not, label %if.else305, label %if.then296

if.then296:                                       ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #9
  %.b717 = load i1, ptr @REG_SD_CFG2, align 2
  %95 = select i1 %.b717, i16 -717, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %95, i8 noundef zeroext -1, i8 noundef zeroext -124) #7
  %96 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sc_data_direction, align 4
  %mul = shl nuw nsw i32 %conv260, 9
  tail call void @trans_dma_enable(i32 noundef %97, ptr noundef %chip, i32 noundef %mul, i8 noundef zeroext 32) #7
  %98 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %99)
  %cmp300 = icmp eq i32 %99, 2
  %.b724 = load i1, ptr @REG_SD_TRANSFER, align 2
  %100 = select i1 %.b724, i16 -718, i16 0
  %. = select i1 %cmp300, i8 -123, i8 -127
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %100, i8 noundef zeroext -1, i8 noundef zeroext %.) #7
  %.b722 = load i1, ptr @REG_SD_TRANSFER, align 2
  %101 = select i1 %.b722, i16 -718, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext %101, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  tail call void @rtsx_send_cmd_no_wait(ptr noundef %chip) #7
  br label %if.end362

if.else305:                                       ; preds = %if.end293
  %102 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %103)
  %cmp307 = icmp eq i32 %103, 2
  br i1 %cmp307, label %do.body310, label %if.else337

do.body310:                                       ; preds = %if.else305
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_rw.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_rw, %if.then322)) #7
          to label %do.end326 [label %if.then322], !srcloc !336

if.then322:                                       ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %chip, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %dev.i771 = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_rw.__UNIQUE_ID_ddebug364, ptr noundef %dev.i771, ptr noundef nonnull @.str.9, i32 noundef 18) #7
  br label %do.end326

do.end326:                                        ; preds = %if.then322, %do.body310
  %.b725 = load i1, ptr @REG_SD_CMD0, align 2
  %108 = select i1 %.b725, i16 -716, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %108, i8 noundef zeroext -1, i8 noundef zeroext 82) #7
  %.b726 = load i1, ptr @REG_SD_CMD1, align 2
  %109 = select i1 %.b726, i16 -715, i16 0
  %shr327 = lshr i32 %data_addr.0, 24
  %conv328 = trunc i32 %shr327 to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %109, i8 noundef zeroext -1, i8 noundef zeroext %conv328) #7
  %.b727 = load i1, ptr @REG_SD_CMD2, align 2
  %110 = select i1 %.b727, i16 -714, i16 0
  %shr329 = lshr i32 %data_addr.0, 16
  %conv330 = trunc i32 %shr329 to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %110, i8 noundef zeroext -1, i8 noundef zeroext %conv330) #7
  %.b728 = load i1, ptr @REG_SD_CMD3, align 2
  %111 = select i1 %.b728, i16 -713, i16 0
  %shr331 = lshr i32 %data_addr.0, 8
  %conv332 = trunc i32 %shr331 to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %111, i8 noundef zeroext -1, i8 noundef zeroext %conv332) #7
  %.b729 = load i1, ptr @REG_SD_CMD4, align 2
  %112 = select i1 %.b729, i16 -712, i16 0
  %conv333 = trunc i32 %data_addr.0 to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %112, i8 noundef zeroext -1, i8 noundef zeroext %conv333) #7
  br label %if.end360

if.else337:                                       ; preds = %if.else305
  %call338 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 4, i32 noundef 50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call338)
  %cmp339 = icmp slt i32 %call338, 0
  br i1 %cmp339, label %if.then341, label %if.end343

if.then341:                                       ; preds = %if.else337
  call void @__sanitizer_cov_trace_pc() #9
  %call.i772 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  %rw_need_retry342 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 17
  %113 = ptrtoint ptr %rw_need_retry342 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 1, ptr %rw_need_retry342, align 4
  %114 = ptrtoint ptr %err_code.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %err_code.i, align 2
  %or5.i774 = or i8 %115, 64
  store i8 %or5.i774, ptr %err_code.i, align 2
  br label %RW_FAIL

if.end343:                                        ; preds = %if.else337
  %call344 = tail call fastcc i32 @wait_data_buf_ready(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call344)
  %cmp345.not = icmp eq i32 %call344, 0
  br i1 %cmp345.not, label %if.end349, label %if.then347

if.then347:                                       ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #9
  %rw_need_retry348 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 17
  %116 = ptrtoint ptr %rw_need_retry348 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %rw_need_retry348, align 4
  %117 = ptrtoint ptr %err_code.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %err_code.i, align 2
  %or5.i776 = or i8 %118, 64
  store i8 %or5.i776, ptr %err_code.i, align 2
  br label %RW_FAIL

if.end349:                                        ; preds = %if.end343
  %call350 = tail call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 25, i32 noundef %data_addr.0, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call350)
  %cmp351.not = icmp eq i32 %call350, 0
  br i1 %cmp351.not, label %if.end355, label %if.then353

if.then353:                                       ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #9
  %rw_need_retry354 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 17
  %119 = ptrtoint ptr %rw_need_retry354 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 1, ptr %rw_need_retry354, align 4
  br label %RW_FAIL

if.end355:                                        ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #9
  %120 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %ci, align 4
  br label %if.end360

if.end360:                                        ; preds = %if.end355, %do.end326
  %.sink830 = phi i8 [ -124, %if.end355 ], [ 1, %do.end326 ]
  %.sink827 = phi i8 [ -127, %if.end355 ], [ -114, %do.end326 ]
  %.b715 = load i1, ptr @REG_SD_CFG2, align 2
  %121 = select i1 %.b715, i16 -717, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %121, i8 noundef zeroext -1, i8 noundef zeroext %.sink830) #7
  %122 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %sc_data_direction, align 4
  %mul359 = shl nuw nsw i32 %conv260, 9
  tail call void @trans_dma_enable(i32 noundef %123, ptr noundef %chip, i32 noundef %mul359, i8 noundef zeroext 32) #7
  %.b719 = load i1, ptr @REG_SD_TRANSFER, align 2
  %124 = select i1 %.b719, i16 -718, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %124, i8 noundef zeroext -1, i8 noundef zeroext %.sink827) #7
  %.b718 = load i1, ptr @REG_SD_TRANSFER, align 2
  %125 = select i1 %.b718, i16 -718, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext %125, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  tail call void @rtsx_send_cmd_no_wait(ptr noundef %chip) #7
  %126 = ptrtoint ptr %seq_mode85 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %seq_mode85, align 4
  br label %if.end362

if.end362:                                        ; preds = %if.end360, %if.then296
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17
  %127 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %sdb.i, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %129 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %length.i, align 4
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 0, i32 1
  %131 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %nents.i, align 4
  %133 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %sc_data_direction, align 4
  %sd_timeout = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 119
  %135 = ptrtoint ptr %sd_timeout to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %sd_timeout, align 4
  %call367 = tail call i32 @rtsx_transfer_data(ptr noundef %chip, i8 noundef zeroext 4, ptr noundef %128, i32 noundef %130, i32 noundef %132, i32 noundef %134, i32 noundef %136) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call367)
  %cmp368 = icmp slt i32 %call367, 0
  br i1 %cmp368, label %if.then370, label %if.end434

if.then370:                                       ; preds = %if.end362
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stat) #7
  %137 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %stat, align 1
  %138 = ptrtoint ptr %seq_mode85 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %seq_mode85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call367)
  %cmp372 = icmp eq i32 %call367, -110
  %.b730 = load i1, ptr @REG_SD_STAT1, align 2
  %139 = select i1 %.b730, i16 -720, i16 0
  %call377 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext %139, ptr noundef nonnull %stat) #7
  %call.i777 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  %call378 = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call378)
  %cmp379.not = icmp eq i32 %call378, 0
  %rw_need_retry401 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 17
  br i1 %cmp379.not, label %if.end400, label %if.then381

if.then381:                                       ; preds = %if.then370
  call void @__sanitizer_cov_trace_pc() #9
  %140 = ptrtoint ptr %rw_need_retry401 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %rw_need_retry401, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_rw.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_rw, %if.then395)) #7
          to label %cleanup [label %if.then395], !srcloc !336

if.then395:                                       ; preds = %if.then381
  call void @__sanitizer_cov_trace_pc() #9
  %141 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %chip, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %dev.i778 = getelementptr inbounds %struct.pci_dev, ptr %144, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_rw.__UNIQUE_ID_ddebug365, ptr noundef %dev.i778, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end400:                                        ; preds = %if.then370
  %145 = ptrtoint ptr %rw_need_retry401 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1, ptr %rw_need_retry401, align 4
  %call402 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 12, i32 noundef 0, i8 noundef zeroext 9, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call402)
  %cmp403.not = icmp eq i32 %call402, 0
  br i1 %cmp403.not, label %if.end406, label %if.then405

if.then405:                                       ; preds = %if.end400
  call void @__sanitizer_cov_trace_pc() #9
  %146 = ptrtoint ptr %err_code.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %err_code.i, align 2
  %or5.i780 = or i8 %147, 8
  store i8 %or5.i780, ptr %err_code.i, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat) #7
  br label %RW_FAIL

if.end406:                                        ; preds = %if.end400
  %148 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %149)
  %tobool409.not = icmp ult i8 %149, 32
  br i1 %tobool409.not, label %if.end428, label %do.body411

do.body411:                                       ; preds = %if.end406
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_rw.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_rw, %if.then423)) #7
          to label %do.end427 [label %if.then423], !srcloc !336

if.then423:                                       ; preds = %do.body411
  call void @__sanitizer_cov_trace_pc() #9
  %150 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %chip, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %151, align 4
  %dev.i781 = getelementptr inbounds %struct.pci_dev, ptr %153, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_rw.__UNIQUE_ID_ddebug366, ptr noundef %dev.i781, ptr noundef nonnull @.str.11) #7
  br label %do.end427

do.end427:                                        ; preds = %if.then423, %do.body411
  %154 = ptrtoint ptr %err_code.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %err_code.i, align 2
  %or5.i783 = or i8 %155, -128
  store i8 %or5.i783, ptr %err_code.i, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat) #7
  br label %RW_FAIL

if.end428:                                        ; preds = %if.end406
  br i1 %cmp372, label %if.then431, label %if.end428.cleanup_crit_edge

if.end428.cleanup_crit_edge:                      ; preds = %if.end428
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then431:                                       ; preds = %if.end428
  call void @__sanitizer_cov_trace_pc() #9
  %156 = ptrtoint ptr %err_code.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %err_code.i, align 2
  %or5.i785 = or i8 %157, 64
  store i8 %or5.i785, ptr %err_code.i, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat) #7
  br label %RW_FAIL

cleanup:                                          ; preds = %if.end428.cleanup_crit_edge, %if.then395, %if.then381
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat) #7
  br label %cleanup517

if.end434:                                        ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #9
  %pre_sec_addr435 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 9
  %158 = ptrtoint ptr %pre_sec_addr435 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %start_sector, ptr %pre_sec_addr435, align 4
  %pre_sec_cnt436 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 10
  %159 = ptrtoint ptr %pre_sec_cnt436 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %sector_cnt, ptr %pre_sec_cnt436, align 4
  %160 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %sc_data_direction, align 4
  %pre_dir438 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 8
  %162 = ptrtoint ptr %pre_dir438 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %pre_dir438, align 4
  br label %cleanup517

RW_FAIL:                                          ; preds = %if.then431, %do.end427, %if.then405, %if.then353, %if.then347, %if.then341, %if.then182, %if.then175, %if.then83
  %seq_mode439 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 7
  %163 = ptrtoint ptr %seq_mode439 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %seq_mode439, align 4
  %call440 = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call440)
  %cmp441.not = icmp eq i32 %call440, 0
  br i1 %cmp441.not, label %if.end462, label %if.then443

if.then443:                                       ; preds = %RW_FAIL
  call void @__sanitizer_cov_trace_pc() #9
  %rw_need_retry444 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 17
  %164 = ptrtoint ptr %rw_need_retry444 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %rw_need_retry444, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_rw.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_rw, %if.then457)) #7
          to label %cleanup517 [label %if.then457], !srcloc !336

if.then457:                                       ; preds = %if.then443
  call void @__sanitizer_cov_trace_pc() #9
  %165 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %chip, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %166, align 4
  %dev.i786 = getelementptr inbounds %struct.pci_dev, ptr %168, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_rw.__UNIQUE_ID_ddebug367, ptr noundef %dev.i786, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4) #7
  br label %cleanup517

if.end462:                                        ; preds = %RW_FAIL
  %169 = ptrtoint ptr %err_code.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %err_code.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %170)
  %tobool464.not = icmp sgt i8 %170, -1
  br i1 %tobool464.not, label %if.else493, label %if.then465

if.then465:                                       ; preds = %if.end462
  %171 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %sd_card1, align 4
  %conv467 = zext i16 %172 to i32
  %173 = and i32 %conv467, 1279
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %173)
  %.not803 = icmp eq i32 %173, 1025
  %174 = and i32 %conv467, 2303
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %174)
  %.not804 = icmp eq i32 %174, 2049
  %or.cond824 = or i1 %.not803, %.not804
  br i1 %or.cond824, label %if.then487, label %if.else490

if.then487:                                       ; preds = %if.then465
  call void @__sanitizer_cov_trace_pc() #9
  %mmc_dont_switch_bus = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 13
  %175 = ptrtoint ptr %mmc_dont_switch_bus to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 1, ptr %mmc_dont_switch_bus, align 4
  call fastcc void @reset_mmc_only(ptr noundef %chip)
  %176 = ptrtoint ptr %mmc_dont_switch_bus to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 0, ptr %mmc_dont_switch_bus, align 4
  br label %cleanup517

if.else490:                                       ; preds = %if.then465
  %need_retune = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 27
  %177 = ptrtoint ptr %need_retune to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 1, ptr %need_retune, align 4
  %asic_code.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %178 = ptrtoint ptr %asic_code.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %asic_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool.not.i = icmp eq i32 %179, 0
  %sd_clock5.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  %180 = ptrtoint ptr %sd_clock5.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %sd_clock5.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else490
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %181)
  %cmp.i = icmp sgt i32 %181, 30
  br i1 %cmp.i, label %if.then3.i, label %if.then.i.if.end17.i_crit_edge

if.then.i.if.end17.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add nsw i32 %181, -20
  br label %if.end17.sink.split.i

if.else.i:                                        ; preds = %if.else490
  %switch.tableidx = add i32 %181, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %182 = icmp ult i32 %switch.tableidx, 6
  br i1 %182, label %switch.lookup, label %if.else.i.if.end17.i_crit_edge

if.else.i.if.end17.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

switch.lookup:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.offset = add i32 %181, -1
  br label %if.end17.sink.split.i

if.end17.sink.split.i:                            ; preds = %switch.lookup, %if.then3.i
  %.sink.i = phi i32 [ %sub.i, %if.then3.i ], [ %switch.offset, %switch.lookup ]
  %183 = ptrtoint ptr %sd_clock5.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %.sink.i, ptr %sd_clock5.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end17.sink.split.i, %if.else.i.if.end17.i_crit_edge, %if.then.i.if.end17.i_crit_edge
  %call.i.i788 = call i32 @select_card(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i788)
  %cmp.not.i.i = icmp eq i32 %call.i.i788, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end17.i.cleanup517_crit_edge

if.end17.i.cleanup517_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup517

if.end.i.i:                                       ; preds = %if.end17.i
  %184 = ptrtoint ptr %sd_clock5.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %sd_clock5.i, align 4
  %186 = ptrtoint ptr %asic_code.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %asic_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool.not.i.i.i = icmp eq i32 %187, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %185) #7
  br label %cleanup517

if.else.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i.i.i = call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %185) #7
  br label %cleanup517

if.else493:                                       ; preds = %if.end462
  %and4.i790 = and i8 %170, 72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and4.i790)
  %tobool495.not = icmp eq i8 %and4.i790, 0
  br i1 %tobool495.not, label %if.else493.cleanup517_crit_edge, label %if.then496

if.else493.cleanup517_crit_edge:                  ; preds = %if.else493
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup517

if.then496:                                       ; preds = %if.else493
  %call497 = call i32 @reset_sd_card(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call497)
  %cmp498.not = icmp eq i32 %call497, 0
  br i1 %cmp498.not, label %if.then496.cleanup517_crit_edge, label %if.then500

if.then496.cleanup517_crit_edge:                  ; preds = %if.then496
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup517

if.then500:                                       ; preds = %if.then496
  call void @__sanitizer_cov_trace_pc() #9
  %188 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %card_ready, align 2
  %190 = and i8 %189, -5
  store i8 %190, ptr %card_ready, align 2
  %card_fail505 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 22
  %191 = ptrtoint ptr %card_fail505 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %card_fail505, align 1
  %193 = or i8 %192, 4
  store i8 %193, ptr %card_fail505, align 1
  %arrayidx511 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 4
  %194 = ptrtoint ptr %arrayidx511 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx511, align 4
  %idxprom512 = zext i8 %195 to i32
  %arrayidx513 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 31, i32 %idxprom512
  %196 = ptrtoint ptr %arrayidx513 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 0, ptr %arrayidx513, align 4
  br label %cleanup517

cleanup517:                                       ; preds = %if.then500, %if.then496.cleanup517_crit_edge, %if.else493.cleanup517_crit_edge, %if.else.i.i.i, %if.then.i.i.i, %if.end17.i.cleanup517_crit_edge, %if.then487, %if.then457, %if.then443, %if.end434, %cleanup, %if.else46
  %retval.1 = phi i32 [ 1, %cleanup ], [ 0, %if.end434 ], [ 1, %if.else46 ], [ 1, %if.then457 ], [ 1, %if.else493.cleanup517_crit_edge ], [ 1, %if.then500 ], [ 1, %if.then496.cleanup517_crit_edge ], [ 1, %if.then487 ], [ 1, %if.then443 ], [ 1, %if.end17.i.cleanup517_crit_edge ], [ 1, %if.then.i.i.i ], [ 1, %if.else.i.i.i ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trans_dma_enable(i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_send_cmd_no_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_data_buf_ready(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_data_buf_ready = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 2
  %sd_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  br label %for.body

for.cond:                                         ; preds = %if.end7
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, 255
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.027 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %call = tail call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3.not = icmp eq i32 %call, 0
  br i1 %cmp3.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  %0 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %err_code2.i, align 2
  %or5.i = or i8 %1, 32
  store i8 %or5.i, ptr %err_code2.i, align 2
  br label %cleanup

if.end:                                           ; preds = %for.body
  %2 = ptrtoint ptr %sd_data_buf_ready to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %sd_data_buf_ready, align 1
  %3 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sd_addr, align 4
  %call4 = tail call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %4, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %5 = ptrtoint ptr %sd_data_buf_ready to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sd_data_buf_ready, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %for.cond, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sd_addr, align 4
  %call11 = tail call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %8, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %err_code2.i24 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  %9 = ptrtoint ptr %err_code2.i24 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %err_code2.i24, align 2
  %or5.i25 = or i8 %10, 64
  store i8 %or5.i25, ptr %err_code2.i24, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then9, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %call11, %if.then9 ], [ 1, %for.end ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_transfer_data(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_read_register(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @detect_card_cd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reset_mmc_only(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  %0 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %sd_card1, align 4
  %seq_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 7
  %1 = ptrtoint ptr %seq_mode to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %seq_mode, align 4
  %sd_data_buf_ready = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 2
  %2 = ptrtoint ptr %sd_data_buf_ready to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %sd_data_buf_ready, align 1
  %capacity = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 4
  %sd_switch_fail = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 22
  %3 = ptrtoint ptr %sd_switch_fail to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %sd_switch_fail, align 2
  %sd_lock_status = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %4 = ptrtoint ptr %sd_lock_status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %sd_lock_status, align 4
  %sd_erase_status = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 25
  %5 = ptrtoint ptr %sd_erase_status to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %sd_erase_status, align 1
  %6 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %capacity, align 4
  %arrayidx = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 4
  %idxprom = zext i8 %8 to i32
  %arrayidx5 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 31, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx5, align 4
  %call = tail call i32 @enable_card_clock(ptr noundef %chip, i8 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call fastcc i32 @sd_init_power(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call fastcc i32 @reset_mmc(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %.b.i = load i1, ptr @REG_SD_CFG1, align 2
  %10 = select i1 %.b.i, i16 -719, i16 0
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %10, i8 noundef zeroext 96, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp15.not = icmp eq i32 %call.i, 0
  br i1 %cmp15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %.b = load i1, ptr @REG_SD_BYTE_CNT_L, align 2
  %11 = select i1 %.b, i16 -711, i16 0
  %call18 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %11, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.end20, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %.b73 = load i1, ptr @REG_SD_BYTE_CNT_H, align 2
  %12 = select i1 %.b73, i16 -710, i16 0
  %call21 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %12, i8 noundef zeroext -1, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %13 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %capacity, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 4
  %idxprom29 = zext i8 %16 to i32
  %arrayidx30 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 31, i32 %idxprom29
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %arrayidx30, align 4
  %call31 = tail call fastcc i32 @sd_set_init_para(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32.not = icmp eq i32 %call31, 0
  br i1 %cmp32.not, label %do.body, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reset_mmc_only.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_mmc_only, %if.then39)) #7
          to label %cleanup [label %if.then39], !srcloc !336

if.then39:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %22 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sd_card1, align 4
  %conv = zext i16 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reset_mmc_only.__UNIQUE_ID_ddebug361, ptr noundef %dev.i, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.101, i32 noundef %conv) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %do.body, %if.end24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext_sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext %cmd_idx, i32 noundef %arg, i8 noundef zeroext %rsp_type, ptr noundef writeonly %rsp, i32 noundef %rsp_len, i1 noundef zeroext %special_check) #0 align 64 {
entry:
  %stat.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ext_sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ext_sd_send_cmd_get_rsp, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !336

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %conv = zext i8 %cmd_idx to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ext_sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug368, ptr noundef %dev.i, ptr noundef nonnull @.str.13, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv6 = zext i8 %rsp_type to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %rsp_type)
  %cmp = icmp eq i8 %rsp_type, 9
  %spec.select = select i1 %cmp, i32 3000, i32 100
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %or = or i8 %cmd_idx, 64
  %shr = lshr i32 %arg, 24
  %conv12 = trunc i32 %shr to i8
  %shr13 = lshr i32 %arg, 16
  %conv14 = trunc i32 %shr13 to i8
  %shr15 = lshr i32 %arg, 8
  %conv16 = trunc i32 %shr15 to i8
  %conv17 = trunc i32 %arg to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %rsp_type)
  %cmp19 = icmp eq i8 %rsp_type, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %rsp_type)
  %cmp26.not = icmp eq i8 %rsp_type, 4
  %host_cmds_ptr.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 4
  %and72 = and i32 %conv6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %cmd_idx)
  %cmp81 = icmp eq i8 %cmd_idx, 25
  br label %RTY_SEND_CMD

RTY_SEND_CMD:                                     ; preds = %__here, %do.end
  %stat_idx.0 = phi i32 [ 0, %do.end ], [ %stat_idx.1, %__here ]
  %rty_cnt.0 = phi i32 [ 0, %do.end ], [ %inc165, %__here ]
  %4 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ci, align 4
  %.b298 = load i1, ptr @REG_SD_CMD0, align 2
  %5 = select i1 %.b298, i16 -716, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %5, i8 noundef zeroext -1, i8 noundef zeroext %or) #7
  %.b299 = load i1, ptr @REG_SD_CMD1, align 2
  %6 = select i1 %.b299, i16 -715, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %6, i8 noundef zeroext -1, i8 noundef zeroext %conv12) #7
  %.b300 = load i1, ptr @REG_SD_CMD2, align 2
  %7 = select i1 %.b300, i16 -714, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %7, i8 noundef zeroext -1, i8 noundef zeroext %conv14) #7
  %.b301 = load i1, ptr @REG_SD_CMD3, align 2
  %8 = select i1 %.b301, i16 -713, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %8, i8 noundef zeroext -1, i8 noundef zeroext %conv16) #7
  %.b303 = load i1, ptr @REG_SD_CMD4, align 2
  %9 = select i1 %.b303, i16 -712, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %9, i8 noundef zeroext -1, i8 noundef zeroext %conv17) #7
  %.b = load i1, ptr @REG_SD_CFG2, align 2
  %10 = select i1 %.b, i16 -717, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %10, i8 noundef zeroext -1, i8 noundef zeroext %rsp_type) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %.b296 = load i1, ptr @REG_SD_TRANSFER, align 2
  %11 = select i1 %.b296, i16 -718, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %11, i8 noundef zeroext -1, i8 noundef zeroext -120) #7
  %.b295 = load i1, ptr @REG_SD_TRANSFER, align 2
  %12 = select i1 %.b295, i16 -718, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext %12, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  br i1 %cmp19, label %for.body.preheader, label %if.else

for.body.preheader:                               ; preds = %RTY_SEND_CMD
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1536, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1535, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1534, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1533, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1532, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1531, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1530, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1529, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1528, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1527, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1526, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1525, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1524, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1523, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1522, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1521, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  br label %if.end39

if.else:                                          ; preds = %RTY_SEND_CMD
  br i1 %cmp26.not, label %if.else.if.end39_crit_edge, label %if.then28

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then28:                                        ; preds = %if.else
  %.b297 = load i1, ptr @REG_SD_CMD0, align 2
  %13 = select i1 %.b297, i16 -716, i16 0
  %conv30338 = zext i16 %13 to i32
  %.b302339 = load i1, ptr @REG_SD_CMD4, align 2
  %conv31340 = select i1 %.b302339, i32 64824, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %conv31340, i32 %conv30338)
  %cmp32.not341 = icmp ult i32 %conv31340, %conv30338
  br i1 %cmp32.not341, label %if.then28.if.end39_crit_edge, label %if.then28.for.body34_crit_edge

if.then28.for.body34_crit_edge:                   ; preds = %if.then28
  br label %for.body34

if.then28.if.end39_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %if.then28.for.body34_crit_edge
  %reg_addr.1342 = phi i16 [ %inc36, %for.body34.for.body34_crit_edge ], [ %13, %if.then28.for.body34_crit_edge ]
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext %reg_addr.1342, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %inc36 = add i16 %reg_addr.1342, 1
  %conv30 = zext i16 %inc36 to i32
  %.b302 = load i1, ptr @REG_SD_CMD4, align 2
  %conv31 = select i1 %.b302, i32 64824, i32 0
  %cmp32.not = icmp ult i32 %conv31, %conv30
  br i1 %cmp32.not, label %for.body34.if.end39_crit_edge, label %for.body34.for.body34_crit_edge

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body34

for.body34.if.end39_crit_edge:                    ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end39:                                         ; preds = %for.body34.if.end39_crit_edge, %if.then28.if.end39_crit_edge, %if.else.if.end39_crit_edge, %for.body.preheader
  %stat_idx.1 = phi i32 [ %stat_idx.0, %if.else.if.end39_crit_edge ], [ 6, %if.then28.if.end39_crit_edge ], [ 17, %for.body.preheader ], [ 6, %for.body34.if.end39_crit_edge ]
  %.b305 = load i1, ptr @REG_SD_CMD5, align 2
  %14 = select i1 %.b305, i16 -678, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext %14, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %.b304 = load i1, ptr @REG_SD_STAT1, align 2
  %15 = select i1 %.b304, i16 -720, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext %15, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %call40 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 4, i32 noundef %spec.select) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.end58

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call40)
  %cmp44 = icmp eq i32 %call40, -110
  br i1 %cmp44, label %if.then46, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then46:                                        ; preds = %if.then43
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  %and = and i32 %conv6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool48.not = icmp eq i32 %and, 0
  br i1 %tobool48.not, label %if.else55, label %if.then49

if.then49:                                        ; preds = %if.then46
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stat.i) #7
  %16 = ptrtoint ptr %stat.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %stat.i, align 1, !annotation !337
  %.b.i = load i1, ptr @REG_SD_STAT1, align 2
  %17 = select i1 %.b.i, i16 -720, i16 0
  %call.i310 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext %17, ptr noundef nonnull %stat.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i310)
  %tobool.not.i = icmp eq i32 %call.i310, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then49.sd_check_data0_status.exit.thread_crit_edge

if.then49.sd_check_data0_status.exit.thread_crit_edge: ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_check_data0_status.exit.thread

if.end.i:                                         ; preds = %if.then49
  %18 = ptrtoint ptr %stat.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %stat.i, align 1
  %20 = and i8 %19, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool2.not.i = icmp eq i8 %20, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %sd_check_data0_status.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %err_code2.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  %21 = ptrtoint ptr %err_code2.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %err_code2.i.i, align 2
  %or5.i.i = or i8 %22, 16
  store i8 %or5.i.i, ptr %err_code2.i.i, align 2
  br label %sd_check_data0_status.exit.thread

sd_check_data0_status.exit.thread:                ; preds = %if.then3.i, %if.then49.sd_check_data0_status.exit.thread_crit_edge
  %retval.0.i311.ph = phi i32 [ %call.i310, %if.then49.sd_check_data0_status.exit.thread_crit_edge ], [ 1, %if.then3.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat.i) #7
  br label %cleanup

sd_check_data0_status.exit:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat.i) #7
  br label %cleanup

if.else55:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  %23 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %err_code2.i, align 2
  %or5.i = or i8 %24, 64
  store i8 %or5.i, ptr %err_code2.i, align 2
  br label %cleanup

if.end58:                                         ; preds = %if.end39
  br i1 %cmp26.not, label %if.end58.cleanup_crit_edge, label %if.end63

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end63:                                         ; preds = %if.end58
  %25 = ptrtoint ptr %host_cmds_ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host_cmds_ptr.i, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 1
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %28)
  %cmp67.not = icmp ult i8 %28, 64
  br i1 %cmp67.not, label %if.end70, label %if.then69

if.then69:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %err_code2.i312 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  %29 = ptrtoint ptr %err_code2.i312 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %err_code2.i312, align 2
  %or5.i313 = or i8 %30, 8
  store i8 %or5.i313, ptr %err_code2.i312, align 2
  br label %cleanup

if.end70:                                         ; preds = %if.end63
  br i1 %tobool73.not, label %if.then74, label %if.end70.if.end168_crit_edge

if.end70.if.end168_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end168

if.then74:                                        ; preds = %if.end70
  %arrayidx75 = getelementptr i8, ptr %add.ptr, i32 %stat_idx.1
  %31 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %32)
  %tobool78.not = icmp sgt i8 %32, -1
  br i1 %tobool78.not, label %if.then74.if.end168_crit_edge, label %if.then79

if.then74.if.end168_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end168

if.then79:                                        ; preds = %if.then74
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  %err_code2.i314 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  %33 = ptrtoint ptr %err_code2.i314 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %err_code2.i314, align 2
  %or5.i315 = or i8 %34, -128
  store i8 %or5.i315, ptr %err_code2.i314, align 2
  br label %cleanup

if.end84:                                         ; preds = %if.then79
  %exitcond.not = icmp eq i32 %rty_cnt.0, 3
  br i1 %exitcond.not, label %if.else166, label %__here

__here:                                           ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %35 = tail call i32 @llvm.read_register.i32(metadata !326) #7
  %and.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 212
  %39 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 ptrtoint (ptr blockaddress(@ext_sd_send_cmd_get_rsp, %__here) to i32), ptr %task_state_change, align 4
  %40 = load ptr, ptr %task, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 1, ptr %40, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !347
  %call162 = tail call i32 @schedule_timeout(i32 noundef 2) #7
  %inc165 = add nuw nsw i32 %rty_cnt.0, 1
  br label %RTY_SEND_CMD

if.else166:                                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %err_code2.i316 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  %42 = ptrtoint ptr %err_code2.i316 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %err_code2.i316, align 2
  %or5.i317 = or i8 %43, -128
  store i8 %or5.i317, ptr %err_code2.i316, align 2
  br label %cleanup

if.end168:                                        ; preds = %if.then74.if.end168_crit_edge, %if.end70.if.end168_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %cmd_idx)
  %cmp170 = icmp eq i8 %cmd_idx, 7
  %44 = zext i8 %cmd_idx to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.117)
  switch i8 %cmd_idx, label %if.end168.if.end225_crit_edge [
    i8 55, label %if.end168.if.then183_crit_edge
    i8 13, label %if.end168.if.then183_crit_edge400
    i8 12, label %if.end168.if.then183_crit_edge401
    i8 7, label %if.end168.if.then183_crit_edge402
  ]

if.end168.if.then183_crit_edge402:                ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then183

if.end168.if.then183_crit_edge401:                ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then183

if.end168.if.then183_crit_edge400:                ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then183

if.end168.if.then183_crit_edge:                   ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then183

if.end168.if.end225_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end225

if.then183:                                       ; preds = %if.end168.if.then183_crit_edge, %if.end168.if.then183_crit_edge400, %if.end168.if.then183_crit_edge401, %if.end168.if.then183_crit_edge402
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %cmd_idx)
  %cmp185.not = icmp eq i8 %cmd_idx, 12
  %brmerge = or i1 %cmp185.not, %special_check
  br i1 %brmerge, label %if.then183.if.end195_crit_edge, label %if.then188

if.then183.if.end195_crit_edge:                   ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end195

if.then188:                                       ; preds = %if.then183
  %arrayidx189 = getelementptr i8, ptr %26, i32 2
  %45 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx189, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %46)
  %tobool192.not = icmp sgt i8 %46, -1
  br i1 %tobool192.not, label %if.then188.if.end195_crit_edge, label %if.then188.cleanup_crit_edge

if.then188.cleanup_crit_edge:                     ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then188.if.end195_crit_edge:                   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end195

if.end195:                                        ; preds = %if.then188.if.end195_crit_edge, %if.then183.if.end195_crit_edge
  %arrayidx196 = getelementptr i8, ptr %26, i32 2
  %47 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx196, align 1
  %49 = and i8 %48, 125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool199.not = icmp eq i8 %49, 0
  br i1 %tobool199.not, label %if.end201, label %if.end195.cleanup_crit_edge

if.end195.cleanup_crit_edge:                      ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end201:                                        ; preds = %if.end195
  %arrayidx202 = getelementptr i8, ptr %26, i32 3
  %50 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx202, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %51)
  %tobool205.not = icmp ult i8 %51, 8
  br i1 %tobool205.not, label %if.end207, label %if.end201.cleanup_crit_edge

if.end201.cleanup_crit_edge:                      ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end207:                                        ; preds = %if.end201
  %52 = and i1 %cmp170, %cmp19
  br i1 %52, label %if.then215, label %if.end207.if.end225_crit_edge

if.end207.if.end225_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end225

if.then215:                                       ; preds = %if.end207
  %arrayidx216 = getelementptr i8, ptr %26, i32 4
  %53 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx216, align 1
  %55 = and i8 %54, 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %55)
  %cmp219.not = icmp eq i8 %55, 4
  br i1 %cmp219.not, label %if.then215.if.end225_crit_edge, label %if.then215.cleanup_crit_edge

if.then215.cleanup_crit_edge:                     ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then215.if.end225_crit_edge:                   ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end225

if.end225:                                        ; preds = %if.then215.if.end225_crit_edge, %if.end207.if.end225_crit_edge, %if.end168.if.end225_crit_edge
  %tobool226.not = icmp eq ptr %rsp, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rsp_len)
  %tobool228.not = icmp eq i32 %rsp_len, 0
  %or.cond309 = or i1 %tobool226.not, %tobool228.not
  br i1 %or.cond309, label %if.end225.cleanup_crit_edge, label %if.then229

if.end225.cleanup_crit_edge:                      ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then229:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #9
  %56 = call ptr @memcpy(ptr %rsp, ptr %add.ptr, i32 %rsp_len)
  br label %cleanup

cleanup:                                          ; preds = %if.then229, %if.end225.cleanup_crit_edge, %if.then215.cleanup_crit_edge, %if.end201.cleanup_crit_edge, %if.end195.cleanup_crit_edge, %if.then188.cleanup_crit_edge, %if.else166, %if.then83, %if.then69, %if.end58.cleanup_crit_edge, %if.else55, %sd_check_data0_status.exit, %sd_check_data0_status.exit.thread, %if.then43.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then69 ], [ 1, %if.then83 ], [ 1, %if.else166 ], [ 1, %if.then188.cleanup_crit_edge ], [ 1, %if.end195.cleanup_crit_edge ], [ 1, %if.end201.cleanup_crit_edge ], [ 1, %if.then215.cleanup_crit_edge ], [ 0, %if.then229 ], [ 0, %if.end225.cleanup_crit_edge ], [ %retval.0.i311.ph, %sd_check_data0_status.exit.thread ], [ 1, %sd_check_data0_status.exit ], [ 1, %if.else55 ], [ 1, %if.then43.cleanup_crit_edge ], [ 0, %if.end58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext_sd_get_rsp(ptr noundef %chip, i32 noundef %len, ptr noundef %rsp, i8 noundef zeroext %rsp_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %rsp_type)
  %cmp = icmp eq i8 %rsp_type, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ci, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %rsp_type)
  %cond = icmp eq i8 %rsp_type, 2
  br i1 %cond, label %for.body.preheader, label %if.then13

for.body.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1536, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1535, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1534, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1533, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1532, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1531, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1530, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1529, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1528, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1527, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1526, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1525, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1524, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1523, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1522, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1521, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  br label %if.end24

if.then13:                                        ; preds = %if.end
  %.b = load i1, ptr @REG_SD_CMD0, align 2
  %1 = select i1 %.b, i16 -716, i16 0
  %conv1598 = zext i16 %1 to i32
  %.b8999 = load i1, ptr @REG_SD_CMD4, align 2
  %conv16100 = select i1 %.b8999, i32 64824, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %conv16100, i32 %conv1598)
  %cmp17.not101 = icmp ult i32 %conv16100, %conv1598
  br i1 %cmp17.not101, label %if.then13.if.end24_crit_edge, label %if.then13.for.body19_crit_edge

if.then13.for.body19_crit_edge:                   ; preds = %if.then13
  br label %for.body19

if.then13.if.end24_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %if.then13.for.body19_crit_edge
  %reg_addr.1102 = phi i16 [ %inc21, %for.body19.for.body19_crit_edge ], [ %1, %if.then13.for.body19_crit_edge ]
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext %reg_addr.1102, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  %inc21 = add i16 %reg_addr.1102, 1
  %conv15 = zext i16 %inc21 to i32
  %.b89 = load i1, ptr @REG_SD_CMD4, align 2
  %conv16 = select i1 %.b89, i32 64824, i32 0
  %cmp17.not = icmp ult i32 %conv16, %conv15
  br i1 %cmp17.not, label %for.body19.if.end24_crit_edge, label %for.body19.for.body19_crit_edge

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body19

for.body19.if.end24_crit_edge:                    ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end24:                                         ; preds = %for.body19.if.end24_crit_edge, %if.then13.if.end24_crit_edge, %for.body.preheader
  %rsp_len.0 = phi i32 [ 6, %if.then13.if.end24_crit_edge ], [ 17, %for.body.preheader ], [ 6, %for.body19.if.end24_crit_edge ]
  %.b90 = load i1, ptr @REG_SD_CMD5, align 2
  %2 = select i1 %.b90, i16 -678, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext %2, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  %call = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 4, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp25.not = icmp eq i32 %call, 0
  br i1 %cmp25.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %tobool.not = icmp eq ptr %rsp, null
  br i1 %tobool.not, label %if.end28.cleanup_crit_edge, label %if.then29

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then29:                                        ; preds = %if.end28
  %3 = tail call i32 @llvm.smin.i32(i32 %rsp_len.0, i32 %len)
  %host_cmds_ptr.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 4
  %4 = ptrtoint ptr %host_cmds_ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_cmds_ptr.i, align 4
  %6 = call ptr @memcpy(ptr %rsp, ptr %5, i32 %3)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ext_sd_get_rsp.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ext_sd_get_rsp, %if.then37)) #7
          to label %do.body40 [label %if.then37], !srcloc !336

if.then37:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ext_sd_get_rsp.__UNIQUE_ID_ddebug370, ptr noundef %dev.i, ptr noundef nonnull @.str.15, i32 noundef %3) #7
  br label %do.body40

do.body40:                                        ; preds = %if.then37, %if.then29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ext_sd_get_rsp.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ext_sd_get_rsp, %if.then52)) #7
          to label %cleanup [label %if.then52], !srcloc !336

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev.i94 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %15 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rsp, align 1
  %conv54 = zext i8 %16 to i32
  %arrayidx55 = getelementptr i8, ptr %rsp, i32 1
  %17 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %18 to i32
  %arrayidx57 = getelementptr i8, ptr %rsp, i32 2
  %19 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %20 to i32
  %arrayidx59 = getelementptr i8, ptr %rsp, i32 3
  %21 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ext_sd_get_rsp.__UNIQUE_ID_ddebug371, ptr noundef %dev.i94, ptr noundef nonnull @.str.16, i32 noundef %conv54, i32 noundef %conv56, i32 noundef %conv58, i32 noundef %conv60) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %do.body40, %if.end28.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end24.cleanup_crit_edge ], [ 0, %if.then52 ], [ 0, %if.end28.cleanup_crit_edge ], [ 0, %do.body40 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sd_pass_thru_mode(ptr noundef %srb, ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [18 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %lun2 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %lun2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun2, align 8
  %conv = trunc i64 %3 to i32
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %buf) #7
  %4 = call ptr @memcpy(ptr %buf, ptr @__const.sd_pass_thru_mode.buf, i32 18)
  %pre_cmd_err = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 15
  %5 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %pre_cmd_err, align 4
  %lun_mc = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 25
  %6 = ptrtoint ptr %lun_mc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lun_mc, align 2
  %conv3 = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = trunc i32 %shl to i8
  %conv7 = or i8 %7, %8
  %9 = ptrtoint ptr %lun_mc to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv7, ptr %lun_mc, align 2
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 1) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %10 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %11, i32 2
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %13)
  %cmp.not = icmp eq i8 %13, 83
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.if.then45_crit_edge

if.end.if.then45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx11 = getelementptr i8, ptr %11, i32 3
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %15)
  %cmp13.not = icmp eq i8 %15, 68
  br i1 %cmp13.not, label %lor.lhs.false15, label %lor.lhs.false.if.then45_crit_edge

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %arrayidx17 = getelementptr i8, ptr %11, i32 4
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %17)
  %cmp19.not = icmp eq i8 %17, 32
  br i1 %cmp19.not, label %lor.lhs.false21, label %lor.lhs.false15.if.then45_crit_edge

lor.lhs.false15.if.then45_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

lor.lhs.false21:                                  ; preds = %lor.lhs.false15
  %arrayidx23 = getelementptr i8, ptr %11, i32 5
  %18 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %19)
  %cmp25.not = icmp eq i8 %19, 67
  br i1 %cmp25.not, label %lor.lhs.false27, label %lor.lhs.false21.if.then45_crit_edge

lor.lhs.false21.if.then45_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

lor.lhs.false27:                                  ; preds = %lor.lhs.false21
  %arrayidx29 = getelementptr i8, ptr %11, i32 6
  %20 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 97, i8 %21)
  %cmp31.not = icmp eq i8 %21, 97
  br i1 %cmp31.not, label %lor.lhs.false33, label %lor.lhs.false27.if.then45_crit_edge

lor.lhs.false27.if.then45_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

lor.lhs.false33:                                  ; preds = %lor.lhs.false27
  %arrayidx35 = getelementptr i8, ptr %11, i32 7
  %22 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 114, i8 %23)
  %cmp37.not = icmp eq i8 %23, 114
  br i1 %cmp37.not, label %lor.lhs.false39, label %lor.lhs.false33.if.then45_crit_edge

lor.lhs.false33.if.then45_crit_edge:              ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

lor.lhs.false39:                                  ; preds = %lor.lhs.false33
  %arrayidx41 = getelementptr i8, ptr %11, i32 8
  %24 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %25)
  %cmp43.not = icmp eq i8 %25, 100
  br i1 %cmp43.not, label %if.end46, label %lor.lhs.false39.if.then45_crit_edge

lor.lhs.false39.if.then45_crit_edge:              ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false39.if.then45_crit_edge, %lor.lhs.false33.if.then45_crit_edge, %lor.lhs.false27.if.then45_crit_edge, %lor.lhs.false21.if.then45_crit_edge, %lor.lhs.false15.if.then45_crit_edge, %lor.lhs.false.if.then45_crit_edge, %if.end.if.then45_crit_edge
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 6) #7
  br label %cleanup

if.end46:                                         ; preds = %lor.lhs.false39
  %arrayidx48 = getelementptr i8, ptr %11, i32 1
  %26 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx48, align 1
  %28 = and i8 %27, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %switch = icmp ult i8 %28, 2
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 6) #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.end46
  %and50 = zext i8 %28 to i32
  %sd_pass_thru_en52 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 14
  %29 = ptrtoint ptr %sd_pass_thru_en52 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and50, ptr %sd_pass_thru_en52, align 4
  %30 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %sd_card1, align 4
  %32 = and i16 %31, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp55 = icmp eq i16 %32, 0
  %conv59 = select i1 %cmp55, i8 1, i8 2
  %arrayidx60 = getelementptr inbounds [18 x i8], ptr %buf, i32 0, i32 5
  %33 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv59, ptr %arrayidx60, align 1
  %card_wp = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 24
  %34 = ptrtoint ptr %card_wp to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %card_wp, align 1
  %36 = and i8 %35, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool63.not = icmp eq i8 %36, 0
  br i1 %tobool63.not, label %sw.epilog.if.end69_crit_edge, label %if.then64

sw.epilog.if.end69_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then64:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %37 = or i8 %conv59, -128
  %38 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx60, align 1
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %sw.epilog.if.end69_crit_edge
  %sd_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %39 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sd_addr, align 4
  %shr = lshr i32 %40, 16
  %conv70 = trunc i32 %shr to i8
  %arrayidx71 = getelementptr inbounds [18 x i8], ptr %buf, i32 0, i32 6
  %41 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv70, ptr %arrayidx71, align 1
  %shr73 = lshr i32 %40, 24
  %conv74 = trunc i32 %shr73 to i8
  %arrayidx75 = getelementptr inbounds [18 x i8], ptr %buf, i32 0, i32 7
  %42 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv74, ptr %arrayidx75, align 1
  %max_lun = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 2
  %43 = ptrtoint ptr %max_lun to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %max_lun, align 4
  %arrayidx76 = getelementptr inbounds [18 x i8], ptr %buf, i32 0, i32 15
  %45 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx76, align 1
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %46 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %length.i, align 4
  %48 = tail call i32 @llvm.smin.i32(i32 %47, i32 18)
  call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %buf, i32 noundef %48, ptr noundef %srb) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %sw.default, %if.then45, %if.then
  %retval.0 = phi i32 [ 1, %if.then45 ], [ 1, %sw.default ], [ 0, %if.end69 ], [ 1, %if.then ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_sense_type(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_stor_set_xfer_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sd_execute_no_data(ptr nocapture noundef %srb, ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %lun2 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %lun2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun2, align 8
  %conv = trunc i64 %3 to i32
  %sd_pass_thru_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 14
  %4 = ptrtoint ptr %sd_pass_thru_en to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sd_pass_thru_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 6) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @select_card(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %sd_clock.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  %6 = ptrtoint ptr %sd_clock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sd_clock.i, align 4
  %asic_code.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %8 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %7) #7
  br label %sd_switch_clock.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %7) #7
  br label %sd_switch_clock.exit

sd_switch_clock.exit:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval1.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i)
  %cmp4.not.i.not = icmp eq i32 %retval1.0.i.i, 0
  br i1 %cmp4.not.i.not, label %if.end6, label %sd_switch_clock.exit.cleanup_crit_edge

sd_switch_clock.exit.cleanup_crit_edge:           ; preds = %sd_switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %sd_switch_clock.exit
  %pre_cmd_err = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 15
  %10 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pre_cmd_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %pre_cmd_err, align 4
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 1) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %13 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %14, i32 2
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %17 = and i8 %16, 63
  %arrayidx14 = getelementptr i8, ptr %14, i32 1
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx14, align 1
  %20 = and i8 %19, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool17.not = icmp eq i8 %20, 0
  %21 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool24.not = icmp eq i8 %21, 0
  %arrayidx28 = getelementptr i8, ptr %14, i32 3
  %22 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %23 to i32
  %shl = shl nuw i32 %conv29, 24
  %arrayidx31 = getelementptr i8, ptr %14, i32 4
  %24 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %25 to i32
  %shl33 = shl nuw nsw i32 %conv32, 16
  %or = or i32 %shl33, %shl
  %arrayidx35 = getelementptr i8, ptr %14, i32 5
  %26 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %27 to i32
  %shl37 = shl nuw nsw i32 %conv36, 8
  %or38 = or i32 %or, %shl37
  %arrayidx40 = getelementptr i8, ptr %14, i32 6
  %28 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %29 to i32
  %or42 = or i32 %or38, %conv41
  %arrayidx.i = getelementptr i8, ptr %14, i32 10
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i, align 1
  %switch.tableidx = add i8 %31, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %32 = icmp ult i8 %switch.tableidx, 5
  br i1 %32, label %switch.lookup, label %if.then46

if.then46:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 6) #7
  br label %cleanup

switch.lookup:                                    ; preds = %if.end10
  %33 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.sd_execute_no_data, i32 0, i32 %33
  %34 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %34)
  %switch.load = load i8, ptr %switch.gep, align 1
  %35 = sext i8 %switch.tableidx to i32
  %switch.gep234 = getelementptr inbounds [5 x i32], ptr @switch.table.sd_execute_no_data.106, i32 0, i32 %35
  %36 = ptrtoint ptr %switch.gep234 to i32
  call void @__asan_load4_noabort(i32 %36)
  %switch.load235 = load i32, ptr %switch.gep234, align 4
  %last_rsp_type = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 16
  %37 = ptrtoint ptr %last_rsp_type to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %switch.load, ptr %last_rsp_type, align 4
  %call.i200 = tail call i32 @select_card(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i200)
  %cmp.not.i201 = icmp eq i32 %call.i200, 0
  br i1 %cmp.not.i201, label %if.end.i205, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i205:                                      ; preds = %switch.lookup
  %38 = ptrtoint ptr %sd_clock.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sd_clock.i, align 4
  %40 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i204 = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i204, label %if.else.i.i209, label %if.then.i.i207

if.then.i.i207:                                   ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i206 = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %39) #7
  br label %sd_switch_clock.exit215

if.else.i.i209:                                   ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i.i208 = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %39) #7
  br label %sd_switch_clock.exit215

sd_switch_clock.exit215:                          ; preds = %if.else.i.i209, %if.then.i.i207
  %retval1.0.i.i210 = phi i32 [ %call.i.i206, %if.then.i.i207 ], [ %call2.i.i208, %if.else.i.i209 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i210)
  %cmp4.not.i211.not = icmp eq i32 %retval1.0.i.i210, 0
  br i1 %cmp4.not.i211.not, label %if.end52, label %sd_switch_clock.exit215.cleanup_crit_edge

sd_switch_clock.exit215.cleanup_crit_edge:        ; preds = %sd_switch_clock.exit215
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %sd_switch_clock.exit215
  %sd_lock_status = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %42 = ptrtoint ptr %sd_lock_status to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %sd_lock_status, align 4
  %44 = and i8 %43, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp55 = icmp eq i8 %44, 0
  br i1 %cmp55, label %if.then57, label %if.end52.if.end95_crit_edge

if.end52.if.end95_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then57:                                        ; preds = %if.end52
  %45 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %sd_card1, align 4
  %conv58 = zext i16 %46 to i32
  %47 = and i32 %conv58, 2303
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %47)
  %.not = icmp eq i32 %47, 2049
  br i1 %.not, label %if.then66, label %if.else

if.then66:                                        ; preds = %if.then57
  %.b197 = load i1, ptr @REG_SD_CFG1, align 2
  %48 = select i1 %.b197, i16 -719, i16 0
  %call67 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %48, i8 noundef zeroext 3, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68.not = icmp eq i32 %call67, 0
  br i1 %cmp68.not, label %if.then66.if.end95_crit_edge, label %if.then66.cleanup_crit_edge

if.then66.cleanup_crit_edge:                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then66.if.end95_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.else:                                          ; preds = %if.then57
  %trunc = trunc i16 %46 to i8
  %49 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.118)
  switch i8 %trunc, label %if.else.if.end95_crit_edge [
    i8 0, label %if.else.if.then87_crit_edge
    i8 1, label %land.lhs.true82
  ]

if.else.if.then87_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then87

if.else.if.end95_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

land.lhs.true82:                                  ; preds = %if.else
  %and85 = and i32 %conv58, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %land.lhs.true82.if.end95_crit_edge, label %land.lhs.true82.if.then87_crit_edge

land.lhs.true82.if.then87_crit_edge:              ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then87

land.lhs.true82.if.end95_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then87:                                        ; preds = %land.lhs.true82.if.then87_crit_edge, %if.else.if.then87_crit_edge
  %.b = load i1, ptr @REG_SD_CFG1, align 2
  %50 = select i1 %.b, i16 -719, i16 0
  %call88 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %50, i8 noundef zeroext 3, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89.not = icmp eq i32 %call88, 0
  br i1 %cmp89.not, label %if.then87.if.end95_crit_edge, label %if.then87.cleanup_crit_edge

if.then87.cleanup_crit_edge:                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then87.if.end95_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.end95:                                         ; preds = %if.then87.if.end95_crit_edge, %land.lhs.true82.if.end95_crit_edge, %if.else.if.end95_crit_edge, %if.then66.if.end95_crit_edge, %if.end52.if.end95_crit_edge
  br i1 %tobool17.not, label %if.end95.if.end103_crit_edge, label %if.then97

if.end95.if.end103_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.then97:                                        ; preds = %if.end95
  %call.i216 = tail call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 7, i32 noundef 0, i8 noundef zeroext 4, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i216)
  %cmp.not.i217.not = icmp eq i32 %call.i216, 0
  br i1 %cmp.not.i217.not, label %if.then97.if.end103_crit_edge, label %if.then97.sd_execute_cmd_failed_crit_edge

if.then97.sd_execute_cmd_failed_crit_edge:        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_execute_cmd_failed

if.then97.if.end103_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.end103:                                        ; preds = %if.then97.if.end103_crit_edge, %if.end95.if.end103_crit_edge
  br i1 %tobool24.not, label %if.end103.if.end111_crit_edge, label %if.then105

if.end103.if.end111_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then105:                                       ; preds = %if.end103
  %sd_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %51 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sd_addr, align 4
  %call106 = tail call i32 @ext_sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 55, i32 noundef %52, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp107.not = icmp eq i32 %call106, 0
  br i1 %cmp107.not, label %if.then105.if.end111_crit_edge, label %if.then105.sd_execute_cmd_failed_crit_edge

if.then105.sd_execute_cmd_failed_crit_edge:       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_execute_cmd_failed

if.then105.if.end111_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.end111:                                        ; preds = %if.then105.if.end111_crit_edge, %if.end103.if.end111_crit_edge
  %rsp = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 17
  %call112 = tail call i32 @ext_sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext %17, i32 noundef %or42, i8 noundef zeroext %switch.load, ptr noundef %rsp, i32 noundef %switch.load235, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113.not = icmp eq i32 %call112, 0
  br i1 %cmp113.not, label %if.end116, label %if.end111.sd_execute_cmd_failed_crit_edge

if.end111.sd_execute_cmd_failed_crit_edge:        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_execute_cmd_failed

if.end116:                                        ; preds = %if.end111
  br i1 %tobool17.not, label %if.end116.if.end124_crit_edge, label %if.then118

if.end116.if.end124_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.then118:                                       ; preds = %if.end116
  %sd_addr.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %53 = ptrtoint ptr %sd_addr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sd_addr.i, align 4
  %call.i219 = tail call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 7, i32 noundef %54, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i219)
  %cmp.not.i220.not = icmp eq i32 %call.i219, 0
  br i1 %cmp.not.i220.not, label %if.then118.if.end124_crit_edge, label %if.then118.sd_execute_cmd_failed_crit_edge

if.then118.sd_execute_cmd_failed_crit_edge:       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_execute_cmd_failed

if.then118.if.end124_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.end124:                                        ; preds = %if.then118.if.end124_crit_edge, %if.end116.if.end124_crit_edge
  %call125 = tail call fastcc i32 @sd_update_lock_status(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126.not = icmp eq i32 %call125, 0
  br i1 %cmp126.not, label %if.end129, label %if.end124.sd_execute_cmd_failed_crit_edge

if.end124.sd_execute_cmd_failed_crit_edge:        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_execute_cmd_failed

if.end129:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %55 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %resid_len.i, align 4
  br label %cleanup

sd_execute_cmd_failed:                            ; preds = %if.end124.sd_execute_cmd_failed_crit_edge, %if.then118.sd_execute_cmd_failed_crit_edge, %if.end111.sd_execute_cmd_failed_crit_edge, %if.then105.sd_execute_cmd_failed_crit_edge, %if.then97.sd_execute_cmd_failed_crit_edge
  %56 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %pre_cmd_err, align 4
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 0) #7
  %call131 = tail call i32 @release_sd_card(ptr noundef %chip)
  tail call void @do_reset_sd_card(ptr noundef %chip) #7
  %card_ready = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 21
  %57 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %card_ready, align 2
  %59 = and i8 %58, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool134.not = icmp eq i8 %59, 0
  br i1 %tobool134.not, label %if.then135, label %sd_execute_cmd_failed.cleanup_crit_edge

sd_execute_cmd_failed.cleanup_crit_edge:          ; preds = %sd_execute_cmd_failed
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then135:                                       ; preds = %sd_execute_cmd_failed
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then135, %sd_execute_cmd_failed.cleanup_crit_edge, %if.end129, %if.then87.cleanup_crit_edge, %if.then66.cleanup_crit_edge, %sd_switch_clock.exit215.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %if.then46, %if.then8, %sd_switch_clock.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 1, %if.then46 ], [ 0, %if.end129 ], [ 1, %if.then ], [ 1, %sd_switch_clock.exit.cleanup_crit_edge ], [ 1, %sd_switch_clock.exit215.cleanup_crit_edge ], [ 1, %if.then66.cleanup_crit_edge ], [ 1, %if.then87.cleanup_crit_edge ], [ 1, %if.then135 ], [ 1, %sd_execute_cmd_failed.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_update_lock_status(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %rsp = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %rsp) #7
  %0 = getelementptr inbounds [5 x i8], ptr %rsp, i32 0, i32 1
  %sd_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %1 = call ptr @memset(ptr %rsp, i32 255, i32 5)
  %2 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sd_addr, align 4
  %call = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %3, i8 noundef zeroext 1, ptr noundef nonnull %rsp, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %0, align 1
  %sd_lock_status6 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %6 = ptrtoint ptr %sd_lock_status6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sd_lock_status6, align 4
  %8 = and i8 %7, 127
  %9 = shl i8 %5, 6
  %10 = and i8 %9, -128
  %.sink = or i8 %8, %10
  store i8 %.sink, ptr %sd_lock_status6, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_update_lock_status.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_update_lock_status, %if.then15)) #7
          to label %do.end [label %if.then15], !srcloc !336

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %sd_lock_status17 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %15 = ptrtoint ptr %sd_lock_status17 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sd_lock_status17, align 4
  %conv18 = zext i8 %16 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_update_lock_status.__UNIQUE_ID_ddebug304, ptr noundef %dev.i, ptr noundef nonnull @.str.104, i32 noundef %conv18) #7
  br label %do.end

do.end:                                           ; preds = %if.then15, %if.end
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %0, align 1
  %19 = and i8 %18, 1
  %20 = zext i8 %19 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %20, %do.end ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rsp) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @release_sd_card(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %card_ready = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 21
  %0 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %card_ready, align 2
  %2 = and i8 %1, -5
  store i8 %2, ptr %card_ready, align 2
  %card_fail = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 22
  %3 = ptrtoint ptr %card_fail to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %card_fail, align 1
  %5 = and i8 %4, -5
  store i8 %5, ptr %card_fail, align 1
  %card_wp = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 24
  %6 = ptrtoint ptr %card_wp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %card_wp, align 1
  %8 = and i8 %7, -5
  store i8 %8, ptr %card_wp, align 1
  %sd_io = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 51
  %9 = ptrtoint ptr %sd_io to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %sd_io, align 4
  %sd_int = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 52
  %10 = ptrtoint ptr %sd_int to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %sd_int, align 1
  %sd_lock_status = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %11 = ptrtoint ptr %sd_lock_status to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %sd_lock_status, align 4
  %sd_erase_status = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 25
  %12 = ptrtoint ptr %sd_erase_status to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %sd_erase_status, align 1
  %raw_csd = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 5
  %13 = call ptr @memset(ptr %raw_csd, i32 0, i32 24)
  %call = tail call i32 @sd_power_off_card3v3(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp ne i32 %call, 0
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_reset_sd_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sd_execute_read_data(ptr noundef %srb, ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %lun2 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %lun2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun2, align 8
  %conv = trunc i64 %3 to i32
  %sd_pass_thru_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 14
  %4 = ptrtoint ptr %sd_pass_thru_en to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sd_pass_thru_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 6) #7
  br label %cleanup282

if.end:                                           ; preds = %entry
  %pre_cmd_err = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 15
  %6 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pre_cmd_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pre_cmd_err, align 4
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 1) #7
  br label %cleanup282

if.end7:                                          ; preds = %if.end
  %call.i = tail call i32 @select_card(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i443, label %if.end7.cleanup282_crit_edge

if.end7.cleanup282_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup282

if.end.i443:                                      ; preds = %if.end7
  %sd_clock.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  %9 = ptrtoint ptr %sd_clock.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sd_clock.i, align 4
  %asic_code.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %11 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i442 = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i442, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i443
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %10) #7
  br label %sd_switch_clock.exit

if.else.i.i:                                      ; preds = %if.end.i443
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %10) #7
  br label %sd_switch_clock.exit

sd_switch_clock.exit:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval1.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i)
  %cmp4.not.i.not = icmp eq i32 %retval1.0.i.i, 0
  br i1 %cmp4.not.i.not, label %if.end10, label %sd_switch_clock.exit.cleanup282_crit_edge

sd_switch_clock.exit.cleanup282_crit_edge:        ; preds = %sd_switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup282

if.end10:                                         ; preds = %sd_switch_clock.exit
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %13 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %14, i32 2
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %17 = and i8 %16, 63
  %arrayidx14 = getelementptr i8, ptr %14, i32 1
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx14, align 1
  %20 = and i8 %19, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool17.not = icmp eq i8 %20, 0
  %21 = and i8 %19, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool24.not = icmp eq i8 %21, 0
  %22 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool31.not = icmp eq i8 %22, 0
  %arrayidx35 = getelementptr i8, ptr %14, i32 7
  %23 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %24 to i32
  %shl = shl nuw nsw i32 %conv36, 16
  %arrayidx38 = getelementptr i8, ptr %14, i32 8
  %25 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %26 to i32
  %shl40 = shl nuw nsw i32 %conv39, 8
  %or = or i32 %shl40, %shl
  %arrayidx42 = getelementptr i8, ptr %14, i32 9
  %27 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %28 to i32
  %or44 = or i32 %or, %conv43
  %arrayidx.i = getelementptr i8, ptr %14, i32 10
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i, align 1
  %switch.tableidx = add i8 %30, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %31 = icmp ult i8 %switch.tableidx, 5
  br i1 %31, label %switch.lookup, label %if.then48

if.then48:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 6) #7
  br label %cleanup282

switch.lookup:                                    ; preds = %if.end10
  %32 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.sd_execute_read_data, i32 0, i32 %32
  %33 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %33)
  %switch.load = load i8, ptr %switch.gep, align 1
  %34 = sext i8 %switch.tableidx to i32
  %switch.gep499 = getelementptr inbounds [5 x i32], ptr @switch.table.sd_execute_read_data.107, i32 0, i32 %34
  %35 = ptrtoint ptr %switch.gep499 to i32
  call void @__asan_load4_noabort(i32 %35)
  %switch.load500 = load i32, ptr %switch.gep499, align 4
  %last_rsp_type = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 16
  %36 = ptrtoint ptr %last_rsp_type to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %switch.load, ptr %last_rsp_type, align 4
  %call.i447 = tail call i32 @select_card(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i447)
  %cmp.not.i448 = icmp eq i32 %call.i447, 0
  br i1 %cmp.not.i448, label %if.end.i452, label %switch.lookup.cleanup282_crit_edge

switch.lookup.cleanup282_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup282

if.end.i452:                                      ; preds = %switch.lookup
  %37 = ptrtoint ptr %sd_clock.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sd_clock.i, align 4
  %39 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i451 = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i451, label %if.else.i.i456, label %if.then.i.i454

if.then.i.i454:                                   ; preds = %if.end.i452
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i453 = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %38) #7
  br label %sd_switch_clock.exit462

if.else.i.i456:                                   ; preds = %if.end.i452
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i.i455 = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %38) #7
  br label %sd_switch_clock.exit462

sd_switch_clock.exit462:                          ; preds = %if.else.i.i456, %if.then.i.i454
  %retval1.0.i.i457 = phi i32 [ %call.i.i453, %if.then.i.i454 ], [ %call2.i.i455, %if.else.i.i456 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i457)
  %cmp4.not.i458.not = icmp eq i32 %retval1.0.i.i457, 0
  br i1 %cmp4.not.i458.not, label %if.end54, label %sd_switch_clock.exit462.cleanup282_crit_edge

sd_switch_clock.exit462.cleanup282_crit_edge:     ; preds = %sd_switch_clock.exit462
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup282

if.end54:                                         ; preds = %sd_switch_clock.exit462
  %sd_lock_status = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %41 = ptrtoint ptr %sd_lock_status to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %sd_lock_status, align 4
  %43 = and i8 %42, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp57 = icmp eq i8 %43, 0
  br i1 %cmp57, label %if.then59, label %if.end54.do.body_crit_edge

if.end54.do.body_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then59:                                        ; preds = %if.end54
  %44 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %sd_card1, align 4
  %conv60 = zext i16 %45 to i32
  %46 = and i32 %conv60, 2303
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %46)
  %.not = icmp eq i32 %46, 2049
  br i1 %.not, label %if.then59.do.body_crit_edge, label %if.else

if.then59.do.body_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.else:                                          ; preds = %if.then59
  %trunc = trunc i16 %45 to i8
  %47 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.119)
  switch i8 %trunc, label %if.else.if.else85_crit_edge [
    i8 0, label %if.else.do.body_crit_edge
    i8 1, label %land.lhs.true79
  ]

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.else.if.else85_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else85

land.lhs.true79:                                  ; preds = %if.else
  %and82 = and i32 %conv60, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %land.lhs.true79.if.else85_crit_edge, label %land.lhs.true79.do.body_crit_edge

land.lhs.true79.do.body_crit_edge:                ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true79.if.else85_crit_edge:              ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else85

if.else85:                                        ; preds = %land.lhs.true79.if.else85_crit_edge, %if.else.if.else85_crit_edge
  br label %do.body

do.body:                                          ; preds = %if.else85, %land.lhs.true79.do.body_crit_edge, %if.else.do.body_crit_edge, %if.then59.do.body_crit_edge, %if.end54.do.body_crit_edge
  %bus_width.0 = phi i8 [ 0, %if.else85 ], [ 2, %if.then59.do.body_crit_edge ], [ 1, %if.else.do.body_crit_edge ], [ 1, %land.lhs.true79.do.body_crit_edge ], [ 1, %if.end54.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_execute_read_data.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_execute_read_data, %if.then94)) #7
          to label %do.end [label %if.then94], !srcloc !336

if.then94:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chip, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %conv96 = zext i8 %bus_width.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_execute_read_data.__UNIQUE_ID_ddebug374, ptr noundef %dev.i, ptr noundef nonnull @.str.18, i32 noundef %conv96) #7
  br label %do.end

do.end:                                           ; preds = %if.then94, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %or44)
  %cmp98 = icmp ult i32 %or44, 512
  br i1 %cmp98, label %if.then100, label %do.end.if.end106_crit_edge

do.end.if.end106_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then100:                                       ; preds = %do.end
  %call101 = tail call i32 @ext_sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 16, i32 noundef %or44, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102.not = icmp eq i32 %call101, 0
  br i1 %cmp102.not, label %if.then100.if.end106_crit_edge, label %if.end275.critedge

if.then100.if.end106_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.end106:                                        ; preds = %if.then100.if.end106_crit_edge, %do.end.if.end106_crit_edge
  br i1 %tobool24.not, label %if.end106.if.end114_crit_edge, label %if.then108

if.end106.if.end114_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.then108:                                       ; preds = %if.end106
  %call.i463 = tail call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 7, i32 noundef 0, i8 noundef zeroext 4, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i463)
  %cmp.not.i464.not = icmp eq i32 %call.i463, 0
  br i1 %cmp.not.i464.not, label %if.then108.if.end114_crit_edge, label %if.end275.critedge439

if.then108.if.end114_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.end114:                                        ; preds = %if.then108.if.end114_crit_edge, %if.end106.if.end114_crit_edge
  br i1 %tobool31.not, label %if.end114.if.end122_crit_edge, label %if.then116

if.end114.if.end122_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.then116:                                       ; preds = %if.end114
  %sd_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %52 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sd_addr, align 4
  %call117 = tail call i32 @ext_sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 55, i32 noundef %53, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp118.not = icmp eq i32 %call117, 0
  br i1 %cmp118.not, label %if.then116.if.end122_crit_edge, label %if.end275.critedge440

if.then116.if.end122_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.end122:                                        ; preds = %if.then116.if.end122_crit_edge, %if.end114.if.end122_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %or44)
  %cmp123 = icmp ult i32 %or44, 513
  br i1 %cmp123, label %if.then125, label %if.else171

if.then125:                                       ; preds = %if.end122
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %cmd) #7
  %54 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 1
  %55 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 2
  %56 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 3
  %57 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 4
  %58 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cmnd, align 4
  %arrayidx127 = getelementptr i8, ptr %59, i32 8
  %60 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx127, align 1
  %arrayidx134 = getelementptr i8, ptr %59, i32 9
  %62 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx134, align 1
  %64 = or i8 %17, 64
  %65 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %cmd, align 1
  %arrayidx143 = getelementptr i8, ptr %59, i32 3
  %66 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx143, align 1
  %68 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %54, align 1
  %arrayidx146 = getelementptr i8, ptr %59, i32 4
  %69 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx146, align 1
  %71 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %55, align 1
  %arrayidx149 = getelementptr i8, ptr %59, i32 5
  %72 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx149, align 1
  %74 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %56, align 1
  %arrayidx152 = getelementptr i8, ptr %59, i32 6
  %75 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx152, align 1
  %77 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %57, align 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %or44, i32 noundef 3264) #10
  %tobool155.not = icmp eq ptr %call9.i, null
  br i1 %tobool155.not, label %cleanup.thread, label %if.end157

cleanup.thread:                                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cmd) #7
  br label %cleanup282

if.end157:                                        ; preds = %if.then125
  %78 = and i8 %61, 3
  %conv131 = zext i8 %78 to i16
  %shl132 = shl nuw nsw i16 %conv131, 8
  %conv135 = zext i8 %63 to i16
  %or136 = or i16 %shl132, %conv135
  %call158 = call fastcc i32 @sd_read_data(ptr noundef %chip, i8 noundef zeroext 12, ptr noundef nonnull %cmd, i16 noundef zeroext %or136, i8 noundef zeroext %bus_width.0, ptr noundef nonnull %call9.i, i32 noundef %or44, i32 noundef 2000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %cmp159.not = icmp eq i32 %call158, 0
  br i1 %cmp159.not, label %cleanup.thread491, label %sd_execute_read_cmd_failed

cleanup.thread491:                                ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %79 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %length.i, align 4
  %81 = tail call i32 @llvm.umin.i32(i32 %or44, i32 %80)
  tail call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %call9.i, i32 noundef %81, ptr noundef %srb) #7
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cmd) #7
  br label %if.end204

if.else171:                                       ; preds = %if.end122
  %and172 = and i32 %or44, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %if.then174, label %if.end275.critedge441

if.then174:                                       ; preds = %if.else171
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %82 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %ci, align 4
  tail call void @trans_dma_enable(i32 noundef 2, ptr noundef %chip, i32 noundef %or44, i8 noundef zeroext 32) #7
  %.b418 = load i1, ptr @REG_SD_BYTE_CNT_H, align 2
  %83 = select i1 %.b418, i16 -710, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %83, i8 noundef zeroext -1, i8 noundef zeroext 2) #7
  %.b = load i1, ptr @REG_SD_BYTE_CNT_L, align 2
  %84 = select i1 %.b, i16 -711, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %84, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  %.b420 = load i1, ptr @REG_SD_BLOCK_CNT_H, align 2
  %85 = select i1 %.b420, i16 -708, i16 0
  %86 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cmnd, align 4
  %arrayidx176 = getelementptr i8, ptr %87, i32 7
  %88 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx176, align 1
  %90 = lshr i8 %89, 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %85, i8 noundef zeroext -1, i8 noundef zeroext %90) #7
  %.b419 = load i1, ptr @REG_SD_BLOCK_CNT_L, align 2
  %91 = select i1 %.b419, i16 -709, i16 0
  %and180 = lshr i32 %or, 9
  %conv182 = trunc i32 %and180 to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %91, i8 noundef zeroext -1, i8 noundef zeroext %conv182) #7
  %.b425 = load i1, ptr @REG_SD_CMD0, align 2
  %92 = select i1 %.b425, i16 -716, i16 0
  %93 = or i8 %17, 64
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %92, i8 noundef zeroext -1, i8 noundef zeroext %93) #7
  %.b426 = load i1, ptr @REG_SD_CMD1, align 2
  %94 = select i1 %.b426, i16 -715, i16 0
  %95 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cmnd, align 4
  %arrayidx187 = getelementptr i8, ptr %96, i32 3
  %97 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx187, align 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %94, i8 noundef zeroext -1, i8 noundef zeroext %98) #7
  %.b427 = load i1, ptr @REG_SD_CMD2, align 2
  %99 = select i1 %.b427, i16 -714, i16 0
  %100 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cmnd, align 4
  %arrayidx189 = getelementptr i8, ptr %101, i32 4
  %102 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx189, align 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %99, i8 noundef zeroext -1, i8 noundef zeroext %103) #7
  %.b428 = load i1, ptr @REG_SD_CMD3, align 2
  %104 = select i1 %.b428, i16 -713, i16 0
  %105 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cmnd, align 4
  %arrayidx191 = getelementptr i8, ptr %106, i32 5
  %107 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx191, align 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %104, i8 noundef zeroext -1, i8 noundef zeroext %108) #7
  %.b429 = load i1, ptr @REG_SD_CMD4, align 2
  %109 = select i1 %.b429, i16 -712, i16 0
  %110 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cmnd, align 4
  %arrayidx193 = getelementptr i8, ptr %111, i32 6
  %112 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx193, align 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %109, i8 noundef zeroext -1, i8 noundef zeroext %113) #7
  %.b421 = load i1, ptr @REG_SD_CFG1, align 2
  %114 = select i1 %.b421, i16 -719, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %114, i8 noundef zeroext 3, i8 noundef zeroext %bus_width.0) #7
  %.b422 = load i1, ptr @REG_SD_CFG2, align 2
  %115 = select i1 %.b422, i16 -717, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %115, i8 noundef zeroext -1, i8 noundef zeroext %switch.load) #7
  %.b424 = load i1, ptr @REG_SD_TRANSFER, align 2
  %116 = select i1 %.b424, i16 -718, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %116, i8 noundef zeroext -1, i8 noundef zeroext -114) #7
  %.b423 = load i1, ptr @REG_SD_TRANSFER, align 2
  %117 = select i1 %.b423, i16 -718, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext %117, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  tail call void @rtsx_send_cmd_no_wait(ptr noundef %chip) #7
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17
  %118 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sdb.i, align 4
  %length.i467 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %120 = ptrtoint ptr %length.i467 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %length.i467, align 4
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 0, i32 1
  %122 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %nents.i, align 4
  %call197 = tail call i32 @rtsx_transfer_data(ptr noundef %chip, i8 noundef zeroext 4, ptr noundef %119, i32 noundef %121, i32 noundef %123, i32 noundef 2, i32 noundef 10000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %cmp198 = icmp slt i32 %call197, 0
  br i1 %cmp198, label %if.then200, label %if.then174.if.end204_crit_edge

if.then174.if.end204_crit_edge:                   ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end204

if.then200:                                       ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #9
  %call.i468 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  br label %if.then274

if.end204:                                        ; preds = %if.then174.if.end204_crit_edge, %cleanup.thread491
  %rsp = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 17
  %call206 = tail call i32 @ext_sd_get_rsp(ptr noundef %chip, i32 noundef %switch.load500, ptr noundef %rsp, i8 noundef zeroext %switch.load)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %cmp207.not = icmp eq i32 %call206, 0
  br i1 %cmp207.not, label %if.end210, label %if.end204.sd_execute_read_cmd_failed.thread_crit_edge

if.end204.sd_execute_read_cmd_failed.thread_crit_edge: ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_execute_read_cmd_failed.thread

if.end210:                                        ; preds = %if.end204
  br i1 %tobool24.not, label %if.end210.if.end218_crit_edge, label %if.then212

if.end210.if.end218_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end218

if.then212:                                       ; preds = %if.end210
  %sd_addr.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %124 = ptrtoint ptr %sd_addr.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %sd_addr.i, align 4
  %call.i469 = tail call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 7, i32 noundef %125, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i469)
  %cmp.not.i470.not = icmp eq i32 %call.i469, 0
  br i1 %cmp.not.i470.not, label %if.then212.if.end218_crit_edge, label %if.then212.sd_execute_read_cmd_failed.thread_crit_edge

if.then212.sd_execute_read_cmd_failed.thread_crit_edge: ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_execute_read_cmd_failed.thread

if.then212.if.end218_crit_edge:                   ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end218

if.end218:                                        ; preds = %if.then212.if.end218_crit_edge, %if.end210.if.end218_crit_edge
  br i1 %tobool17.not, label %if.end218.if.end226_crit_edge, label %if.then220

if.end218.if.end226_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end226

if.then220:                                       ; preds = %if.end218
  %call221 = tail call i32 @ext_sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 12, i32 noundef 0, i8 noundef zeroext 9, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call221)
  %cmp222.not = icmp eq i32 %call221, 0
  br i1 %cmp222.not, label %if.then220.if.end226_crit_edge, label %if.then220.sd_execute_read_cmd_failed.thread_crit_edge

if.then220.sd_execute_read_cmd_failed.thread_crit_edge: ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_execute_read_cmd_failed.thread

if.then220.if.end226_crit_edge:                   ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end226

if.end226:                                        ; preds = %if.then220.if.end226_crit_edge, %if.end218.if.end226_crit_edge
  br i1 %cmp98, label %if.then229, label %if.end226.if.end245_crit_edge

if.end226.if.end245_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end245

if.then229:                                       ; preds = %if.end226
  %call230 = tail call i32 @ext_sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 16, i32 noundef 512, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230)
  %cmp231.not = icmp eq i32 %call230, 0
  br i1 %cmp231.not, label %if.end234, label %if.then229.sd_execute_read_cmd_failed.thread_crit_edge

if.then229.sd_execute_read_cmd_failed.thread_crit_edge: ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_execute_read_cmd_failed.thread

if.end234:                                        ; preds = %if.then229
  %call235 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -592, i8 noundef zeroext -1, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %cmp236.not = icmp eq i32 %call235, 0
  br i1 %cmp236.not, label %if.end239, label %if.end234.sd_execute_read_cmd_failed.thread_crit_edge

if.end234.sd_execute_read_cmd_failed.thread_crit_edge: ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_execute_read_cmd_failed.thread

if.end239:                                        ; preds = %if.end234
  %call240 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -593, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %cmp241.not = icmp eq i32 %call240, 0
  br i1 %cmp241.not, label %if.end239.if.end245_crit_edge, label %if.end239.sd_execute_read_cmd_failed.thread_crit_edge

if.end239.sd_execute_read_cmd_failed.thread_crit_edge: ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_execute_read_cmd_failed.thread

if.end239.if.end245_crit_edge:                    ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end245

if.end245:                                        ; preds = %if.end239.if.end245_crit_edge, %if.end226.if.end245_crit_edge
  %126 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cmnd, align 4
  %arrayidx247 = getelementptr i8, ptr %127, i32 1
  %128 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx247, align 1
  %130 = and i8 %129, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %131 = icmp ne i8 %130, 0
  %sd_addr261 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %132 = ptrtoint ptr %sd_addr261 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %sd_addr261, align 4
  %call263 = tail call i32 @ext_sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %133, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i1 noundef zeroext %131)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call263)
  %cmp264 = icmp eq i32 %call263, 0
  br i1 %cmp264, label %if.end245.if.end271_crit_edge, label %for.cond

if.end245.if.end271_crit_edge:                    ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end271

for.cond:                                         ; preds = %if.end245
  %134 = ptrtoint ptr %sd_addr261 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %sd_addr261, align 4
  %call263.1 = tail call i32 @ext_sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %135, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i1 noundef zeroext %131)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call263.1)
  %cmp264.1 = icmp eq i32 %call263.1, 0
  br i1 %cmp264.1, label %for.cond.if.end271_crit_edge, label %for.cond.1

for.cond.if.end271_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end271

for.cond.1:                                       ; preds = %for.cond
  %136 = ptrtoint ptr %sd_addr261 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %sd_addr261, align 4
  %call263.2 = tail call i32 @ext_sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %137, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i1 noundef zeroext %131)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call263.2)
  %cmp264.2 = icmp eq i32 %call263.2, 0
  br i1 %cmp264.2, label %for.cond.1.if.end271_crit_edge, label %for.cond.1.sd_execute_read_cmd_failed.thread_crit_edge

for.cond.1.sd_execute_read_cmd_failed.thread_crit_edge: ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_execute_read_cmd_failed.thread

for.cond.1.if.end271_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end271

if.end271:                                        ; preds = %for.cond.1.if.end271_crit_edge, %for.cond.if.end271_crit_edge, %if.end245.if.end271_crit_edge
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %138 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %resid_len.i, align 4
  br label %cleanup282

sd_execute_read_cmd_failed.thread:                ; preds = %for.cond.1.sd_execute_read_cmd_failed.thread_crit_edge, %if.end239.sd_execute_read_cmd_failed.thread_crit_edge, %if.end234.sd_execute_read_cmd_failed.thread_crit_edge, %if.then229.sd_execute_read_cmd_failed.thread_crit_edge, %if.then220.sd_execute_read_cmd_failed.thread_crit_edge, %if.then212.sd_execute_read_cmd_failed.thread_crit_edge, %if.end204.sd_execute_read_cmd_failed.thread_crit_edge
  %139 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 1, ptr %pre_cmd_err, align 4
  br label %if.end275

sd_execute_read_cmd_failed:                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  %call.i466 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cmd) #7
  br label %if.then274

if.then274:                                       ; preds = %sd_execute_read_cmd_failed, %if.then200
  %140 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 1, ptr %pre_cmd_err, align 4
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 0) #7
  br label %if.end275

if.end275.critedge:                               ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #9
  %141 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 1, ptr %pre_cmd_err, align 4
  br label %if.end275

if.end275.critedge439:                            ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #9
  %142 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %pre_cmd_err, align 4
  br label %if.end275

if.end275.critedge440:                            ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #9
  %143 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 1, ptr %pre_cmd_err, align 4
  br label %if.end275

if.end275.critedge441:                            ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #9
  %144 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1, ptr %pre_cmd_err, align 4
  br label %if.end275

if.end275:                                        ; preds = %if.end275.critedge441, %if.end275.critedge440, %if.end275.critedge439, %if.end275.critedge, %if.then274, %sd_execute_read_cmd_failed.thread
  %.sink = phi i32 [ 0, %sd_execute_read_cmd_failed.thread ], [ 0, %if.end275.critedge441 ], [ 0, %if.end275.critedge440 ], [ 0, %if.end275.critedge439 ], [ 0, %if.end275.critedge ], [ 7, %if.then274 ]
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef %.sink) #7
  %call276 = tail call i32 @release_sd_card(ptr noundef %chip)
  tail call void @do_reset_sd_card(ptr noundef %chip) #7
  %card_ready = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 21
  %145 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %card_ready, align 2
  %147 = and i8 %146, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool279.not = icmp eq i8 %147, 0
  br i1 %tobool279.not, label %if.then280, label %if.end275.cleanup282_crit_edge

if.end275.cleanup282_crit_edge:                   ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup282

if.then280:                                       ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 2) #7
  br label %cleanup282

cleanup282:                                       ; preds = %if.then280, %if.end275.cleanup282_crit_edge, %if.end271, %cleanup.thread, %sd_switch_clock.exit462.cleanup282_crit_edge, %switch.lookup.cleanup282_crit_edge, %if.then48, %sd_switch_clock.exit.cleanup282_crit_edge, %if.end7.cleanup282_crit_edge, %if.then5, %if.then
  %retval.1 = phi i32 [ 1, %if.then5 ], [ 1, %if.then48 ], [ 0, %if.end271 ], [ 1, %if.then ], [ 1, %sd_switch_clock.exit.cleanup282_crit_edge ], [ 1, %sd_switch_clock.exit462.cleanup282_crit_edge ], [ 1, %if.then280 ], [ 1, %if.end275.cleanup282_crit_edge ], [ 3, %cleanup.thread ], [ 1, %if.end7.cleanup282_crit_edge ], [ 1, %switch.lookup.cleanup282_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_read_data(ptr noundef %chip, i8 noundef zeroext %trans_mode, ptr nocapture noundef readonly %cmd, i16 noundef zeroext %byte_cnt, i8 noundef zeroext %bus_width, ptr noundef %buf, i32 noundef %buf_len, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %err_code.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  %0 = ptrtoint ptr %err_code.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %err_code.i, align 2
  %tobool.not = icmp eq ptr %buf, null
  %spec.select = select i1 %tobool.not, i32 0, i32 %buf_len
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %1 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ci, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_read_data.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_read_data, %if.then10)) #7
          to label %do.end [label %if.then10], !srcloc !336

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmd, align 1
  %conv = zext i8 %7 to i32
  %sub = add nsw i32 %conv, -64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_read_data.__UNIQUE_ID_ddebug294, ptr noundef %dev.i, ptr noundef nonnull @.str.9, i32 noundef %sub) #7
  br label %do.end

do.end:                                           ; preds = %if.then10, %entry
  %.b96 = load i1, ptr @REG_SD_CMD0, align 2
  %conv19 = select i1 %.b96, i16 -716, i16 0
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cmd, align 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %conv19, i8 noundef zeroext -1, i8 noundef zeroext %9) #7
  %.b96.1 = load i1, ptr @REG_SD_CMD0, align 2
  %conv19.1 = select i1 %.b96.1, i16 -715, i16 1
  %arrayidx20.1 = getelementptr i8, ptr %cmd, i32 1
  %10 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx20.1, align 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %conv19.1, i8 noundef zeroext -1, i8 noundef zeroext %11) #7
  %.b96.2 = load i1, ptr @REG_SD_CMD0, align 2
  %conv19.2 = select i1 %.b96.2, i16 -714, i16 2
  %arrayidx20.2 = getelementptr i8, ptr %cmd, i32 2
  %12 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx20.2, align 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %conv19.2, i8 noundef zeroext -1, i8 noundef zeroext %13) #7
  %.b96.3 = load i1, ptr @REG_SD_CMD0, align 2
  %conv19.3 = select i1 %.b96.3, i16 -713, i16 3
  %arrayidx20.3 = getelementptr i8, ptr %cmd, i32 3
  %14 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx20.3, align 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %conv19.3, i8 noundef zeroext -1, i8 noundef zeroext %15) #7
  %.b96.4 = load i1, ptr @REG_SD_CMD0, align 2
  %conv19.4 = select i1 %.b96.4, i16 -712, i16 4
  %arrayidx20.4 = getelementptr i8, ptr %cmd, i32 4
  %16 = ptrtoint ptr %arrayidx20.4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx20.4, align 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %conv19.4, i8 noundef zeroext -1, i8 noundef zeroext %17) #7
  %.b = load i1, ptr @REG_SD_BYTE_CNT_L, align 2
  %18 = select i1 %.b, i16 -711, i16 0
  %conv22 = trunc i16 %byte_cnt to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %18, i8 noundef zeroext -1, i8 noundef zeroext %conv22) #7
  %.b89 = load i1, ptr @REG_SD_BYTE_CNT_H, align 2
  %19 = select i1 %.b89, i16 -710, i16 0
  %20 = lshr i16 %byte_cnt, 8
  %conv24 = trunc i16 %20 to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %19, i8 noundef zeroext -1, i8 noundef zeroext %conv24) #7
  %.b90 = load i1, ptr @REG_SD_BLOCK_CNT_L, align 2
  %21 = select i1 %.b90, i16 -709, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %21, i8 noundef zeroext -1, i8 noundef zeroext 1) #7
  %.b91 = load i1, ptr @REG_SD_BLOCK_CNT_H, align 2
  %22 = select i1 %.b91, i16 -708, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %22, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  %.b92 = load i1, ptr @REG_SD_CFG1, align 2
  %23 = select i1 %.b92, i16 -719, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %23, i8 noundef zeroext 3, i8 noundef zeroext %bus_width) #7
  %.b93 = load i1, ptr @REG_SD_CFG2, align 2
  %24 = select i1 %.b93, i16 -717, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %24, i8 noundef zeroext -1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %trans_mode)
  %cmp30.not = icmp eq i8 %trans_mode, 15
  br i1 %cmp30.not, label %do.end.if.end33_crit_edge, label %if.then32

do.end.if.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then32:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %do.end.if.end33_crit_edge
  %.b95 = load i1, ptr @REG_SD_TRANSFER, align 2
  %25 = select i1 %.b95, i16 -718, i16 0
  %26 = or i8 %trans_mode, -128
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %25, i8 noundef zeroext -1, i8 noundef zeroext %26) #7
  %.b94 = load i1, ptr @REG_SD_TRANSFER, align 2
  %27 = select i1 %.b94, i16 -718, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext %27, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  %call36 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 4, i32 noundef %timeout) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.end45

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call36)
  %cmp40 = icmp eq i32 %call36, -110
  br i1 %cmp40, label %if.then42, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %sd_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %28 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sd_addr, align 4
  %call43 = tail call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %29, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  br label %cleanup

if.end45:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool47.not = icmp eq i32 %spec.select, 0
  %or.cond = or i1 %tobool.not, %tobool47.not
  br i1 %or.cond, label %if.end45.if.end54_crit_edge, label %if.then48

if.end45.if.end54_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then48:                                        ; preds = %if.end45
  %call49 = tail call i32 @rtsx_read_ppbuf(ptr noundef %chip, ptr noundef nonnull %buf, i32 noundef %spec.select) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50.not = icmp eq i32 %call49, 0
  br i1 %cmp50.not, label %if.then48.if.end54_crit_edge, label %if.then48.cleanup_crit_edge

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then48.if.end54_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.end54:                                         ; preds = %if.then48.if.end54_crit_edge, %if.end45.if.end54_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then48.cleanup_crit_edge, %if.then42, %if.then39.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end54 ], [ 1, %if.then42 ], [ 1, %if.then39.cleanup_crit_edge ], [ 1, %if.then48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sd_execute_write_data(ptr noundef %srb, ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %lun2 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %lun2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun2, align 8
  %conv = trunc i64 %3 to i32
  %sd_pass_thru_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 14
  %4 = ptrtoint ptr %sd_pass_thru_en to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sd_pass_thru_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 6) #7
  br label %cleanup471

if.end:                                           ; preds = %entry
  %pre_cmd_err = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 15
  %6 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pre_cmd_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pre_cmd_err, align 4
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 1) #7
  br label %cleanup471

if.end7:                                          ; preds = %if.end
  %call.i = tail call i32 @select_card(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i697, label %if.end7.cleanup471_crit_edge

if.end7.cleanup471_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup471

if.end.i697:                                      ; preds = %if.end7
  %sd_clock.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  %9 = ptrtoint ptr %sd_clock.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sd_clock.i, align 4
  %asic_code.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %11 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i696 = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i696, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i697
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %10) #7
  br label %sd_switch_clock.exit

if.else.i.i:                                      ; preds = %if.end.i697
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %10) #7
  br label %sd_switch_clock.exit

sd_switch_clock.exit:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval1.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i)
  %cmp4.not.i.not = icmp eq i32 %retval1.0.i.i, 0
  br i1 %cmp4.not.i.not, label %if.end10, label %sd_switch_clock.exit.cleanup471_crit_edge

sd_switch_clock.exit.cleanup471_crit_edge:        ; preds = %sd_switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup471

if.end10:                                         ; preds = %sd_switch_clock.exit
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %13 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %14, i32 2
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %17 = and i8 %16, 63
  %arrayidx14 = getelementptr i8, ptr %14, i32 1
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx14, align 1
  %20 = and i8 %19, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool17.not = icmp eq i8 %20, 0
  %21 = and i8 %19, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool24.not = icmp eq i8 %21, 0
  %22 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool31.not = icmp eq i8 %22, 0
  %arrayidx35 = getelementptr i8, ptr %14, i32 7
  %23 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %24 to i32
  %shl = shl nuw nsw i32 %conv36, 16
  %arrayidx38 = getelementptr i8, ptr %14, i32 8
  %25 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %26 to i32
  %shl40 = shl nuw nsw i32 %conv39, 8
  %or = or i32 %shl40, %shl
  %arrayidx42 = getelementptr i8, ptr %14, i32 9
  %27 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %28 to i32
  %or44 = or i32 %or, %conv43
  %arrayidx46 = getelementptr i8, ptr %14, i32 3
  %29 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %30 to i32
  %shl48 = shl nuw i32 %conv47, 24
  %arrayidx50 = getelementptr i8, ptr %14, i32 4
  %31 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %32 to i32
  %shl52 = shl nuw nsw i32 %conv51, 16
  %or53 = or i32 %shl52, %shl48
  %arrayidx55 = getelementptr i8, ptr %14, i32 5
  %33 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %34 to i32
  %shl57 = shl nuw nsw i32 %conv56, 8
  %or58 = or i32 %or53, %shl57
  %arrayidx60 = getelementptr i8, ptr %14, i32 6
  %35 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %36 to i32
  %or62 = or i32 %or58, %conv61
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %17)
  %cmp64 = icmp eq i8 %17, 42
  br i1 %cmp64, label %if.then66, label %if.end10.if.end70_crit_edge

if.end10.if.end70_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then66:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %sd_lock_status = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %37 = ptrtoint ptr %sd_lock_status to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sd_lock_status, align 4
  %39 = and i8 %38, -128
  %and68 = zext i8 %39 to i32
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %if.end10.if.end70_crit_edge
  %sd_lock_state.0 = phi i32 [ %and68, %if.then66 ], [ 0, %if.end10.if.end70_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %14, i32 10
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i, align 1
  %switch.tableidx = add i8 %41, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %42 = icmp ult i8 %switch.tableidx, 5
  br i1 %42, label %switch.lookup, label %if.then74

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 6) #7
  br label %cleanup471

switch.lookup:                                    ; preds = %if.end70
  %43 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.sd_execute_write_data, i32 0, i32 %43
  %44 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %44)
  %switch.load = load i8, ptr %switch.gep, align 1
  %45 = sext i8 %switch.tableidx to i32
  %switch.gep769 = getelementptr inbounds [5 x i32], ptr @switch.table.sd_execute_write_data.108, i32 0, i32 %45
  %46 = ptrtoint ptr %switch.gep769 to i32
  call void @__asan_load4_noabort(i32 %46)
  %switch.load770 = load i32, ptr %switch.gep769, align 4
  %last_rsp_type = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 16
  %47 = ptrtoint ptr %last_rsp_type to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %switch.load, ptr %last_rsp_type, align 4
  %call.i701 = tail call i32 @select_card(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i701)
  %cmp.not.i702 = icmp eq i32 %call.i701, 0
  br i1 %cmp.not.i702, label %if.end.i706, label %switch.lookup.cleanup471_crit_edge

switch.lookup.cleanup471_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup471

if.end.i706:                                      ; preds = %switch.lookup
  %48 = ptrtoint ptr %sd_clock.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sd_clock.i, align 4
  %50 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i705 = icmp eq i32 %51, 0
  br i1 %tobool.not.i.i705, label %if.else.i.i710, label %if.then.i.i708

if.then.i.i708:                                   ; preds = %if.end.i706
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i707 = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %49) #7
  br label %sd_switch_clock.exit716

if.else.i.i710:                                   ; preds = %if.end.i706
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i.i709 = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %49) #7
  br label %sd_switch_clock.exit716

sd_switch_clock.exit716:                          ; preds = %if.else.i.i710, %if.then.i.i708
  %retval1.0.i.i711 = phi i32 [ %call.i.i707, %if.then.i.i708 ], [ %call2.i.i709, %if.else.i.i710 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i711)
  %cmp4.not.i712.not = icmp eq i32 %retval1.0.i.i711, 0
  br i1 %cmp4.not.i712.not, label %if.end80, label %sd_switch_clock.exit716.cleanup471_crit_edge

sd_switch_clock.exit716.cleanup471_crit_edge:     ; preds = %sd_switch_clock.exit716
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup471

if.end80:                                         ; preds = %sd_switch_clock.exit716
  %sd_lock_status81 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %52 = ptrtoint ptr %sd_lock_status81 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %sd_lock_status81, align 4
  %54 = and i8 %53, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp84 = icmp eq i8 %54, 0
  br i1 %cmp84, label %if.then86, label %if.end80.if.end124_crit_edge

if.end80.if.end124_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.then86:                                        ; preds = %if.end80
  %55 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %sd_card1, align 4
  %conv87 = zext i16 %56 to i32
  %57 = and i32 %conv87, 2303
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %57)
  %.not = icmp eq i32 %57, 2049
  br i1 %.not, label %if.then95, label %if.else

if.then95:                                        ; preds = %if.then86
  %.b679 = load i1, ptr @REG_SD_CFG1, align 2
  %58 = select i1 %.b679, i16 -719, i16 0
  %call96 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %58, i8 noundef zeroext 3, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97.not = icmp eq i32 %call96, 0
  br i1 %cmp97.not, label %if.then95.if.end124_crit_edge, label %if.then95.cleanup471_crit_edge

if.then95.cleanup471_crit_edge:                   ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup471

if.then95.if.end124_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.else:                                          ; preds = %if.then86
  %trunc = trunc i16 %56 to i8
  %59 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.120)
  switch i8 %trunc, label %if.else.if.end124_crit_edge [
    i8 0, label %if.else.if.then116_crit_edge
    i8 1, label %land.lhs.true111
  ]

if.else.if.then116_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then116

if.else.if.end124_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

land.lhs.true111:                                 ; preds = %if.else
  %and114 = and i32 %conv87, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %land.lhs.true111.if.end124_crit_edge, label %land.lhs.true111.if.then116_crit_edge

land.lhs.true111.if.then116_crit_edge:            ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then116

land.lhs.true111.if.end124_crit_edge:             ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.then116:                                       ; preds = %land.lhs.true111.if.then116_crit_edge, %if.else.if.then116_crit_edge
  %.b678 = load i1, ptr @REG_SD_CFG1, align 2
  %60 = select i1 %.b678, i16 -719, i16 0
  %call117 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %60, i8 noundef zeroext 3, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp118.not = icmp eq i32 %call117, 0
  br i1 %cmp118.not, label %if.then116.if.end124_crit_edge, label %if.then116.cleanup471_crit_edge

if.then116.cleanup471_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup471

if.then116.if.end124_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.end124:                                        ; preds = %if.then116.if.end124_crit_edge, %land.lhs.true111.if.end124_crit_edge, %if.else.if.end124_crit_edge, %if.then95.if.end124_crit_edge, %if.end80.if.end124_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %or44)
  %cmp125 = icmp ult i32 %or44, 512
  br i1 %cmp125, label %if.then127, label %if.end124.if.end133_crit_edge

if.end124.if.end133_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

if.then127:                                       ; preds = %if.end124
  %call128 = tail call i32 @ext_sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 16, i32 noundef %or44, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129.not = icmp eq i32 %call128, 0
  br i1 %cmp129.not, label %if.then127.if.end133_crit_edge, label %if.end464.critedge

if.then127.if.end133_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

if.end133:                                        ; preds = %if.then127.if.end133_crit_edge, %if.end124.if.end133_crit_edge
  br i1 %tobool24.not, label %if.end133.if.end141_crit_edge, label %if.then135

if.end133.if.end141_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

if.then135:                                       ; preds = %if.end133
  %call.i717 = tail call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 7, i32 noundef 0, i8 noundef zeroext 4, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i717)
  %cmp.not.i718.not = icmp eq i32 %call.i717, 0
  br i1 %cmp.not.i718.not, label %if.then135.if.end141_crit_edge, label %if.end464.critedge685

if.then135.if.end141_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

if.end141:                                        ; preds = %if.then135.if.end141_crit_edge, %if.end133.if.end141_crit_edge
  br i1 %tobool31.not, label %if.end141.if.end149_crit_edge, label %if.then143

if.end141.if.end149_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

if.then143:                                       ; preds = %if.end141
  %sd_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %61 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sd_addr, align 4
  %call144 = tail call i32 @ext_sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 55, i32 noundef %62, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %cmp145.not = icmp eq i32 %call144, 0
  br i1 %cmp145.not, label %if.then143.if.end149_crit_edge, label %if.end464.critedge686

if.then143.if.end149_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

if.end149:                                        ; preds = %if.then143.if.end149_crit_edge, %if.end141.if.end149_crit_edge
  %rsp = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 17
  %call150 = tail call i32 @ext_sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext %17, i32 noundef %or62, i8 noundef zeroext %switch.load, ptr noundef %rsp, i32 noundef %switch.load770, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %cmp151.not = icmp eq i32 %call150, 0
  br i1 %cmp151.not, label %if.end154, label %if.end464.critedge687

if.end154:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %or44)
  %cmp155 = icmp ult i32 %or44, 513
  br i1 %cmp155, label %if.end8.i, label %if.else236

if.end8.i:                                        ; preds = %if.end154
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %or44, i32 noundef 3264) #10
  %tobool160.not = icmp eq ptr %call9.i, null
  br i1 %tobool160.not, label %if.end8.i.cleanup471_crit_edge, label %if.end162

if.end8.i.cleanup471_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup471

if.end162:                                        ; preds = %if.end8.i
  tail call void @rtsx_stor_get_xfer_buf(ptr noundef nonnull %call9.i, i32 noundef %or44, ptr noundef %srb) #7
  br i1 %cmp64, label %if.then166, label %if.end162.if.end171_crit_edge

if.end162.if.end171_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end171

if.then166:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %call9.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %call9.i, align 128
  %65 = and i8 %64, 15
  br label %if.end171

if.end171:                                        ; preds = %if.then166, %if.end162.if.end171_crit_edge
  %lock_cmd_type.0 = phi i8 [ %65, %if.then166 ], [ 0, %if.end162.if.end171_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %or44)
  %cmp172 = icmp ugt i32 %or44, 256
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %66 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %ci, align 4
  br i1 %cmp172, label %if.end171.for.body_crit_edge, label %if.else205

if.end171.for.body_crit_edge:                     ; preds = %if.end171
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end171.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.end171.for.body_crit_edge ]
  %arrayidx180 = getelementptr i8, ptr %call9.i, i32 %indvars.iv
  %67 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx180, align 1
  %69 = trunc i32 %indvars.iv to i16
  %70 = add i16 %69, -1536
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %70, i8 noundef zeroext -1, i8 noundef zeroext %68) #7
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 256
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %call181 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 250) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %cmp182.not = icmp eq i32 %call181, 0
  br i1 %cmp182.not, label %for.body191.preheader, label %for.end.if.end464.critedge688_crit_edge

for.end.if.end464.critedge688_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end464.critedge688

for.body191.preheader:                            ; preds = %for.end
  %71 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %ci, align 4
  br label %for.body191

for.body191:                                      ; preds = %for.body191.for.body191_crit_edge, %for.body191.preheader
  %conv188765 = phi i32 [ %conv188, %for.body191.for.body191_crit_edge ], [ 256, %for.body191.preheader ]
  %i158.1764 = phi i16 [ %inc198, %for.body191.for.body191_crit_edge ], [ 256, %for.body191.preheader ]
  %add193 = add i16 %i158.1764, -1536
  %arrayidx196 = getelementptr i8, ptr %call9.i, i32 %conv188765
  %72 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx196, align 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %add193, i8 noundef zeroext -1, i8 noundef zeroext %73) #7
  %inc198 = add i16 %i158.1764, 1
  %conv188 = zext i16 %inc198 to i32
  %cmp189 = icmp ugt i32 %or44, %conv188
  br i1 %cmp189, label %for.body191.for.body191_crit_edge, label %for.end199

for.body191.for.body191_crit_edge:                ; preds = %for.body191
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body191

for.end199:                                       ; preds = %for.body191
  %call200 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 250) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %cmp201.not = icmp eq i32 %call200, 0
  br i1 %cmp201.not, label %for.end199.cleanup_crit_edge, label %for.end199.if.end464.critedge688_crit_edge

for.end199.if.end464.critedge688_crit_edge:       ; preds = %for.end199
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end464.critedge688

for.end199.cleanup_crit_edge:                     ; preds = %for.end199
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else205:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or44)
  %cmp209759.not = icmp eq i32 %or44, 0
  br i1 %cmp209759.not, label %if.else205.for.end219_crit_edge, label %for.body211.preheader

if.else205.for.end219_crit_edge:                  ; preds = %if.else205
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end219

for.body211.preheader:                            ; preds = %if.else205
  %74 = trunc i32 %or44 to i16
  br label %for.body211

for.body211:                                      ; preds = %for.body211.for.body211_crit_edge, %for.body211.preheader
  %conv208761 = phi i32 [ %conv208, %for.body211.for.body211_crit_edge ], [ 0, %for.body211.preheader ]
  %i158.2760 = phi i16 [ %inc218, %for.body211.for.body211_crit_edge ], [ 0, %for.body211.preheader ]
  %add213 = add i16 %i158.2760, -1536
  %arrayidx216 = getelementptr i8, ptr %call9.i, i32 %conv208761
  %75 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx216, align 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %add213, i8 noundef zeroext -1, i8 noundef zeroext %76) #7
  %inc218 = add nuw i16 %i158.2760, 1
  %conv208 = zext i16 %inc218 to i32
  %cmp209 = icmp ult i16 %inc218, %74
  br i1 %cmp209, label %for.body211.for.body211_crit_edge, label %for.body211.for.end219_crit_edge

for.body211.for.end219_crit_edge:                 ; preds = %for.body211
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end219

for.body211.for.body211_crit_edge:                ; preds = %for.body211
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body211

for.end219:                                       ; preds = %for.body211.for.end219_crit_edge, %if.else205.for.end219_crit_edge
  %call220 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 250) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %cmp221.not = icmp eq i32 %call220, 0
  br i1 %cmp221.not, label %for.end219.cleanup_crit_edge, label %for.end219.if.end464.critedge688_crit_edge

for.end219.if.end464.critedge688_crit_edge:       ; preds = %for.end219
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end464.critedge688

for.end219.cleanup_crit_edge:                     ; preds = %for.end219
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.end219.cleanup_crit_edge, %for.end199.cleanup_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  %ci226 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %77 = ptrtoint ptr %ci226 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %ci226, align 4
  %.b673 = load i1, ptr @REG_SD_BYTE_CNT_H, align 2
  %78 = select i1 %.b673, i16 -710, i16 0
  %79 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cmnd, align 4
  %arrayidx228 = getelementptr i8, ptr %80, i32 8
  %81 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx228, align 1
  %83 = and i8 %82, 3
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %78, i8 noundef zeroext -1, i8 noundef zeroext %83) #7
  %.b671 = load i1, ptr @REG_SD_BYTE_CNT_L, align 2
  %84 = select i1 %.b671, i16 -711, i16 0
  %85 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cmnd, align 4
  %arrayidx233 = getelementptr i8, ptr %86, i32 9
  %87 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx233, align 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %84, i8 noundef zeroext -1, i8 noundef zeroext %88) #7
  %.b677 = load i1, ptr @REG_SD_BLOCK_CNT_H, align 2
  %89 = select i1 %.b677, i16 -708, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %89, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  %.b675 = load i1, ptr @REG_SD_BLOCK_CNT_L, align 2
  %90 = select i1 %.b675, i16 -709, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %90, i8 noundef zeroext -1, i8 noundef zeroext 1) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %.b683 = load i1, ptr @REG_SD_TRANSFER, align 2
  %91 = select i1 %.b683, i16 -718, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %91, i8 noundef zeroext -1, i8 noundef zeroext -127) #7
  %.b682 = load i1, ptr @REG_SD_TRANSFER, align 2
  %92 = select i1 %.b682, i16 -718, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext %92, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  %call234 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 4, i32 noundef 250) #7
  br label %if.end255

if.else236:                                       ; preds = %if.end154
  %and237 = and i32 %or44, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and237)
  %tobool238.not = icmp eq i32 %and237, 0
  br i1 %tobool238.not, label %if.then239, label %if.else236.sd_execute_write_cmd_failed_crit_edge

if.else236.sd_execute_write_cmd_failed_crit_edge: ; preds = %if.else236
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_execute_write_cmd_failed

if.then239:                                       ; preds = %if.else236
  call void @__sanitizer_cov_trace_pc() #9
  %ci240 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %93 = ptrtoint ptr %ci240 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %ci240, align 4
  tail call void @trans_dma_enable(i32 noundef 1, ptr noundef %chip, i32 noundef %or44, i8 noundef zeroext 32) #7
  %.b672 = load i1, ptr @REG_SD_BYTE_CNT_H, align 2
  %94 = select i1 %.b672, i16 -710, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %94, i8 noundef zeroext -1, i8 noundef zeroext 2) #7
  %.b = load i1, ptr @REG_SD_BYTE_CNT_L, align 2
  %95 = select i1 %.b, i16 -711, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %95, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  %.b676 = load i1, ptr @REG_SD_BLOCK_CNT_H, align 2
  %96 = select i1 %.b676, i16 -708, i16 0
  %97 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cmnd, align 4
  %arrayidx242 = getelementptr i8, ptr %98, i32 7
  %99 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx242, align 1
  %101 = lshr i8 %100, 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %96, i8 noundef zeroext -1, i8 noundef zeroext %101) #7
  %.b674 = load i1, ptr @REG_SD_BLOCK_CNT_L, align 2
  %102 = select i1 %.b674, i16 -709, i16 0
  %and246 = lshr i32 %or, 9
  %conv248 = trunc i32 %and246 to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %102, i8 noundef zeroext -1, i8 noundef zeroext %conv248) #7
  %.b681 = load i1, ptr @REG_SD_TRANSFER, align 2
  %103 = select i1 %.b681, i16 -718, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %103, i8 noundef zeroext -1, i8 noundef zeroext -127) #7
  %.b680 = load i1, ptr @REG_SD_TRANSFER, align 2
  %104 = select i1 %.b680, i16 -718, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext %104, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  tail call void @rtsx_send_cmd_no_wait(ptr noundef %chip) #7
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17
  %105 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sdb.i, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %107 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %length.i, align 4
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 0, i32 1
  %109 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %nents.i, align 4
  %call252 = tail call i32 @rtsx_transfer_data(ptr noundef %chip, i8 noundef zeroext 4, ptr noundef %106, i32 noundef %108, i32 noundef %110, i32 noundef 1, i32 noundef 10000) #7
  br label %if.end255

if.end255:                                        ; preds = %if.then239, %cleanup
  %lock_cmd_type.2 = phi i8 [ %lock_cmd_type.0, %cleanup ], [ 0, %if.then239 ]
  %retval3.1 = phi i32 [ %call234, %cleanup ], [ %call252, %if.then239 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval3.1)
  %cmp256 = icmp slt i32 %retval3.1, 0
  br i1 %cmp256, label %if.end255.if.then463_crit_edge, label %if.end259

if.end255.if.then463_crit_edge:                   ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then463

if.end259:                                        ; preds = %if.end255
  br i1 %cmp64, label %if.then263, label %if.end259.if.end287_crit_edge

if.end259.if.end287_crit_edge:                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end287

if.then263:                                       ; preds = %if.end259
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %lock_cmd_type.2)
  %cmp265 = icmp eq i8 %lock_cmd_type.2, 8
  br i1 %cmp265, label %if.then267, label %if.end268

if.then267:                                       ; preds = %if.then263
  call void @__sanitizer_cov_trace_pc() #9
  %sd_erase_status = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 25
  %111 = ptrtoint ptr %sd_erase_status to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %sd_erase_status, align 1
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %112 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %resid_len.i, align 4
  br label %cleanup471

if.end268:                                        ; preds = %if.then263
  %ci269 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %113 = ptrtoint ptr %ci269 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %ci269, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -720, i8 noundef zeroext 2, i8 noundef zeroext 2) #7
  %call270 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 4, i32 noundef 250) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call270)
  %cmp271 = icmp slt i32 %call270, 0
  br i1 %cmp271, label %if.end268.if.then463_crit_edge, label %if.end274

if.end268.if.then463_crit_edge:                   ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then463

if.end274:                                        ; preds = %if.end268
  %call275 = tail call fastcc i32 @sd_update_lock_status(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call275)
  %cmp276.not = icmp eq i32 %call275, 0
  br i1 %cmp276.not, label %if.end274.if.end287_crit_edge, label %do.body

if.end274.if.end287_crit_edge:                    ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end287

do.body:                                          ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_execute_write_data.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_execute_write_data, %if.then283)) #7
          to label %if.end287 [label %if.then283], !srcloc !336

if.then283:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %114 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %chip, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %117, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_execute_write_data.__UNIQUE_ID_ddebug377, ptr noundef %dev.i, ptr noundef nonnull @.str.20) #7
  br label %if.end287

if.end287:                                        ; preds = %if.then283, %do.body, %if.end274.if.end287_crit_edge, %if.end259.if.end287_crit_edge
  %tobool458.not = phi i1 [ true, %if.end274.if.end287_crit_edge ], [ true, %if.end259.if.end287_crit_edge ], [ false, %if.then283 ], [ false, %do.body ]
  br i1 %tobool24.not, label %if.end287.if.end295_crit_edge, label %if.then289

if.end287.if.end295_crit_edge:                    ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end295

if.then289:                                       ; preds = %if.end287
  %sd_addr.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %118 = ptrtoint ptr %sd_addr.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %sd_addr.i, align 4
  %call.i722 = tail call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 7, i32 noundef %119, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i722)
  %cmp.not.i723.not = icmp eq i32 %call.i722, 0
  br i1 %cmp.not.i723.not, label %if.then289.if.end295_crit_edge, label %if.then289.sd_execute_write_cmd_failed_crit_edge

if.then289.sd_execute_write_cmd_failed_crit_edge: ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_execute_write_cmd_failed

if.then289.if.end295_crit_edge:                   ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end295

if.end295:                                        ; preds = %if.then289.if.end295_crit_edge, %if.end287.if.end295_crit_edge
  br i1 %tobool17.not, label %if.end295.if.end303_crit_edge, label %if.then297

if.end295.if.end303_crit_edge:                    ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end303

if.then297:                                       ; preds = %if.end295
  %call298 = tail call i32 @ext_sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 12, i32 noundef 0, i8 noundef zeroext 9, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call298)
  %cmp299.not = icmp eq i32 %call298, 0
  br i1 %cmp299.not, label %if.then297.if.end303_crit_edge, label %if.then297.sd_execute_write_cmd_failed_crit_edge

if.then297.sd_execute_write_cmd_failed_crit_edge: ; preds = %if.then297
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_execute_write_cmd_failed

if.then297.if.end303_crit_edge:                   ; preds = %if.then297
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end303

if.end303:                                        ; preds = %if.then297.if.end303_crit_edge, %if.end295.if.end303_crit_edge
  br i1 %cmp125, label %if.then306, label %if.end303.if.end322_crit_edge

if.end303.if.end322_crit_edge:                    ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end322

if.then306:                                       ; preds = %if.end303
  %call307 = tail call i32 @ext_sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 16, i32 noundef 512, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call307)
  %cmp308.not = icmp eq i32 %call307, 0
  br i1 %cmp308.not, label %if.end311, label %if.then306.sd_execute_write_cmd_failed_crit_edge

if.then306.sd_execute_write_cmd_failed_crit_edge: ; preds = %if.then306
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_execute_write_cmd_failed

if.end311:                                        ; preds = %if.then306
  %call312 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -592, i8 noundef zeroext -1, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call312)
  %cmp313.not = icmp eq i32 %call312, 0
  br i1 %cmp313.not, label %if.end316, label %if.end311.sd_execute_write_cmd_failed_crit_edge

if.end311.sd_execute_write_cmd_failed_crit_edge:  ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_execute_write_cmd_failed

if.end316:                                        ; preds = %if.end311
  %call317 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -593, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call317)
  %cmp318.not = icmp eq i32 %call317, 0
  br i1 %cmp318.not, label %if.end316.if.end322_crit_edge, label %if.end316.sd_execute_write_cmd_failed_crit_edge

if.end316.sd_execute_write_cmd_failed_crit_edge:  ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_execute_write_cmd_failed

if.end316.if.end322_crit_edge:                    ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end322

if.end322:                                        ; preds = %if.end316.if.end322_crit_edge, %if.end303.if.end322_crit_edge
  %120 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cmnd, align 4
  %arrayidx324 = getelementptr i8, ptr %121, i32 1
  %122 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx324, align 1
  %124 = and i8 %123, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %125 = icmp ne i8 %124, 0
  %sd_addr340 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %126 = ptrtoint ptr %sd_addr340 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %sd_addr340, align 4
  %call342 = tail call i32 @ext_sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %127, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i1 noundef zeroext %125)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call342)
  %cmp343 = icmp eq i32 %call342, 0
  br i1 %cmp343, label %if.end322.if.end353_crit_edge, label %for.cond336

if.end322.if.end353_crit_edge:                    ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end353

for.cond336:                                      ; preds = %if.end322
  %128 = ptrtoint ptr %sd_addr340 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %sd_addr340, align 4
  %call342.1 = tail call i32 @ext_sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %129, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i1 noundef zeroext %125)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call342.1)
  %cmp343.1 = icmp eq i32 %call342.1, 0
  br i1 %cmp343.1, label %for.cond336.if.end353_crit_edge, label %for.cond336.1

for.cond336.if.end353_crit_edge:                  ; preds = %for.cond336
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end353

for.cond336.1:                                    ; preds = %for.cond336
  %130 = ptrtoint ptr %sd_addr340 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %sd_addr340, align 4
  %call342.2 = tail call i32 @ext_sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %131, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i1 noundef zeroext %125)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call342.2)
  %cmp343.2 = icmp eq i32 %call342.2, 0
  br i1 %cmp343.2, label %for.cond336.1.if.end353_crit_edge, label %for.cond336.1.sd_execute_write_cmd_failed_crit_edge

for.cond336.1.sd_execute_write_cmd_failed_crit_edge: ; preds = %for.cond336.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_execute_write_cmd_failed

for.cond336.1.if.end353_crit_edge:                ; preds = %for.cond336.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end353

if.end353:                                        ; preds = %for.cond336.1.if.end353_crit_edge, %for.cond336.if.end353_crit_edge, %if.end322.if.end353_crit_edge
  br i1 %cmp64, label %if.then357, label %if.end353.if.end457_crit_edge

if.end353.if.end457_crit_edge:                    ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end457

if.then357:                                       ; preds = %if.end353
  br i1 %tobool458.not, label %do.body360, label %if.then357.do.body397_crit_edge

if.then357.do.body397_crit_edge:                  ; preds = %if.then357
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body397

do.body360:                                       ; preds = %if.then357
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_execute_write_data.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_execute_write_data, %if.then372)) #7
          to label %do.end377 [label %if.then372], !srcloc !336

if.then372:                                       ; preds = %do.body360
  call void @__sanitizer_cov_trace_pc() #9
  %132 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %chip, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %dev.i726 = getelementptr inbounds %struct.pci_dev, ptr %135, i32 0, i32 44
  %conv374 = zext i8 %lock_cmd_type.2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_execute_write_data.__UNIQUE_ID_ddebug378, ptr noundef %dev.i726, ptr noundef nonnull @.str.21, i32 noundef %conv374) #7
  br label %do.end377

do.end377:                                        ; preds = %if.then372, %do.body360
  %conv378 = zext i8 %lock_cmd_type.2 to i32
  %and379 = and i32 %conv378, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and379)
  %tobool380.not = icmp eq i32 %and379, 0
  br i1 %tobool380.not, label %do.end377.if.end386_crit_edge, label %if.then381

do.end377.if.end386_crit_edge:                    ; preds = %do.end377
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end386

if.then381:                                       ; preds = %do.end377
  call void @__sanitizer_cov_trace_pc() #9
  %136 = ptrtoint ptr %sd_lock_status81 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %sd_lock_status81, align 4
  %138 = and i8 %137, -33
  store i8 %138, ptr %sd_lock_status81, align 4
  br label %if.end386

if.end386:                                        ; preds = %if.then381, %do.end377.if.end386_crit_edge
  %and388 = and i32 %conv378, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and388)
  %tobool389.not = icmp eq i32 %and388, 0
  br i1 %tobool389.not, label %if.end386.do.body397_crit_edge, label %if.then390

if.end386.do.body397_crit_edge:                   ; preds = %if.end386
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body397

if.then390:                                       ; preds = %if.end386
  call void @__sanitizer_cov_trace_pc() #9
  %139 = ptrtoint ptr %sd_lock_status81 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %sd_lock_status81, align 4
  %141 = or i8 %140, 32
  store i8 %141, ptr %sd_lock_status81, align 4
  br label %do.body397

do.body397:                                       ; preds = %if.then390, %if.end386.do.body397_crit_edge, %if.then357.do.body397_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_execute_write_data.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_execute_write_data, %if.then409)) #7
          to label %do.end416 [label %if.then409], !srcloc !336

if.then409:                                       ; preds = %do.body397
  call void @__sanitizer_cov_trace_pc() #9
  %142 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %chip, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 4
  %dev.i727 = getelementptr inbounds %struct.pci_dev, ptr %145, i32 0, i32 44
  %146 = ptrtoint ptr %sd_lock_status81 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %sd_lock_status81, align 4
  %conv413 = zext i8 %147 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_execute_write_data.__UNIQUE_ID_ddebug379, ptr noundef %dev.i727, ptr noundef nonnull @.str.22, i32 noundef %sd_lock_state.0, i32 noundef %conv413) #7
  br label %do.end416

do.end416:                                        ; preds = %if.then409, %do.body397
  %148 = ptrtoint ptr %sd_lock_status81 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %sd_lock_status81, align 4
  %150 = and i8 %149, -128
  %and420 = zext i8 %150 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sd_lock_state.0, i32 %and420)
  %tobool421.not = icmp eq i32 %sd_lock_state.0, %and420
  br i1 %tobool421.not, label %do.end416.if.end457_crit_edge, label %if.then422

do.end416.if.end457_crit_edge:                    ; preds = %do.end416
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end457

if.then422:                                       ; preds = %do.end416
  %sd_lock_notify = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 26
  %151 = ptrtoint ptr %sd_lock_notify to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 1, ptr %sd_lock_notify, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sd_lock_state.0)
  %tobool424.not = icmp eq i32 %sd_lock_state.0, 0
  %152 = and i8 %149, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool429.not = icmp eq i8 %152, 0
  %or.cond757 = select i1 %tobool424.not, i1 true, i1 %tobool429.not
  br i1 %or.cond757, label %if.then422.if.end457_crit_edge, label %if.then430

if.then422.if.end457_crit_edge:                   ; preds = %if.then422
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end457

if.then430:                                       ; preds = %if.then422
  %or433 = or i8 %149, 3
  %153 = ptrtoint ptr %sd_lock_status81 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %or433, ptr %sd_lock_status81, align 4
  %154 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %sd_card1, align 4
  %156 = and i16 %155, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %156)
  %cmp438 = icmp eq i16 %156, 0
  br i1 %cmp438, label %if.then440, label %if.then430.if.end450_crit_edge

if.then430.if.end450_crit_edge:                   ; preds = %if.then430
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end450

if.then440:                                       ; preds = %if.then430
  %call441 = tail call fastcc i32 @reset_sd(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call441)
  %cmp442.not = icmp eq i32 %call441, 0
  br i1 %cmp442.not, label %if.then440.if.end450_crit_edge, label %if.then444

if.then440.if.end450_crit_edge:                   ; preds = %if.then440
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end450

if.then444:                                       ; preds = %if.then440
  call void @__sanitizer_cov_trace_pc() #9
  %157 = ptrtoint ptr %sd_lock_status81 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %sd_lock_status81, align 4
  %159 = and i8 %158, -4
  store i8 %159, ptr %sd_lock_status81, align 4
  br label %sd_execute_write_cmd_failed

if.end450:                                        ; preds = %if.then440.if.end450_crit_edge, %if.then430.if.end450_crit_edge
  %160 = ptrtoint ptr %sd_lock_status81 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %sd_lock_status81, align 4
  %162 = and i8 %161, -4
  store i8 %162, ptr %sd_lock_status81, align 4
  br label %if.end457

if.end457:                                        ; preds = %if.end450, %if.then422.if.end457_crit_edge, %do.end416.if.end457_crit_edge, %if.end353.if.end457_crit_edge
  %resid_len.i729 = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %163 = ptrtoint ptr %resid_len.i729 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %resid_len.i729, align 4
  br i1 %tobool458.not, label %if.end457.cleanup471_crit_edge, label %if.then459

if.end457.cleanup471_crit_edge:                   ; preds = %if.end457
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup471

if.then459:                                       ; preds = %if.end457
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 0) #7
  br label %cleanup471

sd_execute_write_cmd_failed:                      ; preds = %if.then444, %for.cond336.1.sd_execute_write_cmd_failed_crit_edge, %if.end316.sd_execute_write_cmd_failed_crit_edge, %if.end311.sd_execute_write_cmd_failed_crit_edge, %if.then306.sd_execute_write_cmd_failed_crit_edge, %if.then297.sd_execute_write_cmd_failed_crit_edge, %if.then289.sd_execute_write_cmd_failed_crit_edge, %if.else236.sd_execute_write_cmd_failed_crit_edge
  %164 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 1, ptr %pre_cmd_err, align 4
  br label %if.end464

if.then463:                                       ; preds = %if.end268.if.then463_crit_edge, %if.end255.if.then463_crit_edge
  %call.i721 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  %165 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 1, ptr %pre_cmd_err, align 4
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 0) #7
  br label %if.end464

if.end464.critedge:                               ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #9
  %166 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 1, ptr %pre_cmd_err, align 4
  br label %if.end464

if.end464.critedge685:                            ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #9
  %167 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 1, ptr %pre_cmd_err, align 4
  br label %if.end464

if.end464.critedge686:                            ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #9
  %168 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 1, ptr %pre_cmd_err, align 4
  br label %if.end464

if.end464.critedge687:                            ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  %169 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 1, ptr %pre_cmd_err, align 4
  br label %if.end464

if.end464.critedge688:                            ; preds = %for.end219.if.end464.critedge688_crit_edge, %for.end199.if.end464.critedge688_crit_edge, %for.end.if.end464.critedge688_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  %170 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 1, ptr %pre_cmd_err, align 4
  br label %if.end464

if.end464:                                        ; preds = %if.end464.critedge688, %if.end464.critedge687, %if.end464.critedge686, %if.end464.critedge685, %if.end464.critedge, %if.then463, %sd_execute_write_cmd_failed
  %.sink = phi i32 [ 0, %sd_execute_write_cmd_failed ], [ 0, %if.end464.critedge688 ], [ 0, %if.end464.critedge687 ], [ 0, %if.end464.critedge686 ], [ 0, %if.end464.critedge685 ], [ 0, %if.end464.critedge ], [ 8, %if.then463 ]
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef %.sink) #7
  %call465 = tail call i32 @release_sd_card(ptr noundef %chip)
  tail call void @do_reset_sd_card(ptr noundef %chip) #7
  %card_ready = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 21
  %171 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %card_ready, align 2
  %173 = and i8 %172, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool468.not = icmp eq i8 %173, 0
  br i1 %tobool468.not, label %if.then469, label %if.end464.cleanup471_crit_edge

if.end464.cleanup471_crit_edge:                   ; preds = %if.end464
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup471

if.then469:                                       ; preds = %if.end464
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 2) #7
  br label %cleanup471

cleanup471:                                       ; preds = %if.then469, %if.end464.cleanup471_crit_edge, %if.then459, %if.end457.cleanup471_crit_edge, %if.then267, %if.end8.i.cleanup471_crit_edge, %if.then116.cleanup471_crit_edge, %if.then95.cleanup471_crit_edge, %sd_switch_clock.exit716.cleanup471_crit_edge, %switch.lookup.cleanup471_crit_edge, %if.then74, %sd_switch_clock.exit.cleanup471_crit_edge, %if.end7.cleanup471_crit_edge, %if.then5, %if.then
  %retval.1 = phi i32 [ 1, %if.then5 ], [ 1, %if.then74 ], [ 0, %if.then267 ], [ 1, %if.then459 ], [ 1, %if.then ], [ 1, %sd_switch_clock.exit.cleanup471_crit_edge ], [ 1, %sd_switch_clock.exit716.cleanup471_crit_edge ], [ 1, %if.then95.cleanup471_crit_edge ], [ 1, %if.then116.cleanup471_crit_edge ], [ 1, %if.then469 ], [ 1, %if.end464.cleanup471_crit_edge ], [ 1, %if.end7.cleanup471_crit_edge ], [ 1, %switch.lookup.cleanup471_crit_edge ], [ 3, %if.end8.i.cleanup471_crit_edge ], [ 0, %if.end457.cleanup471_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_stor_get_xfer_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sd_get_cmd_rsp(ptr noundef %srb, ptr noundef %chip) local_unnamed_addr #0 align 64 {
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
  %sd_pass_thru_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 14
  %4 = ptrtoint ptr %sd_pass_thru_en to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sd_pass_thru_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 6) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pre_cmd_err = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 15
  %6 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pre_cmd_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pre_cmd_err, align 4
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 1) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %9 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %10, i32 7
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %conv8 = zext i8 %12 to i16
  %shl = shl nuw i16 %conv8, 8
  %arrayidx10 = getelementptr i8, ptr %10, i32 8
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %14 to i16
  %or = or i16 %shl, %conv11
  %last_rsp_type = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 16
  %15 = ptrtoint ptr %last_rsp_type to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %last_rsp_type, align 4
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %16, label %if.else25 [
    i8 4, label %if.then15
    i8 2, label %if.then20
  ]

if.then15:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 6) #7
  br label %cleanup

if.then20:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %18 = tail call i16 @llvm.umin.i16(i16 %or, i16 17)
  br label %if.end35

if.else25:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %19 = tail call i16 @llvm.umin.i16(i16 %or, i16 6)
  br label %if.end35

if.end35:                                         ; preds = %if.else25, %if.then20
  %count.0.in = phi i16 [ %18, %if.then20 ], [ %19, %if.else25 ]
  %count.0 = zext i16 %count.0.in to i32
  %rsp = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 17
  tail call void @rtsx_stor_set_xfer_buf(ptr noundef %rsp, i32 noundef %count.0, ptr noundef %srb) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_get_cmd_rsp.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_get_cmd_rsp, %if.then39)) #7
          to label %do.body43 [label %if.then39], !srcloc !336

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %conv41 = zext i16 %or to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_get_cmd_rsp.__UNIQUE_ID_ddebug380, ptr noundef %dev.i, ptr noundef nonnull @.str.24, i32 noundef %conv41) #7
  br label %do.body43

do.body43:                                        ; preds = %if.then39, %if.end35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_get_cmd_rsp.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_get_cmd_rsp, %if.then55)) #7
          to label %do.end71 [label %if.then55], !srcloc !336

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %dev.i103 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %28 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rsp, align 1
  %conv59 = zext i8 %29 to i32
  %arrayidx61 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 17, i32 1
  %30 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %31 to i32
  %arrayidx64 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 17, i32 2
  %32 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %33 to i32
  %arrayidx67 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 17, i32 3
  %34 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_get_cmd_rsp.__UNIQUE_ID_ddebug381, ptr noundef %dev.i103, ptr noundef nonnull @.str.25, i32 noundef %conv59, i32 noundef %conv62, i32 noundef %conv65, i32 noundef %conv68) #7
  br label %do.end71

do.end71:                                         ; preds = %if.then55, %do.body43
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %36 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %resid_len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end71, %if.then15, %if.then4, %if.then
  %retval.0 = phi i32 [ 1, %if.then4 ], [ 1, %if.then15 ], [ 0, %do.end71 ], [ 1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sd_hw_rst(ptr nocapture noundef %srb, ptr noundef %chip) local_unnamed_addr #0 align 64 {
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
  %sd_pass_thru_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 14
  %4 = ptrtoint ptr %sd_pass_thru_en to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sd_pass_thru_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 6) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pre_cmd_err = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 15
  %6 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pre_cmd_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pre_cmd_err, align 4
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 1) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %9 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %10, i32 2
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %12)
  %cmp.not = icmp eq i8 %12, 83
  br i1 %cmp.not, label %lor.lhs.false, label %if.end7.if.then45_crit_edge

if.end7.if.then45_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

lor.lhs.false:                                    ; preds = %if.end7
  %arrayidx11 = getelementptr i8, ptr %10, i32 3
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %14)
  %cmp13.not = icmp eq i8 %14, 68
  br i1 %cmp13.not, label %lor.lhs.false15, label %lor.lhs.false.if.then45_crit_edge

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %arrayidx17 = getelementptr i8, ptr %10, i32 4
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %16)
  %cmp19.not = icmp eq i8 %16, 32
  br i1 %cmp19.not, label %lor.lhs.false21, label %lor.lhs.false15.if.then45_crit_edge

lor.lhs.false15.if.then45_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

lor.lhs.false21:                                  ; preds = %lor.lhs.false15
  %arrayidx23 = getelementptr i8, ptr %10, i32 5
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %18)
  %cmp25.not = icmp eq i8 %18, 67
  br i1 %cmp25.not, label %lor.lhs.false27, label %lor.lhs.false21.if.then45_crit_edge

lor.lhs.false21.if.then45_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

lor.lhs.false27:                                  ; preds = %lor.lhs.false21
  %arrayidx29 = getelementptr i8, ptr %10, i32 6
  %19 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 97, i8 %20)
  %cmp31.not = icmp eq i8 %20, 97
  br i1 %cmp31.not, label %lor.lhs.false33, label %lor.lhs.false27.if.then45_crit_edge

lor.lhs.false27.if.then45_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

lor.lhs.false33:                                  ; preds = %lor.lhs.false27
  %arrayidx35 = getelementptr i8, ptr %10, i32 7
  %21 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 114, i8 %22)
  %cmp37.not = icmp eq i8 %22, 114
  br i1 %cmp37.not, label %lor.lhs.false39, label %lor.lhs.false33.if.then45_crit_edge

lor.lhs.false33.if.then45_crit_edge:              ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

lor.lhs.false39:                                  ; preds = %lor.lhs.false33
  %arrayidx41 = getelementptr i8, ptr %10, i32 8
  %23 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %24)
  %cmp43.not = icmp eq i8 %24, 100
  br i1 %cmp43.not, label %if.end46, label %lor.lhs.false39.if.then45_crit_edge

lor.lhs.false39.if.then45_crit_edge:              ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false39.if.then45_crit_edge, %lor.lhs.false33.if.then45_crit_edge, %lor.lhs.false27.if.then45_crit_edge, %lor.lhs.false21.if.then45_crit_edge, %lor.lhs.false15.if.then45_crit_edge, %lor.lhs.false.if.then45_crit_edge, %if.end7.if.then45_crit_edge
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 6) #7
  br label %cleanup

if.end46:                                         ; preds = %lor.lhs.false39
  %arrayidx48 = getelementptr i8, ptr %10, i32 1
  %25 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx48, align 1
  %27 = and i8 %26, 15
  %and = zext i8 %27 to i32
  %28 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb72
  ]

sw.bb:                                            ; preds = %if.end46
  %arrayidx51 = getelementptr i8, ptr %10, i32 9
  %29 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %30)
  %cmp53 = icmp eq i8 %30, 100
  br i1 %cmp53, label %if.then55, label %sw.bb.if.end58_crit_edge

sw.bb.if.end58_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then55:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %sd_lock_status = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %31 = ptrtoint ptr %sd_lock_status to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sd_lock_status, align 4
  %33 = or i8 %32, 2
  store i8 %33, ptr %sd_lock_status, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %sw.bb.if.end58_crit_edge
  %call = tail call i32 @reset_sd_card(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp59.not = icmp eq i32 %call, 0
  %sd_lock_status68 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %34 = ptrtoint ptr %sd_lock_status68 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sd_lock_status68, align 4
  %36 = and i8 %35, -3
  store i8 %36, ptr %sd_lock_status68, align 4
  br i1 %cmp59.not, label %if.end58.sw.epilog_crit_edge, label %if.then61

if.end58.sw.epilog_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 2) #7
  %37 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %pre_cmd_err, align 4
  br label %cleanup

sw.bb72:                                          ; preds = %if.end46
  %call73 = tail call fastcc i32 @reset_sd(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74.not = icmp eq i32 %call73, 0
  br i1 %cmp74.not, label %sw.bb72.sw.epilog_crit_edge, label %if.then76

sw.bb72.sw.epilog_crit_edge:                      ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then76:                                        ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 2) #7
  %38 = ptrtoint ptr %pre_cmd_err to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %pre_cmd_err, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 6) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb72.sw.epilog_crit_edge, %if.end58.sw.epilog_crit_edge
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %39 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %resid_len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then76, %if.then61, %if.then45, %if.then5, %if.then
  %retval.0 = phi i32 [ 1, %if.then5 ], [ 1, %if.then45 ], [ 1, %sw.default ], [ 1, %if.then76 ], [ 0, %sw.epilog ], [ 1, %if.then61 ], [ 1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sd_cleanup_work(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %seq_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 7
  %0 = ptrtoint ptr %seq_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %seq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %do.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_cleanup_work.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_cleanup_work, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !336

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_cleanup_work.__UNIQUE_ID_ddebug382, ptr noundef %dev.i, ptr noundef nonnull @.str.27) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  tail call void @sd_stop_seq_mode(ptr noundef %chip)
  %cleanup_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 11
  %6 = ptrtoint ptr %cleanup_counter to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cleanup_counter, align 4
  br label %if.end7

if.end7:                                          ; preds = %do.end, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sd_power_off_card3v3(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @disable_card_clock(ptr noundef %chip, i8 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -683, i8 noundef zeroext 4, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ft2_fast_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 131
  %0 = ptrtoint ptr %ft2_fast_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ft2_fast_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool5.not = icmp eq i32 %1, 0
  br i1 %tobool5.not, label %if.then6, label %if.end4.if.end12_crit_edge

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then6:                                         ; preds = %if.end4
  %call7 = tail call i32 @card_power_off(ptr noundef %chip, i8 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.then6.while.body_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.while.body_crit_edge:                    ; preds = %if.then6
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then6.while.body_crit_edge
  %__ms.038 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 50, %if.then6.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.038, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #7
  %tobool11.not = icmp eq i32 %dec, 0
  br i1 %tobool11.not, label %while.body.if.end12_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.if.end12_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end12:                                         ; preds = %while.body.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %3 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool13.not = icmp eq i32 %4, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  %product_id.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %5 = ptrtoint ptr %product_id.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %product_id.i, align 2
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.123)
  switch i16 %6, label %if.then14.if.end23_crit_edge [
    i16 21000, label %if.then.i
    i16 21128, label %if.then28.i
  ]

if.then14.if.end23_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then.i:                                        ; preds = %if.then14
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -672, i8 noundef zeroext -1, i8 noundef zeroext 85) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %call4.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -671, i8 noundef zeroext -1, i8 noundef zeroext 85) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -670, i8 noundef zeroext -1, i8 noundef zeroext 75) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11.i:                                       ; preds = %if.end7.i
  %call12.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -669, i8 noundef zeroext -1, i8 noundef zeroext 85) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end11.i.cleanup_crit_edge

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.i:                                       ; preds = %if.end11.i
  %call16.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -668, i8 noundef zeroext -1, i8 noundef zeroext -76) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end15.i.cleanup_crit_edge

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19.i:                                       ; preds = %if.end15.i
  %call20.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -667, i8 noundef zeroext -1, i8 noundef zeroext 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.if.end23_crit_edge, label %if.end19.i.cleanup_crit_edge

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19.i.if.end23_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then28.i:                                      ; preds = %if.then14
  %baro_pkg.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 73
  %8 = ptrtoint ptr %baro_pkg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %baro_pkg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp29.i = icmp eq i32 %9, 0
  br i1 %cmp29.i, label %if.then31.i, label %if.then28.i.if.end23_crit_edge

if.then28.i.if.end23_crit_edge:                   ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then31.i:                                      ; preds = %if.then28.i
  %call32.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -672, i8 noundef zeroext -1, i8 noundef zeroext 85) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.then31.i.cleanup_crit_edge

if.then31.i.cleanup_crit_edge:                    ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35.i:                                       ; preds = %if.then31.i
  %call36.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -671, i8 noundef zeroext -1, i8 noundef zeroext 85) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %if.end35.i.cleanup_crit_edge

if.end35.i.cleanup_crit_edge:                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39.i:                                       ; preds = %if.end35.i
  %call40.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -670, i8 noundef zeroext -1, i8 noundef zeroext 75) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end43.i, label %if.end39.i.cleanup_crit_edge

if.end39.i.cleanup_crit_edge:                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end43.i:                                       ; preds = %if.end39.i
  %call44.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -669, i8 noundef zeroext -1, i8 noundef zeroext 105) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end43.i.if.end23_crit_edge, label %if.end43.i.cleanup_crit_edge

if.end43.i.cleanup_crit_edge:                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end43.i.if.end23_crit_edge:                    ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.else:                                          ; preds = %if.end12
  %call19 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -995, i8 noundef zeroext 40, i8 noundef zeroext 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.else.if.end23_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end23:                                         ; preds = %if.else.if.end23_crit_edge, %if.end43.i.if.end23_crit_edge, %if.then28.i.if.end23_crit_edge, %if.end19.i.if.end23_crit_edge, %if.then14.if.end23_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.else.cleanup_crit_edge, %if.end43.i.cleanup_crit_edge, %if.end39.i.cleanup_crit_edge, %if.end35.i.cleanup_crit_edge, %if.then31.i.cleanup_crit_edge, %if.end19.i.cleanup_crit_edge, %if.end15.i.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ 1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ 1, %if.then6.cleanup_crit_edge ], [ %call19, %if.else.cleanup_crit_edge ], [ 1, %if.then.i.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ], [ 1, %if.end7.i.cleanup_crit_edge ], [ 1, %if.end11.i.cleanup_crit_edge ], [ 1, %if.end15.i.cleanup_crit_edge ], [ 1, %if.end19.i.cleanup_crit_edge ], [ 1, %if.then31.i.cleanup_crit_edge ], [ 1, %if.end35.i.cleanup_crit_edge ], [ 1, %if.end39.i.cleanup_crit_edge ], [ 1, %if.end43.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @disable_card_clock(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @card_power_off(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switch_ssc_clock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switch_normal_clock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_ddr_pre_tuning_tx(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -606, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %sd_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %err_code2.i92 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.099 = phi i32 [ 31, %for.cond.preheader ], [ %dec, %for.inc.for.body_crit_edge ]
  %phase_map.097 = phi i32 [ 0, %for.cond.preheader ], [ %phase_map.1, %for.inc.for.body_crit_edge ]
  %call3 = tail call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %err_code2.i92 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %err_code2.i92, align 2
  %or5.i = or i8 %1, 32
  store i8 %or5.i, ptr %err_code2.i92, align 2
  %call6 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -606, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  br label %cleanup

if.end7:                                          ; preds = %for.body
  %conv = trunc i32 %i.099 to i8
  %call8 = tail call fastcc i32 @sd_change_phase(ptr noundef %chip, i8 noundef zeroext %conv, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.end12, label %if.end7.for.inc_crit_edge

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end12:                                         ; preds = %if.end7
  %2 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sd_addr, align 4
  %call13 = tail call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %3, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.end12.if.then18_crit_edge, label %lor.lhs.false

if.end12.if.then18_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

lor.lhs.false:                                    ; preds = %if.end12
  %4 = ptrtoint ptr %err_code2.i92 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %err_code2.i92, align 2
  %and4.i = and i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and4.i)
  %tobool17.not = icmp eq i8 %and4.i, 0
  br i1 %tobool17.not, label %lor.lhs.false.if.then18_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %if.end12.if.then18_crit_edge
  %shl = shl nuw i32 1, %i.099
  %or = or i32 %shl, %phase_map.097
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %lor.lhs.false.for.inc_crit_edge, %if.end7.for.inc_crit_edge
  %phase_map.1 = phi i32 [ %phase_map.097, %if.end7.for.inc_crit_edge ], [ %or, %if.then18 ], [ %phase_map.097, %lor.lhs.false.for.inc_crit_edge ]
  %dec = add nsw i32 %i.099, -1
  %cmp.not = icmp eq i32 %i.099, 0
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call20 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -606, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.body, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_ddr_pre_tuning_tx.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_ddr_pre_tuning_tx, %if.then28)) #7
          to label %do.end [label %if.then28], !srcloc !336

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_ddr_pre_tuning_tx.__UNIQUE_ID_ddebug338, ptr noundef %dev.i, ptr noundef nonnull @.str.36, i32 noundef %phase_map.1) #7
  br label %do.end

do.end:                                           ; preds = %if.then28, %do.body
  %call31 = tail call fastcc zeroext i8 @sd_search_final_phase(ptr noundef %chip, i32 noundef %phase_map.1, i8 noundef zeroext 0)
  %conv32 = zext i8 %call31 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call31)
  %cmp33 = icmp eq i8 %call31, -1
  br i1 %cmp33, label %do.end.cleanup_crit_edge, label %if.end36

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %do.end
  %call37 = tail call fastcc i32 @sd_change_phase(ptr noundef %chip, i8 noundef zeroext %call31, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38.not = icmp eq i32 %call37, 0
  br i1 %cmp38.not, label %do.body42, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_ddr_pre_tuning_tx.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_ddr_pre_tuning_tx, %if.then54)) #7
          to label %cleanup [label %if.then54], !srcloc !336

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dev.i93 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_ddr_pre_tuning_tx.__UNIQUE_ID_ddebug339, ptr noundef %dev.i93, ptr noundef nonnull @.str.37, i32 noundef %conv32) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %do.body42, %if.end36.cleanup_crit_edge, %do.end.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then5 ], [ %call, %entry.cleanup_crit_edge ], [ %call20, %for.end.cleanup_crit_edge ], [ 1, %do.end.cleanup_crit_edge ], [ 1, %if.end36.cleanup_crit_edge ], [ 0, %if.then54 ], [ 0, %do.body42 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_change_phase(ptr noundef %chip, i8 noundef zeroext %sample_point, i8 noundef zeroext %tune_dir) unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !337
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_change_phase.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_change_phase, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !336

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %conv = zext i8 %sample_point to i32
  %conv6 = zext i8 %tune_dir to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_change_phase.__UNIQUE_ID_ddebug308, ptr noundef %dev.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv, i32 noundef %conv6) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %tune_dir)
  %cmp = icmp eq i8 %tune_dir, 1
  br i1 %cmp, label %if.then9, label %do.end.if.end19_crit_edge

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sd_card1, align 4
  %7 = and i16 %6, 1279
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %7)
  %.not = icmp eq i16 %7, 1024
  br label %if.end19

if.end19:                                         ; preds = %if.then9, %do.end.if.end19_crit_edge
  %ddr_rx.0.off0 = phi i1 [ false, %do.end.if.end19_crit_edge ], [ %.not, %if.then9 ]
  %SD_DCMPS_CTL.0 = phi i16 [ -980, %do.end.if.end19_crit_edge ], [ -979, %if.then9 ]
  %SD_VP_CTL.0 = phi i16 [ -982, %do.end.if.end19_crit_edge ], [ -981, %if.then9 ]
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %8 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool20.not = icmp eq i32 %9, 0
  br i1 %tobool20.not, label %if.else42, label %if.then21

if.then21:                                        ; preds = %if.end19
  %call22 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.then21
  %call26 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %SD_VP_CTL.0, i8 noundef zeroext 31, i8 noundef zeroext %sample_point) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %call30 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -982, i8 noundef zeroext 64, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %call34 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -982, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %call38 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end37.if.end140_crit_edge, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37.if.end140_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

if.else42:                                        ; preds = %if.end19
  %call43 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext %SD_VP_CTL.0, ptr noundef nonnull %val) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_change_phase.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_change_phase, %if.then56)) #7
          to label %do.end61 [label %if.then56], !srcloc !336

if.then56:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dev.i281 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val, align 1
  %conv58 = zext i8 %15 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_change_phase.__UNIQUE_ID_ddebug309, ptr noundef %dev.i281, ptr noundef nonnull @.str.48, i32 noundef %conv58) #7
  br label %do.end61

do.end61:                                         ; preds = %if.then56, %if.else42
  %call62 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext %SD_DCMPS_CTL.0, ptr noundef nonnull %val) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_change_phase.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_change_phase, %if.then75)) #7
          to label %do.end80 [label %if.then75], !srcloc !336

if.then75:                                        ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %dev.i282 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val, align 1
  %conv77 = zext i8 %21 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_change_phase.__UNIQUE_ID_ddebug310, ptr noundef %dev.i282, ptr noundef nonnull @.str.49, i32 noundef %conv77) #7
  br label %do.end80

do.end80:                                         ; preds = %if.then75, %do.end61
  br i1 %ddr_rx.0.off0, label %if.then82, label %if.else93

if.then82:                                        ; preds = %do.end80
  %call83 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %SD_VP_CTL.0, i8 noundef zeroext -128, i8 noundef zeroext -128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.then82.cleanup_crit_edge

if.then82.cleanup_crit_edge:                      ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end86:                                         ; preds = %if.then82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 10737400) #7
  %23 = or i8 %sample_point, -64
  %call89 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %SD_VP_CTL.0, i8 noundef zeroext -1, i8 noundef zeroext %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end86.if.end105_crit_edge, label %if.end86.cleanup_crit_edge

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end86.if.end105_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.else93:                                        ; preds = %do.end80
  %call94 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.else93.cleanup_crit_edge

if.else93.cleanup_crit_edge:                      ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end97:                                         ; preds = %if.else93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 10737400) #7
  %25 = or i8 %sample_point, 64
  %call101 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %SD_VP_CTL.0, i8 noundef zeroext -1, i8 noundef zeroext %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end97.if.end105_crit_edge, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end97.if.end105_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.end105:                                        ; preds = %if.end97.if.end105_crit_edge, %if.end86.if.end105_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 21474800) #7
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %27 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ci, align 4
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %SD_DCMPS_CTL.0, i8 noundef zeroext -128, i8 noundef zeroext -128) #7
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext %SD_DCMPS_CTL.0, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  %call106 = call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 4, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp107.not = icmp eq i32 %call106, 0
  br i1 %cmp107.not, label %if.end110, label %if.end105.fail_crit_edge

if.end105.fail_crit_edge:                         ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end110:                                        ; preds = %if.end105
  %host_cmds_ptr.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 4
  %28 = ptrtoint ptr %host_cmds_ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %host_cmds_ptr.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %val, align 1
  %conv112 = zext i8 %31 to i32
  %and113 = and i32 %conv112, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end116, label %if.end110.fail_crit_edge

if.end110.fail_crit_edge:                         ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end116:                                        ; preds = %if.end110
  %and118 = and i32 %conv112, 31
  %conv119 = zext i8 %sample_point to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and118, i32 %conv119)
  %cmp120.not = icmp eq i32 %and118, %conv119
  br i1 %cmp120.not, label %if.end123, label %if.end116.fail_crit_edge

if.end116.fail_crit_edge:                         ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end123:                                        ; preds = %if.end116
  %call124 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %SD_DCMPS_CTL.0, i8 noundef zeroext -128, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %if.end123.cleanup_crit_edge

if.end123.cleanup_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end127:                                        ; preds = %if.end123
  br i1 %ddr_rx.0.off0, label %if.then129, label %if.else134

if.then129:                                       ; preds = %if.end127
  %call130 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %SD_VP_CTL.0, i8 noundef zeroext -128, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.then129.if.end139_crit_edge, label %if.then129.cleanup_crit_edge

if.then129.cleanup_crit_edge:                     ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then129.if.end139_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

if.else134:                                       ; preds = %if.end127
  %call135 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.else134.if.end139_crit_edge, label %if.else134.cleanup_crit_edge

if.else134.cleanup_crit_edge:                     ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else134.if.end139_crit_edge:                   ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

if.end139:                                        ; preds = %if.else134.if.end139_crit_edge, %if.then129.if.end139_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 10737400) #7
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %if.end37.if.end140_crit_edge
  %call141 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -608, i8 noundef zeroext 16, i8 noundef zeroext 0) #7
  br label %cleanup

fail:                                             ; preds = %if.end116.fail_crit_edge, %if.end110.fail_crit_edge, %if.end105.fail_crit_edge
  %call145 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext %SD_VP_CTL.0, ptr noundef nonnull %val) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_change_phase.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_change_phase, %if.then158)) #7
          to label %do.end163 [label %if.then158], !srcloc !336

if.then158:                                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chip, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %dev.i283 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %38 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %val, align 1
  %conv160 = zext i8 %39 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_change_phase.__UNIQUE_ID_ddebug311, ptr noundef %dev.i283, ptr noundef nonnull @.str.48, i32 noundef %conv160) #7
  br label %do.end163

do.end163:                                        ; preds = %if.then158, %fail
  %call164 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext %SD_DCMPS_CTL.0, ptr noundef nonnull %val) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_change_phase.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_change_phase, %if.then177)) #7
          to label %do.end182 [label %if.then177], !srcloc !336

if.then177:                                       ; preds = %do.end163
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chip, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %dev.i284 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %44 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %val, align 1
  %conv179 = zext i8 %45 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_change_phase.__UNIQUE_ID_ddebug312, ptr noundef %dev.i284, ptr noundef nonnull @.str.49, i32 noundef %conv179) #7
  br label %do.end182

do.end182:                                        ; preds = %if.then177, %do.end163
  %call183 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %SD_DCMPS_CTL.0, i8 noundef zeroext -128, i8 noundef zeroext 0) #7
  %call184 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %SD_VP_CTL.0, i8 noundef zeroext -128, i8 noundef zeroext 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %46(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %51(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %53(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %55(i32 noundef 214748000) #7
  br i1 %cmp, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end182
  %call.i = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -989, i8 noundef zeroext -1, i8 noundef zeroext 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.cleanup.sink.split.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %do.end182
  %call8.i = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -989, i8 noundef zeroext -1, i8 noundef zeroext 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.else.i.cleanup.sink.split.i_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i.cleanup.sink.split.i_crit_edge, %if.then.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 2, %if.then.i.cleanup.sink.split.i_crit_edge ], [ 1, %if.else.i.cleanup.sink.split.i_crit_edge ]
  %call12.i = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -989, i8 noundef zeroext -1, i8 noundef zeroext %.sink.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.else.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end140, %if.else134.cleanup_crit_edge, %if.then129.cleanup_crit_edge, %if.end123.cleanup_crit_edge, %if.end97.cleanup_crit_edge, %if.else93.cleanup_crit_edge, %if.end86.cleanup_crit_edge, %if.then82.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then21.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.then21.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ %call34, %if.end33.cleanup_crit_edge ], [ %call38, %if.end37.cleanup_crit_edge ], [ %call83, %if.then82.cleanup_crit_edge ], [ %call89, %if.end86.cleanup_crit_edge ], [ %call94, %if.else93.cleanup_crit_edge ], [ %call101, %if.end97.cleanup_crit_edge ], [ %call124, %if.end123.cleanup_crit_edge ], [ %call130, %if.then129.cleanup_crit_edge ], [ %call135, %if.else134.cleanup_crit_edge ], [ %call141, %if.end140 ], [ 1, %if.then.i.cleanup_crit_edge ], [ 1, %if.else.i.cleanup_crit_edge ], [ 1, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_tuning_rx(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %raw_phase_map = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %raw_phase_map) #7
  %0 = getelementptr inbounds [3 x i32], ptr %raw_phase_map, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i32], ptr %raw_phase_map, i32 0, i32 2
  %2 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sd_card1, align 4
  %conv = zext i16 %3 to i32
  %trunc = trunc i16 %3 to i8
  %4 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.124)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 0, label %land.lhs.true
    i8 1, label %land.lhs.true19
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and11 = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  %sd_sdr_tuning_rx_cmd.sd_ddr_tuning_rx_cmd = select i1 %tobool.not, ptr @sd_sdr_tuning_rx_cmd, ptr @sd_ddr_tuning_rx_cmd
  br label %if.end27

land.lhs.true19:                                  ; preds = %entry
  %and22 = and i32 %conv, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %land.lhs.true19.cleanup_crit_edge, label %land.lhs.true19.if.end27_crit_edge

land.lhs.true19.if.end27_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %land.lhs.true19.if.end27_crit_edge, %land.lhs.true
  %tuning_cmd.0 = phi ptr [ %sd_sdr_tuning_rx_cmd.sd_ddr_tuning_rx_cmd, %land.lhs.true ], [ @mmc_ddr_tuning_rx_cmd, %land.lhs.true19.if.end27_crit_edge ]
  %5 = ptrtoint ptr %raw_phase_map to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %raw_phase_map, align 4
  br label %for.body33

for.body33:                                       ; preds = %if.end37.for.body33_crit_edge, %if.end27
  %or142 = phi i32 [ 0, %if.end27 ], [ %or141, %if.end37.for.body33_crit_edge ]
  %j.0132 = phi i32 [ 31, %if.end27 ], [ %dec, %if.end37.for.body33_crit_edge ]
  %call = tail call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp34.not = icmp eq i32 %call, 0
  br i1 %cmp34.not, label %if.end37, label %if.then36.loopexit140

if.then36.loopexit:                               ; preds = %for.body33.2
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.2147, ptr %1, align 4
  br label %if.then36

if.then36.loopexit139:                            ; preds = %for.body33.1
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.1144, ptr %0, align 4
  br label %if.then36

if.then36.loopexit140:                            ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %raw_phase_map to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or142, ptr %raw_phase_map, align 4
  br label %if.then36

if.then36:                                        ; preds = %if.then36.loopexit140, %if.then36.loopexit139, %if.then36.loopexit
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  %9 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %err_code2.i, align 2
  %or5.i = or i8 %10, 32
  store i8 %or5.i, ptr %err_code2.i, align 2
  br label %cleanup

if.end37:                                         ; preds = %for.body33
  %conv38 = trunc i32 %j.0132 to i8
  %call39 = tail call i32 %tuning_cmd.0(ptr noundef %chip, i8 noundef zeroext %conv38) #7, !callees !348
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp eq i32 %call39, 0
  %shl = shl nuw i32 1, %j.0132
  %or = select i1 %cmp40, i32 %shl, i32 0
  %or141 = or i32 %or142, %or
  %dec = add nsw i32 %j.0132, -1
  %cmp31.not = icmp eq i32 %j.0132, 0
  br i1 %cmp31.not, label %for.inc45, label %if.end37.for.body33_crit_edge

if.end37.for.body33_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body33

for.inc45:                                        ; preds = %if.end37
  %11 = ptrtoint ptr %raw_phase_map to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or141, ptr %raw_phase_map, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %0, align 4
  br label %for.body33.1

for.body33.1:                                     ; preds = %if.end37.1.for.body33.1_crit_edge, %for.inc45
  %or.1144 = phi i32 [ 0, %for.inc45 ], [ %or.1143, %if.end37.1.for.body33.1_crit_edge ]
  %j.0132.1 = phi i32 [ 31, %for.inc45 ], [ %dec.1, %if.end37.1.for.body33.1_crit_edge ]
  %call.1 = tail call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp34.not.1 = icmp eq i32 %call.1, 0
  br i1 %cmp34.not.1, label %if.end37.1, label %if.then36.loopexit139

if.end37.1:                                       ; preds = %for.body33.1
  %conv38.1 = trunc i32 %j.0132.1 to i8
  %call39.1 = tail call i32 %tuning_cmd.0(ptr noundef %chip, i8 noundef zeroext %conv38.1) #7, !callees !348
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.1)
  %cmp40.1 = icmp eq i32 %call39.1, 0
  %shl.1 = shl nuw i32 1, %j.0132.1
  %or.1 = select i1 %cmp40.1, i32 %shl.1, i32 0
  %or.1143 = or i32 %or.1144, %or.1
  %dec.1 = add nsw i32 %j.0132.1, -1
  %cmp31.1.not = icmp eq i32 %j.0132.1, 0
  br i1 %cmp31.1.not, label %for.inc45.1, label %if.end37.1.for.body33.1_crit_edge

if.end37.1.for.body33.1_crit_edge:                ; preds = %if.end37.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body33.1

for.inc45.1:                                      ; preds = %if.end37.1
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.1143, ptr %0, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %1, align 4
  br label %for.body33.2

for.body33.2:                                     ; preds = %if.end37.2.for.body33.2_crit_edge, %for.inc45.1
  %or.2147 = phi i32 [ 0, %for.inc45.1 ], [ %or.2146, %if.end37.2.for.body33.2_crit_edge ]
  %j.0132.2 = phi i32 [ 31, %for.inc45.1 ], [ %dec.2, %if.end37.2.for.body33.2_crit_edge ]
  %call.2 = tail call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp34.not.2 = icmp eq i32 %call.2, 0
  br i1 %cmp34.not.2, label %if.end37.2, label %if.then36.loopexit

if.end37.2:                                       ; preds = %for.body33.2
  %conv38.2 = trunc i32 %j.0132.2 to i8
  %call39.2 = tail call i32 %tuning_cmd.0(ptr noundef %chip, i8 noundef zeroext %conv38.2) #7, !callees !348
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.2)
  %cmp40.2 = icmp eq i32 %call39.2, 0
  %shl.2 = shl nuw i32 1, %j.0132.2
  %or.2 = select i1 %cmp40.2, i32 %shl.2, i32 0
  %or.2146 = or i32 %or.2147, %or.2
  %dec.2 = add nsw i32 %j.0132.2, -1
  %cmp31.2.not = icmp eq i32 %j.0132.2, 0
  br i1 %cmp31.2.not, label %for.inc45.2, label %if.end37.2.for.body33.2_crit_edge

if.end37.2.for.body33.2_crit_edge:                ; preds = %if.end37.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body33.2

for.inc45.2:                                      ; preds = %if.end37.2
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.2146, ptr %1, align 4
  %16 = ptrtoint ptr %raw_phase_map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %raw_phase_map, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %0, align 4
  br label %do.body

do.body:                                          ; preds = %for.inc64.do.body_crit_edge, %for.inc45.2
  %i.1135 = phi i32 [ 0, %for.inc45.2 ], [ %inc65, %for.inc64.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_tuning_rx.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_tuning_rx, %if.then60)) #7
          to label %for.inc64 [label %if.then60], !srcloc !336

if.then60:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %arrayidx62 = getelementptr [3 x i32], ptr %raw_phase_map, i32 0, i32 %i.1135
  %24 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx62, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_tuning_rx.__UNIQUE_ID_ddebug336, ptr noundef %dev.i, ptr noundef nonnull @.str.51, i32 noundef %i.1135, i32 noundef %25) #7
  br label %for.inc64

for.inc64:                                        ; preds = %if.then60, %do.body
  %inc65 = add nuw nsw i32 %i.1135, 1
  %exitcond.not = icmp eq i32 %inc65, 3
  br i1 %exitcond.not, label %do.body67, label %for.inc64.do.body_crit_edge

for.inc64.do.body_crit_edge:                      ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body67:                                        ; preds = %for.inc64
  %and49 = and i32 %19, %17
  %and51 = and i32 %and49, %or.2146
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_tuning_rx.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_tuning_rx, %if.then79)) #7
          to label %do.end83 [label %if.then79], !srcloc !336

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %dev.i129 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_tuning_rx.__UNIQUE_ID_ddebug337, ptr noundef %dev.i129, ptr noundef nonnull @.str.52, i32 noundef %and51) #7
  br label %do.end83

do.end83:                                         ; preds = %if.then79, %do.body67
  %call84 = tail call fastcc zeroext i8 @sd_search_final_phase(ptr noundef %chip, i32 noundef %and51, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call84)
  %cmp86 = icmp eq i8 %call84, -1
  br i1 %cmp86, label %do.end83.cleanup_crit_edge, label %if.end89

do.end83.cleanup_crit_edge:                       ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end89:                                         ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #9
  %call90 = tail call fastcc i32 @sd_change_phase(ptr noundef %chip, i8 noundef zeroext %call84, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91.not = icmp ne i32 %call90, 0
  %. = zext i1 %cmp91.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %do.end83.cleanup_crit_edge, %if.then36, %land.lhs.true19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then36 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %land.lhs.true19.cleanup_crit_edge ], [ 1, %do.end83.cleanup_crit_edge ], [ %., %if.end89 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %raw_phase_map) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_tuning_tx(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %raw_phase_map = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %raw_phase_map) #7
  %0 = getelementptr inbounds [3 x i32], ptr %raw_phase_map, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i32], ptr %raw_phase_map, i32 0, i32 2
  %2 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sd_card1, align 4
  %conv = zext i16 %3 to i32
  %trunc = trunc i16 %3 to i8
  %4 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 0, label %land.lhs.true
    i8 1, label %land.lhs.true19
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and11 = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  %sd_sdr_tuning_tx_cmd.sd_ddr_tuning_tx_cmd = select i1 %tobool.not, ptr @sd_sdr_tuning_tx_cmd, ptr @sd_ddr_tuning_tx_cmd
  br label %if.end27

land.lhs.true19:                                  ; preds = %entry
  %and22 = and i32 %conv, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %land.lhs.true19.cleanup_crit_edge, label %land.lhs.true19.if.end27_crit_edge

land.lhs.true19.if.end27_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %land.lhs.true19.if.end27_crit_edge, %land.lhs.true
  %tuning_cmd.0 = phi ptr [ %sd_sdr_tuning_tx_cmd.sd_ddr_tuning_tx_cmd, %land.lhs.true ], [ @sd_ddr_tuning_tx_cmd, %land.lhs.true19.if.end27_crit_edge ]
  %5 = ptrtoint ptr %raw_phase_map to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %raw_phase_map, align 4
  br label %for.body33

for.body33:                                       ; preds = %if.end38.for.body33_crit_edge, %if.end27
  %or144 = phi i32 [ 0, %if.end27 ], [ %or143, %if.end38.for.body33_crit_edge ]
  %j.0134 = phi i32 [ 31, %if.end27 ], [ %dec, %if.end38.for.body33_crit_edge ]
  %call = tail call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp34.not = icmp eq i32 %call, 0
  br i1 %cmp34.not, label %if.end38, label %if.then36.loopexit142

if.then36.loopexit:                               ; preds = %for.body33.2
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.2149, ptr %1, align 4
  br label %if.then36

if.then36.loopexit141:                            ; preds = %for.body33.1
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.1146, ptr %0, align 4
  br label %if.then36

if.then36.loopexit142:                            ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %raw_phase_map to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or144, ptr %raw_phase_map, align 4
  br label %if.then36

if.then36:                                        ; preds = %if.then36.loopexit142, %if.then36.loopexit141, %if.then36.loopexit
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  %9 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %err_code2.i, align 2
  %or5.i = or i8 %10, 32
  store i8 %or5.i, ptr %err_code2.i, align 2
  %call37 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -606, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  br label %cleanup

if.end38:                                         ; preds = %for.body33
  %conv39 = trunc i32 %j.0134 to i8
  %call40 = tail call i32 %tuning_cmd.0(ptr noundef %chip, i8 noundef zeroext %conv39) #7, !callees !349
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp eq i32 %call40, 0
  %shl = shl nuw i32 1, %j.0134
  %or = select i1 %cmp41, i32 %shl, i32 0
  %or143 = or i32 %or144, %or
  %dec = add nsw i32 %j.0134, -1
  %cmp31.not = icmp eq i32 %j.0134, 0
  br i1 %cmp31.not, label %for.inc46, label %if.end38.for.body33_crit_edge

if.end38.for.body33_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body33

for.inc46:                                        ; preds = %if.end38
  %11 = ptrtoint ptr %raw_phase_map to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or143, ptr %raw_phase_map, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %0, align 4
  br label %for.body33.1

for.body33.1:                                     ; preds = %if.end38.1.for.body33.1_crit_edge, %for.inc46
  %or.1146 = phi i32 [ 0, %for.inc46 ], [ %or.1145, %if.end38.1.for.body33.1_crit_edge ]
  %j.0134.1 = phi i32 [ 31, %for.inc46 ], [ %dec.1, %if.end38.1.for.body33.1_crit_edge ]
  %call.1 = tail call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp34.not.1 = icmp eq i32 %call.1, 0
  br i1 %cmp34.not.1, label %if.end38.1, label %if.then36.loopexit141

if.end38.1:                                       ; preds = %for.body33.1
  %conv39.1 = trunc i32 %j.0134.1 to i8
  %call40.1 = tail call i32 %tuning_cmd.0(ptr noundef %chip, i8 noundef zeroext %conv39.1) #7, !callees !349
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.1)
  %cmp41.1 = icmp eq i32 %call40.1, 0
  %shl.1 = shl nuw i32 1, %j.0134.1
  %or.1 = select i1 %cmp41.1, i32 %shl.1, i32 0
  %or.1145 = or i32 %or.1146, %or.1
  %dec.1 = add nsw i32 %j.0134.1, -1
  %cmp31.1.not = icmp eq i32 %j.0134.1, 0
  br i1 %cmp31.1.not, label %for.inc46.1, label %if.end38.1.for.body33.1_crit_edge

if.end38.1.for.body33.1_crit_edge:                ; preds = %if.end38.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body33.1

for.inc46.1:                                      ; preds = %if.end38.1
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.1145, ptr %0, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %1, align 4
  br label %for.body33.2

for.body33.2:                                     ; preds = %if.end38.2.for.body33.2_crit_edge, %for.inc46.1
  %or.2149 = phi i32 [ 0, %for.inc46.1 ], [ %or.2148, %if.end38.2.for.body33.2_crit_edge ]
  %j.0134.2 = phi i32 [ 31, %for.inc46.1 ], [ %dec.2, %if.end38.2.for.body33.2_crit_edge ]
  %call.2 = tail call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp34.not.2 = icmp eq i32 %call.2, 0
  br i1 %cmp34.not.2, label %if.end38.2, label %if.then36.loopexit

if.end38.2:                                       ; preds = %for.body33.2
  %conv39.2 = trunc i32 %j.0134.2 to i8
  %call40.2 = tail call i32 %tuning_cmd.0(ptr noundef %chip, i8 noundef zeroext %conv39.2) #7, !callees !349
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.2)
  %cmp41.2 = icmp eq i32 %call40.2, 0
  %shl.2 = shl nuw i32 1, %j.0134.2
  %or.2 = select i1 %cmp41.2, i32 %shl.2, i32 0
  %or.2148 = or i32 %or.2149, %or.2
  %dec.2 = add nsw i32 %j.0134.2, -1
  %cmp31.2.not = icmp eq i32 %j.0134.2, 0
  br i1 %cmp31.2.not, label %for.inc46.2, label %if.end38.2.for.body33.2_crit_edge

if.end38.2.for.body33.2_crit_edge:                ; preds = %if.end38.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body33.2

for.inc46.2:                                      ; preds = %if.end38.2
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.2148, ptr %1, align 4
  %16 = ptrtoint ptr %raw_phase_map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %raw_phase_map, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %0, align 4
  br label %do.body

do.body:                                          ; preds = %for.inc65.do.body_crit_edge, %for.inc46.2
  %i.1137 = phi i32 [ 0, %for.inc46.2 ], [ %inc66, %for.inc65.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_tuning_tx.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_tuning_tx, %if.then61)) #7
          to label %for.inc65 [label %if.then61], !srcloc !336

if.then61:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %arrayidx63 = getelementptr [3 x i32], ptr %raw_phase_map, i32 0, i32 %i.1137
  %24 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx63, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_tuning_tx.__UNIQUE_ID_ddebug340, ptr noundef %dev.i, ptr noundef nonnull @.str.60, i32 noundef %i.1137, i32 noundef %25) #7
  br label %for.inc65

for.inc65:                                        ; preds = %if.then61, %do.body
  %inc66 = add nuw nsw i32 %i.1137, 1
  %exitcond.not = icmp eq i32 %inc66, 3
  br i1 %exitcond.not, label %do.body68, label %for.inc65.do.body_crit_edge

for.inc65.do.body_crit_edge:                      ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body68:                                        ; preds = %for.inc65
  %and50 = and i32 %19, %17
  %and52 = and i32 %and50, %or.2148
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_tuning_tx.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_tuning_tx, %if.then80)) #7
          to label %do.end84 [label %if.then80], !srcloc !336

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %dev.i131 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_tuning_tx.__UNIQUE_ID_ddebug341, ptr noundef %dev.i131, ptr noundef nonnull @.str.61, i32 noundef %and52) #7
  br label %do.end84

do.end84:                                         ; preds = %if.then80, %do.body68
  %call85 = tail call fastcc zeroext i8 @sd_search_final_phase(ptr noundef %chip, i32 noundef %and52, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call85)
  %cmp87 = icmp eq i8 %call85, -1
  br i1 %cmp87, label %do.end84.cleanup_crit_edge, label %if.end90

do.end84.cleanup_crit_edge:                       ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end90:                                         ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #9
  %call91 = tail call fastcc i32 @sd_change_phase(ptr noundef %chip, i8 noundef zeroext %call85, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92.not = icmp ne i32 %call91, 0
  %. = zext i1 %cmp92.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %do.end84.cleanup_crit_edge, %if.then36, %land.lhs.true19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then36 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %land.lhs.true19.cleanup_crit_edge ], [ 1, %do.end84.cleanup_crit_edge ], [ %., %if.end90 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %raw_phase_map) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @sd_search_final_phase(ptr nocapture noundef readonly %chip, i32 noundef %phase_map, i8 noundef zeroext %tune_dir) unnamed_addr #0 align 64 {
entry:
  %path = alloca [32 x %struct.timing_phase_path], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %path) #7
  %0 = call ptr @memset(ptr %path, i32 255, i32 512)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %phase_map)
  %cmp = icmp eq i32 %phase_map, -1
  br i1 %cmp, label %if.then, label %entry.for.body.outer_crit_edge

entry.for.body.outer_crit_edge:                   ; preds = %entry
  br label %for.body.outer

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %tune_dir)
  %cmp2 = icmp eq i8 %tune_dir, 1
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %sd_default_rx_phase = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 126
  %1 = ptrtoint ptr %sd_default_rx_phase to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sd_default_rx_phase, align 4
  %conv5 = trunc i32 %2 to i8
  br label %do.body288

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %sd_default_tx_phase = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 125
  %3 = ptrtoint ptr %sd_default_tx_phase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sd_default_tx_phase, align 4
  %conv6 = trunc i32 %4 to i8
  br label %do.body288

for.body:                                         ; preds = %for.inc.thread
  %shl = shl i32 2, %i.0416461
  %and = and i32 %shl, %phase_map
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.else18_crit_edge, label %for.body.if.then10_crit_edge

for.body.if.then10_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

for.body.if.else18_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else18

if.then10:                                        ; preds = %for.body.outer.if.then10_crit_edge, %for.body.if.then10_crit_edge
  %i.0416.lcssa = phi i32 [ %i.0416.ph, %for.body.outer.if.then10_crit_edge ], [ %inc35433, %for.body.if.then10_crit_edge ]
  %cont_path_cnt.0414.lcssa = phi i32 [ %cont_path_cnt.0414.ph, %for.body.outer.if.then10_crit_edge ], [ 0, %for.body.if.then10_crit_edge ]
  %new_block.0.off0413.lcssa = phi i1 [ %new_block.0.off0413.ph, %for.body.outer.if.then10_crit_edge ], [ true, %for.body.if.then10_crit_edge ]
  %tobool.not.lcssa = phi i1 [ %tobool.not460, %for.body.outer.if.then10_crit_edge ], [ %tobool.not, %for.body.if.then10_crit_edge ]
  br i1 %new_block.0.off0413.lcssa, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add i32 %cont_path_cnt.0414.lcssa, 1
  %arrayidx = getelementptr [32 x %struct.timing_phase_path], ptr %path, i32 0, i32 %cont_path_cnt.0414.lcssa
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %i.0416.lcssa, ptr %arrayidx, align 4
  %end = getelementptr [32 x %struct.timing_phase_path], ptr %path, i32 0, i32 %cont_path_cnt.0414.lcssa, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %i.0416.lcssa, ptr %end, align 4
  br label %for.inc

if.else14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %end16 = getelementptr [32 x %struct.timing_phase_path], ptr %path, i32 0, i32 %j.0415.ph, i32 1
  %7 = ptrtoint ptr %end16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %i.0416.lcssa, ptr %end16, align 4
  br label %for.inc

if.else18:                                        ; preds = %for.body.outer.if.else18_crit_edge, %for.body.if.else18_crit_edge
  %tobool.not463 = phi i1 [ %tobool.not, %for.body.if.else18_crit_edge ], [ %tobool.not460, %for.body.outer.if.else18_crit_edge ]
  %cont_path_cnt.0414462 = phi i32 [ 0, %for.body.if.else18_crit_edge ], [ %cont_path_cnt.0414.ph, %for.body.outer.if.else18_crit_edge ]
  %i.0416461 = phi i32 [ %inc35433, %for.body.if.else18_crit_edge ], [ %i.0416.ph, %for.body.outer.if.else18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cont_path_cnt.0414462)
  %tobool19.not = icmp eq i32 %cont_path_cnt.0414462, 0
  br i1 %tobool19.not, label %for.inc.thread, label %if.then20

if.then20:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i32 %cont_path_cnt.0414462, -1
  %arrayidx21 = getelementptr [32 x %struct.timing_phase_path], ptr %path, i32 0, i32 %sub
  %end22 = getelementptr [32 x %struct.timing_phase_path], ptr %path, i32 0, i32 %sub, i32 1
  %8 = ptrtoint ptr %end22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end22, align 4
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx21, align 4
  %sub25 = sub i32 %9, %11
  %add = add i32 %sub25, 1
  %len = getelementptr [32 x %struct.timing_phase_path], ptr %path, i32 0, i32 %sub, i32 3
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %len, align 4
  %div = sdiv i32 %add, 2
  %add31 = add i32 %div, %11
  %mid = getelementptr [32 x %struct.timing_phase_path], ptr %path, i32 0, i32 %sub, i32 2
  %13 = ptrtoint ptr %mid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add31, ptr %mid, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %if.else14, %if.then12
  %i.0416457 = phi i32 [ %i.0416.lcssa, %if.then12 ], [ %i.0416.lcssa, %if.else14 ], [ %i.0416461, %if.then20 ]
  %tobool.not450 = phi i1 [ %tobool.not.lcssa, %if.then12 ], [ %tobool.not.lcssa, %if.else14 ], [ %tobool.not463, %if.then20 ]
  %cont_path_cnt.1 = phi i32 [ %inc, %if.then12 ], [ %cont_path_cnt.0414.lcssa, %if.else14 ], [ %cont_path_cnt.0414462, %if.then20 ]
  %j.1 = phi i32 [ %cont_path_cnt.0414.lcssa, %if.then12 ], [ %j.0415.ph, %if.else14 ], [ %j.0415.ph, %if.then20 ]
  %inc35 = add nuw nsw i32 %i.0416457, 1
  %exitcond.not = icmp eq i32 %inc35, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body.outer_crit_edge

for.inc.for.body.outer_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc.for.body.outer_crit_edge, %entry.for.body.outer_crit_edge
  %i.0416.ph = phi i32 [ %inc35, %for.inc.for.body.outer_crit_edge ], [ 0, %entry.for.body.outer_crit_edge ]
  %j.0415.ph = phi i32 [ %j.1, %for.inc.for.body.outer_crit_edge ], [ 0, %entry.for.body.outer_crit_edge ]
  %cont_path_cnt.0414.ph = phi i32 [ %cont_path_cnt.1, %for.inc.for.body.outer_crit_edge ], [ 0, %entry.for.body.outer_crit_edge ]
  %new_block.0.off0413.ph = phi i1 [ %tobool.not450, %for.inc.for.body.outer_crit_edge ], [ true, %entry.for.body.outer_crit_edge ]
  %shl458 = shl nuw i32 1, %i.0416.ph
  %and459 = and i32 %shl458, %phase_map
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and459)
  %tobool.not460 = icmp eq i32 %and459, 0
  br i1 %tobool.not460, label %for.body.outer.if.else18_crit_edge, label %for.body.outer.if.then10_crit_edge

for.body.outer.if.then10_crit_edge:               ; preds = %for.body.outer
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

for.body.outer.if.else18_crit_edge:               ; preds = %for.body.outer
  br label %if.else18

for.inc.thread:                                   ; preds = %if.else18
  %inc35433 = add nuw nsw i32 %i.0416461, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %inc35433)
  %exitcond.not434 = icmp eq i32 %inc35433, 32
  br i1 %exitcond.not434, label %for.inc.thread.do.body_crit_edge, label %for.body

for.inc.thread.do.body_crit_edge:                 ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cont_path_cnt.1)
  %cmp36 = icmp eq i32 %cont_path_cnt.1, 0
  br i1 %cmp36, label %for.end.do.body_crit_edge, label %if.else45

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %for.inc.thread.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_search_final_phase.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_search_final_phase, %if.then42)) #7
          to label %do.body288 [label %if.then42], !srcloc !336

if.then42:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_search_final_phase.__UNIQUE_ID_ddebug329, ptr noundef %dev.i, ptr noundef nonnull @.str.39) #7
  br label %do.body288

if.else45:                                        ; preds = %for.end
  %sub47 = add i32 %cont_path_cnt.1, -1
  %arrayidx48 = getelementptr [32 x %struct.timing_phase_path], ptr %path, i32 0, i32 %sub47
  %end49 = getelementptr [32 x %struct.timing_phase_path], ptr %path, i32 0, i32 %sub47, i32 1
  %18 = ptrtoint ptr %end49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %end49, align 4
  %20 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx48, align 4
  %sub52 = sub i32 %19, %21
  %add53 = add i32 %sub52, 1
  %len55 = getelementptr [32 x %struct.timing_phase_path], ptr %path, i32 0, i32 %sub47, i32 3
  %22 = ptrtoint ptr %len55 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add53, ptr %len55, align 4
  %div60 = sdiv i32 %add53, 2
  %add61 = add i32 %div60, %21
  %mid63 = getelementptr [32 x %struct.timing_phase_path], ptr %path, i32 0, i32 %sub47, i32 2
  %23 = ptrtoint ptr %mid63 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add61, ptr %mid63, align 4
  %24 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp67 = icmp eq i32 %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %19)
  %cmp72 = icmp eq i32 %19, 31
  %or.cond409 = select i1 %cmp67, i1 %cmp72, i1 false
  br i1 %or.cond409, label %if.then74, label %if.else45.if.end105_crit_edge

if.else45.if.end105_crit_edge:                    ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.then74:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #9
  %sub79 = add i32 %21, -32
  %26 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub79, ptr %path, align 4
  %len86 = getelementptr inbounds %struct.timing_phase_path, ptr %path, i32 0, i32 3
  %27 = ptrtoint ptr %len86 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len86, align 4
  %add87 = add i32 %28, %add53
  store i32 %add87, ptr %len86, align 4
  %div92 = sdiv i32 %add87, 2
  %add93 = add i32 %div92, %sub79
  %mid95 = getelementptr inbounds %struct.timing_phase_path, ptr %path, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add93)
  %cmp98 = icmp slt i32 %add93, 0
  %add103 = add i32 %div92, %21
  %spec.select = select i1 %cmp98, i32 %add103, i32 %add93
  %29 = ptrtoint ptr %mid95 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.select, ptr %mid95, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then74, %if.else45.if.end105_crit_edge
  %cont_path_cnt.2 = phi i32 [ %sub47, %if.then74 ], [ %cont_path_cnt.1, %if.else45.if.end105_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cont_path_cnt.2)
  %cmp107419 = icmp sgt i32 %cont_path_cnt.2, 0
  br i1 %cmp107419, label %if.end105.for.body109_crit_edge, label %if.end105.for.end216_crit_edge

if.end105.for.end216_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end216

if.end105.for.body109_crit_edge:                  ; preds = %if.end105
  br label %for.body109

for.body109:                                      ; preds = %for.inc214.for.body109_crit_edge, %if.end105.for.body109_crit_edge
  %i.1423 = phi i32 [ %inc215, %for.inc214.for.body109_crit_edge ], [ 0, %if.end105.for.body109_crit_edge ]
  %max_len.0422 = phi i32 [ %max_len.1, %for.inc214.for.body109_crit_edge ], [ 0, %if.end105.for.body109_crit_edge ]
  %final_path_idx.0421 = phi i32 [ %final_path_idx.1, %for.inc214.for.body109_crit_edge ], [ 0, %if.end105.for.body109_crit_edge ]
  %final_phase.0420 = phi i8 [ %final_phase.1, %for.inc214.for.body109_crit_edge ], [ 0, %if.end105.for.body109_crit_edge ]
  %arrayidx110 = getelementptr [32 x %struct.timing_phase_path], ptr %path, i32 0, i32 %i.1423
  %len111 = getelementptr [32 x %struct.timing_phase_path], ptr %path, i32 0, i32 %i.1423, i32 3
  %30 = ptrtoint ptr %len111 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len111, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %max_len.0422)
  %cmp112 = icmp sgt i32 %31, %max_len.0422
  br i1 %cmp112, label %if.then114, label %for.body109.do.body121_crit_edge

for.body109.do.body121_crit_edge:                 ; preds = %for.body109
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body121

if.then114:                                       ; preds = %for.body109
  call void @__sanitizer_cov_trace_pc() #9
  %mid118 = getelementptr [32 x %struct.timing_phase_path], ptr %path, i32 0, i32 %i.1423, i32 2
  %32 = ptrtoint ptr %mid118 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mid118, align 4
  %conv119 = trunc i32 %33 to i8
  br label %do.body121

do.body121:                                       ; preds = %if.then114, %for.body109.do.body121_crit_edge
  %final_phase.1 = phi i8 [ %conv119, %if.then114 ], [ %final_phase.0420, %for.body109.do.body121_crit_edge ]
  %final_path_idx.1 = phi i32 [ %i.1423, %if.then114 ], [ %final_path_idx.0421, %for.body109.do.body121_crit_edge ]
  %max_len.1 = phi i32 [ %31, %if.then114 ], [ %max_len.0422, %for.body109.do.body121_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_search_final_phase.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_search_final_phase, %if.then133)) #7
          to label %do.body140 [label %if.then133], !srcloc !336

if.then133:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chip, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %dev.i393 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %38 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx110, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_search_final_phase.__UNIQUE_ID_ddebug330, ptr noundef %dev.i393, ptr noundef nonnull @.str.40, i32 noundef %i.1423, i32 noundef %39) #7
  br label %do.body140

do.body140:                                       ; preds = %if.then133, %do.body121
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_search_final_phase.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_search_final_phase, %if.then152)) #7
          to label %do.body159 [label %if.then152], !srcloc !336

if.then152:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chip, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %dev.i394 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %end155 = getelementptr [32 x %struct.timing_phase_path], ptr %path, i32 0, i32 %i.1423, i32 1
  %44 = ptrtoint ptr %end155 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %end155, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_search_final_phase.__UNIQUE_ID_ddebug331, ptr noundef %dev.i394, ptr noundef nonnull @.str.41, i32 noundef %i.1423, i32 noundef %45) #7
  br label %do.body159

do.body159:                                       ; preds = %if.then152, %do.body140
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_search_final_phase.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_search_final_phase, %if.then171)) #7
          to label %do.body178 [label %if.then171], !srcloc !336

if.then171:                                       ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chip, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %dev.i395 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %50 = ptrtoint ptr %len111 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len111, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_search_final_phase.__UNIQUE_ID_ddebug332, ptr noundef %dev.i395, ptr noundef nonnull @.str.42, i32 noundef %i.1423, i32 noundef %51) #7
  br label %do.body178

do.body178:                                       ; preds = %if.then171, %do.body159
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_search_final_phase.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_search_final_phase, %if.then190)) #7
          to label %do.body197 [label %if.then190], !srcloc !336

if.then190:                                       ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chip, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %dev.i396 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %mid193 = getelementptr [32 x %struct.timing_phase_path], ptr %path, i32 0, i32 %i.1423, i32 2
  %56 = ptrtoint ptr %mid193 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mid193, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_search_final_phase.__UNIQUE_ID_ddebug333, ptr noundef %dev.i396, ptr noundef nonnull @.str.43, i32 noundef %i.1423, i32 noundef %57) #7
  br label %do.body197

do.body197:                                       ; preds = %if.then190, %do.body178
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_search_final_phase.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_search_final_phase, %if.then209)) #7
          to label %for.inc214 [label %if.then209], !srcloc !336

if.then209:                                       ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chip, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %dev.i397 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_search_final_phase.__UNIQUE_ID_ddebug334, ptr noundef %dev.i397, ptr noundef nonnull @.str.44) #7
  br label %for.inc214

for.inc214:                                       ; preds = %if.then209, %do.body197
  %inc215 = add nuw nsw i32 %i.1423, 1
  %exitcond430.not = icmp eq i32 %inc215, %cont_path_cnt.2
  br i1 %exitcond430.not, label %for.inc214.for.end216_crit_edge, label %for.inc214.for.body109_crit_edge

for.inc214.for.body109_crit_edge:                 ; preds = %for.inc214
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body109

for.inc214.for.end216_crit_edge:                  ; preds = %for.inc214
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end216

for.end216:                                       ; preds = %for.inc214.for.end216_crit_edge, %if.end105.for.end216_crit_edge
  %max_len.0.lcssa418 = phi i32 [ 0, %if.end105.for.end216_crit_edge ], [ %max_len.1, %for.inc214.for.end216_crit_edge ]
  %final_phase.0.lcssa = phi i8 [ 0, %if.end105.for.end216_crit_edge ], [ %final_phase.1, %for.inc214.for.end216_crit_edge ]
  %final_path_idx.0.lcssa = phi i32 [ 0, %if.end105.for.end216_crit_edge ], [ %final_path_idx.1, %for.inc214.for.end216_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tune_dir)
  %cmp218 = icmp eq i8 %tune_dir, 0
  br i1 %cmp218, label %if.then220, label %for.end216.do.body288_crit_edge

for.end216.do.body288_crit_edge:                  ; preds = %for.end216
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body288

if.then220:                                       ; preds = %for.end216
  %62 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %sd_card1, align 4
  %conv221 = zext i16 %63 to i32
  %64 = and i32 %conv221, 2303
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %64)
  %.not = icmp eq i32 %64, 2048
  br i1 %.not, label %if.then230, label %if.else251

if.then230:                                       ; preds = %if.then220
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %max_len.0.lcssa418)
  %cmp231 = icmp sgt i32 %max_len.0.lcssa418, 15
  br i1 %cmp231, label %if.then233, label %if.then230.do.body288_crit_edge

if.then230.do.body288_crit_edge:                  ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body288

if.then233:                                       ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #9
  %sub234 = add nsw i32 %max_len.0.lcssa418, -16
  %div235.neg408410 = lshr i32 %sub234, 1
  %end237 = getelementptr [32 x %struct.timing_phase_path], ptr %path, i32 0, i32 %final_path_idx.0.lcssa, i32 1
  %65 = ptrtoint ptr %end237 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %end237, align 4
  %add238.neg.neg = sub nsw i32 6, %max_len.0.lcssa418
  %sub239.neg = add nsw i32 %add238.neg.neg, %div235.neg408410
  %sub240 = add i32 %sub239.neg, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub240)
  %cmp241 = icmp slt i32 %sub240, 0
  %add245 = add i32 %sub240, 32
  %final_phase.2.in = select i1 %cmp241, i32 %add245, i32 %sub240
  %final_phase.2 = trunc i32 %final_phase.2.in to i8
  br label %do.body288

if.else251:                                       ; preds = %if.then220
  %67 = and i32 %conv221, 767
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %67)
  %.not411 = icmp eq i32 %67, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %max_len.0.lcssa418)
  %cmp263 = icmp sgt i32 %max_len.0.lcssa418, 12
  %or.cond374 = select i1 %.not411, i1 %cmp263, i1 false
  br i1 %or.cond374, label %if.then265, label %if.else251.do.body288_crit_edge

if.else251.do.body288_crit_edge:                  ; preds = %if.else251
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body288

if.then265:                                       ; preds = %if.else251
  call void @__sanitizer_cov_trace_pc() #9
  %sub267 = add nsw i32 %max_len.0.lcssa418, -13
  %div268.neg406412 = lshr i32 %sub267, 1
  %end271 = getelementptr [32 x %struct.timing_phase_path], ptr %path, i32 0, i32 %final_path_idx.0.lcssa, i32 1
  %68 = ptrtoint ptr %end271 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %end271, align 4
  %add272.neg.neg = sub nsw i32 3, %max_len.0.lcssa418
  %sub273.neg = add nsw i32 %add272.neg.neg, %div268.neg406412
  %sub274 = add i32 %sub273.neg, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub274)
  %cmp275 = icmp slt i32 %sub274, 0
  %add279 = add i32 %sub274, 32
  %final_phase.3.in = select i1 %cmp275, i32 %add279, i32 %sub274
  %final_phase.3 = trunc i32 %final_phase.3.in to i8
  br label %do.body288

do.body288:                                       ; preds = %if.then265, %if.else251.do.body288_crit_edge, %if.then233, %if.then230.do.body288_crit_edge, %for.end216.do.body288_crit_edge, %if.then42, %do.body, %if.else, %if.then4
  %final_phase.4 = phi i8 [ %conv5, %if.then4 ], [ %conv6, %if.else ], [ -1, %if.then42 ], [ %final_phase.2, %if.then233 ], [ %final_phase.0.lcssa, %if.then230.do.body288_crit_edge ], [ %final_phase.3, %if.then265 ], [ %final_phase.0.lcssa, %if.else251.do.body288_crit_edge ], [ %final_phase.0.lcssa, %for.end216.do.body288_crit_edge ], [ -1, %do.body ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_search_final_phase.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_search_final_phase, %if.then300)) #7
          to label %do.end305 [label %if.then300], !srcloc !336

if.then300:                                       ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %chip, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %dev.i398 = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  %conv302 = zext i8 %final_phase.4 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_search_final_phase.__UNIQUE_ID_ddebug335, ptr noundef %dev.i398, ptr noundef nonnull @.str.45, i32 noundef %conv302) #7
  br label %do.end305

do.end305:                                        ; preds = %if.then300, %do.body288
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %path) #7
  ret i8 %final_phase.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_ddr_tuning_rx_cmd(ptr noundef %chip, i8 noundef zeroext %sample_point) unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  %cmd = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 1
  %call = tail call fastcc i32 @sd_change_phase(ptr noundef %chip, i8 noundef zeroext %sample_point, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_ddr_tuning_rx_cmd.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_ddr_tuning_rx_cmd, %if.then6)) #7
          to label %do.end [label %if.then6], !srcloc !336

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_ddr_tuning_rx_cmd.__UNIQUE_ID_ddebug327, ptr noundef %dev.i, ptr noundef nonnull @.str.54) #7
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %sd_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %5 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sd_addr, align 4
  %call9 = tail call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 55, i32 noundef %6, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end12, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 77, ptr %cmd, align 1
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %0, align 1
  %call17 = call fastcc i32 @sd_read_data(ptr noundef %chip, i8 noundef zeroext 12, ptr noundef nonnull %cmd, i16 noundef zeroext 64, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i32 noundef 100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %if.end12.cleanup_crit_edge, label %if.then19

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %val.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end4.i.for.body.i_crit_edge, %if.then19
  %i.02.i = phi i32 [ 0, %if.then19 ], [ %inc.i, %if.end4.i.for.body.i_crit_edge ]
  %call.i = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -586, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.sd_wait_data_idle.exit_crit_edge

for.body.i.sd_wait_data_idle.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_wait_data_idle.exit

if.end.i:                                         ; preds = %for.body.i
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool2.not.i = icmp sgt i8 %11, -1
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 21474800) #7
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end4.i.do.body.i_crit_edge, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end4.i.do.body.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.body.i:                                        ; preds = %if.end4.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_wait_data_idle.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_ddr_tuning_rx_cmd, %if.then9.i)) #7
          to label %sd_wait_data_idle.exit [label %if.then9.i], !srcloc !336

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %val.i, align 1
  %conv11.i = zext i8 %18 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_wait_data_idle.__UNIQUE_ID_ddebug326, ptr noundef %dev.i.i, ptr noundef nonnull @.str.56, i32 noundef %conv11.i) #7
  br label %sd_wait_data_idle.exit

sd_wait_data_idle.exit:                           ; preds = %if.then9.i, %do.body.i, %for.body.i.sd_wait_data_idle.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  %call.i32 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  br label %cleanup

cleanup:                                          ; preds = %sd_wait_data_idle.exit, %if.end12.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sd_wait_data_idle.exit ], [ 1, %entry.cleanup_crit_edge ], [ 1, %do.end.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_sdr_tuning_rx_cmd(ptr noundef %chip, i8 noundef zeroext %sample_point) unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  %cmd = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %cmd) #7
  %call = tail call fastcc i32 @sd_change_phase(ptr noundef %chip, i8 noundef zeroext %sample_point, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 83, ptr %cmd, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 0, ptr %0, align 1
  %call6 = call fastcc i32 @sd_read_data(ptr noundef %chip, i8 noundef zeroext 15, ptr noundef nonnull %cmd, i16 noundef zeroext 64, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i32 noundef 100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end.cleanup_crit_edge, label %if.then8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %val.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end4.i.for.body.i_crit_edge, %if.then8
  %i.02.i = phi i32 [ 0, %if.then8 ], [ %inc.i, %if.end4.i.for.body.i_crit_edge ]
  %call.i = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -586, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.sd_wait_data_idle.exit_crit_edge

for.body.i.sd_wait_data_idle.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_wait_data_idle.exit

if.end.i:                                         ; preds = %for.body.i
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %tobool2.not.i = icmp sgt i8 %5, -1
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %6(i32 noundef 21474800) #7
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end4.i.do.body.i_crit_edge, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end4.i.do.body.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.body.i:                                        ; preds = %if.end4.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_wait_data_idle.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_sdr_tuning_rx_cmd, %if.then9.i)) #7
          to label %sd_wait_data_idle.exit [label %if.then9.i], !srcloc !336

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val.i, align 1
  %conv11.i = zext i8 %12 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_wait_data_idle.__UNIQUE_ID_ddebug326, ptr noundef %dev.i.i, ptr noundef nonnull @.str.56, i32 noundef %conv11.i) #7
  br label %sd_wait_data_idle.exit

sd_wait_data_idle.exit:                           ; preds = %if.then9.i, %do.body.i, %for.body.i.sd_wait_data_idle.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  %call.i16 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  br label %cleanup

cleanup:                                          ; preds = %sd_wait_data_idle.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sd_wait_data_idle.exit ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_ddr_tuning_rx_cmd(ptr noundef %chip, i8 noundef zeroext %sample_point) unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  %cmd = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %sd_card1, align 4
  %conv = zext i16 %2 to i32
  %3 = and i32 %conv, 2303
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %3)
  %.not = icmp eq i32 %3, 2049
  %4 = and i32 %conv, 1279
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %4)
  %.not56 = icmp eq i32 %4, 1025
  %spec.select = zext i1 %.not56 to i8
  %bus_width.0 = select i1 %.not, i8 2, i8 %spec.select
  %call = tail call fastcc i32 @sd_change_phase(ptr noundef %chip, i8 noundef zeroext %sample_point, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp20.not = icmp eq i32 %call, 0
  br i1 %cmp20.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_ddr_tuning_rx_cmd.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_ddr_tuning_rx_cmd, %if.then28)) #7
          to label %do.end [label %if.then28], !srcloc !336

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_ddr_tuning_rx_cmd.__UNIQUE_ID_ddebug328, ptr noundef %dev.i, ptr noundef nonnull @.str.58) #7
  br label %do.end

do.end:                                           ; preds = %if.then28, %do.body
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 72, ptr %cmd, align 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %0, align 1
  %call35 = call fastcc i32 @sd_read_data(ptr noundef %chip, i8 noundef zeroext 12, ptr noundef nonnull %cmd, i16 noundef zeroext 512, i8 noundef zeroext %bus_width.0, ptr noundef null, i32 noundef 0, i32 noundef 100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36.not = icmp eq i32 %call35, 0
  br i1 %cmp36.not, label %do.end.cleanup_crit_edge, label %if.then38

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then38:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %val.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end4.i.for.body.i_crit_edge, %if.then38
  %i.02.i = phi i32 [ 0, %if.then38 ], [ %inc.i, %if.end4.i.for.body.i_crit_edge ]
  %call.i = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -586, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.sd_wait_data_idle.exit_crit_edge

for.body.i.sd_wait_data_idle.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_wait_data_idle.exit

if.end.i:                                         ; preds = %for.body.i
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %tobool2.not.i = icmp sgt i8 %13, -1
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 21474800) #7
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end4.i.do.body.i_crit_edge, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end4.i.do.body.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.body.i:                                        ; preds = %if.end4.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_wait_data_idle.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_ddr_tuning_rx_cmd, %if.then9.i)) #7
          to label %sd_wait_data_idle.exit [label %if.then9.i], !srcloc !336

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %val.i, align 1
  %conv11.i = zext i8 %20 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_wait_data_idle.__UNIQUE_ID_ddebug326, ptr noundef %dev.i.i, ptr noundef nonnull @.str.56, i32 noundef %conv11.i) #7
  br label %sd_wait_data_idle.exit

sd_wait_data_idle.exit:                           ; preds = %if.then9.i, %do.body.i, %for.body.i.sd_wait_data_idle.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  %call.i54 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  br label %cleanup

cleanup:                                          ; preds = %sd_wait_data_idle.exit, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sd_wait_data_idle.exit ], [ 1, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_ddr_tuning_tx_cmd(ptr noundef %chip, i8 noundef zeroext %sample_point) unnamed_addr #0 align 64 {
entry:
  %rsp.i = alloca [5 x i8], align 1
  %cmd = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 1
  %call = tail call fastcc i32 @sd_change_phase(ptr noundef %chip, i8 noundef zeroext %sample_point, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sd_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  %1 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %sd_card1, align 4
  %conv = zext i16 %2 to i32
  %trunc = trunc i16 %2 to i8
  %3 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.126)
  switch i8 %trunc, label %if.end.if.else15_crit_edge [
    i8 0, label %if.end.if.end30_crit_edge
    i8 1, label %land.lhs.true
  ]

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end.if.else15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else15

land.lhs.true:                                    ; preds = %if.end
  %and13 = and i32 %conv, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool.not = icmp eq i32 %and13, 0
  br i1 %tobool.not, label %land.lhs.true.if.else15_crit_edge, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

land.lhs.true.if.else15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else15

if.else15:                                        ; preds = %land.lhs.true.if.else15_crit_edge, %if.end.if.else15_crit_edge
  %4 = and i32 %conv, 1279
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %4)
  %.not = icmp eq i32 %4, 1025
  %spec.select = zext i1 %.not to i8
  br label %if.end30

if.end30:                                         ; preds = %if.else15, %land.lhs.true.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %bus_width.0 = phi i8 [ 1, %if.end.if.end30_crit_edge ], [ 2, %land.lhs.true.if.end30_crit_edge ], [ %spec.select, %if.else15 ]
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %rsp.i) #7
  %5 = getelementptr inbounds [5 x i8], ptr %rsp.i, i32 0, i32 3
  %sd_addr.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %6 = call ptr @memset(ptr %rsp.i, i32 255, i32 5)
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %for.cond.i.sd_wait_state_data_ready.exit.thread_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.sd_wait_state_data_ready.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_wait_state_data_ready.exit.thread

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end30
  %i.01.i = phi i32 [ 0, %if.end30 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %sd_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sd_addr.i, align 4
  %call.i = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %8, i8 noundef zeroext 1, ptr noundef nonnull %rsp.i, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp3.not.i, label %if.end.i, label %for.body.i.sd_wait_state_data_ready.exit.thread_crit_edge

for.body.i.sd_wait_state_data_ready.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_wait_state_data_ready.exit.thread

if.end.i:                                         ; preds = %for.body.i
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %5, align 1
  %11 = and i8 %10, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %11)
  %.not.i = icmp eq i8 %11, 9
  br i1 %.not.i, label %if.end35, label %for.cond.i

sd_wait_state_data_ready.exit.thread:             ; preds = %for.body.i.sd_wait_state_data_ready.exit.thread_crit_edge, %for.cond.i.sd_wait_state_data_ready.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rsp.i) #7
  br label %cleanup

if.end35:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rsp.i) #7
  %call36 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -606, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %12 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 91, ptr %cmd, align 1
  %raw_csd = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 5
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 0, ptr %0, align 1
  %call45 = call fastcc i32 @sd_write_data(ptr noundef %chip, i8 noundef zeroext 10, ptr noundef nonnull %cmd, i32 noundef 5, i16 noundef zeroext 16, i8 noundef zeroext %bus_width.0, ptr noundef %raw_csd, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46.not = icmp eq i32 %call45, 0
  br i1 %cmp46.not, label %if.end50, label %if.then48

if.then48:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %call.i79 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  %call49 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -606, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  br label %cleanup

if.end50:                                         ; preds = %if.end39
  %call51 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -606, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end54:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %sd_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sd_addr.i, align 4
  %call55 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %15, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end50.cleanup_crit_edge, %if.then48, %if.end35.cleanup_crit_edge, %sd_wait_state_data_ready.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then48 ], [ 0, %if.end54 ], [ 1, %entry.cleanup_crit_edge ], [ %call36, %if.end35.cleanup_crit_edge ], [ %call51, %if.end50.cleanup_crit_edge ], [ 1, %sd_wait_state_data_ready.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_sdr_tuning_tx_cmd(ptr noundef %chip, i8 noundef zeroext %sample_point) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sd_change_phase(ptr noundef %chip, i8 noundef zeroext %sample_point, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -606, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %sd_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %0 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sd_addr, align 4
  %call6 = tail call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %1, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end5.if.end14_crit_edge, label %if.then8

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then8:                                         ; preds = %if.end5
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  %2 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %err_code2.i, align 2
  %and4.i = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and4.i)
  %tobool10.not = icmp eq i8 %and4.i, 0
  br i1 %tobool10.not, label %if.then8.if.end14_crit_edge, label %if.then11

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -606, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  br label %cleanup

if.end14:                                         ; preds = %if.then8.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  %call15 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -606, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then11 ], [ 1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call15, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_write_data(ptr noundef %chip, i8 noundef zeroext %trans_mode, ptr nocapture noundef readonly %cmd, i32 noundef %cmd_len, i16 noundef zeroext %byte_cnt, i8 noundef zeroext %bus_width, ptr noundef %buf, i32 noundef %buf_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %err_code.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  %0 = ptrtoint ptr %err_code.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %err_code.i, align 2
  %tobool.not = icmp eq ptr %buf, null
  %spec.select = select i1 %tobool.not, i32 0, i32 %buf_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool6.not = icmp eq i32 %spec.select, 0
  %or.cond = or i1 %tobool.not, %tobool6.not
  br i1 %or.cond, label %entry.if.end11_crit_edge, label %if.then7

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then7:                                         ; preds = %entry
  %call = tail call i32 @rtsx_write_ppbuf(ptr noundef %chip, ptr noundef nonnull %buf, i32 noundef %spec.select) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8.not = icmp eq i32 %call, 0
  br i1 %cmp8.not, label %if.then7.if.end11_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7.if.end11_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end11:                                         ; preds = %if.then7.if.end11_crit_edge, %entry.if.end11_crit_edge
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %1 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ci, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd_len)
  %tobool12.not = icmp eq i32 %cmd_len, 0
  br i1 %tobool12.not, label %if.end11.if.end29_crit_edge, label %do.body

if.end11.if.end29_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.body:                                          ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_write_data.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_write_data, %if.then18)) #7
          to label %do.end [label %if.then18], !srcloc !336

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmd, align 1
  %conv = zext i8 %7 to i32
  %sub = add nsw i32 %conv, -64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_write_data.__UNIQUE_ID_ddebug297, ptr noundef %dev.i, ptr noundef nonnull @.str.9, i32 noundef %sub) #7
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd_len)
  %cmp242 = icmp sgt i32 %cmd_len, 0
  br i1 %cmp242, label %do.end.for.body_crit_edge, label %do.end.if.end29_crit_edge

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.03 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %.b88 = load i1, ptr @REG_SD_CMD0, align 2
  %conv26 = select i1 %.b88, i32 64820, i32 0
  %add = add nuw i32 %conv26, %i.03
  %conv27 = trunc i32 %add to i16
  %arrayidx28 = getelementptr i8, ptr %cmd, i32 %i.03
  %8 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx28, align 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %conv27, i8 noundef zeroext -1, i8 noundef zeroext %9) #7
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, %cmd_len
  br i1 %exitcond.not, label %for.body.if.end29_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.if.end29_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.end29:                                         ; preds = %for.body.if.end29_crit_edge, %do.end.if.end29_crit_edge, %if.end11.if.end29_crit_edge
  %.b = load i1, ptr @REG_SD_BYTE_CNT_L, align 2
  %10 = select i1 %.b, i16 -711, i16 0
  %conv30 = trunc i16 %byte_cnt to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %10, i8 noundef zeroext -1, i8 noundef zeroext %conv30) #7
  %.b81 = load i1, ptr @REG_SD_BYTE_CNT_H, align 2
  %11 = select i1 %.b81, i16 -710, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %11, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  %.b82 = load i1, ptr @REG_SD_BLOCK_CNT_L, align 2
  %12 = select i1 %.b82, i16 -709, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %12, i8 noundef zeroext -1, i8 noundef zeroext 1) #7
  %.b83 = load i1, ptr @REG_SD_BLOCK_CNT_H, align 2
  %13 = select i1 %.b83, i16 -708, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %13, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  %.b84 = load i1, ptr @REG_SD_CFG1, align 2
  %14 = select i1 %.b84, i16 -719, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %14, i8 noundef zeroext 3, i8 noundef zeroext %bus_width) #7
  %.b85 = load i1, ptr @REG_SD_CFG2, align 2
  %15 = select i1 %.b85, i16 -717, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %15, i8 noundef zeroext -1, i8 noundef zeroext 1) #7
  %.b87 = load i1, ptr @REG_SD_TRANSFER, align 2
  %16 = select i1 %.b87, i16 -718, i16 0
  %17 = or i8 %trans_mode, -128
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %16, i8 noundef zeroext -1, i8 noundef zeroext %17) #7
  %.b86 = load i1, ptr @REG_SD_TRANSFER, align 2
  %18 = select i1 %.b86, i16 -718, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext %18, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  %call39 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 4, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then42:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call39)
  %cmp43 = icmp eq i32 %call39, -110
  br i1 %cmp43, label %if.then45, label %if.then42.cleanup_crit_edge

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %sd_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %19 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sd_addr, align 4
  %call46 = tail call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %20, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.then42.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then7.cleanup_crit_edge ], [ 1, %if.then45 ], [ 1, %if.then42.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_write_ppbuf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @card_power_on(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_prepare_reset(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %0 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %spec.select = select i1 %tobool.not, i32 2, i32 29
  %2 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %2, align 4
  %4 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %sd_card1, align 4
  %seq_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 7
  %5 = ptrtoint ptr %seq_mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %seq_mode, align 4
  %sd_data_buf_ready = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 2
  %6 = ptrtoint ptr %sd_data_buf_ready to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %sd_data_buf_ready, align 1
  %capacity = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 4
  %7 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %capacity, align 4
  %sd_lock_status = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %8 = ptrtoint ptr %sd_lock_status to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %sd_lock_status, align 4
  %sd_erase_status = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 25
  %9 = ptrtoint ptr %sd_erase_status to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %sd_erase_status, align 1
  %arrayidx = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 4
  %idxprom = zext i8 %11 to i32
  %arrayidx5 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 31, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx5, align 4
  %sd_io = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 51
  %13 = ptrtoint ptr %sd_io to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %sd_io, align 4
  %call = tail call fastcc i32 @sd_set_init_para(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end7, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %.b = load i1, ptr @REG_SD_CFG1, align 2
  %14 = select i1 %.b, i16 -719, i16 0
  %call8 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %14, i8 noundef zeroext -1, i8 noundef zeroext 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 @select_card(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp ne i32 %call16, 0
  %. = zext i1 %cmp17.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ %., %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_check_csd(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %rsp = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rsp) #7
  %0 = getelementptr inbounds [16 x i8], ptr %rsp, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %rsp, i32 0, i32 4
  %2 = getelementptr inbounds [16 x i8], ptr %rsp, i32 0, i32 6
  %3 = getelementptr inbounds [16 x i8], ptr %rsp, i32 0, i32 7
  %4 = getelementptr inbounds [16 x i8], ptr %rsp, i32 0, i32 8
  %5 = getelementptr inbounds [16 x i8], ptr %rsp, i32 0, i32 9
  %6 = getelementptr inbounds [16 x i8], ptr %rsp, i32 0, i32 10
  %7 = getelementptr inbounds [16 x i8], ptr %rsp, i32 0, i32 11
  %8 = getelementptr inbounds [16 x i8], ptr %rsp, i32 0, i32 15
  %sd_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %9 = call ptr @memset(ptr %rsp, i32 255, i32 16)
  %call = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3.not = icmp eq i32 %call, 0
  br i1 %cmp3.not, label %if.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  %10 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %err_code2.i, align 2
  %or5.i = or i8 %11, 32
  store i8 %or5.i, ptr %err_code2.i, align 2
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sd_addr, align 4
  %call4 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 9, i32 noundef %13, i8 noundef zeroext 2, ptr noundef nonnull %rsp, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.end.if.end10_crit_edge, label %for.inc

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

for.inc:                                          ; preds = %if.end
  %call.1 = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp3.not.1 = icmp eq i32 %call.1, 0
  br i1 %cmp3.not.1, label %if.end.1, label %for.inc.if.then_crit_edge

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.1:                                         ; preds = %for.inc
  %14 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sd_addr, align 4
  %call4.1 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 9, i32 noundef %15, i8 noundef zeroext 2, ptr noundef nonnull %rsp, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1)
  %cmp5.1 = icmp eq i32 %call4.1, 0
  br i1 %cmp5.1, label %if.end.1.if.end10_crit_edge, label %for.inc.1

if.end.1.if.end10_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

for.inc.1:                                        ; preds = %if.end.1
  %call.2 = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp3.not.2 = icmp eq i32 %call.2, 0
  br i1 %cmp3.not.2, label %if.end.2, label %for.inc.1.if.then_crit_edge

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.2:                                         ; preds = %for.inc.1
  %16 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sd_addr, align 4
  %call4.2 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 9, i32 noundef %17, i8 noundef zeroext 2, ptr noundef nonnull %rsp, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2)
  %cmp5.2 = icmp eq i32 %call4.2, 0
  br i1 %cmp5.2, label %if.end.2.if.end10_crit_edge, label %for.inc.2

if.end.2.if.end10_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

for.inc.2:                                        ; preds = %if.end.2
  %call.3 = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp3.not.3 = icmp eq i32 %call.3, 0
  br i1 %cmp3.not.3, label %if.end.3, label %for.inc.2.if.then_crit_edge

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.3:                                         ; preds = %for.inc.2
  %18 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sd_addr, align 4
  %call4.3 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 9, i32 noundef %19, i8 noundef zeroext 2, ptr noundef nonnull %rsp, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.3)
  %cmp5.3 = icmp eq i32 %call4.3, 0
  br i1 %cmp5.3, label %if.end.3.if.end10_crit_edge, label %for.inc.3

if.end.3.if.end10_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

for.inc.3:                                        ; preds = %if.end.3
  %call.4 = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %cmp3.not.4 = icmp eq i32 %call.4, 0
  br i1 %cmp3.not.4, label %if.end.4, label %for.inc.3.if.then_crit_edge

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.4:                                         ; preds = %for.inc.3
  %20 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sd_addr, align 4
  %call4.4 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 9, i32 noundef %21, i8 noundef zeroext 2, ptr noundef nonnull %rsp, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.4)
  %cmp5.4 = icmp eq i32 %call4.4, 0
  br i1 %cmp5.4, label %if.end.4.if.end10_crit_edge, label %for.inc.4

if.end.4.if.end10_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

for.inc.4:                                        ; preds = %if.end.4
  %call.5 = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %cmp3.not.5 = icmp eq i32 %call.5, 0
  br i1 %cmp3.not.5, label %if.end.5, label %for.inc.4.if.then_crit_edge

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.5:                                         ; preds = %for.inc.4
  %22 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sd_addr, align 4
  %call4.5 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 9, i32 noundef %23, i8 noundef zeroext 2, ptr noundef nonnull %rsp, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.5)
  %cmp5.5 = icmp eq i32 %call4.5, 0
  br i1 %cmp5.5, label %if.end.5.if.end10_crit_edge, label %if.end.5.cleanup_crit_edge

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.5.if.end10_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end10:                                         ; preds = %if.end.5.if.end10_crit_edge, %if.end.4.if.end10_crit_edge, %if.end.3.if.end10_crit_edge, %if.end.2.if.end10_crit_edge, %if.end.1.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %raw_csd = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 5
  %24 = call ptr @memcpy(ptr %raw_csd, ptr %0, i32 15)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_check_csd.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_check_csd, %if.then16)) #7
          to label %do.body19 [label %if.then16], !srcloc !336

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_check_csd.__UNIQUE_ID_ddebug300, ptr noundef %dev.i, ptr noundef nonnull @.str.67) #7
  br label %do.body19

do.body19:                                        ; preds = %if.then16, %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_check_csd.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_check_csd, %if.then31)) #7
          to label %do.end37 [label %if.then31], !srcloc !336

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %dev.i13 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_check_csd.__UNIQUE_ID_ddebug301, ptr noundef %dev.i13, ptr noundef nonnull @.str.68, i32 noundef 16, ptr noundef %raw_csd) #7
  br label %do.end37

do.end37:                                         ; preds = %if.then31, %do.body19
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %0, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_check_csd.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_check_csd, %if.then51)) #7
          to label %do.end56 [label %if.then51], !srcloc !336

if.then51:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  %35 = lshr i8 %34, 6
  %36 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chip, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %dev.i14 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %conv53 = zext i8 %35 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_check_csd.__UNIQUE_ID_ddebug302, ptr noundef %dev.i14, ptr noundef nonnull @.str.69, i32 noundef %conv53) #7
  br label %do.end56

do.end56:                                         ; preds = %if.then51, %do.end37
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %1, align 1
  %conv58 = zext i8 %41 to i32
  %and59 = and i32 %conv58, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and59)
  %cmp60 = icmp eq i32 %and59, 2
  br i1 %cmp60, label %if.then62, label %do.end56.cleanup_crit_edge

do.end56.cleanup_crit_edge:                       ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then62:                                        ; preds = %do.end56
  %and64 = and i32 %conv58, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %and64)
  %cmp65 = icmp ugt i32 %and64, 47
  br i1 %cmp65, label %if.then67, label %if.else72

if.then67:                                        ; preds = %if.then62
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %42 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool68.not = icmp eq i32 %43, 0
  %sd_clock70 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  br i1 %tobool68.not, label %if.else, label %if.then69

if.then69:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %sd_clock70 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 47, ptr %sd_clock70, align 4
  br label %if.end131

if.else:                                          ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %sd_clock70 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %sd_clock70, align 4
  br label %if.end131

if.else72:                                        ; preds = %if.then62
  %trunc = trunc i32 %and64 to i8
  %46 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %trunc, label %if.else98 [
    i8 40, label %if.then77
    i8 32, label %if.then90
  ]

if.then77:                                        ; preds = %if.else72
  %asic_code78 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %47 = ptrtoint ptr %asic_code78 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %asic_code78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool79.not = icmp eq i32 %48, 0
  %sd_clock83 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  br i1 %tobool79.not, label %if.else82, label %if.then80

if.then80:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %sd_clock83 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 39, ptr %sd_clock83, align 4
  br label %if.end131

if.else82:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %sd_clock83 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 3, ptr %sd_clock83, align 4
  br label %if.end131

if.then90:                                        ; preds = %if.else72
  %asic_code91 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %51 = ptrtoint ptr %asic_code91 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %asic_code91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool92.not = icmp eq i32 %52, 0
  %sd_clock96 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  br i1 %tobool92.not, label %if.else95, label %if.then93

if.then93:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %sd_clock96 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 29, ptr %sd_clock96, align 4
  br label %if.end131

if.else95:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %sd_clock96 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %sd_clock96, align 4
  br label %if.end131

if.else98:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and64)
  %cmp101 = icmp ugt i32 %and64, 15
  br i1 %cmp101, label %if.then103, label %if.else111

if.then103:                                       ; preds = %if.else98
  %asic_code104 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %55 = ptrtoint ptr %asic_code104 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %asic_code104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool105.not = icmp eq i32 %56, 0
  %sd_clock109 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  br i1 %tobool105.not, label %if.else108, label %if.then106

if.then106:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %sd_clock109 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 23, ptr %sd_clock109, align 4
  br label %if.end131

if.else108:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %sd_clock109 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %sd_clock109, align 4
  br label %if.end131

if.else111:                                       ; preds = %if.else98
  %and113 = and i32 %conv58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %cmp114.not = icmp eq i32 %and113, 0
  br i1 %cmp114.not, label %if.else111.cleanup_crit_edge, label %if.then116

if.else111.cleanup_crit_edge:                     ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then116:                                       ; preds = %if.else111
  %asic_code117 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %59 = ptrtoint ptr %asic_code117 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %asic_code117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool118.not = icmp eq i32 %60, 0
  %sd_clock122 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  br i1 %tobool118.not, label %if.else121, label %if.then119

if.then119:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %sd_clock122 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 19, ptr %sd_clock122, align 4
  br label %if.end131

if.else121:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %sd_clock122 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %sd_clock122, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.else121, %if.then119, %if.else108, %if.then106, %if.else95, %if.then93, %if.else82, %if.then80, %if.else, %if.then69
  %63 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %sd_card1, align 4
  %65 = and i16 %64, 4351
  call void @__sanitizer_cov_trace_const_cmp2(i16 4097, i16 %65)
  %.not = icmp eq i16 %65, 4097
  br i1 %.not, label %if.end131.if.then214_crit_edge, label %if.else141

if.end131.if.then214_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then214

if.else141:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %65)
  %66 = icmp ne i16 %65, 4096
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %34)
  %cmp153 = icmp ult i8 %34, 64
  %or.cond3 = select i1 %66, i1 true, i1 %cmp153
  br i1 %or.cond3, label %if.then155, label %if.else197

if.then155:                                       ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %2, align 1
  %69 = and i8 %68, 15
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %3, align 1
  %72 = and i8 %71, 3
  %conv164 = zext i8 %72 to i32
  %shl = shl nuw nsw i32 %conv164, 10
  %73 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %4, align 1
  %conv167 = zext i8 %74 to i32
  %shl168 = shl nuw nsw i32 %conv167, 2
  %75 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %5, align 1
  %77 = lshr i8 %76, 6
  %78 = zext i8 %77 to i32
  %79 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %6, align 1
  %81 = shl i8 %80, 1
  %82 = and i8 %81, 6
  %83 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %7, align 1
  %85 = lshr i8 %84, 7
  %add175 = or i32 %shl168, %shl
  %add = or i32 %add175, 1
  %add190 = add nuw nsw i32 %add, %78
  %add1871 = or i8 %85, 2
  %narrow = add nuw nsw i8 %add1871, %82
  %add192 = zext i8 %narrow to i32
  %mul = shl i32 %add190, %add192
  %conv194 = zext i8 %69 to i32
  %sub = add nsw i32 %conv194, -9
  %shl195 = shl i32 %mul, %sub
  br label %if.then214

if.else197:                                       ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %4, align 1
  %and200 = zext i8 %87 to i32
  %shl201 = shl nuw nsw i32 %and200, 16
  %88 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %5, align 1
  %conv203 = zext i8 %89 to i32
  %shl204 = shl nuw nsw i32 %conv203, 8
  %or = or i32 %shl204, %shl201
  %90 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %6, align 1
  %conv206 = zext i8 %91 to i32
  %or207 = or i32 %or, %conv206
  %add208 = shl i32 %or207, 10
  %shl209 = add i32 %add208, 1024
  br label %if.then214

if.then214:                                       ; preds = %if.else197, %if.then155, %if.end131.if.then214_crit_edge
  %.sink = phi i32 [ %shl209, %if.else197 ], [ %shl195, %if.then155 ], [ 0, %if.end131.if.then214_crit_edge ]
  %capacity = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 4
  %92 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %.sink, ptr %capacity, align 4
  %93 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %8, align 1
  %95 = and i8 %94, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool218.not = icmp eq i8 %95, 0
  br i1 %tobool218.not, label %if.then214.do.body224_crit_edge, label %if.then219

if.then214.do.body224_crit_edge:                  ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body224

if.then219:                                       ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #9
  %card_wp = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 24
  %96 = ptrtoint ptr %card_wp to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %card_wp, align 1
  %98 = or i8 %97, 4
  store i8 %98, ptr %card_wp, align 1
  br label %do.body224

do.body224:                                       ; preds = %if.then219, %if.then214.do.body224_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_check_csd.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_check_csd, %if.then236)) #7
          to label %cleanup [label %if.then236], !srcloc !336

if.then236:                                       ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %chip, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %dev.i15 = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  %103 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %8, align 1
  %conv239 = zext i8 %104 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_check_csd.__UNIQUE_ID_ddebug303, ptr noundef %dev.i15, ptr noundef nonnull @.str.70, i32 noundef %conv239) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then236, %do.body224, %if.else111.cleanup_crit_edge, %do.end56.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.else111.cleanup_crit_edge ], [ 1, %do.end56.cleanup_crit_edge ], [ 0, %if.then236 ], [ 0, %do.body224 ], [ 1, %if.end.5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rsp) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_switch_timing_bus(ptr noundef %chip, i1 noundef zeroext %switch_ddr) unnamed_addr #0 align 64 {
entry:
  %rsp = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  %0 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sd_card1, align 4
  %2 = and i16 %1, -8961
  store i16 %2, ptr %sd_card1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_switch_timing_bus.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_switch_timing_bus, %if.then)) #7
          to label %do.end18 [label %if.then], !srcloc !336

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_switch_timing_bus.__UNIQUE_ID_ddebug358, ptr noundef %dev.i, ptr noundef nonnull @.str.9, i32 noundef 8) #7
  br label %do.end18

do.end18:                                         ; preds = %if.then, %entry
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %7 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ci, align 4
  %.b258 = load i1, ptr @REG_SD_CMD0, align 2
  %8 = select i1 %.b258, i16 -716, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %8, i8 noundef zeroext -1, i8 noundef zeroext 72) #7
  %.b259 = load i1, ptr @REG_SD_CMD1, align 2
  %9 = select i1 %.b259, i16 -715, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %9, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  %.b260 = load i1, ptr @REG_SD_CMD2, align 2
  %10 = select i1 %.b260, i16 -714, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %10, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  %.b261 = load i1, ptr @REG_SD_CMD3, align 2
  %11 = select i1 %.b261, i16 -713, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %11, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  %.b262 = load i1, ptr @REG_SD_CMD4, align 2
  %12 = select i1 %.b262, i16 -712, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %12, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  %.b = load i1, ptr @REG_SD_BYTE_CNT_L, align 2
  %13 = select i1 %.b, i16 -711, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %13, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  %.b252 = load i1, ptr @REG_SD_BYTE_CNT_H, align 2
  %14 = select i1 %.b252, i16 -710, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %14, i8 noundef zeroext -1, i8 noundef zeroext 2) #7
  %.b253 = load i1, ptr @REG_SD_BLOCK_CNT_L, align 2
  %15 = select i1 %.b253, i16 -709, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %15, i8 noundef zeroext -1, i8 noundef zeroext 1) #7
  %.b254 = load i1, ptr @REG_SD_BLOCK_CNT_H, align 2
  %16 = select i1 %.b254, i16 -708, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %16, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  %.b255 = load i1, ptr @REG_SD_CFG2, align 2
  %17 = select i1 %.b255, i16 -717, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %17, i8 noundef zeroext -1, i8 noundef zeroext 1) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %.b257 = load i1, ptr @REG_SD_TRANSFER, align 2
  %18 = select i1 %.b257, i16 -718, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %18, i8 noundef zeroext -1, i8 noundef zeroext -116) #7
  %.b256 = load i1, ptr @REG_SD_TRANSFER, align 2
  %19 = select i1 %.b256, i16 -718, i16 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext %19, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1340, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1324, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1323, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1322, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1321, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  %call19 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 4, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %if.then21, label %if.end27

if.then21:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call19)
  %cmp22 = icmp eq i32 %call19, -110
  br i1 %cmp22, label %if.then24, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  %sd_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %20 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sd_addr, align 4
  %call25 = tail call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %21, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  br label %cleanup

if.end27:                                         ; preds = %do.end18
  %host_cmds_ptr.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 4
  %22 = ptrtoint ptr %host_cmds_ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %host_cmds_ptr.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %26 = and i8 %25, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool31.not = icmp eq i8 %26, 0
  br i1 %tobool31.not, label %if.end35, label %if.then32

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %sd_addr33 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %27 = ptrtoint ptr %sd_addr33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sd_addr33, align 4
  %call34 = tail call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %28, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  br label %cleanup

if.end35:                                         ; preds = %if.end27
  %29 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sd_card1, align 4
  %31 = and i16 %30, 4351
  call void @__sanitizer_cov_trace_const_cmp2(i16 4097, i16 %31)
  %.not = icmp eq i16 %31, 4097
  br i1 %.not, label %if.then45, label %if.end35.if.end58_crit_edge

if.end35.if.end58_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then45:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx46 = getelementptr i8, ptr %23, i32 5
  %32 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %33 to i32
  %shl = shl nuw i32 %conv47, 24
  %arrayidx48 = getelementptr i8, ptr %23, i32 4
  %34 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %35 to i32
  %shl50 = shl nuw nsw i32 %conv49, 16
  %or = or i32 %shl50, %shl
  %arrayidx51 = getelementptr i8, ptr %23, i32 3
  %36 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %37 to i32
  %shl53 = shl nuw nsw i32 %conv52, 8
  %or54 = or i32 %or, %shl53
  %arrayidx55 = getelementptr i8, ptr %23, i32 2
  %38 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %39 to i32
  %or57 = or i32 %or54, %conv56
  %capacity = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 4
  %40 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or57, ptr %capacity, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then45, %if.end35.if.end58_crit_edge
  %arrayidx59 = getelementptr i8, ptr %23, i32 1
  %41 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx59, align 1
  %43 = and i8 %42, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool64.not = icmp eq i8 %43, 0
  br i1 %tobool64.not, label %if.end58.if.end121_crit_edge, label %if.then65

if.end58.if.end121_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121

if.then65:                                        ; preds = %if.end58
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %rsp) #7
  %44 = and i8 %42, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool84.not = icmp eq i8 %44, 0
  %storemerge.v = select i1 %tobool84.not, i16 256, i16 512
  %storemerge = or i16 %30, %storemerge.v
  %45 = call ptr @memset(ptr %rsp, i32 255, i32 5)
  %46 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %storemerge, ptr %sd_card1, align 4
  %call97 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 6, i32 noundef 62456064, i8 noundef zeroext 9, ptr noundef nonnull %rsp, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98.not = icmp eq i32 %call97, 0
  br i1 %cmp98.not, label %lor.lhs.false, label %if.then65.do.body105_crit_edge

if.then65.do.body105_crit_edge:                   ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body105

lor.lhs.false:                                    ; preds = %if.then65
  %47 = getelementptr inbounds [5 x i8], ptr %rsp, i32 0, i32 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %49)
  %tobool103.not = icmp sgt i8 %49, -1
  br i1 %tobool103.not, label %lor.lhs.false.if.end120_crit_edge, label %lor.lhs.false.do.body105_crit_edge

lor.lhs.false.do.body105_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body105

lor.lhs.false.if.end120_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

do.body105:                                       ; preds = %lor.lhs.false.do.body105_crit_edge, %if.then65.do.body105_crit_edge
  %50 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %sd_card1, align 4
  %52 = and i16 %51, -8961
  store i16 %52, ptr %sd_card1, align 4
  br label %if.end120

if.end120:                                        ; preds = %do.body105, %lor.lhs.false.if.end120_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rsp) #7
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %if.end58.if.end121_crit_edge
  call fastcc void @sd_choose_proper_clock(ptr noundef %chip)
  %sd_clock = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  %53 = ptrtoint ptr %sd_clock to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sd_clock, align 4
  %asic_code.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %55 = ptrtoint ptr %asic_code.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %asic_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  %call.i263 = call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %54) #7
  br label %switch_clock.exit

if.else.i:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %54) #7
  br label %switch_clock.exit

switch_clock.exit:                                ; preds = %if.else.i, %if.then.i
  %retval1.0.i = phi i32 [ %call.i263, %if.then.i ], [ %call2.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i)
  %cmp123.not = icmp eq i32 %retval1.0.i, 0
  br i1 %cmp123.not, label %if.end126, label %switch_clock.exit.cleanup_crit_edge

switch_clock.exit.cleanup_crit_edge:              ; preds = %switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end126:                                        ; preds = %switch_clock.exit
  %call127 = call fastcc i32 @mmc_test_switch_bus(ptr noundef %chip, i8 noundef zeroext 16)
  %57 = zext i32 %call127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %call127, label %if.end126.cleanup_crit_edge [
    i32 0, label %if.then130
    i32 2, label %if.then143
  ]

if.end126.cleanup_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then130:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %sd_card1, align 4
  %60 = or i16 %59, 2048
  store i16 %60, ptr %sd_card1, align 4
  %arrayidx135 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 4
  %61 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx135, align 4
  %idxprom = zext i8 %62 to i32
  %arrayidx136 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 30, i32 %idxprom
  %63 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 8, ptr %arrayidx136, align 1
  %sd_lock_status = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %64 = ptrtoint ptr %sd_lock_status to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %sd_lock_status, align 4
  %66 = and i8 %65, -65
  store i8 %66, ptr %sd_lock_status, align 4
  br label %cleanup

if.then143:                                       ; preds = %if.end126
  %call144 = call fastcc i32 @mmc_test_switch_bus(ptr noundef %chip, i8 noundef zeroext 32)
  %67 = zext i32 %call144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %call144, label %if.then143.cleanup_crit_edge [
    i32 0, label %if.then147
    i32 2, label %if.then164
  ]

if.then143.cleanup_crit_edge:                     ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then147:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %sd_card1, align 4
  %70 = or i16 %69, 1024
  store i16 %70, ptr %sd_card1, align 4
  %arrayidx154 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 4
  %71 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx154, align 4
  %idxprom155 = zext i8 %72 to i32
  %arrayidx156 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 30, i32 %idxprom155
  %73 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 4, ptr %arrayidx156, align 1
  %sd_lock_status157 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %74 = ptrtoint ptr %sd_lock_status157 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %sd_lock_status157, align 4
  %76 = and i8 %75, -65
  store i8 %76, ptr %sd_lock_status157, align 4
  br label %cleanup

if.then164:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %sd_card1, align 4
  %79 = and i16 %78, -3073
  store i16 %79, ptr %sd_card1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then164, %if.then147, %if.then143.cleanup_crit_edge, %if.then130, %if.end126.cleanup_crit_edge, %switch_clock.exit.cleanup_crit_edge, %if.then32, %if.then24, %if.then21.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then32 ], [ 1, %if.then24 ], [ 1, %if.then21.cleanup_crit_edge ], [ 1, %switch_clock.exit.cleanup_crit_edge ], [ 1, %if.then143.cleanup_crit_edge ], [ 1, %if.end126.cleanup_crit_edge ], [ 0, %if.then164 ], [ 0, %if.then147 ], [ 0, %if.then130 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @sd_choose_proper_clock(ptr noundef %chip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  %0 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sd_card1, align 4
  %conv = zext i16 %1 to i32
  %2 = and i32 %conv, 2303
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %2)
  %.not = icmp eq i32 %2, 2048
  br i1 %.not, label %if.then, label %if.else9

if.then:                                          ; preds = %entry
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %3 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %asic_sd_sdr104_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 94
  %5 = ptrtoint ptr %asic_sd_sdr104_clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %asic_sd_sdr104_clk, align 4
  %sd_clock = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  %7 = ptrtoint ptr %sd_clock to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %sd_clock, align 4
  br label %if.end119

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %fpga_sd_sdr104_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 86
  %8 = ptrtoint ptr %fpga_sd_sdr104_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fpga_sd_sdr104_clk, align 4
  %sd_clock8 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  %10 = ptrtoint ptr %sd_clock8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %sd_clock8, align 4
  br label %if.end119

if.else9:                                         ; preds = %entry
  %11 = and i32 %conv, 1279
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %11)
  %.not167 = icmp eq i32 %11, 1024
  br i1 %.not167, label %if.then20, label %if.else28

if.then20:                                        ; preds = %if.else9
  %asic_code21 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %12 = ptrtoint ptr %asic_code21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %asic_code21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool22.not = icmp eq i32 %13, 0
  br i1 %tobool22.not, label %if.else25, label %if.then23

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %asic_sd_ddr50_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 95
  %14 = ptrtoint ptr %asic_sd_ddr50_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %asic_sd_ddr50_clk, align 4
  %sd_clock24 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  %16 = ptrtoint ptr %sd_clock24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %sd_clock24, align 4
  br label %if.end119

if.else25:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %fpga_sd_ddr50_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 87
  %17 = ptrtoint ptr %fpga_sd_ddr50_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fpga_sd_ddr50_clk, align 4
  %sd_clock26 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  %19 = ptrtoint ptr %sd_clock26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %sd_clock26, align 4
  br label %if.end119

if.else28:                                        ; preds = %if.else9
  %20 = and i32 %conv, 767
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %20)
  %.not168 = icmp eq i32 %20, 512
  br i1 %.not168, label %if.then39, label %if.else47

if.then39:                                        ; preds = %if.else28
  %asic_code40 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %21 = ptrtoint ptr %asic_code40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %asic_code40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool41.not = icmp eq i32 %22, 0
  br i1 %tobool41.not, label %if.else44, label %if.then42

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %asic_sd_sdr50_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 96
  %23 = ptrtoint ptr %asic_sd_sdr50_clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %asic_sd_sdr50_clk, align 4
  %sd_clock43 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  %25 = ptrtoint ptr %sd_clock43 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %sd_clock43, align 4
  br label %if.end119

if.else44:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %fpga_sd_sdr50_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 88
  %26 = ptrtoint ptr %fpga_sd_sdr50_clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fpga_sd_sdr50_clk, align 4
  %sd_clock45 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  %28 = ptrtoint ptr %sd_clock45 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %sd_clock45, align 4
  br label %if.end119

if.else47:                                        ; preds = %if.else28
  %29 = and i32 %conv, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %29)
  %.not169 = icmp eq i32 %29, 256
  br i1 %.not169, label %if.then58, label %if.else66

if.then58:                                        ; preds = %if.else47
  %asic_code59 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %30 = ptrtoint ptr %asic_code59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %asic_code59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool60.not = icmp eq i32 %31, 0
  br i1 %tobool60.not, label %if.else63, label %if.then61

if.then61:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  %asic_sd_hs_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 97
  %32 = ptrtoint ptr %asic_sd_hs_clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %asic_sd_hs_clk, align 4
  %sd_clock62 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  %34 = ptrtoint ptr %sd_clock62 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %sd_clock62, align 4
  br label %if.end119

if.else63:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  %fpga_sd_hs_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 89
  %35 = ptrtoint ptr %fpga_sd_hs_clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fpga_sd_hs_clk, align 4
  %sd_clock64 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  %37 = ptrtoint ptr %sd_clock64 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %sd_clock64, align 4
  br label %if.end119

if.else66:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %20)
  %.not170 = icmp eq i32 %20, 513
  %38 = and i32 %conv, 8447
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %38)
  %.not171 = icmp eq i32 %38, 8193
  %or.cond = or i1 %.not170, %.not171
  br i1 %or.cond, label %if.then87, label %if.else95

if.then87:                                        ; preds = %if.else66
  %asic_code88 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %39 = ptrtoint ptr %asic_code88 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %asic_code88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool89.not = icmp eq i32 %40, 0
  br i1 %tobool89.not, label %if.else92, label %if.then90

if.then90:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  %asic_mmc_52m_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 98
  %41 = ptrtoint ptr %asic_mmc_52m_clk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %asic_mmc_52m_clk, align 4
  %sd_clock91 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  %43 = ptrtoint ptr %sd_clock91 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %sd_clock91, align 4
  br label %if.end119

if.else92:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  %fpga_mmc_52m_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 90
  %44 = ptrtoint ptr %fpga_mmc_52m_clk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fpga_mmc_52m_clk, align 4
  %sd_clock93 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  %46 = ptrtoint ptr %sd_clock93 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %sd_clock93, align 4
  br label %if.end119

if.else95:                                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %29)
  %.not172 = icmp eq i32 %29, 257
  br i1 %.not172, label %if.then106, label %if.else95.if.end119_crit_edge

if.else95.if.end119_crit_edge:                    ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

if.then106:                                       ; preds = %if.else95
  %asic_code107 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %47 = ptrtoint ptr %asic_code107 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %asic_code107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool108.not = icmp eq i32 %48, 0
  %sd_clock112 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  br i1 %tobool108.not, label %if.else111, label %if.then109

if.then109:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %sd_clock112 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 48, ptr %sd_clock112, align 4
  br label %if.end119

if.else111:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %sd_clock112 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 4, ptr %sd_clock112, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.else111, %if.then109, %if.else95.if.end119_crit_edge, %if.else92, %if.then90, %if.else63, %if.then61, %if.else44, %if.then42, %if.else25, %if.then23, %if.else, %if.then7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_test_switch_bus(ptr noundef %chip, i8 noundef zeroext %width) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  %rsp = alloca [5 x i8], align 1
  %rsp131 = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %buf, align 8
  %call = tail call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 19, i32 noundef 0, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup163_crit_edge

entry.cleanup163_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup163

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %width)
  %cmp3 = icmp eq i8 %width, 16
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 85, ptr %buf, align 8
  %arrayidx6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -86, ptr %arrayidx6, align 1
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 90, ptr %buf, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %len.0 = phi i32 [ 8, %if.then5 ], [ 4, %if.else ]
  %byte_cnt.0 = phi i16 [ 8, %if.then5 ], [ 4, %if.else ]
  %bus_width.0 = phi i8 [ 2, %if.then5 ], [ 1, %if.else ]
  %.b224 = load i1, ptr @REG_SD_CFG3, align 2
  %4 = select i1 %.b224, i16 -706, i16 0
  %call9 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end13, label %if.end8.cleanup163_crit_edge

if.end8.cleanup163_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup163

if.end13:                                         ; preds = %if.end8
  %call14 = call fastcc i32 @sd_write_data(ptr noundef %chip, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i16 noundef zeroext %byte_cnt.0, i8 noundef zeroext %bus_width.0, ptr noundef nonnull %buf, i32 noundef %len.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  %.b223 = load i1, ptr @REG_SD_CFG3, align 2
  %5 = select i1 %.b223, i16 -706, i16 0
  %call18 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %5, i8 noundef zeroext 2, i8 noundef zeroext 0) #7
  br label %cleanup163

if.end19:                                         ; preds = %if.end13
  %.b222 = load i1, ptr @REG_SD_CFG3, align 2
  %6 = select i1 %.b222, i16 -706, i16 0
  %call20 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %6, i8 noundef zeroext 2, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %do.body, label %if.end19.cleanup163_crit_edge

if.end19.cleanup163_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup163

do.body:                                          ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_test_switch_bus.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_test_switch_bus, %if.then28)) #7
          to label %do.end [label %if.then28], !srcloc !336

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_test_switch_bus.__UNIQUE_ID_ddebug355, ptr noundef %dev.i, ptr noundef nonnull @.str.9, i32 noundef 14) #7
  br label %do.end

do.end:                                           ; preds = %if.then28, %do.body
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %11 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ci, align 4
  %.b221 = load i1, ptr @REG_SD_CMD0, align 2
  %12 = select i1 %.b221, i16 -716, i16 0
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %12, i8 noundef zeroext -1, i8 noundef zeroext 78) #7
  %.b215 = load i1, ptr @REG_SD_BYTE_CNT_L, align 2
  %13 = select i1 %.b215, i16 -711, i16 0
  %. = select i1 %cmp3, i8 8, i8 4
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %13, i8 noundef zeroext -1, i8 noundef zeroext %.) #7
  %.b216 = load i1, ptr @REG_SD_BLOCK_CNT_L, align 2
  %14 = select i1 %.b216, i16 -709, i16 0
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %14, i8 noundef zeroext -1, i8 noundef zeroext 1) #7
  %.b217 = load i1, ptr @REG_SD_BLOCK_CNT_H, align 2
  %15 = select i1 %.b217, i16 -708, i16 0
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %15, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  %.b218 = load i1, ptr @REG_SD_CFG2, align 2
  %16 = select i1 %.b218, i16 -717, i16 0
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %16, i8 noundef zeroext -1, i8 noundef zeroext 65) #7
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %.b220 = load i1, ptr @REG_SD_TRANSFER, align 2
  %17 = select i1 %.b220, i16 -718, i16 0
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %17, i8 noundef zeroext -1, i8 noundef zeroext -116) #7
  %.b219 = load i1, ptr @REG_SD_TRANSFER, align 2
  %18 = select i1 %.b219, i16 -718, i16 0
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext %18, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1536, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  br i1 %cmp3, label %if.end41, label %if.end41.thread

if.end41:                                         ; preds = %do.end
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1535, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %call42 = call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 4, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.end41.if.then45_crit_edge, label %do.body52

if.end41.if.then45_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

if.end41.thread:                                  ; preds = %do.end
  %call42237 = call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 4, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42237)
  %cmp43238 = icmp slt i32 %call42237, 0
  br i1 %cmp43238, label %if.end41.thread.if.then45_crit_edge, label %do.body107

if.end41.thread.if.then45_crit_edge:              ; preds = %if.end41.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

if.then45:                                        ; preds = %if.end41.thread.if.then45_crit_edge, %if.end41.if.then45_crit_edge
  %call.i233 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  br label %cleanup163

do.body52:                                        ; preds = %if.end41
  %host_cmds_ptr.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 4
  %19 = ptrtoint ptr %host_cmds_ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host_cmds_ptr.i, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_test_switch_bus.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_test_switch_bus, %if.then64)) #7
          to label %do.end72 [label %if.then64], !srcloc !336

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %dev.i234 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr, align 1
  %conv67 = zext i8 %26 to i32
  %arrayidx68 = getelementptr i8, ptr %20, i32 2
  %27 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %28 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_test_switch_bus.__UNIQUE_ID_ddebug356, ptr noundef %dev.i234, ptr noundef nonnull @.str.73, i32 noundef %conv67, i32 noundef %conv69) #7
  br label %do.end72

do.end72:                                         ; preds = %if.then64, %do.body52
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %30)
  %cmp75 = icmp eq i8 %30, -86
  br i1 %cmp75, label %land.lhs.true, label %do.end72.cleanup163_crit_edge

do.end72.cleanup163_crit_edge:                    ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup163

land.lhs.true:                                    ; preds = %do.end72
  %arrayidx77 = getelementptr i8, ptr %20, i32 2
  %31 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx77, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %32)
  %cmp79 = icmp eq i8 %32, 85
  br i1 %cmp79, label %if.then81, label %land.lhs.true.cleanup163_crit_edge

land.lhs.true.cleanup163_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup163

if.then81:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %rsp) #7
  %33 = call ptr @memset(ptr %rsp, i32 255, i32 5)
  %34 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %sd_card1, align 4
  %36 = and i16 %35, 8447
  call void @__sanitizer_cov_trace_const_cmp2(i16 8193, i16 %36)
  %.not246 = icmp eq i16 %36, 8193
  %arg.0 = select i1 %.not246, i32 62326272, i32 62325248
  %call94 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 6, i32 noundef %arg.0, i8 noundef zeroext 9, ptr noundef nonnull %rsp, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp eq i32 %call94, 0
  br i1 %cmp95, label %land.lhs.true97, label %if.then81.if.end103_crit_edge

if.then81.if.end103_crit_edge:                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

land.lhs.true97:                                  ; preds = %if.then81
  %37 = getelementptr inbounds [5 x i8], ptr %rsp, i32 0, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %39)
  %tobool101.not = icmp sgt i8 %39, -1
  br i1 %tobool101.not, label %cleanup, label %land.lhs.true97.if.end103_crit_edge

land.lhs.true97.if.end103_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.end103:                                        ; preds = %land.lhs.true97.if.end103_crit_edge, %if.then81.if.end103_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rsp) #7
  br label %cleanup163

cleanup:                                          ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rsp) #7
  br label %cleanup163

do.body107:                                       ; preds = %if.end41.thread
  %host_cmds_ptr.i239 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 4
  %40 = ptrtoint ptr %host_cmds_ptr.i239 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %host_cmds_ptr.i239, align 4
  %add.ptr240 = getelementptr i8, ptr %41, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_test_switch_bus.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_test_switch_bus, %if.then119)) #7
          to label %do.end125 [label %if.then119], !srcloc !336

if.then119:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chip, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %dev.i235 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %46 = ptrtoint ptr %add.ptr240 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr240, align 1
  %conv122 = zext i8 %47 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_test_switch_bus.__UNIQUE_ID_ddebug357, ptr noundef %dev.i235, ptr noundef nonnull @.str.74, i32 noundef %conv122) #7
  br label %do.end125

do.end125:                                        ; preds = %if.then119, %do.body107
  %48 = ptrtoint ptr %add.ptr240 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %add.ptr240, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -91, i8 %49)
  %cmp128 = icmp eq i8 %49, -91
  br i1 %cmp128, label %if.then130, label %do.end125.cleanup163_crit_edge

do.end125.cleanup163_crit_edge:                   ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup163

if.then130:                                       ; preds = %do.end125
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %rsp131) #7
  %50 = call ptr @memset(ptr %rsp131, i32 255, i32 5)
  %51 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %sd_card1, align 4
  %53 = and i16 %52, 8447
  call void @__sanitizer_cov_trace_const_cmp2(i16 8193, i16 %53)
  %.not = icmp eq i16 %53, 8193
  %arg132.0 = select i1 %.not, i32 62326016, i32 62324992
  %call147 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 6, i32 noundef %arg132.0, i8 noundef zeroext 9, ptr noundef nonnull %rsp131, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %cmp148 = icmp eq i32 %call147, 0
  br i1 %cmp148, label %land.lhs.true150, label %if.then130.if.end156_crit_edge

if.then130.if.end156_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end156

land.lhs.true150:                                 ; preds = %if.then130
  %54 = getelementptr inbounds [5 x i8], ptr %rsp131, i32 0, i32 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %56)
  %tobool154.not = icmp sgt i8 %56, -1
  br i1 %tobool154.not, label %cleanup157, label %land.lhs.true150.if.end156_crit_edge

land.lhs.true150.if.end156_crit_edge:             ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end156

if.end156:                                        ; preds = %land.lhs.true150.if.end156_crit_edge, %if.then130.if.end156_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rsp131) #7
  br label %cleanup163

cleanup157:                                       ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rsp131) #7
  br label %cleanup163

cleanup163:                                       ; preds = %cleanup157, %if.end156, %do.end125.cleanup163_crit_edge, %cleanup, %if.end103, %land.lhs.true.cleanup163_crit_edge, %do.end72.cleanup163_crit_edge, %if.then45, %if.end19.cleanup163_crit_edge, %if.then17, %if.end8.cleanup163_crit_edge, %entry.cleanup163_crit_edge
  %retval.2 = phi i32 [ 1, %if.then17 ], [ 1, %if.then45 ], [ 0, %cleanup ], [ 0, %cleanup157 ], [ 2, %entry.cleanup163_crit_edge ], [ 1, %if.end8.cleanup163_crit_edge ], [ 1, %if.end19.cleanup163_crit_edge ], [ 2, %if.end156 ], [ 2, %if.end103 ], [ 2, %do.end125.cleanup163_crit_edge ], [ 2, %do.end72.cleanup163_crit_edge ], [ 2, %land.lhs.true.cleanup163_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_dummy_clock(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %.b79 = load i1, ptr @REG_SD_CFG3, align 2
  %0 = select i1 %.b79, i16 -706, i16 0
  %call = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %0, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %__here, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !326) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 212
  %5 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 ptrtoint (ptr blockaddress(@sd_dummy_clock, %__here) to i32), ptr %task_state_change, align 4
  %6 = load ptr, ptr %task, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %6, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !350
  %call66 = tail call i32 @schedule_timeout(i32 noundef 0) #7
  %.b = load i1, ptr @REG_SD_CFG3, align 2
  %8 = select i1 %.b, i16 -706, i16 0
  %call69 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %8, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  br label %cleanup

cleanup:                                          ; preds = %__here, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call69, %__here ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_switch_function(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  %call = tail call fastcc i32 @sd_check_switch_mode(ptr noundef %chip, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sd_switch_fail = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 22
  %0 = ptrtoint ptr %sd_switch_fail to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sd_switch_fail, align 2
  %neg = xor i8 %1, -1
  %func_group1_mask = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 18
  %2 = ptrtoint ptr %func_group1_mask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %func_group1_mask, align 2
  %and = and i8 %3, %neg
  store i8 %and, ptr %func_group1_mask, align 2
  %4 = and i8 %and, 2
  %sdr50_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 72
  %ddr50_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 71
  %sdr104_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 70
  %sd_speed_prior = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 144
  %5 = ptrtoint ptr %sd_speed_prior to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sd_speed_prior, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool37.not = icmp eq i8 %4, 0
  %7 = and i8 %and, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool28.not = icmp eq i8 %7, 0
  %8 = and i8 %and, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool19.not = icmp eq i8 %8, 0
  %9 = and i8 %and, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %trunc1 = trunc i32 %6 to i8
  %10 = zext i8 %trunc1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.130)
  switch i8 %trunc1, label %if.end.for.inc_crit_edge [
    i8 3, label %sw.bb
    i8 4, label %sw.bb15
    i8 2, label %sw.bb24
    i8 1, label %sw.epilog
  ]

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb:                                            ; preds = %if.end
  br i1 %tobool.not, label %sw.bb.for.inc_crit_edge, label %land.lhs.true

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %sw.bb
  %11 = ptrtoint ptr %sdr104_en to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sdr104_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb15:                                          ; preds = %if.end
  br i1 %tobool19.not, label %sw.bb15.for.inc_crit_edge, label %land.lhs.true20

sw.bb15.for.inc_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true20:                                  ; preds = %sw.bb15
  %13 = ptrtoint ptr %ddr50_en to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ddr50_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool21.not = icmp eq i32 %14, 0
  br i1 %tobool21.not, label %land.lhs.true20.for.inc_crit_edge, label %land.lhs.true20.do.body_crit_edge

land.lhs.true20.do.body_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true20.for.inc_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb24:                                          ; preds = %if.end
  br i1 %tobool28.not, label %sw.bb24.for.inc_crit_edge, label %land.lhs.true29

sw.bb24.for.inc_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true29:                                  ; preds = %sw.bb24
  %15 = ptrtoint ptr %sdr50_en to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sdr50_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool30.not = icmp eq i32 %16, 0
  br i1 %tobool30.not, label %land.lhs.true29.for.inc_crit_edge, label %land.lhs.true29.do.body_crit_edge

land.lhs.true29.do.body_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true29.for.inc_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.epilog:                                        ; preds = %if.end
  br i1 %tobool37.not, label %sw.epilog.for.inc_crit_edge, label %sw.epilog.do.body_crit_edge

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.for.inc_crit_edge, %land.lhs.true29.for.inc_crit_edge, %sw.bb24.for.inc_crit_edge, %land.lhs.true20.for.inc_crit_edge, %sw.bb15.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %sw.bb.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %shr.1 = lshr i32 %6, 8
  %trunc1.1 = trunc i32 %shr.1 to i8
  %17 = zext i8 %trunc1.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.131)
  switch i8 %trunc1.1, label %for.inc.for.inc.1_crit_edge [
    i8 3, label %sw.bb.1
    i8 4, label %sw.bb15.1
    i8 2, label %sw.bb24.1
    i8 1, label %sw.epilog.1
  ]

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

sw.epilog.1:                                      ; preds = %for.inc
  br i1 %tobool37.not, label %sw.epilog.1.for.inc.1_crit_edge, label %sw.epilog.1.do.body_crit_edge

sw.epilog.1.do.body_crit_edge:                    ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.epilog.1.for.inc.1_crit_edge:                  ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

sw.bb24.1:                                        ; preds = %for.inc
  br i1 %tobool28.not, label %sw.bb24.1.for.inc.1_crit_edge, label %land.lhs.true29.1

sw.bb24.1.for.inc.1_crit_edge:                    ; preds = %sw.bb24.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

land.lhs.true29.1:                                ; preds = %sw.bb24.1
  %18 = ptrtoint ptr %sdr50_en to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sdr50_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool30.not.1 = icmp eq i32 %19, 0
  br i1 %tobool30.not.1, label %land.lhs.true29.1.for.inc.1_crit_edge, label %land.lhs.true29.1.do.body_crit_edge

land.lhs.true29.1.do.body_crit_edge:              ; preds = %land.lhs.true29.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true29.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true29.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

sw.bb15.1:                                        ; preds = %for.inc
  br i1 %tobool19.not, label %sw.bb15.1.for.inc.1_crit_edge, label %land.lhs.true20.1

sw.bb15.1.for.inc.1_crit_edge:                    ; preds = %sw.bb15.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

land.lhs.true20.1:                                ; preds = %sw.bb15.1
  %20 = ptrtoint ptr %ddr50_en to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ddr50_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool21.not.1 = icmp eq i32 %21, 0
  br i1 %tobool21.not.1, label %land.lhs.true20.1.for.inc.1_crit_edge, label %land.lhs.true20.1.do.body_crit_edge

land.lhs.true20.1.do.body_crit_edge:              ; preds = %land.lhs.true20.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true20.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true20.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

sw.bb.1:                                          ; preds = %for.inc
  br i1 %tobool.not, label %sw.bb.1.for.inc.1_crit_edge, label %land.lhs.true.1

sw.bb.1.for.inc.1_crit_edge:                      ; preds = %sw.bb.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %sw.bb.1
  %22 = ptrtoint ptr %sdr104_en to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sdr104_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool12.not.1 = icmp eq i32 %23, 0
  br i1 %tobool12.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true.1.do.body_crit_edge

land.lhs.true.1.do.body_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %sw.bb.1.for.inc.1_crit_edge, %land.lhs.true20.1.for.inc.1_crit_edge, %sw.bb15.1.for.inc.1_crit_edge, %land.lhs.true29.1.for.inc.1_crit_edge, %sw.bb24.1.for.inc.1_crit_edge, %sw.epilog.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %shr.2 = lshr i32 %6, 16
  %trunc1.2 = trunc i32 %shr.2 to i8
  %24 = zext i8 %trunc1.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.132)
  switch i8 %trunc1.2, label %for.inc.1.for.inc.2_crit_edge [
    i8 3, label %sw.bb.2
    i8 4, label %sw.bb15.2
    i8 2, label %sw.bb24.2
    i8 1, label %sw.epilog.2
  ]

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

sw.epilog.2:                                      ; preds = %for.inc.1
  br i1 %tobool37.not, label %sw.epilog.2.for.inc.2_crit_edge, label %sw.epilog.2.do.body_crit_edge

sw.epilog.2.do.body_crit_edge:                    ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.epilog.2.for.inc.2_crit_edge:                  ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

sw.bb24.2:                                        ; preds = %for.inc.1
  br i1 %tobool28.not, label %sw.bb24.2.for.inc.2_crit_edge, label %land.lhs.true29.2

sw.bb24.2.for.inc.2_crit_edge:                    ; preds = %sw.bb24.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

land.lhs.true29.2:                                ; preds = %sw.bb24.2
  %25 = ptrtoint ptr %sdr50_en to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sdr50_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool30.not.2 = icmp eq i32 %26, 0
  br i1 %tobool30.not.2, label %land.lhs.true29.2.for.inc.2_crit_edge, label %land.lhs.true29.2.do.body_crit_edge

land.lhs.true29.2.do.body_crit_edge:              ; preds = %land.lhs.true29.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true29.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true29.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

sw.bb15.2:                                        ; preds = %for.inc.1
  br i1 %tobool19.not, label %sw.bb15.2.for.inc.2_crit_edge, label %land.lhs.true20.2

sw.bb15.2.for.inc.2_crit_edge:                    ; preds = %sw.bb15.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

land.lhs.true20.2:                                ; preds = %sw.bb15.2
  %27 = ptrtoint ptr %ddr50_en to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ddr50_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool21.not.2 = icmp eq i32 %28, 0
  br i1 %tobool21.not.2, label %land.lhs.true20.2.for.inc.2_crit_edge, label %land.lhs.true20.2.do.body_crit_edge

land.lhs.true20.2.do.body_crit_edge:              ; preds = %land.lhs.true20.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true20.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true20.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

sw.bb.2:                                          ; preds = %for.inc.1
  br i1 %tobool.not, label %sw.bb.2.for.inc.2_crit_edge, label %land.lhs.true.2

sw.bb.2.for.inc.2_crit_edge:                      ; preds = %sw.bb.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %sw.bb.2
  %29 = ptrtoint ptr %sdr104_en to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sdr104_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool12.not.2 = icmp eq i32 %30, 0
  br i1 %tobool12.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true.2.do.body_crit_edge

land.lhs.true.2.do.body_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %sw.bb.2.for.inc.2_crit_edge, %land.lhs.true20.2.for.inc.2_crit_edge, %sw.bb15.2.for.inc.2_crit_edge, %land.lhs.true29.2.for.inc.2_crit_edge, %sw.bb24.2.for.inc.2_crit_edge, %sw.epilog.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %shr.3 = lshr i32 %6, 24
  %trunc1.3 = trunc i32 %shr.3 to i8
  %31 = zext i8 %trunc1.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.133)
  switch i8 %trunc1.3, label %for.inc.2.for.inc.3_crit_edge [
    i8 3, label %sw.bb.3
    i8 4, label %sw.bb15.3
    i8 2, label %sw.bb24.3
    i8 1, label %sw.epilog.3
  ]

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

sw.epilog.3:                                      ; preds = %for.inc.2
  br i1 %tobool37.not, label %sw.epilog.3.for.inc.3_crit_edge, label %sw.epilog.3.do.body_crit_edge

sw.epilog.3.do.body_crit_edge:                    ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.epilog.3.for.inc.3_crit_edge:                  ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

sw.bb24.3:                                        ; preds = %for.inc.2
  br i1 %tobool28.not, label %sw.bb24.3.for.inc.3_crit_edge, label %land.lhs.true29.3

sw.bb24.3.for.inc.3_crit_edge:                    ; preds = %sw.bb24.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

land.lhs.true29.3:                                ; preds = %sw.bb24.3
  %32 = ptrtoint ptr %sdr50_en to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sdr50_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool30.not.3 = icmp eq i32 %33, 0
  br i1 %tobool30.not.3, label %land.lhs.true29.3.for.inc.3_crit_edge, label %land.lhs.true29.3.do.body_crit_edge

land.lhs.true29.3.do.body_crit_edge:              ; preds = %land.lhs.true29.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true29.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true29.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

sw.bb15.3:                                        ; preds = %for.inc.2
  br i1 %tobool19.not, label %sw.bb15.3.for.inc.3_crit_edge, label %land.lhs.true20.3

sw.bb15.3.for.inc.3_crit_edge:                    ; preds = %sw.bb15.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

land.lhs.true20.3:                                ; preds = %sw.bb15.3
  %34 = ptrtoint ptr %ddr50_en to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ddr50_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool21.not.3 = icmp eq i32 %35, 0
  br i1 %tobool21.not.3, label %land.lhs.true20.3.for.inc.3_crit_edge, label %land.lhs.true20.3.do.body_crit_edge

land.lhs.true20.3.do.body_crit_edge:              ; preds = %land.lhs.true20.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true20.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true20.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

sw.bb.3:                                          ; preds = %for.inc.2
  br i1 %tobool.not, label %sw.bb.3.for.inc.3_crit_edge, label %land.lhs.true.3

sw.bb.3.for.inc.3_crit_edge:                      ; preds = %sw.bb.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %sw.bb.3
  %36 = ptrtoint ptr %sdr104_en to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sdr104_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool12.not.3 = icmp eq i32 %37, 0
  br i1 %tobool12.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true.3.do.body_crit_edge

land.lhs.true.3.do.body_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %sw.bb.3.for.inc.3_crit_edge, %land.lhs.true20.3.for.inc.3_crit_edge, %sw.bb15.3.for.inc.3_crit_edge, %land.lhs.true29.3.for.inc.3_crit_edge, %sw.bb24.3.for.inc.3_crit_edge, %sw.epilog.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  br label %do.body

do.body:                                          ; preds = %for.inc.3, %land.lhs.true.3.do.body_crit_edge, %land.lhs.true20.3.do.body_crit_edge, %land.lhs.true29.3.do.body_crit_edge, %sw.epilog.3.do.body_crit_edge, %land.lhs.true.2.do.body_crit_edge, %land.lhs.true20.2.do.body_crit_edge, %land.lhs.true29.2.do.body_crit_edge, %sw.epilog.2.do.body_crit_edge, %land.lhs.true.1.do.body_crit_edge, %land.lhs.true20.1.do.body_crit_edge, %land.lhs.true29.1.do.body_crit_edge, %sw.epilog.1.do.body_crit_edge, %sw.epilog.do.body_crit_edge, %land.lhs.true29.do.body_crit_edge, %land.lhs.true20.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  %cmp56 = phi i1 [ false, %land.lhs.true29.do.body_crit_edge ], [ true, %land.lhs.true20.do.body_crit_edge ], [ false, %land.lhs.true.do.body_crit_edge ], [ false, %sw.epilog.do.body_crit_edge ], [ false, %sw.epilog.1.do.body_crit_edge ], [ false, %land.lhs.true29.1.do.body_crit_edge ], [ true, %land.lhs.true20.1.do.body_crit_edge ], [ false, %land.lhs.true.1.do.body_crit_edge ], [ false, %sw.epilog.2.do.body_crit_edge ], [ false, %land.lhs.true29.2.do.body_crit_edge ], [ true, %land.lhs.true20.2.do.body_crit_edge ], [ false, %land.lhs.true.2.do.body_crit_edge ], [ false, %sw.epilog.3.do.body_crit_edge ], [ false, %land.lhs.true29.3.do.body_crit_edge ], [ true, %land.lhs.true20.3.do.body_crit_edge ], [ false, %land.lhs.true.3.do.body_crit_edge ], [ false, %for.inc.3 ]
  %func_to_switch.3 = phi i8 [ 2, %land.lhs.true29.do.body_crit_edge ], [ 4, %land.lhs.true20.do.body_crit_edge ], [ 3, %land.lhs.true.do.body_crit_edge ], [ 1, %sw.epilog.do.body_crit_edge ], [ 1, %sw.epilog.1.do.body_crit_edge ], [ 2, %land.lhs.true29.1.do.body_crit_edge ], [ 4, %land.lhs.true20.1.do.body_crit_edge ], [ 3, %land.lhs.true.1.do.body_crit_edge ], [ 1, %sw.epilog.2.do.body_crit_edge ], [ 2, %land.lhs.true29.2.do.body_crit_edge ], [ 4, %land.lhs.true20.2.do.body_crit_edge ], [ 3, %land.lhs.true.2.do.body_crit_edge ], [ 1, %sw.epilog.3.do.body_crit_edge ], [ 2, %land.lhs.true29.3.do.body_crit_edge ], [ 4, %land.lhs.true20.3.do.body_crit_edge ], [ 3, %land.lhs.true.3.do.body_crit_edge ], [ 0, %for.inc.3 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_switch_function.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_switch_function, %if.then47)) #7
          to label %do.end [label %if.then47], !srcloc !336

if.then47:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chip, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %conv49 = zext i8 %func_to_switch.3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_switch_function.__UNIQUE_ID_ddebug322, ptr noundef %dev.i, ptr noundef nonnull @.str.85, i32 noundef %conv49) #7
  br label %do.end

do.end:                                           ; preds = %if.then47, %do.body
  %sd_lock_status = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %42 = ptrtoint ptr %sd_lock_status to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %sd_lock_status, align 4
  %44 = and i8 %43, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool53.not = icmp ne i8 %44, 0
  %or.cond = and i1 %cmp56, %tobool53.not
  br i1 %or.cond, label %land.lhs.true58, label %do.end.if.end81_crit_edge

do.end.if.end81_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

land.lhs.true58:                                  ; preds = %do.end
  %45 = ptrtoint ptr %func_group1_mask to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %func_group1_mask, align 2
  %47 = and i8 %46, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool62.not = icmp eq i8 %47, 0
  br i1 %tobool62.not, label %land.lhs.true58.if.then83_crit_edge, label %if.then63

land.lhs.true58.if.then83_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83

if.then63:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_switch_function.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_switch_function, %if.then76)) #7
          to label %if.end81 [label %if.then76], !srcloc !336

if.then76:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chip, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %dev.i25 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_switch_function.__UNIQUE_ID_ddebug323, ptr noundef %dev.i25, ptr noundef nonnull @.str.86) #7
  br label %if.then83

if.end81:                                         ; preds = %if.then63, %do.end.if.end81_crit_edge
  %func_to_switch.4 = phi i8 [ %func_to_switch.3, %do.end.if.end81_crit_edge ], [ 2, %if.then63 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %func_to_switch.4)
  %tobool82.not = icmp eq i8 %func_to_switch.4, 0
  br i1 %tobool82.not, label %if.end81.if.end140_crit_edge, label %if.end81.if.then83_crit_edge

if.end81.if.then83_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83

if.end81.if.end140_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

if.then83:                                        ; preds = %if.end81.if.then83_crit_edge, %if.then76, %land.lhs.true58.if.then83_crit_edge
  %func_to_switch.435 = phi i8 [ %func_to_switch.4, %if.end81.if.then83_crit_edge ], [ 4, %land.lhs.true58.if.then83_crit_edge ], [ 2, %if.then76 ]
  %call84 = tail call fastcc i32 @sd_check_switch(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext %func_to_switch.435, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85.not = icmp eq i32 %call84, 0
  br i1 %cmp85.not, label %if.end107, label %if.then87

if.then87:                                        ; preds = %if.then83
  %52 = zext i8 %func_to_switch.435 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.134)
  switch i8 %func_to_switch.435, label %if.then87.cleanup_crit_edge [
    i8 3, label %if.then91
    i8 4, label %if.then96
    i8 2, label %if.then102
  ]

if.then87.cleanup_crit_edge:                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then91:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %sd_switch_fail to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 8, ptr %sd_switch_fail, align 2
  br label %cleanup

if.then96:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %sd_switch_fail to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 24, ptr %sd_switch_fail, align 2
  br label %cleanup

if.then102:                                       ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %sd_switch_fail to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 28, ptr %sd_switch_fail, align 2
  br label %cleanup

if.end107:                                        ; preds = %if.then83
  %56 = zext i8 %func_to_switch.435 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.135)
  switch i8 %func_to_switch.435, label %if.else132 [
    i8 3, label %if.end107.if.end140.sink.split_crit_edge
    i8 4, label %if.then118
    i8 2, label %if.then127
  ]

if.end107.if.end140.sink.split_crit_edge:         ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140.sink.split

if.then118:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140.sink.split

if.then127:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140.sink.split

if.else132:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140.sink.split

if.end140.sink.split:                             ; preds = %if.else132, %if.then127, %if.then118, %if.end107.if.end140.sink.split_crit_edge
  %.sink48 = phi i16 [ 512, %if.then127 ], [ 256, %if.else132 ], [ 1024, %if.then118 ], [ 2048, %if.end107.if.end140.sink.split_crit_edge ]
  %switch.ph = phi i1 [ false, %if.then127 ], [ true, %if.else132 ], [ false, %if.then118 ], [ false, %if.end107.if.end140.sink.split_crit_edge ]
  %57 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %sd_card1, align 4
  %59 = or i16 %58, %.sink48
  store i16 %59, ptr %sd_card1, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.end140.sink.split, %if.end81.if.end140_crit_edge
  %switch = phi i1 [ true, %if.end81.if.end140_crit_edge ], [ %switch.ph, %if.end140.sink.split ]
  %60 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %sd_card1, align 4
  %62 = and i16 %61, 1279
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %62)
  %.not = icmp eq i16 %62, 1024
  br i1 %.not, label %if.then151, label %if.end161

if.then151:                                       ; preds = %if.end140
  %call152 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -600, i8 noundef zeroext 6, i8 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.end155, label %if.then151.cleanup_crit_edge

if.then151.cleanup_crit_edge:                     ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end155:                                        ; preds = %if.then151
  %sd_ctl.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 146
  %63 = ptrtoint ptr %sd_ctl.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sd_ctl.i, align 4
  %and.i = and i32 %64, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1
  %spec.select.i = select i1 %cmp.i, i8 16, i8 0
  %and5.i = and i32 %64, 12
  %65 = zext i32 %and5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %and5.i, label %if.end155.sd_set_sample_push_timing.exit_crit_edge [
    i32 8, label %if.then8.i
    i32 4, label %if.then60.i
  ]

if.end155.sd_set_sample_push_timing.exit_crit_edge: ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_set_sample_push_timing.exit

if.then8.i:                                       ; preds = %if.end155
  %asic_code.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %66 = ptrtoint ptr %asic_code.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %asic_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i = icmp eq i32 %67, 0
  br i1 %tobool.not.i, label %if.else41.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.then8.i
  %68 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %sd_card1, align 4
  %conv10.i = zext i16 %69 to i32
  %70 = and i32 %conv10.i, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %70)
  %.not.i = icmp eq i32 %70, 256
  %71 = and i32 %conv10.i, 767
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %71)
  %.not100.i = icmp eq i32 %71, 513
  %or.cond.i = or i1 %.not.i, %.not100.i
  br i1 %or.cond.i, label %if.then28.i, label %if.then9.i.sd_set_sample_push_timing.exit_crit_edge

if.then9.i.sd_set_sample_push_timing.exit_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_set_sample_push_timing.exit

if.then28.i:                                      ; preds = %if.then9.i
  br i1 %cmp.i, label %if.then32.i, label %if.else.i

if.then32.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  %72 = or i8 %spec.select.i, 4
  br label %sd_set_sample_push_timing.exit

if.else.i:                                        ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  %or37.i = or i8 %spec.select.i, 8
  br label %sd_set_sample_push_timing.exit

if.else41.i:                                      ; preds = %if.then8.i
  br i1 %cmp.i, label %if.then45.i, label %if.else49.i

if.then45.i:                                      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #9
  %73 = or i8 %spec.select.i, 4
  br label %sd_set_sample_push_timing.exit

if.else49.i:                                      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #9
  %or51.i = or i8 %spec.select.i, 8
  br label %sd_set_sample_push_timing.exit

if.then60.i:                                      ; preds = %if.end155
  br i1 %cmp.i, label %if.then64.i, label %if.else68.i

if.then64.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #9
  %74 = or i8 %spec.select.i, 4
  br label %sd_set_sample_push_timing.exit

if.else68.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #9
  %or70.i = or i8 %spec.select.i, 8
  br label %sd_set_sample_push_timing.exit

sd_set_sample_push_timing.exit:                   ; preds = %if.else68.i, %if.then64.i, %if.else49.i, %if.then45.i, %if.else.i, %if.then32.i, %if.then9.i.sd_set_sample_push_timing.exit_crit_edge, %if.end155.sd_set_sample_push_timing.exit_crit_edge
  %val.1.i = phi i8 [ %72, %if.then32.i ], [ %or37.i, %if.else.i ], [ %73, %if.then45.i ], [ %or51.i, %if.else49.i ], [ %74, %if.then64.i ], [ %or70.i, %if.else68.i ], [ %spec.select.i, %if.end155.sd_set_sample_push_timing.exit_crit_edge ], [ %spec.select.i, %if.then9.i.sd_set_sample_push_timing.exit_crit_edge ]
  %.b.i = load i1, ptr @REG_SD_CFG1, align 2
  %75 = select i1 %.b.i, i16 -719, i16 0
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %75, i8 noundef zeroext 28, i8 noundef zeroext %val.1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp157.not = icmp ne i32 %call.i, 0
  %brmerge = or i1 %switch, %cmp157.not
  %.mux = zext i1 %cmp157.not to i32
  br i1 %brmerge, label %sd_set_sample_push_timing.exit.cleanup_crit_edge, label %sd_set_sample_push_timing.exit.for.cond168.preheader_crit_edge

sd_set_sample_push_timing.exit.for.cond168.preheader_crit_edge: ; preds = %sd_set_sample_push_timing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond168.preheader

sd_set_sample_push_timing.exit.cleanup_crit_edge: ; preds = %sd_set_sample_push_timing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end161:                                        ; preds = %if.end140
  br i1 %switch, label %if.end161.cleanup_crit_edge, label %if.end161.for.cond168.preheader_crit_edge

if.end161.for.cond168.preheader_crit_edge:        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond168.preheader

if.end161.cleanup_crit_edge:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond168.preheader:                            ; preds = %if.end161.for.cond168.preheader_crit_edge, %sd_set_sample_push_timing.exit.for.cond168.preheader_crit_edge
  %func_group4_mask197 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 21
  %sd_current_prior = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 145
  %76 = ptrtoint ptr %sd_current_prior to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sd_current_prior, align 4
  %trunc = trunc i32 %77 to i8
  %78 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.137)
  switch i8 %trunc, label %for.cond168.preheader.for.inc210_crit_edge [
    i8 3, label %sw.bb176
    i8 2, label %sw.bb182
    i8 1, label %sw.bb189
    i8 0, label %sw.bb196
  ]

for.cond168.preheader.for.inc210_crit_edge:       ; preds = %for.cond168.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc210

sw.bb176:                                         ; preds = %for.cond168.preheader
  %79 = ptrtoint ptr %func_group4_mask197 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %func_group4_mask197, align 1
  %81 = and i8 %80, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool179.not = icmp eq i8 %81, 0
  br i1 %tobool179.not, label %sw.bb176.for.inc210_crit_edge, label %sw.bb176.do.body213_crit_edge

sw.bb176.do.body213_crit_edge:                    ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

sw.bb176.for.inc210_crit_edge:                    ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc210

sw.bb182:                                         ; preds = %for.cond168.preheader
  %82 = ptrtoint ptr %func_group4_mask197 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %func_group4_mask197, align 1
  %84 = and i8 %83, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool186.not = icmp eq i8 %84, 0
  br i1 %tobool186.not, label %sw.bb182.for.inc210_crit_edge, label %sw.bb182.do.body213_crit_edge

sw.bb182.do.body213_crit_edge:                    ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

sw.bb182.for.inc210_crit_edge:                    ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc210

sw.bb189:                                         ; preds = %for.cond168.preheader
  %85 = ptrtoint ptr %func_group4_mask197 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %func_group4_mask197, align 1
  %87 = and i8 %86, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool193.not = icmp eq i8 %87, 0
  br i1 %tobool193.not, label %sw.bb189.for.inc210_crit_edge, label %sw.bb189.do.body213_crit_edge

sw.bb189.do.body213_crit_edge:                    ; preds = %sw.bb189
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

sw.bb189.for.inc210_crit_edge:                    ; preds = %sw.bb189
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc210

sw.bb196:                                         ; preds = %for.cond168.preheader
  %88 = ptrtoint ptr %func_group4_mask197 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %func_group4_mask197, align 1
  %90 = and i8 %89, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool200.not = icmp eq i8 %90, 0
  br i1 %tobool200.not, label %sw.bb196.for.inc210_crit_edge, label %sw.bb196.do.body213_crit_edge

sw.bb196.do.body213_crit_edge:                    ; preds = %sw.bb196
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

sw.bb196.for.inc210_crit_edge:                    ; preds = %sw.bb196
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc210

for.inc210:                                       ; preds = %sw.bb196.for.inc210_crit_edge, %sw.bb189.for.inc210_crit_edge, %sw.bb182.for.inc210_crit_edge, %sw.bb176.for.inc210_crit_edge, %for.cond168.preheader.for.inc210_crit_edge
  %shr173.1 = lshr i32 %77, 8
  %trunc.1 = trunc i32 %shr173.1 to i8
  %91 = zext i8 %trunc.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.138)
  switch i8 %trunc.1, label %for.inc210.for.inc210.1_crit_edge [
    i8 3, label %sw.bb176.1
    i8 2, label %sw.bb182.1
    i8 1, label %sw.bb189.1
    i8 0, label %sw.bb196.1
  ]

for.inc210.for.inc210.1_crit_edge:                ; preds = %for.inc210
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc210.1

sw.bb196.1:                                       ; preds = %for.inc210
  %92 = ptrtoint ptr %func_group4_mask197 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %func_group4_mask197, align 1
  %94 = and i8 %93, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool200.not.1 = icmp eq i8 %94, 0
  br i1 %tobool200.not.1, label %sw.bb196.1.for.inc210.1_crit_edge, label %sw.bb196.1.do.body213_crit_edge

sw.bb196.1.do.body213_crit_edge:                  ; preds = %sw.bb196.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

sw.bb196.1.for.inc210.1_crit_edge:                ; preds = %sw.bb196.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc210.1

sw.bb189.1:                                       ; preds = %for.inc210
  %95 = ptrtoint ptr %func_group4_mask197 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %func_group4_mask197, align 1
  %97 = and i8 %96, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool193.not.1 = icmp eq i8 %97, 0
  br i1 %tobool193.not.1, label %sw.bb189.1.for.inc210.1_crit_edge, label %sw.bb189.1.do.body213_crit_edge

sw.bb189.1.do.body213_crit_edge:                  ; preds = %sw.bb189.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

sw.bb189.1.for.inc210.1_crit_edge:                ; preds = %sw.bb189.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc210.1

sw.bb182.1:                                       ; preds = %for.inc210
  %98 = ptrtoint ptr %func_group4_mask197 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %func_group4_mask197, align 1
  %100 = and i8 %99, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool186.not.1 = icmp eq i8 %100, 0
  br i1 %tobool186.not.1, label %sw.bb182.1.for.inc210.1_crit_edge, label %sw.bb182.1.do.body213_crit_edge

sw.bb182.1.do.body213_crit_edge:                  ; preds = %sw.bb182.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

sw.bb182.1.for.inc210.1_crit_edge:                ; preds = %sw.bb182.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc210.1

sw.bb176.1:                                       ; preds = %for.inc210
  %101 = ptrtoint ptr %func_group4_mask197 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %func_group4_mask197, align 1
  %103 = and i8 %102, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool179.not.1 = icmp eq i8 %103, 0
  br i1 %tobool179.not.1, label %sw.bb176.1.for.inc210.1_crit_edge, label %sw.bb176.1.do.body213_crit_edge

sw.bb176.1.do.body213_crit_edge:                  ; preds = %sw.bb176.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

sw.bb176.1.for.inc210.1_crit_edge:                ; preds = %sw.bb176.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc210.1

for.inc210.1:                                     ; preds = %sw.bb176.1.for.inc210.1_crit_edge, %sw.bb182.1.for.inc210.1_crit_edge, %sw.bb189.1.for.inc210.1_crit_edge, %sw.bb196.1.for.inc210.1_crit_edge, %for.inc210.for.inc210.1_crit_edge
  %shr173.2 = lshr i32 %77, 16
  %trunc.2 = trunc i32 %shr173.2 to i8
  %104 = zext i8 %trunc.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %trunc.2, label %for.inc210.1.for.inc210.2_crit_edge [
    i8 3, label %sw.bb176.2
    i8 2, label %sw.bb182.2
    i8 1, label %sw.bb189.2
    i8 0, label %sw.bb196.2
  ]

for.inc210.1.for.inc210.2_crit_edge:              ; preds = %for.inc210.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc210.2

sw.bb196.2:                                       ; preds = %for.inc210.1
  %105 = ptrtoint ptr %func_group4_mask197 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %func_group4_mask197, align 1
  %107 = and i8 %106, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool200.not.2 = icmp eq i8 %107, 0
  br i1 %tobool200.not.2, label %sw.bb196.2.for.inc210.2_crit_edge, label %sw.bb196.2.do.body213_crit_edge

sw.bb196.2.do.body213_crit_edge:                  ; preds = %sw.bb196.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

sw.bb196.2.for.inc210.2_crit_edge:                ; preds = %sw.bb196.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc210.2

sw.bb189.2:                                       ; preds = %for.inc210.1
  %108 = ptrtoint ptr %func_group4_mask197 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %func_group4_mask197, align 1
  %110 = and i8 %109, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool193.not.2 = icmp eq i8 %110, 0
  br i1 %tobool193.not.2, label %sw.bb189.2.for.inc210.2_crit_edge, label %sw.bb189.2.do.body213_crit_edge

sw.bb189.2.do.body213_crit_edge:                  ; preds = %sw.bb189.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

sw.bb189.2.for.inc210.2_crit_edge:                ; preds = %sw.bb189.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc210.2

sw.bb182.2:                                       ; preds = %for.inc210.1
  %111 = ptrtoint ptr %func_group4_mask197 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %func_group4_mask197, align 1
  %113 = and i8 %112, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool186.not.2 = icmp eq i8 %113, 0
  br i1 %tobool186.not.2, label %sw.bb182.2.for.inc210.2_crit_edge, label %sw.bb182.2.do.body213_crit_edge

sw.bb182.2.do.body213_crit_edge:                  ; preds = %sw.bb182.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

sw.bb182.2.for.inc210.2_crit_edge:                ; preds = %sw.bb182.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc210.2

sw.bb176.2:                                       ; preds = %for.inc210.1
  %114 = ptrtoint ptr %func_group4_mask197 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %func_group4_mask197, align 1
  %116 = and i8 %115, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool179.not.2 = icmp eq i8 %116, 0
  br i1 %tobool179.not.2, label %sw.bb176.2.for.inc210.2_crit_edge, label %sw.bb176.2.do.body213_crit_edge

sw.bb176.2.do.body213_crit_edge:                  ; preds = %sw.bb176.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

sw.bb176.2.for.inc210.2_crit_edge:                ; preds = %sw.bb176.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc210.2

for.inc210.2:                                     ; preds = %sw.bb176.2.for.inc210.2_crit_edge, %sw.bb182.2.for.inc210.2_crit_edge, %sw.bb189.2.for.inc210.2_crit_edge, %sw.bb196.2.for.inc210.2_crit_edge, %for.inc210.1.for.inc210.2_crit_edge
  %shr173.3 = lshr i32 %77, 24
  %trunc.3 = trunc i32 %shr173.3 to i8
  %117 = zext i8 %trunc.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.140)
  switch i8 %trunc.3, label %for.inc210.2.for.inc210.3_crit_edge [
    i8 3, label %sw.bb176.3
    i8 2, label %sw.bb182.3
    i8 1, label %sw.bb189.3
    i8 0, label %sw.bb196.3
  ]

for.inc210.2.for.inc210.3_crit_edge:              ; preds = %for.inc210.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc210.3

sw.bb196.3:                                       ; preds = %for.inc210.2
  %118 = ptrtoint ptr %func_group4_mask197 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %func_group4_mask197, align 1
  %120 = and i8 %119, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool200.not.3 = icmp eq i8 %120, 0
  br i1 %tobool200.not.3, label %sw.bb196.3.for.inc210.3_crit_edge, label %sw.bb196.3.do.body213_crit_edge

sw.bb196.3.do.body213_crit_edge:                  ; preds = %sw.bb196.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

sw.bb196.3.for.inc210.3_crit_edge:                ; preds = %sw.bb196.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc210.3

sw.bb189.3:                                       ; preds = %for.inc210.2
  %121 = ptrtoint ptr %func_group4_mask197 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %func_group4_mask197, align 1
  %123 = and i8 %122, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool193.not.3 = icmp eq i8 %123, 0
  br i1 %tobool193.not.3, label %sw.bb189.3.for.inc210.3_crit_edge, label %sw.bb189.3.do.body213_crit_edge

sw.bb189.3.do.body213_crit_edge:                  ; preds = %sw.bb189.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

sw.bb189.3.for.inc210.3_crit_edge:                ; preds = %sw.bb189.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc210.3

sw.bb182.3:                                       ; preds = %for.inc210.2
  %124 = ptrtoint ptr %func_group4_mask197 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %func_group4_mask197, align 1
  %126 = and i8 %125, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool186.not.3 = icmp eq i8 %126, 0
  br i1 %tobool186.not.3, label %sw.bb182.3.for.inc210.3_crit_edge, label %sw.bb182.3.do.body213_crit_edge

sw.bb182.3.do.body213_crit_edge:                  ; preds = %sw.bb182.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

sw.bb182.3.for.inc210.3_crit_edge:                ; preds = %sw.bb182.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc210.3

sw.bb176.3:                                       ; preds = %for.inc210.2
  %127 = ptrtoint ptr %func_group4_mask197 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %func_group4_mask197, align 1
  %129 = and i8 %128, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool179.not.3 = icmp eq i8 %129, 0
  br i1 %tobool179.not.3, label %sw.bb176.3.for.inc210.3_crit_edge, label %sw.bb176.3.do.body213_crit_edge

sw.bb176.3.do.body213_crit_edge:                  ; preds = %sw.bb176.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

sw.bb176.3.for.inc210.3_crit_edge:                ; preds = %sw.bb176.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc210.3

for.inc210.3:                                     ; preds = %sw.bb176.3.for.inc210.3_crit_edge, %sw.bb182.3.for.inc210.3_crit_edge, %sw.bb189.3.for.inc210.3_crit_edge, %sw.bb196.3.for.inc210.3_crit_edge, %for.inc210.2.for.inc210.3_crit_edge
  br label %do.body213

do.body213:                                       ; preds = %for.inc210.3, %sw.bb176.3.do.body213_crit_edge, %sw.bb182.3.do.body213_crit_edge, %sw.bb189.3.do.body213_crit_edge, %sw.bb196.3.do.body213_crit_edge, %sw.bb176.2.do.body213_crit_edge, %sw.bb182.2.do.body213_crit_edge, %sw.bb189.2.do.body213_crit_edge, %sw.bb196.2.do.body213_crit_edge, %sw.bb176.1.do.body213_crit_edge, %sw.bb182.1.do.body213_crit_edge, %sw.bb189.1.do.body213_crit_edge, %sw.bb196.1.do.body213_crit_edge, %sw.bb196.do.body213_crit_edge, %sw.bb189.do.body213_crit_edge, %sw.bb182.do.body213_crit_edge, %sw.bb176.do.body213_crit_edge
  %cmp232 = phi i1 [ true, %sw.bb196.do.body213_crit_edge ], [ true, %sw.bb189.do.body213_crit_edge ], [ true, %sw.bb182.do.body213_crit_edge ], [ true, %sw.bb176.do.body213_crit_edge ], [ true, %sw.bb196.1.do.body213_crit_edge ], [ true, %sw.bb189.1.do.body213_crit_edge ], [ true, %sw.bb182.1.do.body213_crit_edge ], [ true, %sw.bb176.1.do.body213_crit_edge ], [ true, %sw.bb196.2.do.body213_crit_edge ], [ true, %sw.bb189.2.do.body213_crit_edge ], [ true, %sw.bb182.2.do.body213_crit_edge ], [ true, %sw.bb176.2.do.body213_crit_edge ], [ true, %sw.bb196.3.do.body213_crit_edge ], [ true, %sw.bb189.3.do.body213_crit_edge ], [ true, %sw.bb182.3.do.body213_crit_edge ], [ true, %sw.bb176.3.do.body213_crit_edge ], [ false, %for.inc210.3 ]
  %func_to_switch.8 = phi i8 [ 0, %sw.bb196.do.body213_crit_edge ], [ 1, %sw.bb189.do.body213_crit_edge ], [ 2, %sw.bb182.do.body213_crit_edge ], [ 3, %sw.bb176.do.body213_crit_edge ], [ 0, %sw.bb196.1.do.body213_crit_edge ], [ 1, %sw.bb189.1.do.body213_crit_edge ], [ 2, %sw.bb182.1.do.body213_crit_edge ], [ 3, %sw.bb176.1.do.body213_crit_edge ], [ 0, %sw.bb196.2.do.body213_crit_edge ], [ 1, %sw.bb189.2.do.body213_crit_edge ], [ 2, %sw.bb182.2.do.body213_crit_edge ], [ 3, %sw.bb176.2.do.body213_crit_edge ], [ 0, %sw.bb196.3.do.body213_crit_edge ], [ 1, %sw.bb189.3.do.body213_crit_edge ], [ 2, %sw.bb182.3.do.body213_crit_edge ], [ 3, %sw.bb176.3.do.body213_crit_edge ], [ -1, %for.inc210.3 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_switch_function.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_switch_function, %if.then225)) #7
          to label %do.end230 [label %if.then225], !srcloc !336

if.then225:                                       ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %chip, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  %dev.i26 = getelementptr inbounds %struct.pci_dev, ptr %133, i32 0, i32 44
  %conv227 = zext i8 %func_to_switch.8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_switch_function.__UNIQUE_ID_ddebug324, ptr noundef %dev.i26, ptr noundef nonnull @.str.87, i32 noundef %conv227) #7
  br label %do.end230

do.end230:                                        ; preds = %if.then225, %do.body213
  br i1 %cmp232, label %if.then234, label %do.end230.if.end261_crit_edge

do.end230.if.end261_crit_edge:                    ; preds = %do.end230
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end261

if.then234:                                       ; preds = %do.end230
  %call235 = tail call fastcc i32 @sd_check_switch(ptr noundef %chip, i8 noundef zeroext 4, i8 noundef zeroext %func_to_switch.8, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %cmp236.not = icmp eq i32 %call235, 0
  br i1 %cmp236.not, label %if.then234.do.body244_crit_edge, label %if.then238

if.then234.do.body244_crit_edge:                  ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body244

if.then238:                                       ; preds = %if.then234
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  %134 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %err_code2.i, align 2
  %and4.i = and i8 %135, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and4.i)
  %tobool240.not = icmp eq i8 %and4.i, 0
  br i1 %tobool240.not, label %if.then238.do.body244_crit_edge, label %if.then238.cleanup_crit_edge

if.then238.cleanup_crit_edge:                     ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then238.do.body244_crit_edge:                  ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body244

do.body244:                                       ; preds = %if.then238.do.body244_crit_edge, %if.then234.do.body244_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_switch_function.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_switch_function, %if.then256)) #7
          to label %if.end261 [label %if.then256], !srcloc !336

if.then256:                                       ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #9
  %136 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %chip, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  %dev.i28 = getelementptr inbounds %struct.pci_dev, ptr %139, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_switch_function.__UNIQUE_ID_ddebug325, ptr noundef %dev.i28, ptr noundef nonnull @.str.88, i32 noundef %call235) #7
  br label %if.end261

if.end261:                                        ; preds = %if.then256, %do.body244, %do.end230.if.end261_crit_edge
  %140 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %sd_card1, align 4
  %142 = and i16 %141, 1279
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %142)
  %.not44 = icmp eq i16 %142, 1024
  br i1 %.not44, label %if.then272, label %if.end261.if.end277_crit_edge

if.end261.if.end277_crit_edge:                    ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end277

if.then272:                                       ; preds = %if.end261
  %call273 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -600, i8 noundef zeroext 6, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273)
  %tobool274.not = icmp eq i32 %call273, 0
  br i1 %tobool274.not, label %if.then272.if.end277_crit_edge, label %if.then272.cleanup_crit_edge

if.then272.cleanup_crit_edge:                     ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then272.if.end277_crit_edge:                   ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end277

if.end277:                                        ; preds = %if.then272.if.end277_crit_edge, %if.end261.if.end277_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end277, %if.then272.cleanup_crit_edge, %if.then238.cleanup_crit_edge, %if.end161.cleanup_crit_edge, %sd_set_sample_push_timing.exit.cleanup_crit_edge, %if.then151.cleanup_crit_edge, %if.then102, %if.then96, %if.then91, %if.then87.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end277 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.then87.cleanup_crit_edge ], [ 1, %if.then96 ], [ 1, %if.then102 ], [ 1, %if.then91 ], [ %call152, %if.then151.cleanup_crit_edge ], [ %.mux, %sd_set_sample_push_timing.exit.cleanup_crit_edge ], [ 1, %if.then238.cleanup_crit_edge ], [ %call273, %if.then272.cleanup_crit_edge ], [ 0, %if.end161.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_check_wp_state(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca [5 x i8], align 1
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %cmd) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #7
  %0 = call ptr @memset(ptr %buf, i32 255, i32 64)
  %sd_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 3
  %1 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sd_addr, align 4
  %call = tail call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 55, i32 noundef %2, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 77, ptr %cmd, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 0, ptr %3, align 1
  %call8 = call fastcc i32 @sd_read_data(ptr noundef %chip, i8 noundef zeroext 12, ptr noundef nonnull %cmd, i16 noundef zeroext 64, i8 noundef zeroext 1, ptr noundef nonnull %buf, i32 noundef 64, i32 noundef 250)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %do.body, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  %6 = ptrtoint ptr %sd_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sd_addr, align 4
  %call12 = call fastcc i32 @sd_send_cmd_get_rsp(ptr noundef %chip, i8 noundef zeroext 13, i32 noundef %7, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_check_wp_state.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_check_wp_state, %if.then17)) #7
          to label %do.body20 [label %if.then17], !srcloc !336

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_check_wp_state.__UNIQUE_ID_ddebug346, ptr noundef %dev.i, ptr noundef nonnull @.str.99) #7
  br label %do.body20

do.body20:                                        ; preds = %if.then17, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_check_wp_state.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_check_wp_state, %if.then32)) #7
          to label %do.end37 [label %if.then32], !srcloc !336

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %dev.i105 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_check_wp_state.__UNIQUE_ID_ddebug347, ptr noundef %dev.i105, ptr noundef nonnull @.str.68, i32 noundef 64, ptr noundef nonnull %buf) #7
  br label %do.end37

do.end37:                                         ; preds = %if.then32, %do.body20
  %arrayidx38 = getelementptr inbounds [64 x i8], ptr %buf, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %17 to i16
  %shl = shl nuw i16 %conv39, 8
  %arrayidx40 = getelementptr inbounds [64 x i8], ptr %buf, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %19 to i16
  %or = or i16 %shl, %conv41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_check_wp_state.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_check_wp_state, %if.then55)) #7
          to label %do.end60 [label %if.then55], !srcloc !336

if.then55:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %dev.i106 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %conv57 = zext i16 %or to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_check_wp_state.__UNIQUE_ID_ddebug348, ptr noundef %dev.i106, ptr noundef nonnull @.str.100, i32 noundef %conv57) #7
  br label %do.end60

do.end60:                                         ; preds = %if.then55, %do.end37
  %or.off = add i16 %or, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %or.off)
  %switch = icmp ult i16 %or.off, 2
  br i1 %switch, label %if.then67, label %do.end60.if.end71_crit_edge

do.end60.if.end71_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then67:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #9
  %card_wp = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 24
  %24 = ptrtoint ptr %card_wp to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %card_wp, align 1
  %26 = or i8 %25, 4
  store i8 %26, ptr %card_wp, align 1
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %do.end60.if.end71_crit_edge
  %27 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip, align 4
  %remap_addr = getelementptr inbounds %struct.rtsx_dev, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 20
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !343
  %32 = and i32 %31, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool73.not = icmp eq i32 %32, 0
  br i1 %tobool73.not, label %if.end71.cleanup_crit_edge, label %if.then74

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  %card_wp75 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 24
  %33 = ptrtoint ptr %card_wp75 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %card_wp75, align 1
  %35 = or i8 %34, 4
  store i8 %35, ptr %card_wp75, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %if.end71.cleanup_crit_edge, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then10 ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.then74 ], [ 0, %if.end71.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_check_switch_mode(ptr noundef %chip, i8 noundef zeroext %mode, i8 noundef zeroext %func_group, i8 noundef zeroext %func_to_switch) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca [5 x i8], align 1
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 4
  %4 = getelementptr inbounds i8, ptr %cmd, i32 2
  %5 = call ptr @memset(ptr %4, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #7
  %6 = call ptr @memset(ptr %buf, i32 255, i32 64)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_check_switch_mode.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_check_switch_mode, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !336

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %conv = zext i8 %mode to i32
  %conv6 = zext i8 %func_group to i32
  %conv7 = zext i8 %func_to_switch to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_check_switch_mode.__UNIQUE_ID_ddebug313, ptr noundef %dev.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.89, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 70, ptr %cmd, align 1
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %mode, ptr %0, align 1
  %13 = zext i8 %func_group to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.141)
  switch i8 %func_group, label %if.else38 [
    i8 1, label %if.then11
    i8 3, label %if.then20
    i8 4, label %if.then31
  ]

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %1, align 1
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %2, align 1
  %add = add i8 %func_to_switch, -16
  br label %if.end45

if.then20:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %1, align 1
  %add23 = add i8 %func_to_switch, -16
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %add23, ptr %2, align 1
  br label %if.end45

if.then31:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %1, align 1
  %shl = shl i8 %func_to_switch, 4
  %add34 = or i8 %shl, 15
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %add34, ptr %2, align 1
  br label %if.end45

if.else38:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %0, align 1
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %1, align 1
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %2, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.else38, %if.then31, %if.then20, %if.then11
  %.sink = phi i8 [ -1, %if.then20 ], [ -1, %if.else38 ], [ -1, %if.then31 ], [ %add, %if.then11 ]
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink, ptr %3, align 1
  %call47 = call fastcc i32 @sd_read_data(ptr noundef %chip, i8 noundef zeroext 12, ptr noundef nonnull %cmd, i16 noundef zeroext 64, i8 noundef zeroext 0, ptr noundef nonnull %buf, i32 noundef 64, i32 noundef 250)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48.not = icmp eq i32 %call47, 0
  br i1 %cmp48.not, label %do.body52, label %if.then50

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  br label %cleanup212

do.body52:                                        ; preds = %if.end45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_check_switch_mode.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_check_switch_mode, %if.then64)) #7
          to label %do.end69 [label %if.then64], !srcloc !336

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %dev.i20 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_check_switch_mode.__UNIQUE_ID_ddebug314, ptr noundef %dev.i20, ptr noundef nonnull @.str.68, i32 noundef 64, ptr noundef nonnull %buf) #7
  br label %do.end69

do.end69:                                         ; preds = %if.then64, %do.body52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %func_group)
  %cmp71 = icmp eq i8 %func_group, 0
  br i1 %cmp71, label %if.then73, label %if.else154

if.then73:                                        ; preds = %do.end69
  %arrayidx74 = getelementptr inbounds [64 x i8], ptr %buf, i32 0, i32 13
  %28 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx74, align 1
  %func_group1_mask = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 18
  %30 = ptrtoint ptr %func_group1_mask to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %func_group1_mask, align 2
  %arrayidx75 = getelementptr inbounds [64 x i8], ptr %buf, i32 0, i32 11
  %31 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx75, align 1
  %func_group2_mask = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 19
  %33 = ptrtoint ptr %func_group2_mask to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %func_group2_mask, align 1
  %arrayidx76 = getelementptr inbounds [64 x i8], ptr %buf, i32 0, i32 9
  %34 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx76, align 1
  %func_group3_mask = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 20
  %36 = ptrtoint ptr %func_group3_mask to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %func_group3_mask, align 4
  %arrayidx77 = getelementptr inbounds [64 x i8], ptr %buf, i32 0, i32 7
  %37 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx77, align 1
  %func_group4_mask = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 21
  %39 = ptrtoint ptr %func_group4_mask to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %func_group4_mask, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_check_switch_mode.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_check_switch_mode, %if.then90)) #7
          to label %do.body97 [label %if.then90], !srcloc !336

if.then90:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chip, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %dev.i21 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %44 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx74, align 1
  %conv93 = zext i8 %45 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_check_switch_mode.__UNIQUE_ID_ddebug315, ptr noundef %dev.i21, ptr noundef nonnull @.str.91, i32 noundef %conv93) #7
  br label %do.body97

do.body97:                                        ; preds = %if.then90, %if.then73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_check_switch_mode.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_check_switch_mode, %if.then109)) #7
          to label %do.body116 [label %if.then109], !srcloc !336

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chip, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %dev.i22 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %50 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx75, align 1
  %conv112 = zext i8 %51 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_check_switch_mode.__UNIQUE_ID_ddebug316, ptr noundef %dev.i22, ptr noundef nonnull @.str.92, i32 noundef %conv112) #7
  br label %do.body116

do.body116:                                       ; preds = %if.then109, %do.body97
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_check_switch_mode.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_check_switch_mode, %if.then128)) #7
          to label %do.body135 [label %if.then128], !srcloc !336

if.then128:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chip, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %dev.i23 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %56 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx76, align 1
  %conv131 = zext i8 %57 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_check_switch_mode.__UNIQUE_ID_ddebug317, ptr noundef %dev.i23, ptr noundef nonnull @.str.93, i32 noundef %conv131) #7
  br label %do.body135

do.body135:                                       ; preds = %if.then128, %do.body116
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_check_switch_mode.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_check_switch_mode, %if.then147)) #7
          to label %cleanup212 [label %if.then147], !srcloc !336

if.then147:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chip, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %dev.i24 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %62 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx77, align 1
  %conv150 = zext i8 %63 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_check_switch_mode.__UNIQUE_ID_ddebug318, ptr noundef %dev.i24, ptr noundef nonnull @.str.94, i32 noundef %conv150) #7
  br label %cleanup212

if.else154:                                       ; preds = %do.end69
  %64 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %buf, align 1
  %conv157 = zext i8 %65 to i16
  %shl158 = shl nuw i16 %conv157, 8
  %arrayidx159 = getelementptr inbounds [64 x i8], ptr %buf, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx159, align 1
  %conv160 = zext i8 %67 to i16
  %or = or i16 %shl158, %conv160
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_check_switch_mode.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_check_switch_mode, %if.then174)) #7
          to label %do.end179 [label %if.then174], !srcloc !336

if.then174:                                       ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %chip, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %dev.i25 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  %conv176 = zext i16 %or to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_check_switch_mode.__UNIQUE_ID_ddebug319, ptr noundef %dev.i25, ptr noundef nonnull @.str.95, i32 noundef %conv176) #7
  br label %do.end179

do.end179:                                        ; preds = %if.then174, %if.else154
  %72 = add i16 %or, -801
  call void @__sanitizer_cov_trace_const_cmp2(i16 -800, i16 %72)
  %73 = icmp ult i16 %72, -800
  br i1 %73, label %do.end179.cleanup.thread_crit_edge, label %if.end187

do.end179.cleanup.thread_crit_edge:               ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end187:                                        ; preds = %do.end179
  %74 = zext i8 %func_group to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %func_group, label %if.end187.cleanup.thread_crit_edge [
    i8 1, label %if.then.i
    i8 3, label %if.then9.i
    i8 4, label %if.then20.i
  ]

if.end187.cleanup.thread_crit_edge:               ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.then.i:                                        ; preds = %if.end187
  %switch.tableidx = add i8 %func_to_switch, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %75 = icmp ult i8 %switch.tableidx, 4
  br i1 %75, label %switch.lookup, label %if.then.i.cleanup.thread_crit_edge

if.then.i.cleanup.thread_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.then9.i:                                       ; preds = %if.end187
  %switch.tableidx39 = add i8 %func_to_switch, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx39)
  %76 = icmp ult i8 %switch.tableidx39, 3
  br i1 %76, label %switch.lookup38, label %if.then9.i.cleanup.thread_crit_edge

if.then9.i.cleanup.thread_crit_edge:              ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.then20.i:                                      ; preds = %if.end187
  %switch.tableidx43 = add i8 %func_to_switch, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx43)
  %77 = icmp ult i8 %switch.tableidx43, 3
  br i1 %77, label %switch.lookup42, label %if.then20.i.cleanup.thread_crit_edge

if.then20.i.cleanup.thread_crit_edge:             ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

switch.lookup:                                    ; preds = %if.then.i
  %78 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.sd_check_switch_mode, i32 0, i32 %78
  %79 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %79)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx.i = getelementptr inbounds i8, ptr %buf, i32 13
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i, align 1
  %conv34.i = zext i8 %81 to i32
  %and.i = and i32 %switch.load, %conv34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %switch.lookup.cleanup.thread_crit_edge, label %lor.lhs.false.i

switch.lookup.cleanup.thread_crit_edge:           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

lor.lhs.false.i:                                  ; preds = %switch.lookup
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast, 1
  %arrayidx36.i = getelementptr inbounds i8, ptr %buf, i32 16
  %82 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx36.i, align 1
  %84 = and i8 %83, 15
  %and38.i = zext i8 %84 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.offset, i32 %and38.i)
  %cmp40.not.i = icmp eq i32 %switch.offset, %and38.i
  br i1 %cmp40.not.i, label %lor.lhs.false.i.if.end44.i_crit_edge, label %lor.lhs.false.i.cleanup.thread_crit_edge

lor.lhs.false.i.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

lor.lhs.false.i.if.end44.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

switch.lookup38:                                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  %85 = sext i8 %switch.tableidx39 to i32
  %switch.gep40 = getelementptr inbounds [3 x i32], ptr @switch.table.sd_check_switch_mode.109, i32 0, i32 %85
  br label %if.end44.i.sink.split

switch.lookup42:                                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = sext i8 %switch.tableidx43 to i32
  %switch.gep44 = getelementptr inbounds [3 x i32], ptr @switch.table.sd_check_switch_mode.110, i32 0, i32 %86
  br label %if.end44.i.sink.split

if.end44.i.sink.split:                            ; preds = %switch.lookup42, %switch.lookup38
  %switch.gep44.sink = phi ptr [ %switch.gep44, %switch.lookup42 ], [ %switch.gep40, %switch.lookup38 ]
  %check_busy_offset.07.i.ph = phi i32 [ 23, %switch.lookup42 ], [ 25, %switch.lookup38 ]
  %87 = ptrtoint ptr %switch.gep44.sink to i32
  call void @__asan_load4_noabort(i32 %87)
  %switch.load45 = load i32, ptr %switch.gep44.sink, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.end44.i.sink.split, %lor.lhs.false.i.if.end44.i_crit_edge
  %check_busy_offset.07.i = phi i32 [ 29, %lor.lhs.false.i.if.end44.i_crit_edge ], [ %check_busy_offset.07.i.ph, %if.end44.i.sink.split ]
  %switch_busy.06.i = phi i32 [ %switch.load, %lor.lhs.false.i.if.end44.i_crit_edge ], [ %switch.load45, %if.end44.i.sink.split ]
  %arrayidx45.i = getelementptr inbounds i8, ptr %buf, i32 17
  %88 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx45.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %89)
  %cmp47.i = icmp eq i8 %89, 1
  br i1 %cmp47.i, label %land.lhs.true.i, label %if.end44.i.if.end193_crit_edge

if.end44.i.if.end193_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end193

land.lhs.true.i:                                  ; preds = %if.end44.i
  %arrayidx49.i = getelementptr i8, ptr %buf, i32 %check_busy_offset.07.i
  %90 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx49.i, align 1
  %conv50.i = zext i8 %91 to i32
  %and52.i = and i32 %switch_busy.06.i, %conv50.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and52.i, i32 %switch_busy.06.i)
  %cmp54.i = icmp eq i32 %and52.i, %switch_busy.06.i
  br i1 %cmp54.i, label %land.lhs.true.i.cleanup.thread_crit_edge, label %land.lhs.true.i.if.end193_crit_edge

land.lhs.true.i.if.end193_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end193

land.lhs.true.i.cleanup.thread_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end193:                                        ; preds = %land.lhs.true.i.if.end193_crit_edge, %if.end44.i.if.end193_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 400, i16 %or)
  %cmp195 = icmp ugt i16 %or, 400
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %func_to_switch)
  %cmp199 = icmp ugt i8 %func_to_switch, 1
  %or.cond1 = or i1 %cmp199, %cmp195
  br i1 %or.cond1, label %if.then201, label %if.end193.cleanup212_crit_edge

if.end193.cleanup212_crit_edge:                   ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup212

if.then201:                                       ; preds = %if.end193
  %sd_800mA_ocp_thd = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 114
  %92 = ptrtoint ptr %sd_800mA_ocp_thd to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %sd_800mA_ocp_thd, align 4
  %call202 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -999, i8 noundef zeroext 7, i8 noundef zeroext %93) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %if.end205, label %if.then201.cleanup.thread_crit_edge

if.then201.cleanup.thread_crit_edge:              ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end205:                                        ; preds = %if.then201
  %call206 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -688, i8 noundef zeroext 16, i8 noundef zeroext 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %if.end205.cleanup212_crit_edge, label %if.end205.cleanup.thread_crit_edge

if.end205.cleanup.thread_crit_edge:               ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end205.cleanup212_crit_edge:                   ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup212

cleanup.thread:                                   ; preds = %if.end205.cleanup.thread_crit_edge, %if.then201.cleanup.thread_crit_edge, %land.lhs.true.i.cleanup.thread_crit_edge, %lor.lhs.false.i.cleanup.thread_crit_edge, %switch.lookup.cleanup.thread_crit_edge, %if.then20.i.cleanup.thread_crit_edge, %if.then9.i.cleanup.thread_crit_edge, %if.then.i.cleanup.thread_crit_edge, %if.end187.cleanup.thread_crit_edge, %do.end179.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ %call206, %if.end205.cleanup.thread_crit_edge ], [ %call202, %if.then201.cleanup.thread_crit_edge ], [ 1, %do.end179.cleanup.thread_crit_edge ], [ 1, %if.then.i.cleanup.thread_crit_edge ], [ 1, %if.then9.i.cleanup.thread_crit_edge ], [ 1, %if.then20.i.cleanup.thread_crit_edge ], [ 1, %lor.lhs.false.i.cleanup.thread_crit_edge ], [ 1, %switch.lookup.cleanup.thread_crit_edge ], [ 1, %land.lhs.true.i.cleanup.thread_crit_edge ], [ 1, %if.end187.cleanup.thread_crit_edge ]
  br label %cleanup212

cleanup212:                                       ; preds = %cleanup.thread, %if.end205.cleanup212_crit_edge, %if.end193.cleanup212_crit_edge, %if.then147, %do.body135, %if.then50
  %retval.1 = phi i32 [ 1, %if.then50 ], [ %retval.0.ph, %cleanup.thread ], [ 0, %if.end193.cleanup212_crit_edge ], [ 0, %if.end205.cleanup212_crit_edge ], [ 0, %do.body135 ], [ 0, %if.then147 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cmd) #7
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_check_switch(ptr noundef %chip, i8 noundef zeroext %func_group, i8 noundef zeroext %func_to_switch, i8 noundef zeroext %bus_width) #0 align 64 {
entry:
  %stat = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %__here.for.body_crit_edge, %entry
  %func_to_switch.addr.0146 = phi i8 [ %func_to_switch, %entry ], [ %func_to_switch.addr.0.i, %__here.for.body_crit_edge ]
  %i.0145 = phi i32 [ 0, %entry ], [ %inc, %__here.for.body_crit_edge ]
  %call = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2.not = icmp eq i32 %call, 0
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 1
  %0 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %err_code2.i, align 2
  %or5.i = or i8 %1, 32
  store i8 %or5.i, ptr %err_code2.i, align 2
  br label %cleanup105

if.end:                                           ; preds = %for.body
  %call3 = call fastcc i32 @sd_check_switch_mode(ptr noundef %chip, i8 noundef zeroext 0, i8 noundef zeroext %func_group, i8 noundef zeroext %func_to_switch.addr.0146)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stat) #7
  %2 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %stat, align 1, !annotation !337
  %call6 = call fastcc i32 @sd_check_switch_mode(ptr noundef %chip, i8 noundef zeroext -128, i8 noundef zeroext %func_group, i8 noundef zeroext %func_to_switch.addr.0146)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %for.end.thread, label %if.end9

for.end.thread:                                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat) #7
  br label %cleanup105

if.end9:                                          ; preds = %if.then5
  %call10 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -605, ptr noundef nonnull %stat) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end12, label %if.end9.cleanup.thread_crit_edge

if.end9.cleanup.thread_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end12:                                         ; preds = %if.end9
  %3 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %stat, align 1
  %5 = and i8 %4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool13.not = icmp eq i8 %5, 0
  br i1 %tobool13.not, label %cleanup.thread135, label %do.body

cleanup.thread135:                                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat) #7
  br label %if.end23

do.body:                                          ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_check_switch.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_check_switch, %if.then19)) #7
          to label %cleanup [label %if.then19], !srcloc !336

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_check_switch.__UNIQUE_ID_ddebug320, ptr noundef %dev.i, ptr noundef nonnull @.str.97) #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then19, %if.end9.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ 1, %if.then19 ], [ %call10, %if.end9.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat) #7
  br label %cleanup105

cleanup:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat) #7
  br label %cleanup105

if.end23:                                         ; preds = %cleanup.thread135, %if.end.if.end23_crit_edge
  %10 = zext i8 %func_group to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.143)
  switch i8 %func_group, label %if.end23.__here_crit_edge [
    i8 1, label %if.then.i
    i8 4, label %if.then9.i
  ]

if.end23.__here_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %func_to_switch.addr.0146)
  %cmp3.i = icmp ugt i8 %func_to_switch.addr.0146, 1
  %dec.i = sext i1 %cmp3.i to i8
  %spec.select.i = add i8 %func_to_switch.addr.0146, %dec.i
  br label %__here

if.then9.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %func_to_switch.addr.0146)
  %cmp11.not.i = icmp eq i8 %func_to_switch.addr.0146, 0
  %dec14.i = add i8 %func_to_switch.addr.0146, -1
  %spec.select23.i = select i1 %cmp11.not.i, i8 0, i8 %dec14.i
  br label %__here

__here:                                           ; preds = %if.then9.i, %if.then.i, %if.end23.__here_crit_edge
  %func_to_switch.addr.0.i = phi i8 [ %spec.select.i, %if.then.i ], [ %func_to_switch.addr.0146, %if.end23.__here_crit_edge ], [ %spec.select23.i, %if.then9.i ]
  %11 = call i32 @llvm.read_register.i32(metadata !326) #7
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 212
  %15 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 ptrtoint (ptr blockaddress(@sd_check_switch, %__here) to i32), ptr %task_state_change, align 4
  %16 = load ptr, ptr %task, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %16, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !351
  %call99 = call i32 @schedule_timeout(i32 noundef 2) #7
  %inc = add nuw nsw i32 %i.0145, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %__here.cleanup105_crit_edge, label %__here.for.body_crit_edge

__here.for.body_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

__here.cleanup105_crit_edge:                      ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup105

cleanup105:                                       ; preds = %__here.cleanup105_crit_edge, %cleanup, %cleanup.thread, %for.end.thread, %if.then
  %retval.3 = phi i32 [ 1, %if.then ], [ 1, %cleanup ], [ %retval.1.ph, %cleanup.thread ], [ 0, %for.end.thread ], [ 1, %__here.cleanup105_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_read_ppbuf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !55, !56, !57, !59, !60, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !98, !99, !101, !102, !104, !106, !107, !109, !110, !112, !113, !115, !117, !118, !119, !121, !122, !124, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !148, !150, !151, !153, !154, !156, !158, !160, !161, !162, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !186, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !212, !213, !215, !217, !218, !219, !221, !222, !224, !225, !227, !228, !230, !231, !233, !234, !236, !237, !239, !240, !242, !243, !244, !246, !247, !249, !251, !253, !255, !256, !258, !260, !262, !264, !265, !266, !268, !269, !270, !272, !273, !275, !276, !278, !279, !281, !282, !283, !285, !287, !288, !290, !291, !293, !294, !296, !297, !299, !300, !302, !303, !304, !306, !308, !309, !310, !312, !314, !315, !317, !318, !319, !321, !322, !323, !325}
!llvm.named.register.sp = !{!326}
!llvm.module.flags = !{!327, !328, !329, !330, !331, !332, !333, !334}
!llvm.ident = !{!335}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rts5208/sd.c", i32 3125, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @reset_sd_card.__UNIQUE_ID_ddebug360, !1, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rts5208/sd.c", i32 3295, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @sd_rw.__UNIQUE_ID_ddebug362, !7, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rts5208/sd.c", i32 3299, i32 3}
!14 = !{ptr @sd_rw.__UNIQUE_ID_ddebug363, !13, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/rts5208/sd.c", i32 3417, i32 4}
!17 = !{ptr @sd_rw.__UNIQUE_ID_ddebug364, !16, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/rts5208/sd.c", i32 3510, i32 4}
!20 = !{ptr @sd_rw.__UNIQUE_ID_ddebug365, !19, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/rts5208/sd.c", i32 3525, i32 4}
!23 = !{ptr @sd_rw.__UNIQUE_ID_ddebug366, !22, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!24 = !{ptr @sd_rw.__UNIQUE_ID_ddebug367, !25, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!25 = !{!"../drivers/staging/rts5208/sd.c", i32 3549, i32 3}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/rts5208/sd.c", i32 3586, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ext_sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug368, !27, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../drivers/staging/rts5208/sd.c", i32 3659, i32 5}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/rts5208/sd.c", i32 3733, i32 3}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ext_sd_get_rsp.__UNIQUE_ID_ddebug370, !33, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/rts5208/sd.c", i32 3734, i32 3}
!38 = !{ptr @ext_sd_get_rsp.__UNIQUE_ID_ddebug371, !37, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/rts5208/sd.c", i32 4023, i32 2}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @sd_execute_read_data.__UNIQUE_ID_ddebug374, !40, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/rts5208/sd.c", i32 4436, i32 4}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @sd_execute_write_data.__UNIQUE_ID_ddebug377, !44, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/rts5208/sd.c", i32 4489, i32 4}
!49 = !{ptr @sd_execute_write_data.__UNIQUE_ID_ddebug378, !48, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/rts5208/sd.c", i32 4498, i32 3}
!52 = !{ptr @sd_execute_write_data.__UNIQUE_ID_ddebug379, !51, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/rts5208/sd.c", i32 4573, i32 2}
!55 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @sd_get_cmd_rsp.__UNIQUE_ID_ddebug380, !54, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/rts5208/sd.c", i32 4574, i32 2}
!59 = !{ptr @sd_get_cmd_rsp.__UNIQUE_ID_ddebug381, !58, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/rts5208/sd.c", i32 4651, i32 3}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @sd_cleanup_work.__UNIQUE_ID_ddebug382, !61, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!64 = distinct !{null, !65, !"REG_SD_CFG1", i1 false, i1 false}
!65 = !{!"../drivers/staging/rts5208/sd.c", i32 21, i32 12}
!66 = distinct !{null, !67, !"REG_SD_CFG2", i1 false, i1 false}
!67 = !{!"../drivers/staging/rts5208/sd.c", i32 22, i32 12}
!68 = distinct !{null, !69, !"REG_SD_STAT1", i1 false, i1 false}
!69 = !{!"../drivers/staging/rts5208/sd.c", i32 24, i32 12}
!70 = distinct !{null, !71, !"REG_SD_CMD0", i1 false, i1 false}
!71 = !{!"../drivers/staging/rts5208/sd.c", i32 30, i32 12}
!72 = distinct !{null, !73, !"REG_SD_CMD1", i1 false, i1 false}
!73 = !{!"../drivers/staging/rts5208/sd.c", i32 31, i32 12}
!74 = distinct !{null, !75, !"REG_SD_CMD2", i1 false, i1 false}
!75 = !{!"../drivers/staging/rts5208/sd.c", i32 32, i32 12}
!76 = distinct !{null, !77, !"REG_SD_CMD3", i1 false, i1 false}
!77 = !{!"../drivers/staging/rts5208/sd.c", i32 33, i32 12}
!78 = distinct !{null, !79, !"REG_SD_CMD4", i1 false, i1 false}
!79 = !{!"../drivers/staging/rts5208/sd.c", i32 34, i32 12}
!80 = distinct !{null, !81, !"REG_SD_CMD5", i1 false, i1 false}
!81 = !{!"../drivers/staging/rts5208/sd.c", i32 35, i32 12}
!82 = distinct !{null, !83, !"REG_SD_BYTE_CNT_L", i1 false, i1 false}
!83 = !{!"../drivers/staging/rts5208/sd.c", i32 36, i32 12}
!84 = distinct !{null, !85, !"REG_SD_BYTE_CNT_H", i1 false, i1 false}
!85 = !{!"../drivers/staging/rts5208/sd.c", i32 37, i32 12}
!86 = distinct !{null, !87, !"REG_SD_BLOCK_CNT_L", i1 false, i1 false}
!87 = !{!"../drivers/staging/rts5208/sd.c", i32 38, i32 12}
!88 = distinct !{null, !89, !"REG_SD_BLOCK_CNT_H", i1 false, i1 false}
!89 = !{!"../drivers/staging/rts5208/sd.c", i32 39, i32 12}
!90 = distinct !{null, !91, !"REG_SD_TRANSFER", i1 false, i1 false}
!91 = !{!"../drivers/staging/rts5208/sd.c", i32 40, i32 12}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/staging/rts5208/sd.c", i32 125, i32 2}
!94 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug287, !93, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!96 = !{ptr @.str.30, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/rts5208/sd.c", i32 170, i32 3}
!98 = !{ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug288, !97, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!99 = !{ptr @.str.31, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/staging/rts5208/sd.c", i32 173, i32 3}
!101 = !{ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug289, !100, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../drivers/staging/rts5208/sd.c", i32 211, i32 5}
!104 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/rts5208/sd.c", i32 233, i32 5}
!106 = !{ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug291, !105, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!107 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/staging/rts5208/sd.c", i32 238, i32 5}
!109 = !{ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug292, !108, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!110 = !{ptr @.str.34, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/rts5208/sd.c", i32 243, i32 5}
!112 = !{ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug293, !111, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!113 = distinct !{null, !114, !"REG_SD_CFG3", i1 false, i1 false}
!114 = !{!"../drivers/staging/rts5208/sd.c", i32 23, i32 12}
!115 = !{ptr @.str.35, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/staging/rts5208/sd.c", i32 1824, i32 2}
!117 = !{ptr @.str.36, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @sd_ddr_pre_tuning_tx.__UNIQUE_ID_ddebug338, !116, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!119 = !{ptr @.str.37, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/staging/rts5208/sd.c", i32 1835, i32 2}
!121 = !{ptr @sd_ddr_pre_tuning_tx.__UNIQUE_ID_ddebug339, !120, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!122 = !{ptr @.str.38, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/rts5208/sd.c", i32 1658, i32 3}
!124 = !{ptr @.str.39, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @sd_search_final_phase.__UNIQUE_ID_ddebug329, !123, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!126 = !{ptr @.str.40, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/staging/rts5208/sd.c", i32 1688, i32 3}
!128 = !{ptr @sd_search_final_phase.__UNIQUE_ID_ddebug330, !127, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!129 = !{ptr @.str.41, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/staging/rts5208/sd.c", i32 1690, i32 3}
!131 = !{ptr @sd_search_final_phase.__UNIQUE_ID_ddebug331, !130, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!132 = !{ptr @.str.42, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/staging/rts5208/sd.c", i32 1691, i32 3}
!134 = !{ptr @sd_search_final_phase.__UNIQUE_ID_ddebug332, !133, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!135 = !{ptr @.str.43, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/staging/rts5208/sd.c", i32 1692, i32 3}
!137 = !{ptr @sd_search_final_phase.__UNIQUE_ID_ddebug333, !136, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!138 = !{ptr @.str.44, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/staging/rts5208/sd.c", i32 1693, i32 3}
!140 = !{ptr @sd_search_final_phase.__UNIQUE_ID_ddebug334, !139, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!141 = !{ptr @.str.45, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/staging/rts5208/sd.c", i32 1727, i32 2}
!143 = !{ptr @sd_search_final_phase.__UNIQUE_ID_ddebug335, !142, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!144 = !{ptr @.str.46, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/staging/rts5208/sd.c", i32 823, i32 2}
!146 = !{ptr @.str.47, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @sd_change_phase.__UNIQUE_ID_ddebug308, !145, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!148 = !{ptr @.str.48, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/staging/rts5208/sd.c", i32 858, i32 3}
!150 = !{ptr @sd_change_phase.__UNIQUE_ID_ddebug309, !149, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!151 = !{ptr @.str.49, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/staging/rts5208/sd.c", i32 860, i32 3}
!153 = !{ptr @sd_change_phase.__UNIQUE_ID_ddebug310, !152, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!154 = !{ptr @sd_change_phase.__UNIQUE_ID_ddebug311, !155, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!155 = !{!"../drivers/staging/rts5208/sd.c", i32 932, i32 2}
!156 = !{ptr @sd_change_phase.__UNIQUE_ID_ddebug312, !157, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!157 = !{!"../drivers/staging/rts5208/sd.c", i32 934, i32 2}
!158 = !{ptr @.str.50, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/staging/rts5208/sd.c", i32 1769, i32 3}
!160 = !{ptr @.str.51, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @sd_tuning_rx.__UNIQUE_ID_ddebug336, !159, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!162 = !{ptr @.str.52, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/staging/rts5208/sd.c", i32 1772, i32 2}
!164 = !{ptr @sd_tuning_rx.__UNIQUE_ID_ddebug337, !163, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!165 = !{ptr @.str.53, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/staging/rts5208/sd.c", i32 1463, i32 2}
!167 = !{ptr @.str.54, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @sd_ddr_tuning_rx_cmd.__UNIQUE_ID_ddebug327, !166, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!169 = !{ptr @.str.55, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/staging/rts5208/sd.c", i32 1421, i32 2}
!171 = !{ptr @.str.56, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @sd_wait_data_idle.__UNIQUE_ID_ddebug326, !170, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!173 = !{ptr @.str.57, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/staging/rts5208/sd.c", i32 1505, i32 2}
!175 = !{ptr @.str.58, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @mmc_ddr_tuning_rx_cmd.__UNIQUE_ID_ddebug328, !174, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!177 = !{ptr @.str.59, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/staging/rts5208/sd.c", i32 1881, i32 3}
!179 = !{ptr @.str.60, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @sd_tuning_tx.__UNIQUE_ID_ddebug340, !178, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!181 = !{ptr @.str.61, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/staging/rts5208/sd.c", i32 1884, i32 2}
!183 = !{ptr @sd_tuning_tx.__UNIQUE_ID_ddebug341, !182, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!184 = !{ptr @.str.62, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/staging/rts5208/sd.c", i32 354, i32 3}
!186 = !{ptr @sd_write_data.__UNIQUE_ID_ddebug297, !185, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!187 = distinct !{null, !188, !"REG_SD_STAT2", i1 false, i1 false}
!188 = !{!"../drivers/staging/rts5208/sd.c", i32 25, i32 12}
!189 = distinct !{null, !190, !"REG_SD_BUS_STAT", i1 false, i1 false}
!190 = !{!"../drivers/staging/rts5208/sd.c", i32 26, i32 12}
!191 = distinct !{null, !192, !"REG_SD_PAD_CTL", i1 false, i1 false}
!192 = !{!"../drivers/staging/rts5208/sd.c", i32 27, i32 12}
!193 = distinct !{null, !194, !"REG_SD_SAMPLE_POINT_CTL", i1 false, i1 false}
!194 = !{!"../drivers/staging/rts5208/sd.c", i32 28, i32 12}
!195 = distinct !{null, !196, !"REG_SD_PUSH_POINT_CTL", i1 false, i1 false}
!196 = !{!"../drivers/staging/rts5208/sd.c", i32 29, i32 12}
!197 = distinct !{null, !198, !"REG_SD_VPCLK0_CTL", i1 false, i1 false}
!198 = !{!"../drivers/staging/rts5208/sd.c", i32 41, i32 12}
!199 = distinct !{null, !200, !"REG_SD_VPCLK1_CTL", i1 false, i1 false}
!200 = !{!"../drivers/staging/rts5208/sd.c", i32 42, i32 12}
!201 = distinct !{null, !202, !"REG_SD_DCMPS0_CTL", i1 false, i1 false}
!202 = !{!"../drivers/staging/rts5208/sd.c", i32 43, i32 12}
!203 = distinct !{null, !204, !"REG_SD_DCMPS1_CTL", i1 false, i1 false}
!204 = !{!"../drivers/staging/rts5208/sd.c", i32 44, i32 12}
!205 = distinct !{null, !206, !"__already_done", i1 false, i1 false}
!206 = !{!"../drivers/staging/rts5208/sd.c", i32 2149, i32 3}
!207 = distinct !{null, !208, !"__already_done", i1 false, i1 false}
!208 = !{!"../drivers/staging/rts5208/sd.c", i32 2171, i32 3}
!209 = !{ptr @.str.64, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/staging/rts5208/sd.c", i32 2175, i32 4}
!211 = !{ptr @.str.65, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @sd_init_power.__UNIQUE_ID_ddebug344, !210, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!213 = distinct !{null, !214, !"__already_done", i1 false, i1 false}
!214 = !{!"../drivers/staging/rts5208/sd.c", i32 2928, i32 3}
!215 = !{ptr @.str.66, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/staging/rts5208/sd.c", i32 418, i32 2}
!217 = !{ptr @.str.67, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @sd_check_csd.__UNIQUE_ID_ddebug300, !216, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!219 = !{ptr @.str.68, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/staging/rts5208/sd.c", i32 419, i32 2}
!221 = !{ptr @sd_check_csd.__UNIQUE_ID_ddebug301, !220, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!222 = !{ptr @.str.69, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/staging/rts5208/sd.c", i32 422, i32 2}
!224 = !{ptr @sd_check_csd.__UNIQUE_ID_ddebug302, !223, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!225 = !{ptr @.str.70, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/staging/rts5208/sd.c", i32 491, i32 3}
!227 = !{ptr @sd_check_csd.__UNIQUE_ID_ddebug303, !226, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!228 = !{ptr @.str.71, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/staging/rts5208/sd.c", i32 2761, i32 2}
!230 = !{ptr @mmc_switch_timing_bus.__UNIQUE_ID_ddebug358, !229, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!231 = !{ptr @.str.72, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/staging/rts5208/sd.c", i32 2675, i32 2}
!233 = !{ptr @mmc_test_switch_bus.__UNIQUE_ID_ddebug355, !232, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!234 = !{ptr @.str.73, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/staging/rts5208/sd.c", i32 2714, i32 3}
!236 = !{ptr @mmc_test_switch_bus.__UNIQUE_ID_ddebug356, !235, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!237 = !{ptr @.str.74, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/staging/rts5208/sd.c", i32 2732, i32 3}
!239 = !{ptr @mmc_test_switch_bus.__UNIQUE_ID_ddebug357, !238, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!240 = !{ptr @.str.75, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/staging/rts5208/sd.c", i32 2335, i32 6}
!242 = !{ptr @.str.76, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @reset_sd.__UNIQUE_ID_ddebug349, !241, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!244 = !{ptr @.str.77, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/staging/rts5208/sd.c", i32 2349, i32 3}
!246 = !{ptr @reset_sd.__UNIQUE_ID_ddebug350, !245, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!247 = distinct !{null, !248, !"__already_done", i1 false, i1 false}
!248 = !{!"../drivers/staging/rts5208/sd.c", i32 2359, i32 2}
!249 = distinct !{null, !250, !"__already_done", i1 false, i1 false}
!250 = !{!"../drivers/staging/rts5208/sd.c", i32 2378, i32 3}
!251 = distinct !{null, !252, !"__already_done", i1 false, i1 false}
!252 = !{!"../drivers/staging/rts5208/sd.c", i32 2408, i32 3}
!253 = !{ptr @.str.80, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/staging/rts5208/sd.c", i32 2425, i32 2}
!255 = !{ptr @reset_sd.__UNIQUE_ID_ddebug354, !254, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!256 = distinct !{null, !257, !"__already_done", i1 false, i1 false}
!257 = !{!"../drivers/staging/rts5208/sd.c", i32 2197, i32 2}
!258 = distinct !{null, !259, !"__already_done", i1 false, i1 false}
!259 = !{!"../drivers/staging/rts5208/sd.c", i32 760, i32 2}
!260 = distinct !{null, !261, !"__already_done", i1 false, i1 false}
!261 = !{!"../drivers/staging/rts5208/sd.c", i32 766, i32 2}
!262 = distinct !{null, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/staging/rts5208/sd.c", i32 775, i32 3}
!264 = distinct !{null, !263, !"<string literal>", i1 false, i1 false}
!265 = distinct !{null, !263, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!266 = !{ptr @.str.84, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/staging/rts5208/sd.c", i32 1290, i32 2}
!268 = !{ptr @.str.85, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @sd_switch_function.__UNIQUE_ID_ddebug322, !267, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!270 = !{ptr @.str.86, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/staging/rts5208/sd.c", i32 1298, i32 3}
!272 = !{ptr @sd_switch_function.__UNIQUE_ID_ddebug323, !271, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!273 = !{ptr @.str.87, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/staging/rts5208/sd.c", i32 1382, i32 2}
!275 = !{ptr @sd_switch_function.__UNIQUE_ID_ddebug324, !274, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!276 = !{ptr @.str.88, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/staging/rts5208/sd.c", i32 1392, i32 3}
!278 = !{ptr @sd_switch_function.__UNIQUE_ID_ddebug325, !277, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!279 = !{ptr @.str.89, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/staging/rts5208/sd.c", i32 1095, i32 2}
!281 = !{ptr @.str.90, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @sd_check_switch_mode.__UNIQUE_ID_ddebug313, !280, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!283 = !{ptr @sd_check_switch_mode.__UNIQUE_ID_ddebug314, !284, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!284 = !{!"../drivers/staging/rts5208/sd.c", i32 1127, i32 2}
!285 = !{ptr @.str.91, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/staging/rts5208/sd.c", i32 1135, i32 3}
!287 = !{ptr @sd_check_switch_mode.__UNIQUE_ID_ddebug315, !286, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!288 = !{ptr @.str.92, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/staging/rts5208/sd.c", i32 1137, i32 3}
!290 = !{ptr @sd_check_switch_mode.__UNIQUE_ID_ddebug316, !289, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!291 = !{ptr @.str.93, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/staging/rts5208/sd.c", i32 1139, i32 3}
!293 = !{ptr @sd_check_switch_mode.__UNIQUE_ID_ddebug317, !292, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!294 = !{ptr @.str.94, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/staging/rts5208/sd.c", i32 1141, i32 3}
!296 = !{ptr @sd_check_switch_mode.__UNIQUE_ID_ddebug318, !295, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!297 = !{ptr @.str.95, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/staging/rts5208/sd.c", i32 1149, i32 3}
!299 = !{ptr @sd_check_switch_mode.__UNIQUE_ID_ddebug319, !298, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!300 = !{ptr @.str.96, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/staging/rts5208/sd.c", i32 1221, i32 5}
!302 = !{ptr @.str.97, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @sd_check_switch.__UNIQUE_ID_ddebug320, !301, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!304 = distinct !{null, !305, !"__already_done", i1 false, i1 false}
!305 = !{!"../drivers/staging/rts5208/sd.c", i32 1229, i32 3}
!306 = !{ptr @.str.98, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/staging/rts5208/sd.c", i32 2267, i32 2}
!308 = !{ptr @.str.99, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @sd_check_wp_state.__UNIQUE_ID_ddebug346, !307, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!310 = !{ptr @sd_check_wp_state.__UNIQUE_ID_ddebug347, !311, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!311 = !{!"../drivers/staging/rts5208/sd.c", i32 2268, i32 2}
!312 = !{ptr @.str.100, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/staging/rts5208/sd.c", i32 2271, i32 2}
!314 = !{ptr @sd_check_wp_state.__UNIQUE_ID_ddebug348, !313, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!315 = !{ptr @.str.101, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/staging/rts5208/sd.c", i32 3177, i32 2}
!317 = !{ptr @.str.102, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @reset_mmc_only.__UNIQUE_ID_ddebug361, !316, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!319 = !{ptr @.str.103, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/staging/rts5208/sd.c", i32 656, i32 2}
!321 = !{ptr @.str.104, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @sd_update_lock_status.__UNIQUE_ID_ddebug304, !320, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!323 = !{ptr @.str.105, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/staging/rts5208/sd.c", i32 280, i32 3}
!325 = !{ptr @sd_read_data.__UNIQUE_ID_ddebug294, !324, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!326 = !{!"sp"}
!327 = !{i32 1, !"wchar_size", i32 2}
!328 = !{i32 1, !"min_enum_size", i32 4}
!329 = !{i32 8, !"branch-target-enforcement", i32 0}
!330 = !{i32 8, !"sign-return-address", i32 0}
!331 = !{i32 8, !"sign-return-address-all", i32 0}
!332 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!333 = !{i32 7, !"uwtable", i32 1}
!334 = !{i32 7, !"frame-pointer", i32 2}
!335 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!336 = !{i64 2148385278, i64 2148385283, i64 2148385296, i64 2148385340, i64 2148385374, i64 2148385395}
!337 = !{!"auto-init"}
!338 = !{i64 2155268687}
!339 = !{i64 2155410492}
!340 = !{i64 2155415647}
!341 = !{i64 2155474683}
!342 = !{i64 6061945}
!343 = !{i64 2153602294}
!344 = !{i64 2155444309}
!345 = !{i64 2155449314}
!346 = !{i64 2155454394}
!347 = !{i64 2155508157}
!348 = !{ptr @mmc_ddr_tuning_rx_cmd, ptr @sd_ddr_tuning_rx_cmd, ptr @sd_sdr_tuning_rx_cmd}
!349 = !{ptr @sd_ddr_tuning_tx_cmd, ptr @sd_sdr_tuning_tx_cmd}
!350 = !{i64 2155427089}
!351 = !{i64 2155353395}
