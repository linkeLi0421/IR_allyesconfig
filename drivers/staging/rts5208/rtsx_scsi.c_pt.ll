; ModuleID = '/llk/IR_all_yes/drivers/staging/rts5208/rtsx_scsi.c_pt.bc'
source_filename = "../drivers/staging/rts5208/rtsx_scsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.rtsx_chip = type { ptr, i32, i8, ptr, ptr, i32, i32, ptr, i32, i32, ptr, [8 x %struct.sense_data_t], i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [8 x i8], [8 x i32], [8 x ptr], [8 x i32], [32 x i8], [8 x i8], [8 x i32], i32, i32, i32, %struct.sd_info, %struct.xd_info, %struct.ms_info, %struct.spi_info, i32, i32, i32, i32, i32, i32, [12 x i8], i8, i8, i8, i32, i32, i32, i16, i16, i8, i32, i32, [2 x i8], i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32 }
%struct.sense_data_t = type { i8, i8, i8, [4 x i8], i8, [4 x i8], i8, i8, i8, [3 x i8] }
%struct.sd_info = type { i16, i8, i8, i32, i32, [16 x i8], [8 x i8], i32, i32, i32, i16, i32, i32, i32, i32, i32, i8, [17 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.xd_info = type { i8, i8, i8, i8, i8, i16, i8, i8, i32, ptr, i32, %struct.xd_delay_write_tag, i32, i32 }
%struct.xd_delay_write_tag = type { i32, i32, i32, i8, i8 }
%struct.ms_info = type { i16, i8, i8, i16, i16, i32, i8, i8, i8, ptr, i32, i32, i32, i16, [96 x i8], [48 x i8], i8, i8, i32, i32, i16, i32, %struct.ms_delay_write_tag, i32, i32, [16 x i8], i8, i32 }
%struct.ms_delay_write_tag = type { i16, i16, i16, i8, i8 }
%struct.spi_info = type { i8, i8, i16, i8, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
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
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rtsx_dev = type { ptr, i32, ptr, i32, %struct.spinlock, ptr, ptr, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.wait_queue_head, %struct.mutex, ptr, i32, i8, i8, ptr, i32, ptr }

@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"REZERO_UNIT\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"REQUEST_SENSE\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FORMAT_UNIT\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"READ_BLOCK_LIMITS\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"REASSIGN_BLOCKS\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"READ_6\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WRITE_6\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SEEK_6\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"READ_REVERSE\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WRITE_FILEMARKS\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SPACE\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INQUIRY\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RECOVER_BUFFERED_DATA\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MODE_SELECT\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RESERVE\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RELEASE\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"COPY\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ERASE\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MODE_SENSE\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"START_STOP\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RECEIVE_DIAGNOSTIC\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SEND_DIAGNOSTIC\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ALLOW_MEDIUM_REMOVAL\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SET_WINDOW\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"READ_CAPACITY\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"READ_10\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WRITE_10\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SEEK_10\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WRITE_VERIFY\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VERIFY\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SEARCH_HIGH\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SEARCH_EQUAL\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SEARCH_LOW\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SET_LIMITS\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"READ_POSITION\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SYNCHRONIZE_CACHE\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LOCK_UNLOCK_CACHE\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"READ_DEFECT_DATA\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MEDIUM_SCAN\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"COMPARE\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"COPY_VERIFY\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WRITE_BUFFER\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"READ_BUFFER\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"UPDATE_BLOCK\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"READ_LONG\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WRITE_LONG\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CHANGE_DEFINITION\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WRITE_SAME\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"READ SUBCHANNEL\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"READ_TOC\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"READ HEADER\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PLAY AUDIO (10)\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PLAY AUDIO MSF\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"GET EVENT/STATUS NOTIFICATION\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PAUSE/RESUME\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LOG_SELECT\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LOG_SENSE\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"STOP PLAY/SCAN\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"READ DISC INFORMATION\00", [42 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"READ TRACK INFORMATION\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RESERVE TRACK\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SEND OPC\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MODE_SELECT_10\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"REPAIR TRACK\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"READ MASTER CUE\00", [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MODE_SENSE_10\00", [18 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CLOSE TRACK/SESSION\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"READ BUFFER CAPACITY\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SEND CUE SHEET\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BLANK\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"REPORT LUNS\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MOVE_MEDIUM or PLAY AUDIO (12)\00", [33 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"READ_12\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WRITE_12\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WRITE_VERIFY_12\00", [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SEARCH_HIGH_12\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SEARCH_EQUAL_12\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SEARCH_LOW_12\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SEND_VOLUME_TAG\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"READ_ELEMENT_STATUS\00", [44 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"READ CD MSF\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SCAN\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SET CD SPEED\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MECHANISM STATUS\00", [47 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"READ CD\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"WRITE CONTINUE\00", [17 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WRITE_LONG_2\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Realtek's vendor command\00", [39 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(unknown command)\00", [46 x i8] zeroinitializer }, align 32
@scsi_show_command.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, i8 0, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rts5208\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"scsi_show_command\00", [46 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/staging/rts5208/rtsx_scsi.c\00", [60 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Command %s (%d bytes)\0A\00", [41 x i8] zeroinitializer }, align 32
@scsi_show_command.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*ph\0A\00", [26 x i8] zeroinitializer }, align 32
@read_write.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.90, ptr @.str.95, ptr @.str.92, ptr @.str.96, i8 0, i8 -40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"read_write\00", [21 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SD card being erased!\0A\00", [41 x i8] zeroinitializer }, align 32
@read_write.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.90, ptr @.str.95, ptr @.str.92, ptr @.str.97, i8 0, i8 -38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SD card locked!\0A\00", [47 x i8] zeroinitializer }, align 32
@read_write.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.90, ptr @.str.95, ptr @.str.92, ptr @.str.98, i8 0, i8 -26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"read/write fail three times in succession\0A\00", [53 x i8] zeroinitializer }, align 32
@read_write.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.90, ptr @.str.95, ptr @.str.92, ptr @.str.99, i8 0, i8 -23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Write protected card!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Generic-xD/SD/M.S.      1.00 \00", [34 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Generic-SD/MemoryStick  1.00 \00", [34 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Generic-SD/MMC          1.00 \00", [34 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Generic-MemoryStick     1.00 \00", [34 x i8] zeroinitializer }, align 32
@__const.inquiry.inquiry_buf = private unnamed_addr constant [8 x i8] c"\00\8D\00\01\1F\02\00\00", align 1
@formatter_inquiry_str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MEMORYSTICK-MG\0B\00\00   ", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@read_host_reg.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.90, ptr @.str.104, ptr @.str.92, ptr @.str.105, i8 1, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"read_host_reg\00", [18 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Host register (0x%x): 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@dma_access_ring_buffer.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.90, ptr @.str.106, ptr @.str.92, ptr @.str.107, i8 1, i8 122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dma_access_ring_buffer\00", [41 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Read from device\0A\00", [46 x i8] zeroinitializer }, align 32
@dma_access_ring_buffer.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.90, ptr @.str.106, ptr @.str.92, ptr @.str.108, i8 1, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Write to device\0A\00", [47 x i8] zeroinitializer }, align 32
@read_cfg_byte.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.90, ptr @.str.113, ptr @.str.92, ptr @.str.114, i8 2, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"read_cfg_byte\00", [18 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: func = %d, addr = 0x%x, len = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@write_cfg_byte.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.90, ptr @.str.115, ptr @.str.92, ptr @.str.116, i8 2, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"write_cfg_byte\00", [17 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: func = %d, addr = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@get_dev_status.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.90, ptr @.str.117, ptr @.str.92, ptr @.str.118, i8 1, i8 -99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"get_dev_status\00", [17 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"status[0x17] = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@mg_report_key.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.90, ptr @.str.119, ptr @.str.92, ptr @.str.120, i8 2, i8 -24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mg_report_key\00", [18 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"key_format = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@mg_send_key.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.90, ptr @.str.121, ptr @.str.92, ptr @.str.120, i8 3, i8 1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mg_send_key\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [91 x i64] [i64 89, i64 8, i64 0, i64 1, i64 3, i64 4, i64 5, i64 7, i64 8, i64 10, i64 11, i64 15, i64 16, i64 17, i64 18, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 36, i64 37, i64 40, i64 42, i64 43, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 71, i64 74, i64 75, i64 76, i64 77, i64 78, i64 81, i64 82, i64 83, i64 84, i64 85, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 160, i64 161, i64 165, i64 168, i64 170, i64 174, i64 176, i64 177, i64 178, i64 182, i64 184, i64 185, i64 186, i64 187, i64 189, i64 190, i64 225, i64 234, i64 240]
@__sancov_gen_cov_switch_values.122 = internal global [17 x i64] [i64 15, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 16]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 240]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 18]
@__sancov_gen_cov_switch_values.125 = internal global [28 x i64] [i64 26, i64 8, i64 0, i64 3, i64 4, i64 8, i64 10, i64 18, i64 21, i64 26, i64 27, i64 30, i64 35, i64 37, i64 40, i64 42, i64 47, i64 90, i64 163, i64 164, i64 208, i64 209, i64 210, i64 211, i64 212, i64 214, i64 240, i64 250]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.127 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@__sancov_gen_cov_switch_values.130 = internal global [5 x i64] [i64 3, i64 6, i64 0, i64 28, i64 63]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 6, i64 32, i64 63]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 6, i64 32, i64 63]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@__sancov_gen_cov_switch_values.134 = internal global [12 x i64] [i64 10, i64 8, i64 4, i64 5, i64 9, i64 13, i64 14, i64 16, i64 19, i64 20, i64 21, i64 28]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 8]
@__sancov_gen_cov_switch_values.136 = internal global [22 x i64] [i64 20, i64 8, i64 3, i64 4, i64 5, i64 6, i64 7, i64 10, i64 13, i64 14, i64 16, i64 19, i64 20, i64 21, i64 22, i64 23, i64 26, i64 29, i64 30, i64 35, i64 39, i64 224]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.138 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 8, i64 160, i64 176]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 19]
@__sancov_gen_cov_switch_values.141 = internal global [7 x i64] [i64 5, i64 8, i64 8, i64 10, i64 40, i64 42, i64 240]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 26]
@__sancov_gen_cov_switch_values.143 = internal global [8 x i64] [i64 6, i64 8, i64 208, i64 209, i64 210, i64 211, i64 212, i64 214]
@__sancov_gen_cov_switch_values.144 = internal global [5 x i64] [i64 3, i64 32, i64 50, i64 52, i64 54]
@__sancov_gen_cov_switch_values.145 = internal global [6 x i64] [i64 4, i64 32, i64 49, i64 51, i64 53, i64 55]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 16, i64 21000, i64 21128]
@__sancov_gen_cov_switch_values.147 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.149 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 8]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.153 = internal global [6 x i64] [i64 4, i64 8, i64 65, i64 66, i64 67, i64 68]
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 34, i32 10 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 37, i32 10 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 40, i32 10 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 43, i32 10 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 46, i32 10 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 49, i32 10 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 52, i32 10 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 55, i32 10 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 58, i32 10 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 61, i32 10 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 64, i32 10 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 67, i32 10 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 70, i32 10 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 73, i32 10 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 76, i32 10 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 79, i32 10 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 82, i32 10 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 85, i32 10 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 88, i32 10 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 91, i32 10 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 94, i32 10 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 97, i32 10 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 100, i32 10 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 103, i32 10 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 106, i32 10 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 109, i32 10 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 112, i32 10 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 115, i32 10 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 118, i32 10 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 121, i32 10 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 124, i32 10 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 127, i32 10 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 130, i32 10 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 133, i32 10 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 136, i32 10 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 139, i32 10 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 142, i32 10 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 145, i32 10 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 148, i32 10 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 151, i32 10 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 154, i32 10 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 157, i32 10 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 160, i32 10 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 163, i32 10 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 166, i32 10 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 169, i32 10 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 172, i32 10 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 175, i32 10 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 178, i32 10 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 181, i32 10 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 184, i32 10 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 187, i32 10 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 190, i32 10 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 193, i32 10 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 196, i32 10 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 199, i32 10 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 202, i32 10 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 205, i32 10 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 208, i32 10 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 211, i32 10 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 214, i32 10 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 217, i32 10 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 220, i32 10 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 223, i32 10 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 226, i32 10 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 229, i32 10 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 232, i32 10 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 235, i32 10 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 238, i32 10 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 241, i32 10 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 244, i32 10 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 247, i32 10 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 250, i32 10 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 253, i32 10 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 256, i32 10 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 259, i32 10 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 262, i32 10 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 265, i32 10 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 268, i32 10 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 271, i32 10 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 274, i32 10 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 277, i32 10 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 280, i32 10 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 283, i32 10 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 286, i32 10 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 289, i32 10 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 292, i32 10 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 295, i32 10 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 298, i32 10 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 304, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 309, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 867, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 874, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 921, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 933, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 466, i32 34 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 467, i32 34 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 468, i32 34 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 469, i32 34 }
@___asan_gen_.463 = private unnamed_addr constant [22 x i8] c"formatter_inquiry_str\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 445, i32 22 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1351, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1515, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1517, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 2230, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 2285, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1652, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 2976, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.506 = private constant [39 x i8] c"../drivers/staging/rts5208/rtsx_scsi.c\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 3079, i32 2 }
@llvm.compiler.used = appending global [118 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @formatter_inquiry_str, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121], section "llvm.metadata"
@0 = internal global [118 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formatter_inquiry_str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_show_command(ptr nocapture noundef readonly %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %srb1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 10
  %0 = ptrtoint ptr %srb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srb1, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmnd, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %sw.default [
    i8 0, label %entry.if.end128_crit_edge
    i8 1, label %entry.do.body_crit_edge
    i8 3, label %sw.bb3
    i8 4, label %sw.bb4
    i8 5, label %sw.bb5
    i8 7, label %sw.bb6
    i8 8, label %sw.bb7
    i8 10, label %sw.bb8
    i8 11, label %sw.bb9
    i8 15, label %sw.bb10
    i8 16, label %sw.bb11
    i8 17, label %sw.bb12
    i8 18, label %sw.bb13
    i8 20, label %sw.bb14
    i8 21, label %sw.bb15
    i8 22, label %sw.bb16
    i8 23, label %sw.bb17
    i8 24, label %sw.bb18
    i8 25, label %sw.bb19
    i8 26, label %sw.bb20
    i8 27, label %sw.bb21
    i8 28, label %sw.bb22
    i8 29, label %sw.bb23
    i8 30, label %sw.bb24
    i8 36, label %sw.bb25
    i8 37, label %sw.bb26
    i8 40, label %sw.bb27
    i8 42, label %sw.bb28
    i8 43, label %sw.bb29
    i8 46, label %sw.bb30
    i8 47, label %sw.bb31
    i8 48, label %sw.bb32
    i8 49, label %sw.bb33
    i8 50, label %sw.bb34
    i8 51, label %sw.bb35
    i8 52, label %sw.bb36
    i8 53, label %sw.bb37
    i8 54, label %sw.bb38
    i8 55, label %sw.bb39
    i8 56, label %sw.bb40
    i8 57, label %sw.bb41
    i8 58, label %sw.bb42
    i8 59, label %sw.bb43
    i8 60, label %sw.bb44
    i8 61, label %sw.bb45
    i8 62, label %sw.bb46
    i8 63, label %sw.bb47
    i8 64, label %sw.bb48
    i8 65, label %sw.bb49
    i8 66, label %sw.bb50
    i8 67, label %sw.bb51
    i8 68, label %sw.bb52
    i8 69, label %sw.bb53
    i8 71, label %sw.bb54
    i8 74, label %sw.bb55
    i8 75, label %sw.bb56
    i8 76, label %sw.bb57
    i8 77, label %sw.bb58
    i8 78, label %sw.bb59
    i8 81, label %sw.bb60
    i8 82, label %sw.bb61
    i8 83, label %sw.bb62
    i8 84, label %sw.bb63
    i8 85, label %sw.bb64
    i8 88, label %sw.bb65
    i8 89, label %sw.bb66
    i8 90, label %sw.bb67
    i8 91, label %sw.bb68
    i8 92, label %sw.bb69
    i8 93, label %sw.bb70
    i8 -95, label %sw.bb71
    i8 -96, label %sw.bb72
    i8 -91, label %sw.bb73
    i8 -88, label %sw.bb74
    i8 -86, label %sw.bb75
    i8 -82, label %sw.bb76
    i8 -80, label %sw.bb77
    i8 -79, label %sw.bb78
    i8 -78, label %sw.bb79
    i8 -74, label %sw.bb80
    i8 -72, label %sw.bb81
    i8 -71, label %sw.bb82
    i8 -70, label %sw.bb83
    i8 -69, label %sw.bb84
    i8 -67, label %sw.bb85
    i8 -66, label %sw.bb86
    i8 -31, label %sw.bb87
    i8 -22, label %sw.bb88
    i8 -16, label %sw.bb89
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.if.end128_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb42:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb47:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb49:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb51:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb52:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb53:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb54:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb55:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb56:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb57:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb59:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb60:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb61:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb62:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb63:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb64:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb65:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb66:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb67:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb68:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb69:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb70:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb71:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb72:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb73:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb74:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb75:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb76:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb77:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb78:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb79:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb80:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb81:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb82:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb83:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb84:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb85:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb86:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb87:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb88:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb89:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %sw.default, %sw.bb89, %sw.bb88, %sw.bb87, %sw.bb86, %sw.bb85, %sw.bb84, %sw.bb83, %sw.bb82, %sw.bb81, %sw.bb80, %sw.bb79, %sw.bb78, %sw.bb77, %sw.bb76, %sw.bb75, %sw.bb74, %sw.bb73, %sw.bb72, %sw.bb71, %sw.bb70, %sw.bb69, %sw.bb68, %sw.bb67, %sw.bb66, %sw.bb65, %sw.bb64, %sw.bb63, %sw.bb62, %sw.bb61, %sw.bb60, %sw.bb59, %sw.bb58, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb54, %sw.bb53, %sw.bb52, %sw.bb51, %sw.bb50, %sw.bb49, %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb45, %sw.bb44, %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %entry.do.body_crit_edge
  %unknown_cmd.0.off0.ph = phi i1 [ false, %sw.bb3 ], [ false, %sw.bb4 ], [ false, %sw.bb5 ], [ false, %sw.bb6 ], [ false, %sw.bb7 ], [ false, %sw.bb8 ], [ false, %sw.bb9 ], [ false, %sw.bb10 ], [ false, %sw.bb11 ], [ false, %sw.bb12 ], [ false, %sw.bb13 ], [ false, %sw.bb14 ], [ false, %sw.bb15 ], [ false, %sw.bb16 ], [ false, %sw.bb17 ], [ false, %sw.bb18 ], [ false, %sw.bb19 ], [ false, %sw.bb20 ], [ false, %sw.bb21 ], [ false, %sw.bb22 ], [ false, %sw.bb23 ], [ false, %sw.bb24 ], [ false, %sw.bb25 ], [ false, %sw.bb26 ], [ false, %sw.bb27 ], [ false, %sw.bb28 ], [ false, %sw.bb29 ], [ false, %sw.bb30 ], [ false, %sw.bb31 ], [ false, %sw.bb32 ], [ false, %sw.bb33 ], [ false, %sw.bb34 ], [ false, %sw.bb35 ], [ false, %sw.bb36 ], [ false, %sw.bb37 ], [ false, %sw.bb38 ], [ false, %sw.bb39 ], [ false, %sw.bb40 ], [ false, %sw.bb41 ], [ false, %sw.bb42 ], [ false, %sw.bb43 ], [ false, %sw.bb44 ], [ false, %sw.bb45 ], [ false, %sw.bb46 ], [ false, %sw.bb47 ], [ false, %sw.bb48 ], [ false, %sw.bb49 ], [ false, %sw.bb50 ], [ false, %sw.bb51 ], [ false, %sw.bb52 ], [ false, %sw.bb53 ], [ false, %sw.bb54 ], [ false, %sw.bb55 ], [ false, %sw.bb56 ], [ false, %sw.bb57 ], [ false, %sw.bb58 ], [ false, %sw.bb59 ], [ false, %sw.bb60 ], [ false, %sw.bb61 ], [ false, %sw.bb62 ], [ false, %sw.bb63 ], [ false, %sw.bb64 ], [ false, %sw.bb65 ], [ false, %sw.bb66 ], [ false, %sw.bb67 ], [ false, %sw.bb68 ], [ false, %sw.bb69 ], [ false, %sw.bb70 ], [ false, %sw.bb71 ], [ false, %sw.bb72 ], [ false, %sw.bb73 ], [ false, %sw.bb74 ], [ false, %sw.bb75 ], [ false, %sw.bb76 ], [ false, %sw.bb77 ], [ false, %sw.bb78 ], [ false, %sw.bb79 ], [ false, %sw.bb80 ], [ false, %sw.bb81 ], [ false, %sw.bb82 ], [ false, %sw.bb83 ], [ false, %sw.bb84 ], [ false, %sw.bb85 ], [ false, %sw.bb86 ], [ false, %sw.bb87 ], [ false, %sw.bb88 ], [ false, %sw.bb89 ], [ true, %sw.default ], [ false, %entry.do.body_crit_edge ]
  %what.0.ph = phi ptr [ @.str.2, %sw.bb3 ], [ @.str.3, %sw.bb4 ], [ @.str.4, %sw.bb5 ], [ @.str.5, %sw.bb6 ], [ @.str.6, %sw.bb7 ], [ @.str.7, %sw.bb8 ], [ @.str.8, %sw.bb9 ], [ @.str.9, %sw.bb10 ], [ @.str.10, %sw.bb11 ], [ @.str.11, %sw.bb12 ], [ @.str.12, %sw.bb13 ], [ @.str.13, %sw.bb14 ], [ @.str.14, %sw.bb15 ], [ @.str.15, %sw.bb16 ], [ @.str.16, %sw.bb17 ], [ @.str.17, %sw.bb18 ], [ @.str.18, %sw.bb19 ], [ @.str.19, %sw.bb20 ], [ @.str.20, %sw.bb21 ], [ @.str.21, %sw.bb22 ], [ @.str.22, %sw.bb23 ], [ @.str.23, %sw.bb24 ], [ @.str.24, %sw.bb25 ], [ @.str.25, %sw.bb26 ], [ @.str.26, %sw.bb27 ], [ @.str.27, %sw.bb28 ], [ @.str.28, %sw.bb29 ], [ @.str.29, %sw.bb30 ], [ @.str.30, %sw.bb31 ], [ @.str.31, %sw.bb32 ], [ @.str.32, %sw.bb33 ], [ @.str.33, %sw.bb34 ], [ @.str.34, %sw.bb35 ], [ @.str.35, %sw.bb36 ], [ @.str.36, %sw.bb37 ], [ @.str.37, %sw.bb38 ], [ @.str.38, %sw.bb39 ], [ @.str.39, %sw.bb40 ], [ @.str.40, %sw.bb41 ], [ @.str.41, %sw.bb42 ], [ @.str.42, %sw.bb43 ], [ @.str.43, %sw.bb44 ], [ @.str.44, %sw.bb45 ], [ @.str.45, %sw.bb46 ], [ @.str.46, %sw.bb47 ], [ @.str.47, %sw.bb48 ], [ @.str.48, %sw.bb49 ], [ @.str.49, %sw.bb50 ], [ @.str.50, %sw.bb51 ], [ @.str.51, %sw.bb52 ], [ @.str.52, %sw.bb53 ], [ @.str.53, %sw.bb54 ], [ @.str.54, %sw.bb55 ], [ @.str.55, %sw.bb56 ], [ @.str.56, %sw.bb57 ], [ @.str.57, %sw.bb58 ], [ @.str.58, %sw.bb59 ], [ @.str.59, %sw.bb60 ], [ @.str.60, %sw.bb61 ], [ @.str.61, %sw.bb62 ], [ @.str.62, %sw.bb63 ], [ @.str.63, %sw.bb64 ], [ @.str.64, %sw.bb65 ], [ @.str.65, %sw.bb66 ], [ @.str.66, %sw.bb67 ], [ @.str.67, %sw.bb68 ], [ @.str.68, %sw.bb69 ], [ @.str.69, %sw.bb70 ], [ @.str.70, %sw.bb71 ], [ @.str.71, %sw.bb72 ], [ @.str.72, %sw.bb73 ], [ @.str.73, %sw.bb74 ], [ @.str.74, %sw.bb75 ], [ @.str.75, %sw.bb76 ], [ @.str.76, %sw.bb77 ], [ @.str.77, %sw.bb78 ], [ @.str.78, %sw.bb79 ], [ @.str.79, %sw.bb80 ], [ @.str.80, %sw.bb81 ], [ @.str.81, %sw.bb82 ], [ @.str.82, %sw.bb83 ], [ @.str.83, %sw.bb84 ], [ @.str.84, %sw.bb85 ], [ @.str.85, %sw.bb86 ], [ @.str.86, %sw.bb87 ], [ @.str.87, %sw.bb88 ], [ @.str.88, %sw.bb89 ], [ @.str.89, %sw.default ], [ @.str.1, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scsi_show_command.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scsi_show_command, %if.then96)) #9
          to label %if.end99 [label %if.then96], !srcloc !310

if.then96:                                        ; preds = %do.body
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 14
  %11 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cmd_len, align 4
  %conv98 = zext i16 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scsi_show_command.__UNIQUE_ID_ddebug287, ptr noundef %dev.i, ptr noundef nonnull @.str.93, ptr noundef nonnull %what.0.ph, i32 noundef %conv98) #9
  br i1 %unknown_cmd.0.off0.ph, label %if.then96.if.then101_crit_edge, label %if.then96.if.end128_crit_edge

if.then96.if.end128_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

if.then96.if.then101_crit_edge:                   ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then101

if.end99:                                         ; preds = %do.body
  br i1 %unknown_cmd.0.off0.ph, label %if.end99.if.then101_crit_edge, label %if.end99.if.end128_crit_edge

if.end99.if.end128_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

if.end99.if.then101_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then101

if.then101:                                       ; preds = %if.end99.if.then101_crit_edge, %if.then96.if.then101_crit_edge
  %cmd_len102 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 14
  %13 = ptrtoint ptr %cmd_len102 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %cmd_len102, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scsi_show_command.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scsi_show_command, %if.then122)) #9
          to label %if.end128 [label %if.then122], !srcloc !310

if.then122:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #11
  %15 = tail call i16 @llvm.umin.i16(i16 %14, i16 16)
  %cond = zext i16 %15 to i32
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %dev.i140 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmnd, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scsi_show_command.__UNIQUE_ID_ddebug290, ptr noundef %dev.i140, ptr noundef nonnull @.str.94, i32 noundef %cond, ptr noundef %21) #9
  br label %if.end128

if.end128:                                        ; preds = %if.then122, %if.then101, %if.end99.if.end128_crit_edge, %if.then96.if.end128_crit_edge, %entry.if.end128_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @set_sense_type(ptr noundef writeonly %chip, i32 noundef %lun, i32 noundef %sense_type) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %sense_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %sense_type, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 7, label %sw.bb5
    i32 8, label %sw.bb6
    i32 6, label %sw.bb7
    i32 9, label %sw.bb8
    i32 10, label %sw.bb9
    i32 11, label %sw.bb10
    i32 12, label %sw.bb11
    i32 13, label %sw.bb12
    i32 14, label %sw.bb13
    i32 16, label %sw.bb14
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 112, ptr %arrayidx.i, align 1
  %sense_key2.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 2
  %2 = ptrtoint ptr %sense_key2.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 6, ptr %sense_key2.i, align 1
  %info3.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 3
  %ad_sense_len.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 4
  %3 = ptrtoint ptr %info3.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 0, ptr %info3.i, align 1
  %4 = ptrtoint ptr %ad_sense_len.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %ad_sense_len.i, align 1
  %asc16.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 6
  %5 = ptrtoint ptr %asc16.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 40, ptr %asc16.i, align 1
  %ascq17.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 7
  %6 = ptrtoint ptr %ascq17.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %ascq17.i, align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i46 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun
  %7 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 112, ptr %arrayidx.i46, align 1
  %sense_key2.i47 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 2
  %8 = ptrtoint ptr %sense_key2.i47 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %sense_key2.i47, align 1
  %info3.i48 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 3
  %ad_sense_len.i52 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 4
  %9 = ptrtoint ptr %info3.i48 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 0, ptr %info3.i48, align 1
  %10 = ptrtoint ptr %ad_sense_len.i52 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 10, ptr %ad_sense_len.i52, align 1
  %asc16.i53 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 6
  %11 = ptrtoint ptr %asc16.i53 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 58, ptr %asc16.i53, align 1
  %ascq17.i54 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 7
  %12 = ptrtoint ptr %ascq17.i54 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %ascq17.i54, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i55 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun
  %13 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 112, ptr %arrayidx.i55, align 1
  %sense_key2.i56 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 2
  %14 = ptrtoint ptr %sense_key2.i56 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 5, ptr %sense_key2.i56, align 1
  %info3.i57 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 3
  %ad_sense_len.i61 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 4
  %15 = ptrtoint ptr %info3.i57 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 0, ptr %info3.i57, align 1
  %16 = ptrtoint ptr %ad_sense_len.i61 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 10, ptr %ad_sense_len.i61, align 1
  %asc16.i62 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 6
  %17 = ptrtoint ptr %asc16.i62 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 33, ptr %asc16.i62, align 1
  %ascq17.i63 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 7
  %18 = ptrtoint ptr %ascq17.i63 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %ascq17.i63, align 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i64 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun
  %19 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 112, ptr %arrayidx.i64, align 1
  %sense_key2.i65 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 2
  %20 = ptrtoint ptr %sense_key2.i65 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 5, ptr %sense_key2.i65, align 1
  %info3.i66 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 3
  %ad_sense_len.i70 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 4
  %21 = ptrtoint ptr %info3.i66 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 0, ptr %info3.i66, align 1
  %22 = ptrtoint ptr %ad_sense_len.i70 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 10, ptr %ad_sense_len.i70, align 1
  %asc16.i71 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 6
  %23 = ptrtoint ptr %asc16.i71 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 37, ptr %asc16.i71, align 1
  %ascq17.i72 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 7
  %24 = ptrtoint ptr %ascq17.i72 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %ascq17.i72, align 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i73 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun
  %25 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 112, ptr %arrayidx.i73, align 1
  %sense_key2.i74 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 2
  %26 = ptrtoint ptr %sense_key2.i74 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 7, ptr %sense_key2.i74, align 1
  %info3.i75 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 3
  %ad_sense_len.i79 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 4
  %27 = ptrtoint ptr %info3.i75 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 0, ptr %info3.i75, align 1
  %28 = ptrtoint ptr %ad_sense_len.i79 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 10, ptr %ad_sense_len.i79, align 1
  %asc16.i80 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 6
  %29 = ptrtoint ptr %asc16.i80 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 39, ptr %asc16.i80, align 1
  %ascq17.i81 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 7
  %30 = ptrtoint ptr %ascq17.i81 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %ascq17.i81, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i82 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun
  %31 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 112, ptr %arrayidx.i82, align 1
  %sense_key2.i83 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 2
  %32 = ptrtoint ptr %sense_key2.i83 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 3, ptr %sense_key2.i83, align 1
  %info3.i84 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 3
  %ad_sense_len.i88 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 4
  %33 = ptrtoint ptr %info3.i84 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 0, ptr %info3.i84, align 1
  %34 = ptrtoint ptr %ad_sense_len.i88 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 10, ptr %ad_sense_len.i88, align 1
  %asc16.i89 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 6
  %35 = ptrtoint ptr %asc16.i89 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 17, ptr %asc16.i89, align 1
  %ascq17.i90 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 7
  %36 = ptrtoint ptr %ascq17.i90 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %ascq17.i90, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i91 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun
  %37 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 112, ptr %arrayidx.i91, align 1
  %sense_key2.i92 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 2
  %38 = ptrtoint ptr %sense_key2.i92 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 3, ptr %sense_key2.i92, align 1
  %info3.i93 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 3
  %ad_sense_len.i97 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 4
  %39 = ptrtoint ptr %info3.i93 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 0, ptr %info3.i93, align 1
  %40 = ptrtoint ptr %ad_sense_len.i97 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 10, ptr %ad_sense_len.i97, align 1
  %asc16.i98 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 6
  %41 = ptrtoint ptr %asc16.i98 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 12, ptr %asc16.i98, align 1
  %ascq17.i99 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 7
  %42 = ptrtoint ptr %ascq17.i99 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %ascq17.i99, align 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i100 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun
  %43 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 112, ptr %arrayidx.i100, align 1
  %sense_key2.i101 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 2
  %44 = ptrtoint ptr %sense_key2.i101 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 5, ptr %sense_key2.i101, align 1
  %info3.i102 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 3
  %ad_sense_len.i106 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 4
  %45 = ptrtoint ptr %info3.i102 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 0, ptr %info3.i102, align 1
  %46 = ptrtoint ptr %ad_sense_len.i106 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 10, ptr %ad_sense_len.i106, align 1
  %asc16.i107 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 6
  %47 = ptrtoint ptr %asc16.i107 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 36, ptr %asc16.i107, align 1
  %ascq17.i108 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 7
  %48 = ptrtoint ptr %ascq17.i108 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %ascq17.i108, align 1
  %sns_key_info.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 9
  %49 = ptrtoint ptr %sns_key_info.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -64, ptr %sns_key_info.i, align 1
  %arrayidx27.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 9, i32 1
  %50 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %arrayidx27.i, align 1
  %arrayidx32.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 9, i32 2
  %51 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %arrayidx32.i, align 1
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i109 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun
  %52 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 112, ptr %arrayidx.i109, align 1
  %sense_key2.i110 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 2
  %53 = ptrtoint ptr %sense_key2.i110 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %sense_key2.i110, align 1
  %info3.i111 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 3
  %ad_sense_len.i115 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 4
  %54 = ptrtoint ptr %info3.i111 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 0, ptr %info3.i111, align 1
  %55 = ptrtoint ptr %ad_sense_len.i115 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 10, ptr %ad_sense_len.i115, align 1
  %asc16.i116 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 6
  %56 = ptrtoint ptr %asc16.i116 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 4, ptr %asc16.i116, align 1
  %ascq17.i117 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 7
  %57 = ptrtoint ptr %ascq17.i117 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 4, ptr %ascq17.i117, align 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i118 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun
  %58 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 112, ptr %arrayidx.i118, align 1
  %sense_key2.i119 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 2
  %59 = ptrtoint ptr %sense_key2.i119 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 3, ptr %sense_key2.i119, align 1
  %info3.i120 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 3
  %ad_sense_len.i124 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 4
  %60 = ptrtoint ptr %info3.i120 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 0, ptr %info3.i120, align 1
  %61 = ptrtoint ptr %ad_sense_len.i124 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 10, ptr %ad_sense_len.i124, align 1
  %asc16.i125 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 6
  %62 = ptrtoint ptr %asc16.i125 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 49, ptr %asc16.i125, align 1
  %ascq17.i126 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 7
  %63 = ptrtoint ptr %ascq17.i126 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %ascq17.i126, align 1
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i127 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun
  %64 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 112, ptr %arrayidx.i127, align 1
  %sense_key2.i128 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 2
  %65 = ptrtoint ptr %sense_key2.i128 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 5, ptr %sense_key2.i128, align 1
  %info3.i129 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 3
  %ad_sense_len.i133 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 4
  %66 = ptrtoint ptr %info3.i129 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 0, ptr %info3.i129, align 1
  %67 = ptrtoint ptr %ad_sense_len.i133 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 10, ptr %ad_sense_len.i133, align 1
  %asc16.i134 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 6
  %68 = ptrtoint ptr %asc16.i134 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 111, ptr %asc16.i134, align 1
  %ascq17.i135 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 7
  %69 = ptrtoint ptr %ascq17.i135 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 2, ptr %ascq17.i135, align 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i136 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun
  %70 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 112, ptr %arrayidx.i136, align 1
  %sense_key2.i137 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 2
  %71 = ptrtoint ptr %sense_key2.i137 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 5, ptr %sense_key2.i137, align 1
  %info3.i138 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 3
  %ad_sense_len.i142 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 4
  %72 = ptrtoint ptr %info3.i138 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 0, ptr %info3.i138, align 1
  %73 = ptrtoint ptr %ad_sense_len.i142 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 10, ptr %ad_sense_len.i142, align 1
  %asc16.i143 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 6
  %74 = ptrtoint ptr %asc16.i143 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 111, ptr %asc16.i143, align 1
  %ascq17.i144 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 7
  %75 = ptrtoint ptr %ascq17.i144 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %ascq17.i144, align 1
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i145 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun
  %76 = ptrtoint ptr %arrayidx.i145 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 112, ptr %arrayidx.i145, align 1
  %sense_key2.i146 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 2
  %77 = ptrtoint ptr %sense_key2.i146 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 2, ptr %sense_key2.i146, align 1
  %info3.i147 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 3
  %ad_sense_len.i151 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 4
  %78 = ptrtoint ptr %info3.i147 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 0, ptr %info3.i147, align 1
  %79 = ptrtoint ptr %ad_sense_len.i151 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 10, ptr %ad_sense_len.i151, align 1
  %asc16.i152 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 6
  %80 = ptrtoint ptr %asc16.i152 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 48, ptr %asc16.i152, align 1
  %ascq17.i153 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 7
  %81 = ptrtoint ptr %ascq17.i153 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %ascq17.i153, align 1
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i154 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun
  %82 = ptrtoint ptr %arrayidx.i154 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 112, ptr %arrayidx.i154, align 1
  %sense_key2.i155 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 2
  %83 = ptrtoint ptr %sense_key2.i155 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 3, ptr %sense_key2.i155, align 1
  %info3.i156 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 3
  %ad_sense_len.i160 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 4
  %84 = ptrtoint ptr %info3.i156 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 0, ptr %info3.i156, align 1
  %85 = ptrtoint ptr %ad_sense_len.i160 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 10, ptr %ad_sense_len.i160, align 1
  %asc16.i161 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 6
  %86 = ptrtoint ptr %asc16.i161 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 12, ptr %asc16.i161, align 1
  %ascq17.i162 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 7
  %87 = ptrtoint ptr %ascq17.i162 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %ascq17.i162, align 1
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i163 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun
  %88 = ptrtoint ptr %arrayidx.i163 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 112, ptr %arrayidx.i163, align 1
  %sense_key2.i164 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 2
  %89 = ptrtoint ptr %sense_key2.i164 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 7, ptr %sense_key2.i164, align 1
  %info3.i165 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 3
  %ad_sense_len.i169 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 4
  %90 = ptrtoint ptr %info3.i165 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 0, ptr %info3.i165, align 1
  %91 = ptrtoint ptr %ad_sense_len.i169 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 10, ptr %ad_sense_len.i169, align 1
  %asc16.i170 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 6
  %92 = ptrtoint ptr %asc16.i170 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 17, ptr %asc16.i170, align 1
  %ascq17.i171 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 7
  %93 = ptrtoint ptr %ascq17.i171 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 19, ptr %ascq17.i171, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i172 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun
  %94 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 112, ptr %arrayidx.i172, align 1
  %sense_key2.i173 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 2
  %ad_sense_len.i178 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 4
  %95 = call ptr @memset(ptr %sense_key2.i173, i32 0, i32 5)
  %96 = ptrtoint ptr %ad_sense_len.i178 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 10, ptr %ad_sense_len.i178, align 1
  %asc16.i179 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 6
  %97 = ptrtoint ptr %asc16.i179 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %asc16.i179, align 1
  %ascq17.i180 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 7
  %98 = ptrtoint ptr %ascq17.i180 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %ascq17.i180, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @set_sense_data(ptr nocapture noundef writeonly %chip, i32 noundef %lun, i8 noundef zeroext %err_code, i8 noundef zeroext %sense_key, i32 noundef %info, i8 noundef zeroext %asc, i8 noundef zeroext %ascq, i8 noundef zeroext %sns_key_info0, i16 noundef zeroext %sns_key_info1) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %err_code, ptr %arrayidx, align 1
  %sense_key2 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 2
  %1 = ptrtoint ptr %sense_key2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %sense_key, ptr %sense_key2, align 1
  %shr = lshr i32 %info, 24
  %conv = trunc i32 %shr to i8
  %info3 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 3
  %2 = ptrtoint ptr %info3 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %info3, align 1
  %shr5 = lshr i32 %info, 16
  %conv6 = trunc i32 %shr5 to i8
  %arrayidx8 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 3, i32 1
  %3 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv6, ptr %arrayidx8, align 1
  %shr9 = lshr i32 %info, 8
  %conv10 = trunc i32 %shr9 to i8
  %arrayidx12 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv10, ptr %arrayidx12, align 1
  %conv13 = trunc i32 %info to i8
  %arrayidx15 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 3, i32 3
  %5 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv13, ptr %arrayidx15, align 1
  %ad_sense_len = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 4
  %6 = ptrtoint ptr %ad_sense_len to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 10, ptr %ad_sense_len, align 1
  %asc16 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 6
  %7 = ptrtoint ptr %asc16 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %asc, ptr %asc16, align 1
  %ascq17 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 7
  %8 = ptrtoint ptr %ascq17 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %ascq, ptr %ascq17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sns_key_info0)
  %cmp.not = icmp eq i8 %sns_key_info0, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = or i8 %sns_key_info0, -128
  %sns_key_info = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 9
  %10 = ptrtoint ptr %sns_key_info to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %sns_key_info, align 1
  %11 = trunc i16 %sns_key_info1 to i8
  %12 = lshr i8 %11, 4
  %arrayidx27 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 9, i32 1
  %13 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx27, align 1
  %conv30 = and i8 %11, 15
  %arrayidx32 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %lun, i32 9, i32 2
  %14 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv30, ptr %arrayidx32, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_scsi_handler(ptr noundef %srb, ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %reg.i.i.i = alloca i16, align 2
  %tmp.i.i.i = alloca i8, align 1
  %tmp24.i.i.i = alloca i8, align 1
  %bus_width.i.i = alloca i8, align 1
  %rtsx_status.i.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %lun3 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %lun3 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun3, align 8
  %conv = trunc i64 %3 to i32
  %sd_erase_status = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 25
  %4 = ptrtoint ptr %sd_erase_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sd_erase_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then:                                          ; preds = %entry
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %6 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmnd, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.123)
  switch i8 %9, label %if.then.if.then23_crit_edge [
    i8 -16, label %land.lhs.true
    i8 3, label %if.then.if.end24_crit_edge
  ]

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then.if.then23_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

land.lhs.true:                                    ; preds = %if.then
  %arrayidx7 = getelementptr i8, ptr %7, i32 1
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %12)
  %cmp9 = icmp eq i8 %12, 16
  br i1 %cmp9, label %land.lhs.true11, label %land.lhs.true.if.then23_crit_edge

land.lhs.true.if.then23_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

land.lhs.true11:                                  ; preds = %land.lhs.true
  %arrayidx13 = getelementptr i8, ptr %7, i32 2
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %14)
  %cmp15 = icmp eq i8 %14, 16
  br i1 %cmp15, label %land.lhs.true11.if.end24_crit_edge, label %land.lhs.true11.if.then23_crit_edge

land.lhs.true11.if.then23_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

land.lhs.true11.if.end24_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then23:                                        ; preds = %land.lhs.true11.if.then23_crit_edge, %land.lhs.true.if.then23_crit_edge, %if.then.if.then23_crit_edge
  %arrayidx.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 112, ptr %arrayidx.i, align 1
  %sense_key2.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %16 = ptrtoint ptr %sense_key2.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %sense_key2.i, align 1
  %info3.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %17 = ptrtoint ptr %info3.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 0, ptr %info3.i, align 1
  %18 = ptrtoint ptr %ad_sense_len.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 10, ptr %ad_sense_len.i, align 1
  %asc16.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %19 = ptrtoint ptr %asc16.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 4, ptr %asc16.i, align 1
  %ascq17.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %20 = ptrtoint ptr %ascq17.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 4, ptr %ascq17.i, align 1
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true11.if.end24_crit_edge, %if.then.if.end24_crit_edge, %entry.if.end24_crit_edge
  %call = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %call)
  %cmp26 = icmp eq i8 %call, 8
  br i1 %cmp26, label %land.lhs.true28, label %if.end24.if.end45_crit_edge

if.end24.if.end45_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

land.lhs.true28:                                  ; preds = %if.end24
  %format_status = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 12
  %21 = ptrtoint ptr %format_status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %format_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp29 = icmp eq i32 %22, 2
  br i1 %cmp29, label %if.then31, label %land.lhs.true28.if.end45_crit_edge

land.lhs.true28.if.end45_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then31:                                        ; preds = %land.lhs.true28
  %cmnd32 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %23 = ptrtoint ptr %cmnd32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cmnd32, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.124)
  switch i8 %26, label %if.then43 [
    i8 3, label %if.then31.if.end45_crit_edge
    i8 18, label %if.then31.if.end45_crit_edge341
  ]

if.then31.if.end45_crit_edge341:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then31.if.end45_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then43:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i124 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %28 = ptrtoint ptr %arrayidx.i124 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 112, ptr %arrayidx.i124, align 1
  %sense_key2.i125 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %29 = ptrtoint ptr %sense_key2.i125 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %sense_key2.i125, align 1
  %info3.i126 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i130 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %30 = ptrtoint ptr %info3.i126 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 0, ptr %info3.i126, align 1
  %31 = ptrtoint ptr %ad_sense_len.i130 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 10, ptr %ad_sense_len.i130, align 1
  %asc16.i131 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %32 = ptrtoint ptr %asc16.i131 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 4, ptr %asc16.i131, align 1
  %ascq17.i132 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %33 = ptrtoint ptr %ascq17.i132 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 4, ptr %ascq17.i132, align 1
  br label %cleanup

if.end45:                                         ; preds = %if.then31.if.end45_crit_edge, %if.then31.if.end45_crit_edge341, %land.lhs.true28.if.end45_crit_edge, %if.end24.if.end45_crit_edge
  %cmnd46 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %34 = ptrtoint ptr %cmnd46 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cmnd46, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 1
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %37, label %sw.default [
    i8 40, label %if.end45.sw.bb_crit_edge
    i8 42, label %if.end45.sw.bb_crit_edge342
    i8 8, label %if.end45.sw.bb_crit_edge343
    i8 10, label %if.end45.sw.bb_crit_edge344
    i8 0, label %sw.bb50
    i8 18, label %sw.bb52
    i8 37, label %sw.bb54
    i8 27, label %sw.bb56
    i8 30, label %sw.bb58
    i8 3, label %sw.bb60
    i8 26, label %if.end45.sw.bb62_crit_edge
    i8 90, label %if.end45.sw.bb62_crit_edge345
    i8 35, label %sw.bb64
    i8 -16, label %sw.bb66
    i8 -6, label %sw.bb68
    i8 -48, label %if.end45.sw.bb70_crit_edge
    i8 -47, label %if.end45.sw.bb70_crit_edge346
    i8 -46, label %if.end45.sw.bb70_crit_edge347
    i8 -45, label %if.end45.sw.bb70_crit_edge348
    i8 -44, label %if.end45.sw.bb70_crit_edge349
    i8 -42, label %if.end45.sw.bb70_crit_edge350
    i8 -92, label %sw.bb72
    i8 -93, label %sw.bb74
    i8 4, label %if.end45.cleanup_crit_edge
    i8 21, label %if.end45.cleanup_crit_edge351
    i8 47, label %if.end45.cleanup_crit_edge352
  ]

if.end45.cleanup_crit_edge352:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end45.cleanup_crit_edge351:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end45.sw.bb70_crit_edge350:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb70

if.end45.sw.bb70_crit_edge349:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb70

if.end45.sw.bb70_crit_edge348:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb70

if.end45.sw.bb70_crit_edge347:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb70

if.end45.sw.bb70_crit_edge346:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb70

if.end45.sw.bb70_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb70

if.end45.sw.bb62_crit_edge345:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb62

if.end45.sw.bb62_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb62

if.end45.sw.bb_crit_edge344:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end45.sw.bb_crit_edge343:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end45.sw.bb_crit_edge342:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end45.sw.bb_crit_edge:                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %if.end45.sw.bb_crit_edge, %if.end45.sw.bb_crit_edge342, %if.end45.sw.bb_crit_edge343, %if.end45.sw.bb_crit_edge344
  %call49 = tail call fastcc i32 @read_write(ptr noundef %srb, ptr noundef %chip)
  br label %cleanup

sw.bb50:                                          ; preds = %if.end45
  %39 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device, align 4
  %lun1.i = getelementptr inbounds %struct.scsi_device, ptr %40, i32 0, i32 18
  %41 = ptrtoint ptr %lun1.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %lun1.i, align 8
  %conv.i = trunc i64 %42 to i32
  %call.i = tail call i32 @check_card_ready(ptr noundef %chip, i32 noundef %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb50.cleanup28.sink.split.i_crit_edge, label %if.end.i

sw.bb50.cleanup28.sink.split.i_crit_edge:         ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28.sink.split.i

if.end.i:                                         ; preds = %sw.bb50
  %lun_mc.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 25
  %43 = ptrtoint ptr %lun_mc.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %lun_mc.i, align 2
  %conv2.i = zext i8 %44 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end9.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = trunc i32 %shl.i to i8
  %conv8.i = or i8 %44, %45
  %46 = ptrtoint ptr %lun_mc.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv8.i, ptr %lun_mc.i, align 2
  br label %cleanup28.sink.split.i

if.end9.i:                                        ; preds = %if.end.i
  %47 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device, align 4
  %lun11.i = getelementptr inbounds %struct.scsi_device, ptr %48, i32 0, i32 18
  %49 = ptrtoint ptr %lun11.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %lun11.i, align 8
  %conv12.i = trunc i64 %50 to i32
  %call13.i = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv12.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %call13.i)
  %cmp.i = icmp eq i8 %call13.i, 4
  br i1 %cmp.i, label %if.then16.i, label %if.end9.i.cleanup_crit_edge

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16.i:                                      ; preds = %if.end9.i
  %sd_lock_notify.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 26
  %51 = ptrtoint ptr %sd_lock_notify.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %sd_lock_notify.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool18.not.i = icmp eq i8 %52, 0
  br i1 %tobool18.not.i, label %if.else.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %sd_lock_notify.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %sd_lock_notify.i, align 2
  br label %cleanup28.sink.split.i

if.else.i:                                        ; preds = %if.then16.i
  %sd_lock_status.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %54 = ptrtoint ptr %sd_lock_status.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %sd_lock_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %55)
  %tobool23.not.i = icmp sgt i8 %55, -1
  br i1 %tobool23.not.i, label %if.else.i.cleanup_crit_edge, label %if.else.i.cleanup28.sink.split.i_crit_edge

if.else.i.cleanup28.sink.split.i_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28.sink.split.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup28.sink.split.i:                           ; preds = %if.else.i.cleanup28.sink.split.i_crit_edge, %if.then19.i, %if.then4.i, %sw.bb50.cleanup28.sink.split.i_crit_edge
  %.sink54.i = phi i8 [ 6, %if.then19.i ], [ 6, %if.then4.i ], [ 2, %sw.bb50.cleanup28.sink.split.i_crit_edge ], [ 7, %if.else.i.cleanup28.sink.split.i_crit_edge ]
  %.sink53.i = phi i8 [ 40, %if.then19.i ], [ 40, %if.then4.i ], [ 58, %sw.bb50.cleanup28.sink.split.i_crit_edge ], [ 17, %if.else.i.cleanup28.sink.split.i_crit_edge ]
  %.sink.i = phi i8 [ 0, %if.then19.i ], [ 0, %if.then4.i ], [ 0, %sw.bb50.cleanup28.sink.split.i_crit_edge ], [ 19, %if.else.i.cleanup28.sink.split.i_crit_edge ]
  %arrayidx.i.i47.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i
  %56 = ptrtoint ptr %arrayidx.i.i47.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 112, ptr %arrayidx.i.i47.i, align 1
  %sense_key2.i.i48.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i, i32 2
  %57 = ptrtoint ptr %sense_key2.i.i48.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %.sink54.i, ptr %sense_key2.i.i48.i, align 1
  %info3.i.i49.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i, i32 3
  %ad_sense_len.i.i50.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i, i32 4
  %58 = ptrtoint ptr %info3.i.i49.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 0, ptr %info3.i.i49.i, align 1
  %59 = ptrtoint ptr %ad_sense_len.i.i50.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 10, ptr %ad_sense_len.i.i50.i, align 1
  %asc16.i.i51.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i, i32 6
  %60 = ptrtoint ptr %asc16.i.i51.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %.sink53.i, ptr %asc16.i.i51.i, align 1
  %ascq17.i.i52.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i, i32 7
  %61 = ptrtoint ptr %ascq17.i.i52.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %.sink.i, ptr %ascq17.i.i52.i, align 1
  br label %cleanup

sw.bb52:                                          ; preds = %if.end45
  %62 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %device, align 4
  %lun1.i134 = getelementptr inbounds %struct.scsi_device, ptr %63, i32 0, i32 18
  %64 = ptrtoint ptr %lun1.i134 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %lun1.i134, align 8
  %conv.i135 = trunc i64 %65 to i32
  %call.i136 = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv.i135) #9
  %lun_mode.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 67
  %66 = ptrtoint ptr %lun_mode.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %lun_mode.i, align 4
  %68 = zext i8 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.126)
  switch i8 %67, label %if.else14.i [
    i8 1, label %if.then.i
    i8 2, label %sw.bb52.if.end16.i_crit_edge
  ]

sw.bb52.if.end16.i_crit_edge:                     ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then.i:                                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i137 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 35, i32 %conv.i135
  %69 = ptrtoint ptr %arrayidx.i137 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i137, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %70)
  %cmp5.i = icmp eq i8 %70, 4
  %.str.102..str.103.i = select i1 %cmp5.i, ptr @.str.102, ptr @.str.103
  br label %if.end16.i

if.else14.i:                                      ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else14.i, %if.then.i, %sw.bb52.if.end16.i_crit_edge
  %inquiry_string.0.i = phi ptr [ @.str.100, %if.else14.i ], [ %.str.102..str.103.i, %if.then.i ], [ @.str.101, %sw.bb52.if.end16.i_crit_edge ]
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %71 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %length.i.i, align 4
  %call18.i = tail call noalias ptr @vmalloc(i32 noundef %72) #12
  %tobool.not.i138 = icmp eq ptr %call18.i, null
  br i1 %tobool.not.i138, label %if.end16.i.cleanup_crit_edge, label %if.end20.i

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20.i:                                       ; preds = %if.end16.i
  %mspro_formatter_enable.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 80
  %73 = ptrtoint ptr %mspro_formatter_enable.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mspro_formatter_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool21.not.i = icmp eq i32 %74, 0
  br i1 %tobool21.not.i, label %if.end20.i.if.else44.i_crit_edge, label %land.lhs.true.i

if.end20.i.if.else44.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else44.i

land.lhs.true.i:                                  ; preds = %if.end20.i
  %arrayidx23.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 35, i32 %conv.i135
  %75 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx23.i, align 1
  %77 = and i8 %76, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool25.not.i = icmp ne i8 %77, 0
  %switch.and.i = and i8 %call.i136, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and.i)
  %switch.selectcmp.i = icmp eq i8 %switch.and.i, 0
  %or.cond.i = select i1 %tobool25.not.i, i1 %switch.selectcmp.i, i1 false
  br i1 %or.cond.i, label %if.then35.i, label %land.lhs.true.i.if.else44.i_crit_edge

land.lhs.true.i.if.else44.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else44.i

if.then35.i:                                      ; preds = %land.lhs.true.i
  %78 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %79)
  %cmp37.i = icmp ult i32 %79, 56
  br i1 %cmp37.i, label %if.then35.i.if.end53.i_crit_edge, label %if.then61.thread.i

if.then35.i.if.end53.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i

if.then61.thread.i:                               ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %call18.i to i32
  call void @__asan_storeN_noabort(i32 %80, i32 8)
  store i64 39687976866938880, ptr %call18.i, align 1
  %add.ptr134140.i = getelementptr i8, ptr %call18.i, i32 8
  %call59136142.i = tail call ptr @strncpy(ptr noundef %add.ptr134140.i, ptr noundef nonnull dereferenceable(30) %inquiry_string.0.i, i32 noundef 48) #9
  br label %if.then73.i

if.else44.i:                                      ; preds = %land.lhs.true.i.if.else44.i_crit_edge, %if.end20.i.if.else44.i_crit_edge
  %81 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %82)
  %cmp46.i = icmp ult i32 %82, 36
  br i1 %cmp46.i, label %if.else44.i.if.end53.i_crit_edge, label %if.end53.thread.i

if.else44.i.if.end53.i_crit_edge:                 ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i

if.end53.thread.i:                                ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %call18.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 8)
  store i64 39687976531394560, ptr %call18.i, align 1
  %add.ptr134.i = getelementptr i8, ptr %call18.i, i32 8
  %84 = call ptr @memcpy(ptr %add.ptr134.i, ptr %inquiry_string.0.i, i32 28)
  br label %if.end78.i

if.end53.i:                                       ; preds = %if.else44.i.if.end53.i_crit_edge, %if.then35.i.if.end53.i_crit_edge
  %pro_formatter_flag.0.off0125.i = phi i1 [ true, %if.then35.i.if.end53.i_crit_edge ], [ false, %if.else44.i.if.end53.i_crit_edge ]
  %sendbytes.0.i = phi i32 [ %79, %if.then35.i.if.end53.i_crit_edge ], [ %82, %if.else44.i.if.end53.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sendbytes.0.i)
  %cmp55.i = icmp ugt i32 %sendbytes.0.i, 8
  br i1 %cmp55.i, label %if.then57.i, label %if.else64.i

if.then57.i:                                      ; preds = %if.end53.i
  %85 = ptrtoint ptr %call18.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 8)
  store i64 39687976531394560, ptr %call18.i, align 1
  %add.ptr.i = getelementptr i8, ptr %call18.i, i32 8
  %sub.i = add nsw i32 %sendbytes.0.i, -8
  %call59.i = tail call ptr @strncpy(ptr noundef %add.ptr.i, ptr noundef nonnull %inquiry_string.0.i, i32 noundef %sub.i) #9
  br i1 %pro_formatter_flag.0.off0125.i, label %if.then61.i, label %if.then57.i.if.end78.i_crit_edge

if.then57.i.if.end78.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78.i

if.then61.i:                                      ; preds = %if.then57.i
  %arrayidx62.i = getelementptr i8, ptr %call18.i, i32 4
  %86 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 51, ptr %arrayidx62.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %sendbytes.0.i)
  %cmp71.old.i = icmp ugt i32 %sendbytes.0.i, 36
  br i1 %cmp71.old.i, label %if.then61.i.if.then73.i_crit_edge, label %if.then61.i.if.end78.i_crit_edge

if.then61.i.if.end78.i_crit_edge:                 ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78.i

if.then61.i.if.then73.i_crit_edge:                ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then73.i

if.else64.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  %87 = call ptr @memcpy(ptr %call18.i, ptr @__const.inquiry.inquiry_buf, i32 %sendbytes.0.i)
  br label %if.end78.i

if.then73.i:                                      ; preds = %if.then61.i.if.then73.i_crit_edge, %if.then61.thread.i
  %conv54132137146.i = phi i32 [ 56, %if.then61.thread.i ], [ %sendbytes.0.i, %if.then61.i.if.then73.i_crit_edge ]
  %add.ptr74.i = getelementptr i8, ptr %call18.i, i32 36
  %sub76.i = add nsw i32 %conv54132137146.i, -36
  %88 = call ptr @memcpy(ptr %add.ptr74.i, ptr @formatter_inquiry_str, i32 %sub76.i)
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then73.i, %if.else64.i, %if.then61.i.if.end78.i_crit_edge, %if.then57.i.if.end78.i_crit_edge, %if.end53.thread.i
  %resid_len.i.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %89 = ptrtoint ptr %resid_len.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %resid_len.i.i, align 4
  %90 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %length.i.i, align 4
  tail call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %call18.i, i32 noundef %91, ptr noundef %srb) #9
  tail call void @vfree(ptr noundef nonnull %call18.i) #9
  br label %cleanup

sw.bb54:                                          ; preds = %if.end45
  %92 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %device, align 4
  %lun1.i140 = getelementptr inbounds %struct.scsi_device, ptr %93, i32 0, i32 18
  %94 = ptrtoint ptr %lun1.i140 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %lun1.i140, align 8
  %conv.i141 = trunc i64 %95 to i32
  %call.i142 = tail call i32 @check_card_ready(ptr noundef %chip, i32 noundef %conv.i141) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool.not.i143 = icmp eq i32 %call.i142, 0
  br i1 %tobool.not.i143, label %if.then.i144, label %if.end.i150

if.then.i144:                                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i46.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i141
  %96 = ptrtoint ptr %arrayidx.i46.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 112, ptr %arrayidx.i46.i.i, align 1
  %sense_key2.i47.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i141, i32 2
  %97 = ptrtoint ptr %sense_key2.i47.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 2, ptr %sense_key2.i47.i.i, align 1
  %info3.i48.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i141, i32 3
  %ad_sense_len.i52.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i141, i32 4
  %98 = ptrtoint ptr %info3.i48.i.i to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 0, ptr %info3.i48.i.i, align 1
  %99 = ptrtoint ptr %ad_sense_len.i52.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 10, ptr %ad_sense_len.i52.i.i, align 1
  %asc16.i53.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i141, i32 6
  %100 = ptrtoint ptr %asc16.i53.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 58, ptr %asc16.i53.i.i, align 1
  %ascq17.i54.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i141, i32 7
  %101 = ptrtoint ptr %ascq17.i54.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %ascq17.i54.i.i, align 1
  br label %cleanup

if.end.i150:                                      ; preds = %sw.bb54
  %lun_mc.i145 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 25
  %102 = ptrtoint ptr %lun_mc.i145 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %lun_mc.i145, align 2
  %conv2.i146 = zext i8 %103 to i32
  %shl.i147 = shl nuw i32 1, %conv.i141
  %and.i148 = and i32 %shl.i147, %conv2.i146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i148)
  %tobool3.not.i149 = icmp eq i32 %and.i148, 0
  br i1 %tobool3.not.i149, label %if.then4.i152, label %if.end9.i153

if.then4.i152:                                    ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #11
  %104 = trunc i32 %shl.i147 to i8
  %conv8.i151 = or i8 %103, %104
  %105 = ptrtoint ptr %lun_mc.i145 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv8.i151, ptr %lun_mc.i145, align 2
  %arrayidx.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i141
  %106 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 112, ptr %arrayidx.i.i.i, align 1
  %sense_key2.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i141, i32 2
  %107 = ptrtoint ptr %sense_key2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 6, ptr %sense_key2.i.i.i, align 1
  %info3.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i141, i32 3
  %ad_sense_len.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i141, i32 4
  %108 = ptrtoint ptr %info3.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %108, i32 4)
  store i32 0, ptr %info3.i.i.i, align 1
  %109 = ptrtoint ptr %ad_sense_len.i.i.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 10, ptr %ad_sense_len.i.i.i, align 1
  %asc16.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i141, i32 6
  %110 = ptrtoint ptr %asc16.i.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 40, ptr %asc16.i.i.i, align 1
  %ascq17.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i141, i32 7
  %111 = ptrtoint ptr %ascq17.i.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %ascq17.i.i.i, align 1
  br label %cleanup

if.end9.i153:                                     ; preds = %if.end.i150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %112 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %112, i32 noundef 3264, i32 noundef 8) #13
  %tobool11.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not.i, label %if.end9.i153.cleanup_crit_edge, label %if.end13.i

if.end9.i153.cleanup_crit_edge:                   ; preds = %if.end9.i153
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13.i:                                       ; preds = %if.end9.i153
  %call.i.i = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv.i141) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %call.i.i)
  %cmp.i.i = icmp eq i8 %call.i.i, 4
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end13.i.if.end.i.i_crit_edge

if.end13.i.if.end.i.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end13.i
  %sd_lock_status.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %113 = ptrtoint ptr %sd_lock_status.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %sd_lock_status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %114)
  %tobool.not.i.i = icmp sgt i8 %114, -1
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.get_card_size.exit.i_crit_edge

land.lhs.true.i.i.get_card_size.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_card_size.exit.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end13.i.if.end.i.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 31, i32 %conv.i141
  %115 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx.i.i, align 4
  %phi.bo.i = add i32 %116, -1
  br label %get_card_size.exit.i

get_card_size.exit.i:                             ; preds = %if.end.i.i, %land.lhs.true.i.i.get_card_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %phi.bo.i, %if.end.i.i ], [ -1, %land.lhs.true.i.i.get_card_size.exit.i_crit_edge ]
  %shr.i = lshr i32 %retval.0.i.i, 24
  %conv15.i = trunc i32 %shr.i to i8
  %117 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv15.i, ptr %call7.i.i, align 8
  %shr17.i = lshr i32 %retval.0.i.i, 16
  %conv18.i = trunc i32 %shr17.i to i8
  %arrayidx19.i = getelementptr i8, ptr %call7.i.i, i32 1
  %118 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv18.i, ptr %arrayidx19.i, align 1
  %shr21.i = lshr i32 %retval.0.i.i, 8
  %conv22.i = trunc i32 %shr21.i to i8
  %arrayidx23.i154 = getelementptr i8, ptr %call7.i.i, i32 2
  %119 = ptrtoint ptr %arrayidx23.i154 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv22.i, ptr %arrayidx23.i154, align 2
  %conv25.i = trunc i32 %retval.0.i.i to i8
  %arrayidx26.i = getelementptr i8, ptr %call7.i.i, i32 3
  %120 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv25.i, ptr %arrayidx26.i, align 1
  %arrayidx27.i = getelementptr i8, ptr %call7.i.i, i32 4
  %121 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %arrayidx27.i, align 4
  %arrayidx28.i = getelementptr i8, ptr %call7.i.i, i32 5
  %122 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %arrayidx28.i, align 1
  %arrayidx29.i = getelementptr i8, ptr %call7.i.i, i32 6
  %123 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 2, ptr %arrayidx29.i, align 2
  %arrayidx30.i = getelementptr i8, ptr %call7.i.i, i32 7
  %124 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %arrayidx30.i, align 1
  %length.i.i155 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %125 = ptrtoint ptr %length.i.i155 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %length.i.i155, align 4
  tail call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %call7.i.i, i32 noundef %126, ptr noundef %srb) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %resid_len.i.i156 = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %127 = ptrtoint ptr %resid_len.i.i156 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %resid_len.i.i156, align 4
  br label %cleanup

sw.bb56:                                          ; preds = %if.end45
  %128 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %device, align 4
  %lun1.i159 = getelementptr inbounds %struct.scsi_device, ptr %129, i32 0, i32 18
  %130 = ptrtoint ptr %lun1.i159 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %lun1.i159, align 8
  %conv.i160 = trunc i64 %131 to i32
  %length.i.i161 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %132 = ptrtoint ptr %length.i.i161 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %length.i.i161, align 4
  %resid_len.i.i162 = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %134 = ptrtoint ptr %resid_len.i.i162 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %resid_len.i.i162, align 4
  %arrayidx.i163 = getelementptr i8, ptr %35, i32 1
  %135 = ptrtoint ptr %arrayidx.i163 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx.i163, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %136)
  %cmp.i164 = icmp eq i8 %136, 1
  br i1 %cmp.i164, label %sw.bb56.cleanup_crit_edge, label %if.end.i165

sw.bb56.cleanup_crit_edge:                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i165:                                      ; preds = %sw.bb56
  %arrayidx5.i = getelementptr i8, ptr %35, i32 4
  %137 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx5.i, align 1
  %139 = zext i8 %138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %138, label %sw.epilog.i [
    i8 0, label %if.end.i165.cleanup_crit_edge
    i8 2, label %sw.bb7.i
    i8 1, label %if.end.i165.sw.bb11.i_crit_edge
    i8 3, label %if.end.i165.sw.bb11.i_crit_edge353
  ]

if.end.i165.sw.bb11.i_crit_edge353:               ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11.i

if.end.i165.sw.bb11.i_crit_edge:                  ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11.i

if.end.i165.cleanup_crit_edge:                    ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb7.i:                                         ; preds = %if.end.i165
  %call8.i = tail call i32 @check_card_ready(ptr noundef %chip, i32 noundef %conv.i160) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i166 = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i166, label %sw.bb7.i.cleanup_crit_edge, label %if.then9.i

sw.bb7.i.cleanup_crit_edge:                       ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9.i:                                       ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @eject_card(ptr noundef %chip, i32 noundef %conv.i160) #9
  br label %cleanup

sw.bb11.i:                                        ; preds = %if.end.i165.sw.bb11.i_crit_edge, %if.end.i165.sw.bb11.i_crit_edge353
  %call12.i = tail call i32 @check_card_ready(ptr noundef %chip, i32 noundef %conv.i160) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %sw.bb11.i.cleanup_crit_edge

sw.bb11.i.cleanup_crit_edge:                      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15.i:                                       ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i46.i.i167 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i160
  %140 = ptrtoint ptr %arrayidx.i46.i.i167 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 112, ptr %arrayidx.i46.i.i167, align 1
  %sense_key2.i47.i.i168 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i160, i32 2
  %141 = ptrtoint ptr %sense_key2.i47.i.i168 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 2, ptr %sense_key2.i47.i.i168, align 1
  %info3.i48.i.i169 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i160, i32 3
  %ad_sense_len.i52.i.i170 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i160, i32 4
  %142 = ptrtoint ptr %info3.i48.i.i169 to i32
  call void @__asan_storeN_noabort(i32 %142, i32 4)
  store i32 0, ptr %info3.i48.i.i169, align 1
  %143 = ptrtoint ptr %ad_sense_len.i52.i.i170 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 10, ptr %ad_sense_len.i52.i.i170, align 1
  %asc16.i53.i.i171 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i160, i32 6
  %144 = ptrtoint ptr %asc16.i53.i.i171 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 58, ptr %asc16.i53.i.i171, align 1
  %ascq17.i54.i.i172 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i160, i32 7
  %145 = ptrtoint ptr %ascq17.i54.i.i172 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %ascq17.i54.i.i172, align 1
  br label %cleanup

sw.epilog.i:                                      ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb58:                                          ; preds = %if.end45
  %arrayidx.i175 = getelementptr i8, ptr %35, i32 4
  %146 = ptrtoint ptr %arrayidx.i175 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx.i175, align 1
  %148 = and i8 %147, 1
  %resid_len.i.i176 = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %149 = ptrtoint ptr %resid_len.i.i176 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %resid_len.i.i176, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool.not.i177 = icmp eq i8 %148, 0
  br i1 %tobool.not.i177, label %sw.bb58.cleanup_crit_edge, label %if.then.i179

sw.bb58.cleanup_crit_edge:                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i179:                                     ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #11
  %150 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %device, align 4
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %151, i32 0, i32 18
  %152 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %lun.i, align 8
  %conv1.i = trunc i64 %153 to i32
  %arrayidx.i100.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv1.i
  %154 = ptrtoint ptr %arrayidx.i100.i.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 112, ptr %arrayidx.i100.i.i, align 1
  %sense_key2.i101.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv1.i, i32 2
  %155 = ptrtoint ptr %sense_key2.i101.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 5, ptr %sense_key2.i101.i.i, align 1
  %info3.i102.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv1.i, i32 3
  %ad_sense_len.i106.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv1.i, i32 4
  %156 = ptrtoint ptr %info3.i102.i.i to i32
  call void @__asan_storeN_noabort(i32 %156, i32 4)
  store i32 0, ptr %info3.i102.i.i, align 1
  %157 = ptrtoint ptr %ad_sense_len.i106.i.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 10, ptr %ad_sense_len.i106.i.i, align 1
  %asc16.i107.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv1.i, i32 6
  %158 = ptrtoint ptr %asc16.i107.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 36, ptr %asc16.i107.i.i, align 1
  %ascq17.i108.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv1.i, i32 7
  %159 = ptrtoint ptr %ascq17.i108.i.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %ascq17.i108.i.i, align 1
  %sns_key_info.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv1.i, i32 9
  %160 = ptrtoint ptr %sns_key_info.i.i.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 -64, ptr %sns_key_info.i.i.i, align 1
  %arrayidx27.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv1.i, i32 9, i32 1
  %161 = ptrtoint ptr %arrayidx27.i.i.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %arrayidx27.i.i.i, align 1
  %arrayidx32.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv1.i, i32 9, i32 2
  %162 = ptrtoint ptr %arrayidx32.i.i.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 1, ptr %arrayidx32.i.i.i, align 1
  br label %cleanup

sw.bb60:                                          ; preds = %if.end45
  %163 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %device, align 4
  %lun1.i182 = getelementptr inbounds %struct.scsi_device, ptr %164, i32 0, i32 18
  %165 = ptrtoint ptr %lun1.i182 to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %lun1.i182, align 8
  %conv.i183 = trunc i64 %166 to i32
  %arrayidx.i184 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i183
  %call.i185 = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv.i183) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %call.i185)
  %cmp.i186 = icmp eq i8 %call.i185, 8
  br i1 %cmp.i186, label %land.lhs.true.i188, label %sw.bb60.if.end18.i_crit_edge

sw.bb60.if.end18.i_crit_edge:                     ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

land.lhs.true.i188:                               ; preds = %sw.bb60
  %pro_under_formatting.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 11
  %167 = ptrtoint ptr %pro_under_formatting.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %pro_under_formatting.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool.not.i187 = icmp eq i32 %168, 0
  br i1 %tobool.not.i187, label %land.lhs.true.i188.if.end18.i_crit_edge, label %if.then.i189

land.lhs.true.i188.if.end18.i_crit_edge:          ; preds = %land.lhs.true.i188
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then.i189:                                     ; preds = %land.lhs.true.i188
  %format_status.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 12
  %169 = ptrtoint ptr %format_status.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %format_status.i, align 4
  %171 = zext i32 %170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %170, label %if.else14.i190 [
    i32 0, label %if.then7.i
    i32 2, label %if.then12.i
  ]

if.then7.i:                                       ; preds = %if.then.i189
  call void @__sanitizer_cov_trace_pc() #11
  %172 = ptrtoint ptr %arrayidx.i184 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 112, ptr %arrayidx.i184, align 1
  %sense_key2.i173.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i183, i32 2
  %ad_sense_len.i178.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i183, i32 4
  %173 = call ptr @memset(ptr %sense_key2.i173.i.i, i32 0, i32 5)
  %174 = ptrtoint ptr %ad_sense_len.i178.i.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 10, ptr %ad_sense_len.i178.i.i, align 1
  %asc16.i179.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i183, i32 6
  %175 = ptrtoint ptr %asc16.i179.i.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 0, ptr %asc16.i179.i.i, align 1
  %ascq17.i180.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i183, i32 7
  %176 = ptrtoint ptr %ascq17.i180.i.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 0, ptr %ascq17.i180.i.i, align 1
  %177 = ptrtoint ptr %pro_under_formatting.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %pro_under_formatting.i, align 4
  %progress.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 13
  %178 = ptrtoint ptr %progress.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 0, ptr %progress.i, align 4
  br label %do.body.i

if.then12.i:                                      ; preds = %if.then.i189
  call void @__sanitizer_cov_trace_pc() #11
  %179 = ptrtoint ptr %arrayidx.i184 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 112, ptr %arrayidx.i184, align 1
  %sense_key2.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i183, i32 2
  %180 = ptrtoint ptr %sense_key2.i.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 2, ptr %sense_key2.i.i, align 1
  %info3.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i183, i32 3
  %ad_sense_len.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i183, i32 4
  %181 = ptrtoint ptr %info3.i.i to i32
  call void @__asan_storeN_noabort(i32 %181, i32 4)
  store i32 0, ptr %info3.i.i, align 1
  %182 = ptrtoint ptr %ad_sense_len.i.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 10, ptr %ad_sense_len.i.i, align 1
  %asc16.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i183, i32 6
  %183 = ptrtoint ptr %asc16.i.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 4, ptr %asc16.i.i, align 1
  %ascq17.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i183, i32 7
  %184 = ptrtoint ptr %ascq17.i.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 4, ptr %ascq17.i.i, align 1
  br label %do.body.i

if.else14.i190:                                   ; preds = %if.then.i189
  call void @__sanitizer_cov_trace_pc() #11
  %185 = ptrtoint ptr %arrayidx.i184 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 112, ptr %arrayidx.i184, align 1
  %sense_key2.i119.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i183, i32 2
  %186 = ptrtoint ptr %sense_key2.i119.i.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 3, ptr %sense_key2.i119.i.i, align 1
  %info3.i120.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i183, i32 3
  %ad_sense_len.i124.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i183, i32 4
  %187 = ptrtoint ptr %info3.i120.i.i to i32
  call void @__asan_storeN_noabort(i32 %187, i32 4)
  store i32 0, ptr %info3.i120.i.i, align 1
  %188 = ptrtoint ptr %ad_sense_len.i124.i.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 10, ptr %ad_sense_len.i124.i.i, align 1
  %asc16.i125.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i183, i32 6
  %189 = ptrtoint ptr %asc16.i125.i.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 49, ptr %asc16.i125.i.i, align 1
  %ascq17.i126.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i183, i32 7
  %190 = ptrtoint ptr %ascq17.i126.i.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 1, ptr %ascq17.i126.i.i, align 1
  %191 = ptrtoint ptr %pro_under_formatting.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 0, ptr %pro_under_formatting.i, align 4
  %progress16.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 13
  %192 = ptrtoint ptr %progress16.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 0, ptr %progress16.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.else14.i190, %if.then12.i, %if.then7.i
  %idle_counter.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %193 = ptrtoint ptr %idle_counter.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 0, ptr %idle_counter.i, align 4
  %rtsx_stat.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %194 = ptrtoint ptr %rtsx_stat.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 2, ptr %rtsx_stat.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.body.i, %land.lhs.true.i188.if.end18.i_crit_edge, %sw.bb60.if.end18.i_crit_edge
  %length.i.i191 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %195 = ptrtoint ptr %length.i.i191 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %length.i.i191, align 4
  %call20.i = tail call noalias ptr @vmalloc(i32 noundef %196) #12
  %tobool21.not.i192 = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i192, label %if.end18.i.cleanup_crit_edge, label %if.end23.i

if.end18.i.cleanup_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %197 = ptrtoint ptr %length.i.i191 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %length.i.i191, align 4
  %199 = call ptr @memcpy(ptr %call20.i, ptr %arrayidx.i184, i32 %198)
  tail call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %call20.i, i32 noundef %198, ptr noundef %srb) #9
  tail call void @vfree(ptr noundef nonnull %call20.i) #9
  %resid_len.i.i193 = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %200 = ptrtoint ptr %resid_len.i.i193 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 0, ptr %resid_len.i.i193, align 4
  %201 = ptrtoint ptr %arrayidx.i184 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 112, ptr %arrayidx.i184, align 1
  %sense_key2.i173.i61.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i183, i32 2
  %ad_sense_len.i178.i62.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i183, i32 4
  %202 = call ptr @memset(ptr %sense_key2.i173.i61.i, i32 0, i32 5)
  %203 = ptrtoint ptr %ad_sense_len.i178.i62.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 10, ptr %ad_sense_len.i178.i62.i, align 1
  %asc16.i179.i63.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i183, i32 6
  %204 = ptrtoint ptr %asc16.i179.i63.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 0, ptr %asc16.i179.i63.i, align 1
  %ascq17.i180.i64.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i183, i32 7
  %205 = ptrtoint ptr %ascq17.i180.i64.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 0, ptr %ascq17.i180.i64.i, align 1
  br label %cleanup

sw.bb62:                                          ; preds = %if.end45.sw.bb62_crit_edge, %if.end45.sw.bb62_crit_edge345
  %206 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %device, align 4
  %lun1.i196 = getelementptr inbounds %struct.scsi_device, ptr %207, i32 0, i32 18
  %208 = ptrtoint ptr %lun1.i196 to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %lun1.i196, align 8
  %conv.i197 = trunc i64 %209 to i32
  %call.i198 = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv.i197) #9
  %arrayidx.i199 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 35, i32 %conv.i197
  %210 = ptrtoint ptr %arrayidx.i199 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx.i199, align 1
  %212 = and i8 %211, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %tobool.not.i200 = icmp eq i8 %212, 0
  br i1 %tobool.not.i200, label %sw.bb62.if.end8.i.i_crit_edge, label %if.then.i201

sw.bb62.if.end8.i.i_crit_edge:                    ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.then.i201:                                     ; preds = %sw.bb62
  %213 = zext i8 %call.i198 to i64
  call void @__sanitizer_cov_trace_switch(i64 %213, ptr @__sancov_gen_cov_switch_values.129)
  switch i8 %call.i198, label %if.then.i201.if.end8.i.i_crit_edge [
    i8 0, label %if.then.i201.if.then6.i_crit_edge
    i8 8, label %if.then.i201.if.then6.i_crit_edge354
  ]

if.then.i201.if.then6.i_crit_edge354:             ; preds = %if.then.i201
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

if.then.i201.if.then6.i_crit_edge:                ; preds = %if.then.i201
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

if.then.i201.if.end8.i.i_crit_edge:               ; preds = %if.then.i201
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.then6.i:                                       ; preds = %if.then.i201.if.then6.i_crit_edge, %if.then.i201.if.then6.i_crit_edge354
  %mspro_formatter_enable.i202 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 80
  %214 = ptrtoint ptr %mspro_formatter_enable.i202 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %mspro_formatter_enable.i202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool7.not.i = icmp ne i32 %215, 0
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then6.i, %if.then.i201.if.end8.i.i_crit_edge, %sw.bb62.if.end8.i.i_crit_edge
  %data_size.0.i = phi i32 [ 8, %sw.bb62.if.end8.i.i_crit_edge ], [ 8, %if.then.i201.if.end8.i.i_crit_edge ], [ 108, %if.then6.i ]
  %pro_formatter_flag.0.off0.i = phi i1 [ false, %sw.bb62.if.end8.i.i_crit_edge ], [ false, %if.then.i201.if.end8.i.i_crit_edge ], [ %tobool7.not.i, %if.then6.i ]
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %data_size.0.i, i32 noundef 3264) #12
  %tobool12.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool12.not.i, label %if.end8.i.i.cleanup_crit_edge, label %if.end14.i

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14.i:                                       ; preds = %if.end8.i.i
  %216 = ptrtoint ptr %cmnd46 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %cmnd46, align 4
  %arrayidx15.i206 = getelementptr i8, ptr %217, i32 2
  %218 = ptrtoint ptr %arrayidx15.i206 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx15.i206, align 1
  %trunc.i = trunc i8 %219 to i6
  %220 = zext i6 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %220, ptr @__sancov_gen_cov_switch_values.130)
  switch i6 %trunc.i, label %lor.lhs.false30.i [
    i6 -1, label %if.end14.i.if.then36.i_crit_edge
    i6 28, label %if.end14.i.if.then36.i_crit_edge355
    i6 0, label %if.end14.i.if.then36.i_crit_edge356
  ]

if.end14.i.if.then36.i_crit_edge356:              ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36.i

if.end14.i.if.then36.i_crit_edge355:              ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36.i

if.end14.i.if.then36.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36.i

lor.lhs.false30.i:                                ; preds = %if.end14.i
  %221 = and i8 %219, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %221)
  %cmp34.i = icmp eq i8 %221, 32
  %or.cond166.i = select i1 %pro_formatter_flag.0.off0.i, i1 %cmp34.i, i1 false
  br i1 %or.cond166.i, label %lor.lhs.false30.i.if.then36.i_crit_edge, label %if.end94.i

lor.lhs.false30.i.if.then36.i_crit_edge:          ; preds = %lor.lhs.false30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36.i

if.then36.i:                                      ; preds = %lor.lhs.false30.i.if.then36.i_crit_edge, %if.end14.i.if.then36.i_crit_edge, %if.end14.i.if.then36.i_crit_edge355, %if.end14.i.if.then36.i_crit_edge356
  %222 = ptrtoint ptr %217 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %217, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %223)
  %cmp40.i = icmp eq i8 %223, 26
  br i1 %cmp40.i, label %if.then42.i, label %if.else64.i209

if.then42.i:                                      ; preds = %if.then36.i
  %224 = zext i6 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %224, ptr @__sancov_gen_cov_switch_values.131)
  switch i6 %trunc.i, label %if.else.i208 [
    i6 -1, label %if.then42.i.if.then50.i_crit_edge
    i6 -32, label %if.then42.i.if.then50.i_crit_edge357
  ]

if.then42.i.if.then50.i_crit_edge357:             ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50.i

if.then42.i.if.then50.i_crit_edge:                ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50.i

if.then50.i:                                      ; preds = %if.then42.i.if.then50.i_crit_edge, %if.then42.i.if.then50.i_crit_edge357
  tail call fastcc void @ms_mode_sense(ptr noundef %chip, i8 noundef zeroext 26, i32 noundef %conv.i197, ptr noundef nonnull %call9.i.i, i32 noundef %data_size.0.i) #9
  br label %if.then97.i

if.else.i208:                                     ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  %225 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 3, ptr %call9.i.i, align 128
  %arrayidx54.i = getelementptr i8, ptr %call9.i.i, i32 1
  %226 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 0, ptr %arrayidx54.i, align 1
  %call55.i = tail call i32 @check_card_wp(ptr noundef %chip, i32 noundef %conv.i197) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  %spec.select.i = select i1 %tobool56.not.i, i8 0, i8 -128
  %227 = getelementptr i8, ptr %call9.i.i, i32 2
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %spec.select.i, ptr %227, align 2
  %arrayidx62.i207 = getelementptr i8, ptr %call9.i.i, i32 3
  %229 = ptrtoint ptr %arrayidx62.i207 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 0, ptr %arrayidx62.i207, align 1
  br label %if.then97.i

if.else64.i209:                                   ; preds = %if.then36.i
  %230 = zext i6 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %230, ptr @__sancov_gen_cov_switch_values.132)
  switch i6 %trunc.i, label %if.else75.i [
    i6 -1, label %if.else64.i209.if.then72.i_crit_edge
    i6 -32, label %if.else64.i209.if.then72.i_crit_edge358
  ]

if.else64.i209.if.then72.i_crit_edge358:          ; preds = %if.else64.i209
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then72.i

if.else64.i209.if.then72.i_crit_edge:             ; preds = %if.else64.i209
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then72.i

if.then72.i:                                      ; preds = %if.else64.i209.if.then72.i_crit_edge, %if.else64.i209.if.then72.i_crit_edge358
  tail call fastcc void @ms_mode_sense(ptr noundef %chip, i8 noundef zeroext %223, i32 noundef %conv.i197, ptr noundef nonnull %call9.i.i, i32 noundef %data_size.0.i) #9
  br label %if.then97.i

if.else75.i:                                      ; preds = %if.else64.i209
  call void @__sanitizer_cov_trace_pc() #11
  %231 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 0, ptr %call9.i.i, align 128
  %arrayidx77.i = getelementptr i8, ptr %call9.i.i, i32 1
  %232 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 6, ptr %arrayidx77.i, align 1
  %arrayidx78.i = getelementptr i8, ptr %call9.i.i, i32 2
  %233 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 0, ptr %arrayidx78.i, align 2
  %call79.i = tail call i32 @check_card_wp(ptr noundef %chip, i32 noundef %conv.i197) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  %spec.select181.i = select i1 %tobool80.not.i, i8 0, i8 -128
  %234 = getelementptr i8, ptr %call9.i.i, i32 3
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %spec.select181.i, ptr %234, align 1
  %arrayidx86.i = getelementptr i8, ptr %call9.i.i, i32 4
  %236 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 0, ptr %arrayidx86.i, align 4
  br label %if.then97.i

if.end94.i:                                       ; preds = %lor.lhs.false30.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i100.i.i210 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i197
  %237 = ptrtoint ptr %arrayidx.i100.i.i210 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 112, ptr %arrayidx.i100.i.i210, align 1
  %sense_key2.i101.i.i211 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i197, i32 2
  %238 = ptrtoint ptr %sense_key2.i101.i.i211 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 5, ptr %sense_key2.i101.i.i211, align 1
  %info3.i102.i.i212 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i197, i32 3
  %ad_sense_len.i106.i.i213 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i197, i32 4
  %239 = ptrtoint ptr %info3.i102.i.i212 to i32
  call void @__asan_storeN_noabort(i32 %239, i32 4)
  store i32 0, ptr %info3.i102.i.i212, align 1
  %240 = ptrtoint ptr %ad_sense_len.i106.i.i213 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 10, ptr %ad_sense_len.i106.i.i213, align 1
  %asc16.i107.i.i214 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i197, i32 6
  %241 = ptrtoint ptr %asc16.i107.i.i214 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 36, ptr %asc16.i107.i.i214, align 1
  %ascq17.i108.i.i215 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i197, i32 7
  %242 = ptrtoint ptr %ascq17.i108.i.i215 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 0, ptr %ascq17.i108.i.i215, align 1
  %sns_key_info.i.i.i216 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i197, i32 9
  %243 = ptrtoint ptr %sns_key_info.i.i.i216 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 -64, ptr %sns_key_info.i.i.i216, align 1
  %arrayidx27.i.i.i217 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i197, i32 9, i32 1
  %244 = ptrtoint ptr %arrayidx27.i.i.i217 to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 0, ptr %arrayidx27.i.i.i217, align 1
  %arrayidx32.i.i.i218 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i197, i32 9, i32 2
  %245 = ptrtoint ptr %arrayidx32.i.i.i218 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 1, ptr %arrayidx32.i.i.i218, align 1
  %length.i.i219 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %246 = ptrtoint ptr %length.i.i219 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %length.i.i219, align 4
  br label %if.end102.i

if.then97.i:                                      ; preds = %if.else75.i, %if.then72.i, %if.else.i208, %if.then50.i
  %data_size.2.ph.i = phi i32 [ 8, %if.else75.i ], [ %data_size.0.i, %if.then72.i ], [ 4, %if.else.i208 ], [ %data_size.0.i, %if.then50.i ]
  %length.i169.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %248 = ptrtoint ptr %length.i169.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %length.i169.i, align 4
  %250 = tail call i32 @llvm.umin.i32(i32 %249, i32 %data_size.2.ph.i) #9
  tail call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %call9.i.i, i32 noundef %250, ptr noundef %srb) #9
  %251 = ptrtoint ptr %length.i169.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %length.i169.i, align 4
  %sub.i220 = sub i32 %252, %250
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then97.i, %if.end94.i
  %.sink.i221 = phi i32 [ %247, %if.end94.i ], [ %sub.i220, %if.then97.i ]
  %status.0176.i = phi i32 [ 1, %if.end94.i ], [ 0, %if.then97.i ]
  %resid_len.i.i222 = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %253 = ptrtoint ptr %resid_len.i.i222 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %.sink.i221, ptr %resid_len.i.i222, align 4
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

sw.bb64:                                          ; preds = %if.end45
  %254 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %device, align 4
  %lun1.i225 = getelementptr inbounds %struct.scsi_device, ptr %255, i32 0, i32 18
  %256 = ptrtoint ptr %lun1.i225 to i32
  call void @__asan_load8_noabort(i32 %256)
  %257 = load i64, ptr %lun1.i225, align 8
  %conv.i226 = trunc i64 %257 to i32
  %call.i227 = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv.i226) #9
  %call2.i = tail call i32 @check_card_ready(ptr noundef %chip, i32 noundef %conv.i226) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i228 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i228, label %if.then.i231, label %sw.bb64.if.end5.i_crit_edge

sw.bb64.if.end5.i_crit_edge:                      ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then.i231:                                     ; preds = %sw.bb64
  %mspro_formatter_enable.i229 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 80
  %258 = ptrtoint ptr %mspro_formatter_enable.i229 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %mspro_formatter_enable.i229, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %tobool3.not.i230 = icmp eq i32 %259, 0
  br i1 %tobool3.not.i230, label %if.then4.i238, label %if.then.i231.if.end5.i_crit_edge

if.then.i231.if.end5.i_crit_edge:                 ; preds = %if.then.i231
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then4.i238:                                    ; preds = %if.then.i231
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i46.i.i232 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i226
  %260 = ptrtoint ptr %arrayidx.i46.i.i232 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 112, ptr %arrayidx.i46.i.i232, align 1
  %sense_key2.i47.i.i233 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i226, i32 2
  %261 = ptrtoint ptr %sense_key2.i47.i.i233 to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 2, ptr %sense_key2.i47.i.i233, align 1
  %info3.i48.i.i234 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i226, i32 3
  %ad_sense_len.i52.i.i235 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i226, i32 4
  %262 = ptrtoint ptr %info3.i48.i.i234 to i32
  call void @__asan_storeN_noabort(i32 %262, i32 4)
  store i32 0, ptr %info3.i48.i.i234, align 1
  %263 = ptrtoint ptr %ad_sense_len.i52.i.i235 to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 10, ptr %ad_sense_len.i52.i.i235, align 1
  %asc16.i53.i.i236 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i226, i32 6
  %264 = ptrtoint ptr %asc16.i53.i.i236 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 58, ptr %asc16.i53.i.i236, align 1
  %ascq17.i54.i.i237 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i226, i32 7
  %265 = ptrtoint ptr %ascq17.i54.i.i237 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 0, ptr %ascq17.i54.i.i237, align 1
  br label %cleanup

if.end5.i:                                        ; preds = %if.then.i231.if.end5.i_crit_edge, %sw.bb64.if.end5.i_crit_edge
  %length.i.i239 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %266 = ptrtoint ptr %length.i.i239 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %length.i.i239, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %267)
  %cmp.i240 = icmp ugt i32 %267, 12
  %cond.i = select i1 %cmp.i240, i32 20, i32 12
  %call9.i.i243 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %cond.i, i32 noundef 3264) #12
  %tobool9.not.i = icmp eq ptr %call9.i.i243, null
  br i1 %tobool9.not.i, label %if.end5.i.cleanup_crit_edge, label %if.end11.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.i:                                       ; preds = %if.end5.i
  %268 = ptrtoint ptr %call9.i.i243 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 0, ptr %call9.i.i243, align 128
  %arrayidx13.i = getelementptr i8, ptr %call9.i.i243, i32 1
  %269 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 0, ptr %arrayidx13.i, align 1
  %arrayidx15.i247 = getelementptr i8, ptr %call9.i.i243, i32 2
  %270 = ptrtoint ptr %arrayidx15.i247 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 0, ptr %arrayidx15.i247, align 2
  br i1 %cmp.i240, label %land.lhs.true.i248, label %if.end11.i.if.else.i250_crit_edge

if.end11.i.if.else.i250_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i250

land.lhs.true.i248:                               ; preds = %if.end11.i
  %mspro_formatter_enable18.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 80
  %271 = ptrtoint ptr %mspro_formatter_enable18.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %mspro_formatter_enable18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %272)
  %tobool19.not.i = icmp eq i32 %272, 0
  br i1 %tobool19.not.i, label %land.lhs.true.i248.if.else.i250_crit_edge, label %land.lhs.true20.i

land.lhs.true.i248.if.else.i250_crit_edge:        ; preds = %land.lhs.true.i248
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i250

land.lhs.true20.i:                                ; preds = %land.lhs.true.i248
  %arrayidx21.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 35, i32 %conv.i226
  %273 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %arrayidx21.i, align 1
  %275 = and i8 %274, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %275)
  %tobool23.not.i249 = icmp eq i8 %275, 0
  br i1 %tobool23.not.i249, label %land.lhs.true20.i.if.else.i250_crit_edge, label %land.lhs.true24.i

land.lhs.true20.i.if.else.i250_crit_edge:         ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i250

land.lhs.true24.i:                                ; preds = %land.lhs.true20.i
  %276 = zext i8 %call.i227 to i64
  call void @__sanitizer_cov_trace_switch(i64 %276, ptr @__sancov_gen_cov_switch_values.133)
  switch i8 %call.i227, label %land.lhs.true24.i.if.else.i250_crit_edge [
    i8 0, label %land.lhs.true24.i.if.end34.i_crit_edge
    i8 8, label %land.lhs.true24.i.if.end34.i_crit_edge359
  ]

land.lhs.true24.i.if.end34.i_crit_edge359:        ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

land.lhs.true24.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

land.lhs.true24.i.if.else.i250_crit_edge:         ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i250

if.else.i250:                                     ; preds = %land.lhs.true24.i.if.else.i250_crit_edge, %land.lhs.true20.i.if.else.i250_crit_edge, %land.lhs.true.i248.if.else.i250_crit_edge, %if.end11.i.if.else.i250_crit_edge
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else.i250, %land.lhs.true24.i.if.end34.i_crit_edge, %land.lhs.true24.i.if.end34.i_crit_edge359
  %.sink.i251 = phi i8 [ 8, %if.else.i250 ], [ 16, %land.lhs.true24.i.if.end34.i_crit_edge ], [ 16, %land.lhs.true24.i.if.end34.i_crit_edge359 ]
  %cmp54.i = phi i1 [ false, %if.else.i250 ], [ true, %land.lhs.true24.i.if.end34.i_crit_edge ], [ true, %land.lhs.true24.i.if.end34.i_crit_edge359 ]
  %tobool35.not.i = phi i1 [ true, %if.else.i250 ], [ false, %land.lhs.true24.i.if.end34.i_crit_edge ], [ false, %land.lhs.true24.i.if.end34.i_crit_edge359 ]
  %arrayidx33.i = getelementptr i8, ptr %call9.i.i243, i32 3
  %277 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %.sink.i251, ptr %arrayidx33.i, align 1
  %sd_lock_status.i.i252 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %arrayidx.i.i253 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 31, i32 %conv.i226
  %call36.i = tail call i32 @check_card_ready(ptr noundef %chip, i32 noundef %conv.i226) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.else63.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end34.i
  %call.i.i254 = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv.i226) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %call.i.i254)
  %cmp.i.i255 = icmp eq i8 %call.i.i254, 4
  br i1 %cmp.i.i255, label %land.lhs.true.i.i257, label %if.then38.i.if.end.i170.i_crit_edge

if.then38.i.if.end.i170.i_crit_edge:              ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i170.i

land.lhs.true.i.i257:                             ; preds = %if.then38.i
  %278 = ptrtoint ptr %sd_lock_status.i.i252 to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %sd_lock_status.i.i252, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %279)
  %tobool.not.i.i256 = icmp sgt i8 %279, -1
  br i1 %tobool.not.i.i256, label %land.lhs.true.i.i257.if.end.i170.i_crit_edge, label %land.lhs.true.i.i257.get_card_size.exit.i260_crit_edge

land.lhs.true.i.i257.get_card_size.exit.i260_crit_edge: ; preds = %land.lhs.true.i.i257
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_card_size.exit.i260

land.lhs.true.i.i257.if.end.i170.i_crit_edge:     ; preds = %land.lhs.true.i.i257
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i170.i

if.end.i170.i:                                    ; preds = %land.lhs.true.i.i257.if.end.i170.i_crit_edge, %if.then38.i.if.end.i170.i_crit_edge
  %280 = ptrtoint ptr %arrayidx.i.i253 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %arrayidx.i.i253, align 4
  br label %get_card_size.exit.i260

get_card_size.exit.i260:                          ; preds = %if.end.i170.i, %land.lhs.true.i.i257.get_card_size.exit.i260_crit_edge
  %retval.0.i.i258 = phi i32 [ %281, %if.end.i170.i ], [ 0, %land.lhs.true.i.i257.get_card_size.exit.i260_crit_edge ]
  %shr.i259 = lshr i32 %retval.0.i.i258, 24
  %conv40.i = trunc i32 %shr.i259 to i8
  %arrayidx42.i = getelementptr i8, ptr %call9.i.i243, i32 4
  %282 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 %conv40.i, ptr %arrayidx42.i, align 4
  %shr43.i = lshr i32 %retval.0.i.i258, 16
  %conv44.i = trunc i32 %shr43.i to i8
  %arrayidx46.i = getelementptr i8, ptr %call9.i.i243, i32 5
  %283 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 %conv44.i, ptr %arrayidx46.i, align 1
  %shr47.i = lshr i32 %retval.0.i.i258, 8
  %conv48.i = trunc i32 %shr47.i to i8
  %arrayidx50.i = getelementptr i8, ptr %call9.i.i243, i32 6
  %284 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 %conv48.i, ptr %arrayidx50.i, align 2
  %conv51.i = trunc i32 %retval.0.i.i258 to i8
  %arrayidx53.i = getelementptr i8, ptr %call9.i.i243, i32 7
  %285 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 %conv51.i, ptr %arrayidx53.i, align 1
  %arrayidx58.i = getelementptr i8, ptr %call9.i.i243, i32 8
  br i1 %cmp54.i, label %if.then56.i, label %if.else59.i

if.then56.i:                                      ; preds = %get_card_size.exit.i260
  call void @__sanitizer_cov_trace_pc() #11
  %286 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 2, ptr %arrayidx58.i, align 8
  br label %if.end81.i

if.else59.i:                                      ; preds = %get_card_size.exit.i260
  call void @__sanitizer_cov_trace_pc() #11
  %287 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 0, ptr %arrayidx58.i, align 8
  br label %if.end81.i

if.else63.i:                                      ; preds = %if.end34.i
  %arrayidx65.i = getelementptr i8, ptr %call9.i.i243, i32 4
  %288 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 -1, ptr %arrayidx65.i, align 4
  %arrayidx67.i = getelementptr i8, ptr %call9.i.i243, i32 5
  %289 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 -1, ptr %arrayidx67.i, align 1
  %arrayidx69.i = getelementptr i8, ptr %call9.i.i243, i32 6
  %290 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 -1, ptr %arrayidx69.i, align 2
  %arrayidx71.i = getelementptr i8, ptr %call9.i.i243, i32 7
  %291 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 -1, ptr %arrayidx71.i, align 1
  %arrayidx76.i = getelementptr i8, ptr %call9.i.i243, i32 8
  br i1 %cmp54.i, label %if.then74.i, label %if.else77.i

if.then74.i:                                      ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #11
  %292 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 3, ptr %arrayidx76.i, align 8
  br label %if.end81.i

if.else77.i:                                      ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #11
  %293 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 0, ptr %arrayidx76.i, align 8
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.else77.i, %if.then74.i, %if.else59.i, %if.then56.i
  %arrayidx83.i = getelementptr i8, ptr %call9.i.i243, i32 9
  %294 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 0, ptr %arrayidx83.i, align 1
  %arrayidx85.i = getelementptr i8, ptr %call9.i.i243, i32 10
  %295 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 2, ptr %arrayidx85.i, align 2
  %arrayidx87.i = getelementptr i8, ptr %call9.i.i243, i32 11
  %296 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 0, ptr %arrayidx87.i, align 1
  br i1 %tobool35.not.i, label %if.end81.i.while.end.i_crit_edge, label %while.body.i.1

if.end81.i.while.end.i_crit_edge:                 ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i.1:                                   ; preds = %if.end81.i
  %call36.i.1 = tail call i32 @check_card_ready(ptr noundef %chip, i32 noundef %conv.i226) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.1)
  %tobool37.not.i.1 = icmp eq i32 %call36.i.1, 0
  br i1 %tobool37.not.i.1, label %if.else63.i.1, label %if.then38.i.1

if.then38.i.1:                                    ; preds = %while.body.i.1
  %call.i.i254.1 = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv.i226) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %call.i.i254.1)
  %cmp.i.i255.1 = icmp eq i8 %call.i.i254.1, 4
  br i1 %cmp.i.i255.1, label %land.lhs.true.i.i257.1, label %if.then38.i.1.if.end.i170.i.1_crit_edge

if.then38.i.1.if.end.i170.i.1_crit_edge:          ; preds = %if.then38.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i170.i.1

land.lhs.true.i.i257.1:                           ; preds = %if.then38.i.1
  %297 = ptrtoint ptr %sd_lock_status.i.i252 to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %sd_lock_status.i.i252, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %298)
  %tobool.not.i.i256.1 = icmp sgt i8 %298, -1
  br i1 %tobool.not.i.i256.1, label %land.lhs.true.i.i257.1.if.end.i170.i.1_crit_edge, label %land.lhs.true.i.i257.1.get_card_size.exit.i260.1_crit_edge

land.lhs.true.i.i257.1.get_card_size.exit.i260.1_crit_edge: ; preds = %land.lhs.true.i.i257.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_card_size.exit.i260.1

land.lhs.true.i.i257.1.if.end.i170.i.1_crit_edge: ; preds = %land.lhs.true.i.i257.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i170.i.1

if.end.i170.i.1:                                  ; preds = %land.lhs.true.i.i257.1.if.end.i170.i.1_crit_edge, %if.then38.i.1.if.end.i170.i.1_crit_edge
  %299 = ptrtoint ptr %arrayidx.i.i253 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %arrayidx.i.i253, align 4
  br label %get_card_size.exit.i260.1

get_card_size.exit.i260.1:                        ; preds = %if.end.i170.i.1, %land.lhs.true.i.i257.1.get_card_size.exit.i260.1_crit_edge
  %retval.0.i.i258.1 = phi i32 [ %300, %if.end.i170.i.1 ], [ 0, %land.lhs.true.i.i257.1.get_card_size.exit.i260.1_crit_edge ]
  %shr.i259.1 = lshr i32 %retval.0.i.i258.1, 24
  %conv40.i.1 = trunc i32 %shr.i259.1 to i8
  %arrayidx42.i.1 = getelementptr i8, ptr %call9.i.i243, i32 12
  %301 = ptrtoint ptr %arrayidx42.i.1 to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 %conv40.i.1, ptr %arrayidx42.i.1, align 4
  %shr43.i.1 = lshr i32 %retval.0.i.i258.1, 16
  %conv44.i.1 = trunc i32 %shr43.i.1 to i8
  %arrayidx46.i.1 = getelementptr i8, ptr %call9.i.i243, i32 13
  %302 = ptrtoint ptr %arrayidx46.i.1 to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %conv44.i.1, ptr %arrayidx46.i.1, align 1
  %shr47.i.1 = lshr i32 %retval.0.i.i258.1, 8
  %conv48.i.1 = trunc i32 %shr47.i.1 to i8
  %arrayidx50.i.1 = getelementptr i8, ptr %call9.i.i243, i32 14
  %303 = ptrtoint ptr %arrayidx50.i.1 to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %conv48.i.1, ptr %arrayidx50.i.1, align 2
  %conv51.i.1 = trunc i32 %retval.0.i.i258.1 to i8
  %arrayidx53.i.1 = getelementptr i8, ptr %call9.i.i243, i32 15
  %304 = ptrtoint ptr %arrayidx53.i.1 to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 %conv51.i.1, ptr %arrayidx53.i.1, align 1
  %arrayidx58.i.1 = getelementptr i8, ptr %call9.i.i243, i32 16
  %305 = ptrtoint ptr %arrayidx58.i.1 to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 0, ptr %arrayidx58.i.1, align 16
  br label %if.end81.i.1

if.else63.i.1:                                    ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx65.i.1 = getelementptr i8, ptr %call9.i.i243, i32 12
  %306 = ptrtoint ptr %arrayidx65.i.1 to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 -1, ptr %arrayidx65.i.1, align 4
  %arrayidx67.i.1 = getelementptr i8, ptr %call9.i.i243, i32 13
  %307 = ptrtoint ptr %arrayidx67.i.1 to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 -1, ptr %arrayidx67.i.1, align 1
  %arrayidx69.i.1 = getelementptr i8, ptr %call9.i.i243, i32 14
  %308 = ptrtoint ptr %arrayidx69.i.1 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 -1, ptr %arrayidx69.i.1, align 2
  %arrayidx71.i.1 = getelementptr i8, ptr %call9.i.i243, i32 15
  %309 = ptrtoint ptr %arrayidx71.i.1 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 -1, ptr %arrayidx71.i.1, align 1
  %arrayidx76.i.1 = getelementptr i8, ptr %call9.i.i243, i32 16
  %310 = ptrtoint ptr %arrayidx76.i.1 to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 0, ptr %arrayidx76.i.1, align 16
  br label %if.end81.i.1

if.end81.i.1:                                     ; preds = %if.else63.i.1, %get_card_size.exit.i260.1
  %arrayidx83.i.1 = getelementptr i8, ptr %call9.i.i243, i32 17
  %311 = ptrtoint ptr %arrayidx83.i.1 to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 0, ptr %arrayidx83.i.1, align 1
  %arrayidx85.i.1 = getelementptr i8, ptr %call9.i.i243, i32 18
  %312 = ptrtoint ptr %arrayidx85.i.1 to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 2, ptr %arrayidx85.i.1, align 2
  %arrayidx87.i.1 = getelementptr i8, ptr %call9.i.i243, i32 19
  %313 = ptrtoint ptr %arrayidx87.i.1 to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 0, ptr %arrayidx87.i.1, align 1
  br label %while.end.i

while.end.i:                                      ; preds = %if.end81.i.1, %if.end81.i.while.end.i_crit_edge
  %314 = ptrtoint ptr %length.i.i239 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %length.i.i239, align 4
  %316 = tail call i32 @llvm.umin.i32(i32 %315, i32 %cond.i) #9
  tail call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %call9.i.i243, i32 noundef %316, ptr noundef %srb) #9
  tail call void @kfree(ptr noundef nonnull %call9.i.i243) #9
  %317 = ptrtoint ptr %length.i.i239 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %length.i.i239, align 4
  %sub.i261 = sub i32 %318, %316
  %resid_len.i.i262 = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %319 = ptrtoint ptr %resid_len.i.i262 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %sub.i261, ptr %resid_len.i.i262, align 4
  br label %cleanup

sw.bb66:                                          ; preds = %if.end45
  %arrayidx.i265 = getelementptr i8, ptr %35, i32 1
  %320 = ptrtoint ptr %arrayidx.i265 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %arrayidx.i265, align 1
  %322 = zext i8 %321 to i64
  call void @__sanitizer_cov_trace_switch(i64 %322, ptr @__sancov_gen_cov_switch_values.134)
  switch i8 %321, label %sw.default.i [
    i8 9, label %sw.bb.i
    i8 13, label %sw.bb1.i
    i8 14, label %sw.bb3.i
    i8 4, label %sw.bb5.i
    i8 5, label %sw.bb7.i272
    i8 21, label %sw.bb9.i
    i8 20, label %sw.bb11.i273
    i8 19, label %sw.bb13.i
    i8 16, label %sw.bb15.i
    i8 28, label %sw.bb17.i
  ]

sw.bb.i:                                          ; preds = %sw.bb66
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rtsx_status.i.i) #9
  %323 = getelementptr inbounds [16 x i8], ptr %rtsx_status.i.i, i32 0, i32 1
  %324 = getelementptr inbounds [16 x i8], ptr %rtsx_status.i.i, i32 0, i32 2
  %325 = getelementptr inbounds [16 x i8], ptr %rtsx_status.i.i, i32 0, i32 3
  %326 = getelementptr inbounds [16 x i8], ptr %rtsx_status.i.i, i32 0, i32 4
  %327 = getelementptr inbounds [16 x i8], ptr %rtsx_status.i.i, i32 0, i32 5
  %328 = getelementptr inbounds [16 x i8], ptr %rtsx_status.i.i, i32 0, i32 6
  %329 = getelementptr inbounds [16 x i8], ptr %rtsx_status.i.i, i32 0, i32 7
  %330 = getelementptr inbounds [16 x i8], ptr %rtsx_status.i.i, i32 0, i32 8
  %331 = getelementptr inbounds [16 x i8], ptr %rtsx_status.i.i, i32 0, i32 9
  %332 = getelementptr inbounds [16 x i8], ptr %rtsx_status.i.i, i32 0, i32 10
  %333 = getelementptr inbounds [16 x i8], ptr %rtsx_status.i.i, i32 0, i32 11
  %334 = getelementptr inbounds [16 x i8], ptr %rtsx_status.i.i, i32 0, i32 12
  %335 = getelementptr inbounds [16 x i8], ptr %rtsx_status.i.i, i32 0, i32 13
  %336 = call ptr @memset(ptr %335, i32 255, i32 3)
  %337 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %device, align 4
  %lun1.i.i = getelementptr inbounds %struct.scsi_device, ptr %338, i32 0, i32 18
  %339 = ptrtoint ptr %lun1.i.i to i32
  call void @__asan_load8_noabort(i32 %339)
  %340 = load i64, ptr %lun1.i.i, align 8
  %conv.i.i = trunc i64 %340 to i32
  %vendor_id.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 57
  %341 = ptrtoint ptr %vendor_id.i.i to i32
  call void @__asan_load2_noabort(i32 %341)
  %342 = load i16, ptr %vendor_id.i.i, align 4
  %343 = lshr i16 %342, 8
  %conv3.i.i = trunc i16 %343 to i8
  %344 = ptrtoint ptr %rtsx_status.i.i to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 %conv3.i.i, ptr %rtsx_status.i.i, align 1
  %conv5.i.i = trunc i16 %342 to i8
  %345 = ptrtoint ptr %323 to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 %conv5.i.i, ptr %323, align 1
  %product_id.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %346 = ptrtoint ptr %product_id.i.i to i32
  call void @__asan_load2_noabort(i32 %346)
  %347 = load i16, ptr %product_id.i.i, align 2
  %348 = lshr i16 %347, 8
  %conv9.i.i = trunc i16 %348 to i8
  %349 = ptrtoint ptr %324 to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 %conv9.i.i, ptr %324, align 1
  %conv12.i.i = trunc i16 %347 to i8
  %350 = ptrtoint ptr %325 to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 %conv12.i.i, ptr %325, align 1
  %conv14.i.i = trunc i64 %340 to i8
  %351 = ptrtoint ptr %326 to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 %conv14.i.i, ptr %326, align 1
  %lun_mode.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 67
  %352 = ptrtoint ptr %lun_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %lun_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %353)
  %cmp.i.i266 = icmp eq i8 %353, 1
  br i1 %cmp.i.i266, label %if.then.i.i, label %if.else25.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx18.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 35, i32 %conv.i.i
  %354 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %arrayidx18.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %355)
  %cmp20.i.i = icmp eq i8 %355, 4
  %.17.i.i = select i1 %cmp20.i.i, i8 2, i8 3
  br label %if.end54.i.i

if.else25.i.i:                                    ; preds = %sw.bb.i
  %card_exist.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 20
  %356 = ptrtoint ptr %card_exist.i.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %card_exist.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %357)
  %tobool.not.i.i267 = icmp eq i8 %357, 0
  br i1 %tobool.not.i.i267, label %if.else25.i.i.if.end54.i.i_crit_edge, label %if.then26.i.i

if.else25.i.i.if.end54.i.i_crit_edge:             ; preds = %if.else25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.i.i

if.then26.i.i:                                    ; preds = %if.else25.i.i
  %conv28.i.i = zext i8 %357 to i32
  %and.i.i = and i32 %conv28.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool29.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool29.not.i.i, label %if.else32.i.i, label %if.then26.i.i.if.end54.i.i_crit_edge

if.then26.i.i.if.end54.i.i_crit_edge:             ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.i.i

if.else32.i.i:                                    ; preds = %if.then26.i.i
  %and35.i.i = and i32 %conv28.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i.i)
  %tobool36.not.i.i = icmp eq i32 %and35.i.i, 0
  br i1 %tobool36.not.i.i, label %if.else39.i.i, label %if.else32.i.i.if.end54.i.i_crit_edge

if.else32.i.i.if.end54.i.i_crit_edge:             ; preds = %if.else32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.i.i

if.else39.i.i:                                    ; preds = %if.else32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and42.i.i = and i32 %conv28.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i.i)
  %tobool43.not.i.i = icmp eq i32 %and42.i.i, 0
  %.18.i.i = select i1 %tobool43.not.i.i, i8 7, i8 3
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.else39.i.i, %if.else32.i.i.if.end54.i.i_crit_edge, %if.then26.i.i.if.end54.i.i_crit_edge, %if.else25.i.i.if.end54.i.i_crit_edge, %if.then.i.i
  %.sink.i.i = phi i8 [ %.17.i.i, %if.then.i.i ], [ 4, %if.then26.i.i.if.end54.i.i_crit_edge ], [ 2, %if.else32.i.i.if.end54.i.i_crit_edge ], [ %.18.i.i, %if.else39.i.i ], [ 7, %if.else25.i.i.if.end54.i.i_crit_edge ]
  %..i.i = phi i8 [ 2, %if.then.i.i ], [ 1, %if.then26.i.i.if.end54.i.i_crit_edge ], [ 1, %if.else32.i.i.if.end54.i.i_crit_edge ], [ 1, %if.else39.i.i ], [ 1, %if.else25.i.i.if.end54.i.i_crit_edge ]
  %358 = ptrtoint ptr %327 to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 %.sink.i.i, ptr %327, align 1
  %359 = ptrtoint ptr %328 to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 %..i.i, ptr %328, align 1
  %360 = ptrtoint ptr %329 to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 %conv12.i.i, ptr %329, align 1
  %ic_version.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 59
  %361 = ptrtoint ptr %ic_version.i.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %ic_version.i.i, align 4
  %363 = ptrtoint ptr %330 to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 %362, ptr %330, align 1
  %call.i.i268 = tail call i32 @check_card_exist(ptr noundef %chip, i32 noundef %conv.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i268)
  %tobool68.not.i.i = icmp ne i32 %call.i.i268, 0
  %storemerge1.i.i = zext i1 %tobool68.not.i.i to i8
  %364 = ptrtoint ptr %331 to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 %storemerge1.i.i, ptr %331, align 1
  %365 = ptrtoint ptr %lun_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %lun_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %366)
  %cmp76.i.i = icmp eq i8 %366, 1
  %not.cmp76.i.i = xor i1 %cmp76.i.i, true
  %storemerge2.i.i = zext i1 %not.cmp76.i.i to i8
  %367 = ptrtoint ptr %332 to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 %storemerge2.i.i, ptr %332, align 1
  br i1 %cmp76.i.i, label %if.then87.i.i, label %if.end54.i.i.if.end100.i.i_crit_edge

if.end54.i.i.if.end100.i.i_crit_edge:             ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100.i.i

if.then87.i.i:                                    ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx89.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 35, i32 %conv.i.i
  %368 = ptrtoint ptr %arrayidx89.i.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %arrayidx89.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %369)
  %cmp91.i.i = icmp eq i8 %369, 4
  %.19.i.i = select i1 %cmp91.i.i, i8 4, i8 8
  br label %if.end100.i.i

if.end100.i.i:                                    ; preds = %if.then87.i.i, %if.end54.i.i.if.end100.i.i_crit_edge
  %.sink15.i.i = phi i8 [ %.19.i.i, %if.then87.i.i ], [ 28, %if.end54.i.i.if.end100.i.i_crit_edge ]
  %370 = ptrtoint ptr %333 to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 %.sink15.i.i, ptr %333, align 1
  %call101.i.i = tail call i32 @check_card_ready(ptr noundef %chip, i32 noundef %conv.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101.i.i)
  %tobool102.not.i.i = icmp ne i32 %call101.i.i, 0
  %.5.i.i = zext i1 %tobool102.not.i.i to i8
  %371 = ptrtoint ptr %334 to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 %.5.i.i, ptr %334, align 1
  %call108.i.i = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %call108.i.i)
  %cmp110.i.i = icmp eq i8 %call108.i.i, 16
  br i1 %cmp110.i.i, label %if.end100.i.i.if.end265.sink.split.i.i_crit_edge, label %if.else114.i.i

if.end100.i.i.if.end265.sink.split.i.i_crit_edge: ; preds = %if.end100.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end265.sink.split.i.i

if.else114.i.i:                                   ; preds = %if.end100.i.i
  %call115.i.i = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %call115.i.i)
  %cmp117.i.i = icmp eq i8 %call115.i.i, 4
  br i1 %cmp117.i.i, label %if.then119.i.i, label %if.else195.i.i

if.then119.i.i:                                   ; preds = %if.else114.i.i
  %sd_card120.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  %372 = ptrtoint ptr %335 to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 32, ptr %335, align 1
  %373 = ptrtoint ptr %sd_card120.i.i to i32
  call void @__asan_load2_noabort(i32 %373)
  %374 = load i16, ptr %sd_card120.i.i, align 4
  %conv122.i.i = zext i16 %374 to i32
  %and123.i.i = and i32 %conv122.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123.i.i)
  %cmp124.i.i = icmp eq i32 %and123.i.i, 0
  br i1 %cmp124.i.i, label %land.lhs.true.i.i269, label %if.else157.i.i

land.lhs.true.i.i269:                             ; preds = %if.then119.i.i
  %and134.i.i = and i32 %conv122.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134.i.i)
  %tobool135.not.i.i = icmp eq i32 %and134.i.i, 0
  br i1 %tobool135.not.i.i, label %land.lhs.true.i.i269.if.end140.i.i_crit_edge, label %if.then136.i.i

land.lhs.true.i.i269.if.end140.i.i_crit_edge:     ; preds = %land.lhs.true.i.i269
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.i.i

if.then136.i.i:                                   ; preds = %land.lhs.true.i.i269
  call void @__sanitizer_cov_trace_pc() #11
  %375 = ptrtoint ptr %335 to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 36, ptr %335, align 1
  br label %if.end140.i.i

if.end140.i.i:                                    ; preds = %if.then136.i.i, %land.lhs.true.i.i269.if.end140.i.i_crit_edge
  %and149.i.i = and i32 %conv122.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149.i.i)
  %tobool150.not.i.i = icmp eq i32 %and149.i.i, 0
  br i1 %tobool150.not.i.i, label %if.end140.i.i.read_status.exit.i_crit_edge, label %if.then151.i.i

if.end140.i.i.read_status.exit.i_crit_edge:       ; preds = %if.end140.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_status.exit.i

if.then151.i.i:                                   ; preds = %if.end140.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %376 = ptrtoint ptr %335 to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %335, align 1
  %378 = or i8 %377, 2
  br label %if.end265.sink.split.i.i

if.else157.i.i:                                   ; preds = %if.then119.i.i
  %379 = and i32 %conv122.i.i, 767
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %379)
  %.not13.i.i = icmp eq i32 %379, 513
  %spec.store.select.i.i = select i1 %.not13.i.i, i8 42, i8 40
  %380 = ptrtoint ptr %335 to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 %spec.store.select.i.i, ptr %335, align 1
  %381 = and i32 %conv122.i.i, 4351
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %381)
  %.not14.i.i = icmp eq i32 %381, 4097
  br i1 %.not14.i.i, label %if.then188.i.i, label %if.else157.i.i.read_status.exit.i_crit_edge

if.else157.i.i.read_status.exit.i_crit_edge:      ; preds = %if.else157.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_status.exit.i

if.then188.i.i:                                   ; preds = %if.else157.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %382 = or i8 %spec.store.select.i.i, 4
  br label %if.end265.sink.split.i.i

if.else195.i.i:                                   ; preds = %if.else114.i.i
  %call196.i.i = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %call196.i.i)
  %cmp198.i.i = icmp eq i8 %call196.i.i, 8
  br i1 %cmp198.i.i, label %if.then200.i.i, label %if.else244.i.i

if.then200.i.i:                                   ; preds = %if.else195.i.i
  %ms_card201.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  %383 = ptrtoint ptr %ms_card201.i.i to i32
  call void @__asan_load2_noabort(i32 %383)
  %384 = load i16, ptr %ms_card201.i.i, align 4
  %385 = and i16 %384, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %385)
  %cmp204.i.i = icmp eq i16 %385, 1
  br i1 %cmp204.i.i, label %if.then206.i.i, label %if.then200.i.i.if.end265.sink.split.i.i_crit_edge

if.then200.i.i.if.end265.sink.split.i.i_crit_edge: ; preds = %if.then200.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end265.sink.split.i.i

if.then206.i.i:                                   ; preds = %if.then200.i.i
  %conv209.i.i = zext i16 %384 to i32
  %386 = and i32 %conv209.i.i, 1791
  call void @__sanitizer_cov_trace_const_cmp4(i32 1537, i32 %386)
  %387 = icmp eq i32 %386, 1537
  %spec.store.select11.i.i = select i1 %387, i8 60, i8 56
  %388 = ptrtoint ptr %335 to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 %spec.store.select11.i.i, ptr %335, align 1
  %389 = and i32 %conv209.i.i, 2303
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %389)
  %.not.i.i = icmp eq i32 %389, 2049
  br i1 %.not.i.i, label %if.then235.i.i, label %if.then206.i.i.read_status.exit.i_crit_edge

if.then206.i.i.read_status.exit.i_crit_edge:      ; preds = %if.then206.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_status.exit.i

if.then235.i.i:                                   ; preds = %if.then206.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %390 = or i8 %spec.store.select11.i.i, 1
  br label %if.end265.sink.split.i.i

if.else244.i.i:                                   ; preds = %if.else195.i.i
  %391 = ptrtoint ptr %lun_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %lun_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %392)
  %cmp247.i.i = icmp eq i8 %392, 0
  br i1 %cmp247.i.i, label %if.else244.i.i.if.end265.sink.split.i.i_crit_edge, label %if.else251.i.i

if.else244.i.i.if.end265.sink.split.i.i_crit_edge: ; preds = %if.else244.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end265.sink.split.i.i

if.else251.i.i:                                   ; preds = %if.else244.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx253.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 35, i32 %conv.i.i
  %393 = ptrtoint ptr %arrayidx253.i.i to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %arrayidx253.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %394)
  %cmp255.i.i = icmp eq i8 %394, 4
  %.20.i.i = select i1 %cmp255.i.i, i8 32, i8 48
  br label %if.end265.sink.split.i.i

if.end265.sink.split.i.i:                         ; preds = %if.else251.i.i, %if.else244.i.i.if.end265.sink.split.i.i_crit_edge, %if.then235.i.i, %if.then200.i.i.if.end265.sink.split.i.i_crit_edge, %if.then188.i.i, %if.then151.i.i, %if.end100.i.i.if.end265.sink.split.i.i_crit_edge
  %.sink16.i.i = phi i8 [ %390, %if.then235.i.i ], [ %378, %if.then151.i.i ], [ %382, %if.then188.i.i ], [ 64, %if.end100.i.i.if.end265.sink.split.i.i_crit_edge ], [ 48, %if.then200.i.i.if.end265.sink.split.i.i_crit_edge ], [ 112, %if.else244.i.i.if.end265.sink.split.i.i_crit_edge ], [ %.20.i.i, %if.else251.i.i ]
  %395 = ptrtoint ptr %335 to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 %.sink16.i.i, ptr %335, align 1
  br label %read_status.exit.i

read_status.exit.i:                               ; preds = %if.end265.sink.split.i.i, %if.then206.i.i.read_status.exit.i_crit_edge, %if.else157.i.i.read_status.exit.i_crit_edge, %if.end140.i.i.read_status.exit.i_crit_edge
  %396 = getelementptr inbounds [16 x i8], ptr %rtsx_status.i.i, i32 0, i32 15
  %397 = getelementptr inbounds [16 x i8], ptr %rtsx_status.i.i, i32 0, i32 14
  %398 = ptrtoint ptr %397 to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 120, ptr %397, align 1
  %sdio_func_exist.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 77
  %399 = ptrtoint ptr %sdio_func_exist.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %sdio_func_exist.i.i, align 4
  %401 = and i32 %400, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %401)
  %402 = icmp eq i32 %401, 1
  %storemerge4.i.i = select i1 %402, i8 -125, i8 -126
  %403 = ptrtoint ptr %396 to i32
  call void @__asan_store1_noabort(i32 %403)
  store i8 %storemerge4.i.i, ptr %396, align 1
  %length.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %404 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %length.i.i.i, align 4
  %406 = tail call i32 @llvm.umin.i32(i32 %405, i32 16) #9
  call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %rtsx_status.i.i, i32 noundef %406, ptr noundef %srb) #9
  %407 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %length.i.i.i, align 4
  %sub.i.i = sub i32 %408, %406
  %resid_len.i.i.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %409 = ptrtoint ptr %resid_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 %sub.i.i, ptr %resid_len.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rtsx_status.i.i) #9
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i270 = tail call fastcc i32 @read_mem(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb3.i:                                         ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = tail call fastcc i32 @write_mem(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb5.i:                                         ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i = tail call fastcc i32 @read_eeprom(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb7.i272:                                      ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i271 = tail call fastcc i32 @write_eeprom(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb9.i:                                         ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i = tail call fastcc i32 @toggle_gpio_cmd(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb11.i273:                                     ; preds = %sw.bb66
  %410 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %device, align 4
  %lun2.i.i = getelementptr inbounds %struct.scsi_device, ptr %411, i32 0, i32 18
  %412 = ptrtoint ptr %lun2.i.i to i32
  call void @__asan_load8_noabort(i32 %412)
  %413 = load i64, ptr %lun2.i.i, align 8
  %conv.i42.i = trunc i64 %413 to i32
  %call.i43.i = tail call i32 @check_card_ready(ptr noundef %chip, i32 noundef %conv.i42.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i)
  %tobool.not.i44.i = icmp eq i32 %call.i43.i, 0
  br i1 %tobool.not.i44.i, label %if.then.i45.i, label %if.end.i.i274

if.then.i45.i:                                    ; preds = %sw.bb11.i273
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i46.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i42.i
  %414 = ptrtoint ptr %arrayidx.i46.i.i.i to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 112, ptr %arrayidx.i46.i.i.i, align 1
  %sense_key2.i47.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i42.i, i32 2
  %415 = ptrtoint ptr %sense_key2.i47.i.i.i to i32
  call void @__asan_store1_noabort(i32 %415)
  store i8 2, ptr %sense_key2.i47.i.i.i, align 1
  %info3.i48.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i42.i, i32 3
  %ad_sense_len.i52.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i42.i, i32 4
  %416 = ptrtoint ptr %info3.i48.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %416, i32 4)
  store i32 0, ptr %info3.i48.i.i.i, align 1
  %417 = ptrtoint ptr %ad_sense_len.i52.i.i.i to i32
  call void @__asan_store1_noabort(i32 %417)
  store i8 10, ptr %ad_sense_len.i52.i.i.i, align 1
  %asc16.i53.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i42.i, i32 6
  %418 = ptrtoint ptr %asc16.i53.i.i.i to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 58, ptr %asc16.i53.i.i.i, align 1
  %ascq17.i54.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i42.i, i32 7
  %419 = ptrtoint ptr %ascq17.i54.i.i.i to i32
  call void @__asan_store1_noabort(i32 %419)
  store i8 0, ptr %ascq17.i54.i.i.i, align 1
  br label %cleanup

if.end.i.i274:                                    ; preds = %sw.bb11.i273
  %call3.i.i = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv.i42.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %call3.i.i)
  %cmp.not.i.i = icmp eq i8 %call3.i.i, 4
  br i1 %cmp.not.i.i, label %if.end7.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i274
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i82.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i42.i
  %420 = ptrtoint ptr %arrayidx.i82.i.i.i to i32
  call void @__asan_store1_noabort(i32 %420)
  store i8 112, ptr %arrayidx.i82.i.i.i, align 1
  %sense_key2.i83.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i42.i, i32 2
  %421 = ptrtoint ptr %sense_key2.i83.i.i.i to i32
  call void @__asan_store1_noabort(i32 %421)
  store i8 3, ptr %sense_key2.i83.i.i.i, align 1
  %info3.i84.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i42.i, i32 3
  %ad_sense_len.i88.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i42.i, i32 4
  %422 = ptrtoint ptr %info3.i84.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %422, i32 4)
  store i32 0, ptr %info3.i84.i.i.i, align 1
  %423 = ptrtoint ptr %ad_sense_len.i88.i.i.i to i32
  call void @__asan_store1_noabort(i32 %423)
  store i8 10, ptr %ad_sense_len.i88.i.i.i, align 1
  %asc16.i89.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i42.i, i32 6
  %424 = ptrtoint ptr %asc16.i89.i.i.i to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 17, ptr %asc16.i89.i.i.i, align 1
  %ascq17.i90.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i42.i, i32 7
  %425 = ptrtoint ptr %ascq17.i90.i.i.i to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 0, ptr %ascq17.i90.i.i.i, align 1
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end.i.i274
  call void @__sanitizer_cov_trace_pc() #11
  %resid_len.i.i46.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %426 = ptrtoint ptr %resid_len.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 0, ptr %resid_len.i.i46.i, align 4
  %raw_csd.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 5
  %length.i.i47.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %427 = ptrtoint ptr %length.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %length.i.i47.i, align 4
  tail call void @rtsx_stor_set_xfer_buf(ptr noundef %raw_csd.i.i, i32 noundef %428, ptr noundef %srb) #9
  br label %cleanup

sw.bb13.i:                                        ; preds = %sw.bb66
  %429 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %device, align 4
  %lun1.i49.i = getelementptr inbounds %struct.scsi_device, ptr %430, i32 0, i32 18
  %431 = ptrtoint ptr %lun1.i49.i to i32
  call void @__asan_load8_noabort(i32 %431)
  %432 = load i64, ptr %lun1.i49.i, align 8
  %conv.i50.i = trunc i64 %432 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bus_width.i.i) #9
  %call.i51.i = tail call i32 @check_card_ready(ptr noundef %chip, i32 noundef %conv.i50.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %tobool.not.i52.i = icmp eq i32 %call.i51.i, 0
  br i1 %tobool.not.i52.i, label %if.then.i59.i, label %if.end.i60.i

if.then.i59.i:                                    ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i46.i.i53.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i50.i
  %433 = ptrtoint ptr %arrayidx.i46.i.i53.i to i32
  call void @__asan_store1_noabort(i32 %433)
  store i8 112, ptr %arrayidx.i46.i.i53.i, align 1
  %sense_key2.i47.i.i54.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i50.i, i32 2
  %434 = ptrtoint ptr %sense_key2.i47.i.i54.i to i32
  call void @__asan_store1_noabort(i32 %434)
  store i8 2, ptr %sense_key2.i47.i.i54.i, align 1
  %info3.i48.i.i55.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i50.i, i32 3
  %ad_sense_len.i52.i.i56.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i50.i, i32 4
  %435 = ptrtoint ptr %info3.i48.i.i55.i to i32
  call void @__asan_storeN_noabort(i32 %435, i32 4)
  store i32 0, ptr %info3.i48.i.i55.i, align 1
  %436 = ptrtoint ptr %ad_sense_len.i52.i.i56.i to i32
  call void @__asan_store1_noabort(i32 %436)
  store i8 10, ptr %ad_sense_len.i52.i.i56.i, align 1
  %asc16.i53.i.i57.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i50.i, i32 6
  %437 = ptrtoint ptr %asc16.i53.i.i57.i to i32
  call void @__asan_store1_noabort(i32 %437)
  store i8 58, ptr %asc16.i53.i.i57.i, align 1
  %ascq17.i54.i.i58.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i50.i, i32 7
  %438 = ptrtoint ptr %ascq17.i54.i.i58.i to i32
  call void @__asan_store1_noabort(i32 %438)
  store i8 0, ptr %ascq17.i54.i.i58.i, align 1
  br label %get_card_bus_width.exit.i

if.end.i60.i:                                     ; preds = %sw.bb13.i
  %call2.i.i = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv.i50.i) #9
  %439 = zext i8 %call2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %439, ptr @__sancov_gen_cov_switch_values.135)
  switch i8 %call2.i.i, label %if.else.i.i [
    i8 4, label %if.end.i60.i.if.then8.i.i_crit_edge
    i8 8, label %if.end.i60.i.if.then8.i.i_crit_edge360
  ]

if.end.i60.i.if.then8.i.i_crit_edge360:           ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i.i

if.end.i60.i.if.then8.i.i_crit_edge:              ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.end.i60.i.if.then8.i.i_crit_edge, %if.end.i60.i.if.then8.i.i_crit_edge360
  %arrayidx.i.i275 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 30, i32 %conv.i50.i
  %440 = ptrtoint ptr %arrayidx.i.i275 to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %arrayidx.i.i275, align 1
  %442 = ptrtoint ptr %bus_width.i.i to i32
  call void @__asan_store1_noabort(i32 %442)
  store i8 %441, ptr %bus_width.i.i, align 1
  %resid_len.i.i61.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %443 = ptrtoint ptr %resid_len.i.i61.i to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 0, ptr %resid_len.i.i61.i, align 4
  %length.i.i62.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %444 = ptrtoint ptr %length.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %length.i.i62.i, align 4
  call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %bus_width.i.i, i32 noundef %445, ptr noundef %srb) #9
  br label %get_card_bus_width.exit.i

if.else.i.i:                                      ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i82.i.i63.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i50.i
  %446 = ptrtoint ptr %arrayidx.i82.i.i63.i to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 112, ptr %arrayidx.i82.i.i63.i, align 1
  %sense_key2.i83.i.i64.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i50.i, i32 2
  %447 = ptrtoint ptr %sense_key2.i83.i.i64.i to i32
  call void @__asan_store1_noabort(i32 %447)
  store i8 3, ptr %sense_key2.i83.i.i64.i, align 1
  %info3.i84.i.i65.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i50.i, i32 3
  %ad_sense_len.i88.i.i66.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i50.i, i32 4
  %448 = ptrtoint ptr %info3.i84.i.i65.i to i32
  call void @__asan_storeN_noabort(i32 %448, i32 4)
  store i32 0, ptr %info3.i84.i.i65.i, align 1
  %449 = ptrtoint ptr %ad_sense_len.i88.i.i66.i to i32
  call void @__asan_store1_noabort(i32 %449)
  store i8 10, ptr %ad_sense_len.i88.i.i66.i, align 1
  %asc16.i89.i.i67.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i50.i, i32 6
  %450 = ptrtoint ptr %asc16.i89.i.i67.i to i32
  call void @__asan_store1_noabort(i32 %450)
  store i8 17, ptr %asc16.i89.i.i67.i, align 1
  %ascq17.i90.i.i68.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i50.i, i32 7
  %451 = ptrtoint ptr %ascq17.i90.i.i68.i to i32
  call void @__asan_store1_noabort(i32 %451)
  store i8 0, ptr %ascq17.i90.i.i68.i, align 1
  br label %get_card_bus_width.exit.i

get_card_bus_width.exit.i:                        ; preds = %if.else.i.i, %if.then8.i.i, %if.then.i59.i
  %retval.0.i69.i = phi i32 [ 0, %if.then8.i.i ], [ 1, %if.else.i.i ], [ 1, %if.then.i59.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bus_width.i.i) #9
  br label %cleanup

sw.bb15.i:                                        ; preds = %sw.bb66
  %arrayidx.i70.i = getelementptr i8, ptr %35, i32 2
  %452 = ptrtoint ptr %arrayidx.i70.i to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %arrayidx.i70.i, align 1
  %454 = zext i8 %453 to i64
  call void @__sanitizer_cov_trace_switch(i64 %454, ptr @__sancov_gen_cov_switch_values.136)
  switch i8 %453, label %sw.default.i.i [
    i8 26, label %sw.bb15.i.sw.bb.i.i_crit_edge
    i8 10, label %sw.bb15.i.sw.bb.i.i_crit_edge361
    i8 29, label %sw.bb1.i.i
    i8 13, label %sw.bb3.i.i
    i8 21, label %sw.bb5.i.i
    i8 5, label %sw.bb7.i.i
    i8 22, label %sw.bb15.i.sw.bb9.i.i_crit_edge
    i8 6, label %sw.bb15.i.sw.bb9.i.i_crit_edge362
    i8 23, label %sw.bb11.i.i
    i8 7, label %sw.bb13.i.i
    i8 35, label %sw.bb15.i.i
    i8 19, label %sw.bb17.i.i
    i8 3, label %sw.bb19.i.i
    i8 20, label %sw.bb21.i.i
    i8 4, label %sw.bb23.i.i
    i8 30, label %sw.bb25.i.i
    i8 14, label %sw.bb27.i.i
    i8 39, label %sw.bb29.i.i
    i8 -32, label %sw.bb31.i.i
    i8 16, label %sw.bb33.i.i
  ]

sw.bb15.i.sw.bb9.i.i_crit_edge362:                ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9.i.i

sw.bb15.i.sw.bb9.i.i_crit_edge:                   ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9.i.i

sw.bb15.i.sw.bb.i.i_crit_edge361:                 ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i

sw.bb15.i.sw.bb.i.i_crit_edge:                    ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %sw.bb15.i.sw.bb.i.i_crit_edge, %sw.bb15.i.sw.bb.i.i_crit_edge361
  %call.i71.i = tail call fastcc i32 @read_write(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb1.i.i:                                       ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i72.i = tail call fastcc i32 @read_host_reg(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb3.i.i:                                       ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i.i = tail call fastcc i32 @write_host_reg(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb5.i.i:                                       ; preds = %sw.bb15.i
  %455 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %device, align 4
  %lun1.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %456, i32 0, i32 18
  %457 = ptrtoint ptr %lun1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %457)
  %458 = load i64, ptr %lun1.i.i.i, align 8
  %conv.i.i.i = trunc i64 %458 to i32
  %arrayidx.i.i.i276 = getelementptr i8, ptr %35, i32 3
  %459 = ptrtoint ptr %arrayidx.i.i.i276 to i32
  call void @__asan_load1_noabort(i32 %459)
  %460 = load i8, ptr %arrayidx.i.i.i276, align 1
  %461 = zext i8 %460 to i64
  call void @__sanitizer_cov_trace_switch(i64 %461, ptr @__sancov_gen_cov_switch_values.137)
  switch i8 %460, label %if.else25.i.i.i [
    i8 1, label %if.then.i.i.i
    i8 2, label %if.then23.i.i.i
  ]

if.then.i.i.i:                                    ; preds = %sw.bb5.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i.i) #9
  %arrayidx8.i.i.i = getelementptr i8, ptr %35, i32 4
  %462 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %arrayidx8.i.i.i, align 1
  %464 = zext i8 %463 to i64
  call void @__sanitizer_cov_trace_switch(i64 %464, ptr @__sancov_gen_cov_switch_values.138)
  switch i8 %463, label %sw.default.i.i.i [
    i8 16, label %sw.bb.i.i.i
    i8 4, label %sw.bb11.i.i.i
    i8 8, label %sw.bb13.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %xd_clock.i.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 13
  %465 = ptrtoint ptr %xd_clock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %xd_clock.i.i.i, align 4
  %conv10.i.i.i = trunc i32 %466 to i8
  %467 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %467)
  store i8 %conv10.i.i.i, ptr %tmp.i.i.i, align 1
  br label %sw.epilog.i.i.i

sw.bb11.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sd_clock.i.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  %468 = ptrtoint ptr %sd_clock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %sd_clock.i.i.i, align 4
  %conv12.i.i.i = trunc i32 %469 to i8
  %470 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %470)
  store i8 %conv12.i.i.i, ptr %tmp.i.i.i, align 1
  br label %sw.epilog.i.i.i

sw.bb13.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %ms_clock.i.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 24
  %471 = ptrtoint ptr %ms_clock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %ms_clock.i.i.i, align 4
  %conv14.i.i.i = trunc i32 %472 to i8
  %473 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %473)
  store i8 %conv14.i.i.i, ptr %tmp.i.i.i, align 1
  br label %sw.epilog.i.i.i

sw.default.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i100.i.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i.i
  %474 = ptrtoint ptr %arrayidx.i100.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %474)
  store i8 112, ptr %arrayidx.i100.i.i.i.i, align 1
  %sense_key2.i101.i.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i.i, i32 2
  %475 = ptrtoint ptr %sense_key2.i101.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %475)
  store i8 5, ptr %sense_key2.i101.i.i.i.i, align 1
  %info3.i102.i.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i.i, i32 3
  %ad_sense_len.i106.i.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i.i, i32 4
  %476 = ptrtoint ptr %info3.i102.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %476, i32 4)
  store i32 0, ptr %info3.i102.i.i.i.i, align 1
  %477 = ptrtoint ptr %ad_sense_len.i106.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %477)
  store i8 10, ptr %ad_sense_len.i106.i.i.i.i, align 1
  %asc16.i107.i.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i.i, i32 6
  %478 = ptrtoint ptr %asc16.i107.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %478)
  store i8 36, ptr %asc16.i107.i.i.i.i, align 1
  %ascq17.i108.i.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i.i, i32 7
  %479 = ptrtoint ptr %ascq17.i108.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %479)
  store i8 0, ptr %ascq17.i108.i.i.i.i, align 1
  %sns_key_info.i.i.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i.i, i32 9
  %480 = ptrtoint ptr %sns_key_info.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %480)
  store i8 -64, ptr %sns_key_info.i.i.i.i.i, align 1
  %arrayidx27.i.i.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i.i, i32 9, i32 1
  %481 = ptrtoint ptr %arrayidx27.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %481)
  store i8 0, ptr %arrayidx27.i.i.i.i.i, align 1
  %arrayidx32.i.i.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i.i, i32 9, i32 2
  %482 = ptrtoint ptr %arrayidx32.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %482)
  store i8 1, ptr %arrayidx32.i.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i.i) #9
  br label %cleanup

sw.epilog.i.i.i:                                  ; preds = %sw.bb13.i.i.i, %sw.bb11.i.i.i, %sw.bb.i.i.i
  call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %tmp.i.i.i, i32 noundef 1, ptr noundef %srb) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i.i) #9
  br label %cleanup

if.then23.i.i.i:                                  ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp24.i.i.i) #9
  %blink_led.i.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 141
  %483 = ptrtoint ptr %blink_led.i.i.i to i32
  call void @__asan_load1_noabort(i32 %483)
  %484 = load i8, ptr %blink_led.i.i.i, align 4
  %485 = ptrtoint ptr %tmp24.i.i.i to i32
  call void @__asan_store1_noabort(i32 %485)
  store i8 %484, ptr %tmp24.i.i.i, align 1
  call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %tmp24.i.i.i, i32 noundef 1, ptr noundef %srb) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp24.i.i.i) #9
  br label %cleanup

if.else25.i.i.i:                                  ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i100.i39.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i.i
  %486 = ptrtoint ptr %arrayidx.i100.i39.i.i.i to i32
  call void @__asan_store1_noabort(i32 %486)
  store i8 112, ptr %arrayidx.i100.i39.i.i.i, align 1
  %sense_key2.i101.i40.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i.i, i32 2
  %487 = ptrtoint ptr %sense_key2.i101.i40.i.i.i to i32
  call void @__asan_store1_noabort(i32 %487)
  store i8 5, ptr %sense_key2.i101.i40.i.i.i, align 1
  %info3.i102.i41.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i.i, i32 3
  %ad_sense_len.i106.i42.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i.i, i32 4
  %488 = ptrtoint ptr %info3.i102.i41.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %488, i32 4)
  store i32 0, ptr %info3.i102.i41.i.i.i, align 1
  %489 = ptrtoint ptr %ad_sense_len.i106.i42.i.i.i to i32
  call void @__asan_store1_noabort(i32 %489)
  store i8 10, ptr %ad_sense_len.i106.i42.i.i.i, align 1
  %asc16.i107.i43.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i.i, i32 6
  %490 = ptrtoint ptr %asc16.i107.i43.i.i.i to i32
  call void @__asan_store1_noabort(i32 %490)
  store i8 36, ptr %asc16.i107.i43.i.i.i, align 1
  %ascq17.i108.i44.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i.i, i32 7
  %491 = ptrtoint ptr %ascq17.i108.i44.i.i.i to i32
  call void @__asan_store1_noabort(i32 %491)
  store i8 0, ptr %ascq17.i108.i44.i.i.i, align 1
  %sns_key_info.i.i45.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i.i, i32 9
  %492 = ptrtoint ptr %sns_key_info.i.i45.i.i.i to i32
  call void @__asan_store1_noabort(i32 %492)
  store i8 -64, ptr %sns_key_info.i.i45.i.i.i, align 1
  %arrayidx27.i.i46.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i.i, i32 9, i32 1
  %493 = ptrtoint ptr %arrayidx27.i.i46.i.i.i to i32
  call void @__asan_store1_noabort(i32 %493)
  store i8 0, ptr %arrayidx27.i.i46.i.i.i, align 1
  %arrayidx32.i.i47.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i.i, i32 9, i32 2
  %494 = ptrtoint ptr %arrayidx32.i.i47.i.i.i to i32
  call void @__asan_store1_noabort(i32 %494)
  store i8 1, ptr %arrayidx32.i.i47.i.i.i, align 1
  br label %cleanup

sw.bb7.i.i:                                       ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i.i = tail call fastcc i32 @set_variable(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb9.i.i:                                       ; preds = %sw.bb15.i.sw.bb9.i.i_crit_edge, %sw.bb15.i.sw.bb9.i.i_crit_edge362
  %call10.i.i = tail call fastcc i32 @dma_access_ring_buffer(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb11.i.i:                                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #11
  %call12.i.i = tail call fastcc i32 @read_phy_register(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb13.i.i:                                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #11
  %call14.i.i = tail call fastcc i32 @write_phy_register(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb15.i.i:                                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #11
  %call16.i.i = tail call fastcc i32 @erase_eeprom2(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb17.i.i:                                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #11
  %call18.i.i = tail call fastcc i32 @read_eeprom2(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb19.i.i:                                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #11
  %call20.i.i = tail call fastcc i32 @write_eeprom2(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb21.i.i:                                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #11
  %call22.i.i = tail call fastcc i32 @read_efuse(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb23.i.i:                                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #11
  %call24.i.i = tail call fastcc i32 @write_efuse(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb25.i.i:                                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #11
  %call26.i.i = tail call fastcc i32 @read_cfg_byte(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb27.i.i:                                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #11
  %call28.i.i = tail call fastcc i32 @write_cfg_byte(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb29.i.i:                                      ; preds = %sw.bb15.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i.i.i) #9
  %495 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %495)
  store i16 -1, ptr %reg.i.i.i, align 2, !annotation !311
  %product_id.i.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %496 = ptrtoint ptr %product_id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %496)
  %497 = load i16, ptr %product_id.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21000, i16 %497)
  %cmp.i.i.i = icmp eq i16 %497, 21000
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %if.then.i83.i.i

if.then.i83.i.i:                                  ; preds = %sw.bb29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %498 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %device, align 4
  %lun.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %499, i32 0, i32 18
  %500 = ptrtoint ptr %lun.i.i.i to i32
  call void @__asan_load8_noabort(i32 %500)
  %501 = load i64, ptr %lun.i.i.i, align 8
  %conv3.i.i.i = trunc i64 %501 to i32
  %arrayidx.i100.i.i74.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv3.i.i.i
  %502 = ptrtoint ptr %arrayidx.i100.i.i74.i.i to i32
  call void @__asan_store1_noabort(i32 %502)
  store i8 112, ptr %arrayidx.i100.i.i74.i.i, align 1
  %sense_key2.i101.i.i75.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv3.i.i.i, i32 2
  %503 = ptrtoint ptr %sense_key2.i101.i.i75.i.i to i32
  call void @__asan_store1_noabort(i32 %503)
  store i8 5, ptr %sense_key2.i101.i.i75.i.i, align 1
  %info3.i102.i.i76.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv3.i.i.i, i32 3
  %ad_sense_len.i106.i.i77.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv3.i.i.i, i32 4
  %504 = ptrtoint ptr %info3.i102.i.i76.i.i to i32
  call void @__asan_storeN_noabort(i32 %504, i32 4)
  store i32 0, ptr %info3.i102.i.i76.i.i, align 1
  %505 = ptrtoint ptr %ad_sense_len.i106.i.i77.i.i to i32
  call void @__asan_store1_noabort(i32 %505)
  store i8 10, ptr %ad_sense_len.i106.i.i77.i.i, align 1
  %asc16.i107.i.i78.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv3.i.i.i, i32 6
  %506 = ptrtoint ptr %asc16.i107.i.i78.i.i to i32
  call void @__asan_store1_noabort(i32 %506)
  store i8 36, ptr %asc16.i107.i.i78.i.i, align 1
  %ascq17.i108.i.i79.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv3.i.i.i, i32 7
  %507 = ptrtoint ptr %ascq17.i108.i.i79.i.i to i32
  call void @__asan_store1_noabort(i32 %507)
  store i8 0, ptr %ascq17.i108.i.i79.i.i, align 1
  %sns_key_info.i.i.i80.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv3.i.i.i, i32 9
  %508 = ptrtoint ptr %sns_key_info.i.i.i80.i.i to i32
  call void @__asan_store1_noabort(i32 %508)
  store i8 -64, ptr %sns_key_info.i.i.i80.i.i, align 1
  %arrayidx27.i.i.i81.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv3.i.i.i, i32 9, i32 1
  %509 = ptrtoint ptr %arrayidx27.i.i.i81.i.i to i32
  call void @__asan_store1_noabort(i32 %509)
  store i8 0, ptr %arrayidx27.i.i.i81.i.i, align 1
  %arrayidx32.i.i.i82.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv3.i.i.i, i32 9, i32 2
  %510 = ptrtoint ptr %arrayidx32.i.i.i82.i.i to i32
  call void @__asan_store1_noabort(i32 %510)
  store i8 1, ptr %arrayidx32.i.i.i82.i.i, align 1
  br label %set_chip_mode.exit.i.i

if.end.i.i.i:                                     ; preds = %sw.bb29.i.i
  %arrayidx.i85.i.i = getelementptr i8, ptr %35, i32 3
  %511 = ptrtoint ptr %arrayidx.i85.i.i to i32
  call void @__asan_load1_noabort(i32 %511)
  %512 = load i8, ptr %arrayidx.i85.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %512)
  %tobool.not.i.i.i = icmp eq i8 %512, 0
  %phy_debug_mode23.i.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 75
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then5.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i
  %513 = ptrtoint ptr %phy_debug_mode23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %513)
  store i32 1, ptr %phy_debug_mode23.i.i.i, align 4
  %call.i.i.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -430, i8 noundef zeroext 119, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp7.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp7.not.i.i.i, label %if.end10.i.i.i, label %if.then5.i.i.i.set_chip_mode.exit.i.i_crit_edge

if.then5.i.i.i.set_chip_mode.exit.i.i_crit_edge:  ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_chip_mode.exit.i.i

if.end10.i.i.i:                                   ; preds = %if.then5.i.i.i
  tail call void @rtsx_disable_bus_int(ptr noundef %chip) #9
  %call11.i.i.i = call i32 @rtsx_read_phy_register(ptr noundef %chip, i8 noundef zeroext 28, ptr noundef nonnull %reg.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %cmp12.not.i.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %cmp12.not.i.i.i, label %if.end15.i.i.i, label %if.end10.i.i.i.set_chip_mode.exit.i.i_crit_edge

if.end10.i.i.i.set_chip_mode.exit.i.i_crit_edge:  ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_chip_mode.exit.i.i

if.end15.i.i.i:                                   ; preds = %if.end10.i.i.i
  %514 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %514)
  %515 = load i16, ptr %reg.i.i.i, align 2
  %516 = or i16 %515, 1
  store i16 %516, ptr %reg.i.i.i, align 2
  %call18.i.i.i = call i32 @rtsx_write_phy_register(ptr noundef %chip, i8 noundef zeroext 28, i16 noundef zeroext %516) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i.i)
  %cmp19.not.i.i.i = icmp eq i32 %call18.i.i.i, 0
  br i1 %cmp19.not.i.i.i, label %if.end15.i.i.i.if.end41.i.i.i_crit_edge, label %if.end15.i.i.i.set_chip_mode.exit.i.i_crit_edge

if.end15.i.i.i.set_chip_mode.exit.i.i_crit_edge:  ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_chip_mode.exit.i.i

if.end15.i.i.i.if.end41.i.i.i_crit_edge:          ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  %517 = ptrtoint ptr %phy_debug_mode23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %517)
  store i32 0, ptr %phy_debug_mode23.i.i.i, align 4
  %call24.i.i.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -430, i8 noundef zeroext 119, i8 noundef zeroext 119) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i.i)
  %cmp25.not.i.i.i = icmp eq i32 %call24.i.i.i, 0
  br i1 %cmp25.not.i.i.i, label %if.end28.i.i.i, label %if.else.i.i.i.set_chip_mode.exit.i.i_crit_edge

if.else.i.i.i.set_chip_mode.exit.i.i_crit_edge:   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_chip_mode.exit.i.i

if.end28.i.i.i:                                   ; preds = %if.else.i.i.i
  tail call void @rtsx_enable_bus_int(ptr noundef %chip) #9
  %call29.i.i.i = call i32 @rtsx_read_phy_register(ptr noundef %chip, i8 noundef zeroext 28, ptr noundef nonnull %reg.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i.i)
  %cmp30.not.i.i.i = icmp eq i32 %call29.i.i.i, 0
  br i1 %cmp30.not.i.i.i, label %if.end33.i.i.i, label %if.end28.i.i.i.set_chip_mode.exit.i.i_crit_edge

if.end28.i.i.i.set_chip_mode.exit.i.i_crit_edge:  ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_chip_mode.exit.i.i

if.end33.i.i.i:                                   ; preds = %if.end28.i.i.i
  %518 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %518)
  %519 = load i16, ptr %reg.i.i.i, align 2
  %520 = and i16 %519, -2
  store i16 %520, ptr %reg.i.i.i, align 2
  %call36.i.i.i = call i32 @rtsx_write_phy_register(ptr noundef %chip, i8 noundef zeroext 28, i16 noundef zeroext %520) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i.i)
  %cmp37.not.i.i.i = icmp eq i32 %call36.i.i.i, 0
  br i1 %cmp37.not.i.i.i, label %if.end33.i.i.i.if.end41.i.i.i_crit_edge, label %if.end33.i.i.i.set_chip_mode.exit.i.i_crit_edge

if.end33.i.i.i.set_chip_mode.exit.i.i_crit_edge:  ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_chip_mode.exit.i.i

if.end33.i.i.i.if.end41.i.i.i_crit_edge:          ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.i.i.i

if.end41.i.i.i:                                   ; preds = %if.end33.i.i.i.if.end41.i.i.i_crit_edge, %if.end15.i.i.i.if.end41.i.i.i_crit_edge
  br label %set_chip_mode.exit.i.i

set_chip_mode.exit.i.i:                           ; preds = %if.end41.i.i.i, %if.end33.i.i.i.set_chip_mode.exit.i.i_crit_edge, %if.end28.i.i.i.set_chip_mode.exit.i.i_crit_edge, %if.else.i.i.i.set_chip_mode.exit.i.i_crit_edge, %if.end15.i.i.i.set_chip_mode.exit.i.i_crit_edge, %if.end10.i.i.i.set_chip_mode.exit.i.i_crit_edge, %if.then5.i.i.i.set_chip_mode.exit.i.i_crit_edge, %if.then.i83.i.i
  %retval.0.i.i.i = phi i32 [ 0, %if.end41.i.i.i ], [ 1, %if.then.i83.i.i ], [ 1, %if.then5.i.i.i.set_chip_mode.exit.i.i_crit_edge ], [ 1, %if.end10.i.i.i.set_chip_mode.exit.i.i_crit_edge ], [ 1, %if.end15.i.i.i.set_chip_mode.exit.i.i_crit_edge ], [ 1, %if.else.i.i.i.set_chip_mode.exit.i.i_crit_edge ], [ 1, %if.end28.i.i.i.set_chip_mode.exit.i.i_crit_edge ], [ 1, %if.end33.i.i.i.set_chip_mode.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i.i.i) #9
  br label %cleanup

sw.bb31.i.i:                                      ; preds = %sw.bb15.i
  %arrayidx.i87.i.i = getelementptr i8, ptr %35, i32 3
  %521 = ptrtoint ptr %arrayidx.i87.i.i to i32
  call void @__asan_load1_noabort(i32 %521)
  %522 = load i8, ptr %arrayidx.i87.i.i, align 1
  %.off.i.i.i = add i8 %522, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.off.i.i.i)
  %switch.i.i.i = icmp ult i8 %.off.i.i.i, 4
  br i1 %switch.i.i.i, label %sw.bb.i89.i.i, label %sw.bb31.i.i.cleanup_crit_edge

sw.bb31.i.i.cleanup_crit_edge:                    ; preds = %sw.bb31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i89.i.i:                                    ; preds = %sw.bb31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i88.i.i = tail call fastcc i32 @rw_mem_cmd_buf(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb33.i.i:                                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @get_dev_status(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.default.i.i:                                   ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #11
  %523 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %device, align 4
  %lun.i.i = getelementptr inbounds %struct.scsi_device, ptr %524, i32 0, i32 18
  %525 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_load8_noabort(i32 %525)
  %526 = load i64, ptr %lun.i.i, align 8
  %conv35.i.i = trunc i64 %526 to i32
  %arrayidx.i100.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv35.i.i
  %527 = ptrtoint ptr %arrayidx.i100.i.i.i to i32
  call void @__asan_store1_noabort(i32 %527)
  store i8 112, ptr %arrayidx.i100.i.i.i, align 1
  %sense_key2.i101.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv35.i.i, i32 2
  %528 = ptrtoint ptr %sense_key2.i101.i.i.i to i32
  call void @__asan_store1_noabort(i32 %528)
  store i8 5, ptr %sense_key2.i101.i.i.i, align 1
  %info3.i102.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv35.i.i, i32 3
  %ad_sense_len.i106.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv35.i.i, i32 4
  %529 = ptrtoint ptr %info3.i102.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %529, i32 4)
  store i32 0, ptr %info3.i102.i.i.i, align 1
  %530 = ptrtoint ptr %ad_sense_len.i106.i.i.i to i32
  call void @__asan_store1_noabort(i32 %530)
  store i8 10, ptr %ad_sense_len.i106.i.i.i, align 1
  %asc16.i107.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv35.i.i, i32 6
  %531 = ptrtoint ptr %asc16.i107.i.i.i to i32
  call void @__asan_store1_noabort(i32 %531)
  store i8 36, ptr %asc16.i107.i.i.i, align 1
  %ascq17.i108.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv35.i.i, i32 7
  %532 = ptrtoint ptr %ascq17.i108.i.i.i to i32
  call void @__asan_store1_noabort(i32 %532)
  store i8 0, ptr %ascq17.i108.i.i.i, align 1
  %sns_key_info.i.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv35.i.i, i32 9
  %533 = ptrtoint ptr %sns_key_info.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %533)
  store i8 -64, ptr %sns_key_info.i.i.i.i, align 1
  %arrayidx27.i.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv35.i.i, i32 9, i32 1
  %534 = ptrtoint ptr %arrayidx27.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %534)
  store i8 0, ptr %arrayidx27.i.i.i.i, align 1
  %arrayidx32.i.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv35.i.i, i32 9, i32 2
  %535 = ptrtoint ptr %arrayidx32.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %535)
  store i8 1, ptr %arrayidx32.i.i.i.i, align 1
  br label %cleanup

sw.bb17.i:                                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  %call18.i277 = tail call fastcc i32 @spi_vendor_cmd(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.default.i:                                     ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  %536 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %device, align 4
  %lun.i279 = getelementptr inbounds %struct.scsi_device, ptr %537, i32 0, i32 18
  %538 = ptrtoint ptr %lun.i279 to i32
  call void @__asan_load8_noabort(i32 %538)
  %539 = load i64, ptr %lun.i279, align 8
  %conv19.i = trunc i64 %539 to i32
  %arrayidx.i100.i.i280 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv19.i
  %540 = ptrtoint ptr %arrayidx.i100.i.i280 to i32
  call void @__asan_store1_noabort(i32 %540)
  store i8 112, ptr %arrayidx.i100.i.i280, align 1
  %sense_key2.i101.i.i281 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv19.i, i32 2
  %541 = ptrtoint ptr %sense_key2.i101.i.i281 to i32
  call void @__asan_store1_noabort(i32 %541)
  store i8 5, ptr %sense_key2.i101.i.i281, align 1
  %info3.i102.i.i282 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv19.i, i32 3
  %ad_sense_len.i106.i.i283 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv19.i, i32 4
  %542 = ptrtoint ptr %info3.i102.i.i282 to i32
  call void @__asan_storeN_noabort(i32 %542, i32 4)
  store i32 0, ptr %info3.i102.i.i282, align 1
  %543 = ptrtoint ptr %ad_sense_len.i106.i.i283 to i32
  call void @__asan_store1_noabort(i32 %543)
  store i8 10, ptr %ad_sense_len.i106.i.i283, align 1
  %asc16.i107.i.i284 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv19.i, i32 6
  %544 = ptrtoint ptr %asc16.i107.i.i284 to i32
  call void @__asan_store1_noabort(i32 %544)
  store i8 36, ptr %asc16.i107.i.i284, align 1
  %ascq17.i108.i.i285 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv19.i, i32 7
  %545 = ptrtoint ptr %ascq17.i108.i.i285 to i32
  call void @__asan_store1_noabort(i32 %545)
  store i8 0, ptr %ascq17.i108.i.i285, align 1
  %sns_key_info.i.i.i286 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv19.i, i32 9
  %546 = ptrtoint ptr %sns_key_info.i.i.i286 to i32
  call void @__asan_store1_noabort(i32 %546)
  store i8 -64, ptr %sns_key_info.i.i.i286, align 1
  %arrayidx27.i.i.i287 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv19.i, i32 9, i32 1
  %547 = ptrtoint ptr %arrayidx27.i.i.i287 to i32
  call void @__asan_store1_noabort(i32 %547)
  store i8 0, ptr %arrayidx27.i.i.i287, align 1
  %arrayidx32.i.i.i288 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv19.i, i32 9, i32 2
  %548 = ptrtoint ptr %arrayidx32.i.i.i288 to i32
  call void @__asan_store1_noabort(i32 %548)
  store i8 1, ptr %arrayidx32.i.i.i288, align 1
  br label %cleanup

sw.bb68:                                          ; preds = %if.end45
  %arrayidx.i291 = getelementptr i8, ptr %35, i32 2
  %549 = ptrtoint ptr %arrayidx.i291 to i32
  call void @__asan_load1_noabort(i32 %549)
  %550 = load i8, ptr %arrayidx.i291, align 1
  %551 = zext i8 %550 to i64
  call void @__sanitizer_cov_trace_switch(i64 %551, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %550, label %sw.bb68.cleanup_crit_edge [
    i8 -96, label %if.then.i293
    i8 -80, label %if.then8.i
  ]

sw.bb68.cleanup_crit_edge:                        ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i293:                                     ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #11
  %call.i292 = tail call fastcc i32 @ms_format_cmnd(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

if.then8.i:                                       ; preds = %sw.bb68
  %ms_card1.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  %552 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %device, align 4
  %lun2.i.i295 = getelementptr inbounds %struct.scsi_device, ptr %553, i32 0, i32 18
  %554 = ptrtoint ptr %lun2.i.i295 to i32
  call void @__asan_load8_noabort(i32 %554)
  %555 = load i64, ptr %lun2.i.i295, align 8
  %conv.i.i296 = trunc i64 %555 to i32
  %call.i.i297 = tail call i32 @check_card_ready(ptr noundef %chip, i32 noundef %conv.i.i296) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i297)
  %tobool.not.i.i298 = icmp eq i32 %call.i.i297, 0
  br i1 %tobool.not.i.i298, label %if.then.i.i305, label %if.end.i.i308

if.then.i.i305:                                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i46.i.i.i299 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296
  %556 = ptrtoint ptr %arrayidx.i46.i.i.i299 to i32
  call void @__asan_store1_noabort(i32 %556)
  store i8 112, ptr %arrayidx.i46.i.i.i299, align 1
  %sense_key2.i47.i.i.i300 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 2
  %557 = ptrtoint ptr %sense_key2.i47.i.i.i300 to i32
  call void @__asan_store1_noabort(i32 %557)
  store i8 2, ptr %sense_key2.i47.i.i.i300, align 1
  %info3.i48.i.i.i301 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 3
  %ad_sense_len.i52.i.i.i302 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 4
  %558 = ptrtoint ptr %info3.i48.i.i.i301 to i32
  call void @__asan_storeN_noabort(i32 %558, i32 4)
  store i32 0, ptr %info3.i48.i.i.i301, align 1
  %559 = ptrtoint ptr %ad_sense_len.i52.i.i.i302 to i32
  call void @__asan_store1_noabort(i32 %559)
  store i8 10, ptr %ad_sense_len.i52.i.i.i302, align 1
  %asc16.i53.i.i.i303 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 6
  %560 = ptrtoint ptr %asc16.i53.i.i.i303 to i32
  call void @__asan_store1_noabort(i32 %560)
  store i8 58, ptr %asc16.i53.i.i.i303, align 1
  %ascq17.i54.i.i.i304 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 7
  %561 = ptrtoint ptr %ascq17.i54.i.i.i304 to i32
  call void @__asan_store1_noabort(i32 %561)
  store i8 0, ptr %ascq17.i54.i.i.i304, align 1
  br label %cleanup

if.end.i.i308:                                    ; preds = %if.then8.i
  %call3.i.i306 = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv.i.i296) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %call3.i.i306)
  %cmp.not.i.i307 = icmp eq i8 %call3.i.i306, 8
  br i1 %cmp.not.i.i307, label %if.end7.i.i311, label %if.then6.i.i309

if.then6.i.i309:                                  ; preds = %if.end.i.i308
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i64.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296
  %562 = ptrtoint ptr %arrayidx.i64.i.i.i to i32
  call void @__asan_store1_noabort(i32 %562)
  store i8 112, ptr %arrayidx.i64.i.i.i, align 1
  %sense_key2.i65.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 2
  %563 = ptrtoint ptr %sense_key2.i65.i.i.i to i32
  call void @__asan_store1_noabort(i32 %563)
  store i8 5, ptr %sense_key2.i65.i.i.i, align 1
  %info3.i66.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 3
  %ad_sense_len.i70.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 4
  %564 = ptrtoint ptr %info3.i66.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %564, i32 4)
  store i32 0, ptr %info3.i66.i.i.i, align 1
  %565 = ptrtoint ptr %ad_sense_len.i70.i.i.i to i32
  call void @__asan_store1_noabort(i32 %565)
  store i8 10, ptr %ad_sense_len.i70.i.i.i, align 1
  %asc16.i71.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 6
  %566 = ptrtoint ptr %asc16.i71.i.i.i to i32
  call void @__asan_store1_noabort(i32 %566)
  store i8 37, ptr %asc16.i71.i.i.i, align 1
  %ascq17.i72.i.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 7
  %567 = ptrtoint ptr %ascq17.i72.i.i.i to i32
  call void @__asan_store1_noabort(i32 %567)
  store i8 0, ptr %ascq17.i72.i.i.i, align 1
  br label %cleanup

if.end7.i.i311:                                   ; preds = %if.end.i.i308
  %568 = ptrtoint ptr %cmnd46 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %cmnd46, align 4
  %arrayidx.i.i310 = getelementptr i8, ptr %569, i32 2
  %570 = ptrtoint ptr %arrayidx.i.i310 to i32
  call void @__asan_load1_noabort(i32 %570)
  %571 = load i8, ptr %arrayidx.i.i310, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -80, i8 %571)
  %cmp9.not.i.i = icmp eq i8 %571, -80
  br i1 %cmp9.not.i.i, label %lor.lhs.false.i.i, label %if.end7.i.i311.if.then34.i.i_crit_edge

if.end7.i.i311.if.then34.i.i_crit_edge:           ; preds = %if.end7.i.i311
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34.i.i

lor.lhs.false.i.i:                                ; preds = %if.end7.i.i311
  %arrayidx12.i.i = getelementptr i8, ptr %569, i32 4
  %572 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %572)
  %573 = load i8, ptr %arrayidx12.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 77, i8 %573)
  %cmp14.not.i.i = icmp eq i8 %573, 77
  br i1 %cmp14.not.i.i, label %lor.lhs.false16.i.i, label %lor.lhs.false.i.i.if.then34.i.i_crit_edge

lor.lhs.false.i.i.if.then34.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34.i.i

lor.lhs.false16.i.i:                              ; preds = %lor.lhs.false.i.i
  %arrayidx18.i.i312 = getelementptr i8, ptr %569, i32 5
  %574 = ptrtoint ptr %arrayidx18.i.i312 to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %arrayidx18.i.i312, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %575)
  %cmp20.not.i.i = icmp eq i8 %575, 83
  br i1 %cmp20.not.i.i, label %lor.lhs.false22.i.i, label %lor.lhs.false16.i.i.if.then34.i.i_crit_edge

lor.lhs.false16.i.i.if.then34.i.i_crit_edge:      ; preds = %lor.lhs.false16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34.i.i

lor.lhs.false22.i.i:                              ; preds = %lor.lhs.false16.i.i
  %arrayidx24.i.i = getelementptr i8, ptr %569, i32 6
  %576 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load1_noabort(i32 %576)
  %577 = load i8, ptr %arrayidx24.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 73, i8 %577)
  %cmp26.not.i.i = icmp eq i8 %577, 73
  br i1 %cmp26.not.i.i, label %lor.lhs.false28.i.i, label %lor.lhs.false22.i.i.if.then34.i.i_crit_edge

lor.lhs.false22.i.i.if.then34.i.i_crit_edge:      ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34.i.i

lor.lhs.false28.i.i:                              ; preds = %lor.lhs.false22.i.i
  %arrayidx30.i.i = getelementptr i8, ptr %569, i32 7
  %578 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load1_noabort(i32 %578)
  %579 = load i8, ptr %arrayidx30.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %579)
  %cmp32.not.i.i = icmp eq i8 %579, 68
  br i1 %cmp32.not.i.i, label %if.end35.i.i, label %lor.lhs.false28.i.i.if.then34.i.i_crit_edge

lor.lhs.false28.i.i.if.then34.i.i_crit_edge:      ; preds = %lor.lhs.false28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34.i.i

if.then34.i.i:                                    ; preds = %lor.lhs.false28.i.i.if.then34.i.i_crit_edge, %lor.lhs.false22.i.i.if.then34.i.i_crit_edge, %lor.lhs.false16.i.i.if.then34.i.i_crit_edge, %lor.lhs.false.i.i.if.then34.i.i_crit_edge, %if.end7.i.i311.if.then34.i.i_crit_edge
  %arrayidx.i100.i.i.i313 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296
  %580 = ptrtoint ptr %arrayidx.i100.i.i.i313 to i32
  call void @__asan_store1_noabort(i32 %580)
  store i8 112, ptr %arrayidx.i100.i.i.i313, align 1
  %sense_key2.i101.i.i.i314 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 2
  %581 = ptrtoint ptr %sense_key2.i101.i.i.i314 to i32
  call void @__asan_store1_noabort(i32 %581)
  store i8 5, ptr %sense_key2.i101.i.i.i314, align 1
  %info3.i102.i.i.i315 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 3
  %ad_sense_len.i106.i.i.i316 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 4
  %582 = ptrtoint ptr %info3.i102.i.i.i315 to i32
  call void @__asan_storeN_noabort(i32 %582, i32 4)
  store i32 0, ptr %info3.i102.i.i.i315, align 1
  %583 = ptrtoint ptr %ad_sense_len.i106.i.i.i316 to i32
  call void @__asan_store1_noabort(i32 %583)
  store i8 10, ptr %ad_sense_len.i106.i.i.i316, align 1
  %asc16.i107.i.i.i317 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 6
  %584 = ptrtoint ptr %asc16.i107.i.i.i317 to i32
  call void @__asan_store1_noabort(i32 %584)
  store i8 36, ptr %asc16.i107.i.i.i317, align 1
  %ascq17.i108.i.i.i318 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 7
  %585 = ptrtoint ptr %ascq17.i108.i.i.i318 to i32
  call void @__asan_store1_noabort(i32 %585)
  store i8 0, ptr %ascq17.i108.i.i.i318, align 1
  %sns_key_info.i.i.i.i319 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 9
  %586 = ptrtoint ptr %sns_key_info.i.i.i.i319 to i32
  call void @__asan_store1_noabort(i32 %586)
  store i8 -64, ptr %sns_key_info.i.i.i.i319, align 1
  %arrayidx27.i.i.i.i320 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 9, i32 1
  %587 = ptrtoint ptr %arrayidx27.i.i.i.i320 to i32
  call void @__asan_store1_noabort(i32 %587)
  store i8 0, ptr %arrayidx27.i.i.i.i320, align 1
  %arrayidx32.i.i.i.i321 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 9, i32 2
  %588 = ptrtoint ptr %arrayidx32.i.i.i.i321 to i32
  call void @__asan_store1_noabort(i32 %588)
  store i8 1, ptr %arrayidx32.i.i.i.i321, align 1
  br label %cleanup

if.end35.i.i:                                     ; preds = %lor.lhs.false28.i.i
  %arrayidx37.i.i = getelementptr i8, ptr %569, i32 3
  %589 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load1_noabort(i32 %589)
  %590 = load i8, ptr %arrayidx37.i.i, align 1
  %591 = ptrtoint ptr %ms_card1.i.i to i32
  call void @__asan_load2_noabort(i32 %591)
  %592 = load i16, ptr %ms_card1.i.i, align 4
  %593 = and i16 %592, 2303
  call void @__sanitizer_cov_trace_const_cmp2(i16 2049, i16 %593)
  %.not.i.i322 = icmp eq i16 %593, 2049
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %590)
  %cmp47.i.i = icmp ne i8 %590, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %590)
  %cmp62.i.i = icmp ne i8 %590, 19
  %or.cond218.i.i = select i1 %.not.i.i322, i1 %cmp47.i.i, i1 %cmp62.i.i
  %594 = and i16 %592, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %594)
  %cmp68.i.i = icmp eq i16 %594, 1
  %or.cond219.i.i = select i1 %or.cond218.i.i, i1 %cmp68.i.i, i1 false
  br i1 %or.cond219.i.i, label %if.end71.i.i, label %if.then70.i.i

if.then70.i.i:                                    ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i100.i.i323 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296
  %595 = ptrtoint ptr %arrayidx.i100.i.i323 to i32
  call void @__asan_store1_noabort(i32 %595)
  store i8 112, ptr %arrayidx.i100.i.i323, align 1
  %sense_key2.i101.i.i324 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 2
  %596 = ptrtoint ptr %sense_key2.i101.i.i324 to i32
  call void @__asan_store1_noabort(i32 %596)
  store i8 5, ptr %sense_key2.i101.i.i324, align 1
  %info3.i102.i.i325 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 3
  %ad_sense_len.i106.i.i326 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 4
  %597 = ptrtoint ptr %info3.i102.i.i325 to i32
  call void @__asan_storeN_noabort(i32 %597, i32 4)
  store i32 0, ptr %info3.i102.i.i325, align 1
  %598 = ptrtoint ptr %ad_sense_len.i106.i.i326 to i32
  call void @__asan_store1_noabort(i32 %598)
  store i8 10, ptr %ad_sense_len.i106.i.i326, align 1
  %asc16.i107.i.i327 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 6
  %599 = ptrtoint ptr %asc16.i107.i.i327 to i32
  call void @__asan_store1_noabort(i32 %599)
  store i8 36, ptr %asc16.i107.i.i327, align 1
  %ascq17.i108.i.i328 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 7
  %600 = ptrtoint ptr %ascq17.i108.i.i328 to i32
  call void @__asan_store1_noabort(i32 %600)
  store i8 0, ptr %ascq17.i108.i.i328, align 1
  %sns_key_info.i.i.i329 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 9
  %601 = ptrtoint ptr %sns_key_info.i.i.i329 to i32
  call void @__asan_store1_noabort(i32 %601)
  store i8 -64, ptr %sns_key_info.i.i.i329, align 1
  %arrayidx27.i.i.i330 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 9, i32 1
  %602 = ptrtoint ptr %arrayidx27.i.i.i330 to i32
  call void @__asan_store1_noabort(i32 %602)
  store i8 0, ptr %arrayidx27.i.i.i330, align 1
  %arrayidx32.i.i.i331 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv.i.i296, i32 9, i32 2
  %603 = ptrtoint ptr %arrayidx32.i.i.i331 to i32
  call void @__asan_store1_noabort(i32 %603)
  store i8 1, ptr %arrayidx32.i.i.i331, align 1
  br label %cleanup

if.end71.i.i:                                     ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %590)
  %cmp73.i.i = icmp eq i8 %590, 21
  %.215.i.i = select i1 %cmp73.i.i, i32 60, i32 108
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %.215.i.i, i32 noundef 3264) #12
  %tobool78.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool78.not.i.i, label %if.end71.i.i.cleanup_crit_edge, label %if.end80.i.i

if.end71.i.i.cleanup_crit_edge:                   ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end80.i.i:                                     ; preds = %if.end71.i.i
  %..i.i332 = select i1 %cmp73.i.i, i8 58, i8 106
  %604 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %604)
  store i8 0, ptr %call9.i.i.i, align 128
  %arrayidx83.i.i = getelementptr i8, ptr %call9.i.i.i, i32 1
  %605 = ptrtoint ptr %arrayidx83.i.i to i32
  call void @__asan_store1_noabort(i32 %605)
  store i8 %..i.i332, ptr %arrayidx83.i.i, align 1
  %606 = ptrtoint ptr %ms_card1.i.i to i32
  call void @__asan_load2_noabort(i32 %606)
  %607 = load i16, ptr %ms_card1.i.i, align 4
  %608 = and i16 %607, 2303
  call void @__sanitizer_cov_trace_const_cmp2(i16 2049, i16 %608)
  %.not220.i.i = icmp eq i16 %608, 2049
  %spec.select.i.i = select i1 %.not220.i.i, i8 3, i8 2
  %609 = getelementptr i8, ptr %call9.i.i.i, i32 2
  %610 = ptrtoint ptr %609 to i32
  call void @__asan_store1_noabort(i32 %610)
  store i8 %spec.select.i.i, ptr %609, align 2
  %arrayidx102.i.i = getelementptr i8, ptr %call9.i.i.i, i32 3
  %611 = ptrtoint ptr %arrayidx102.i.i to i32
  call void @__asan_store1_noabort(i32 %611)
  store i8 1, ptr %arrayidx102.i.i, align 1
  %arrayidx104.i.i = getelementptr i8, ptr %call9.i.i.i, i32 4
  %612 = ptrtoint ptr %arrayidx104.i.i to i32
  call void @__asan_store1_noabort(i32 %612)
  store i8 0, ptr %arrayidx104.i.i, align 4
  %arrayidx106.i.i = getelementptr i8, ptr %call9.i.i.i, i32 5
  %613 = ptrtoint ptr %arrayidx106.i.i to i32
  call void @__asan_store1_noabort(i32 %613)
  store i8 0, ptr %arrayidx106.i.i, align 1
  %arrayidx108.i.i = getelementptr i8, ptr %call9.i.i.i, i32 6
  %614 = ptrtoint ptr %arrayidx108.i.i to i32
  call void @__asan_store1_noabort(i32 %614)
  store i8 0, ptr %arrayidx108.i.i, align 2
  %arrayidx110.i.i = getelementptr i8, ptr %call9.i.i.i, i32 7
  %615 = ptrtoint ptr %arrayidx110.i.i to i32
  call void @__asan_store1_noabort(i32 %615)
  store i8 1, ptr %arrayidx110.i.i, align 1
  %arrayidx112.i.i = getelementptr i8, ptr %call9.i.i.i, i32 8
  %616 = ptrtoint ptr %arrayidx112.i.i to i32
  call void @__asan_store1_noabort(i32 %616)
  store i8 %590, ptr %arrayidx112.i.i, align 8
  %.217.i.i = select i1 %cmp73.i.i, i8 49, i8 97
  %arrayidx120.i.i = getelementptr i8, ptr %call9.i.i.i, i32 9
  %617 = ptrtoint ptr %arrayidx120.i.i to i32
  call void @__asan_store1_noabort(i32 %617)
  store i8 0, ptr %arrayidx120.i.i, align 1
  %arrayidx122.i.i = getelementptr i8, ptr %call9.i.i.i, i32 10
  %618 = ptrtoint ptr %arrayidx122.i.i to i32
  call void @__asan_store1_noabort(i32 %618)
  store i8 %.217.i.i, ptr %arrayidx122.i.i, align 2
  %arrayidx124.i.i = getelementptr i8, ptr %call9.i.i.i, i32 11
  %619 = ptrtoint ptr %arrayidx124.i.i to i32
  call void @__asan_store1_noabort(i32 %619)
  store i8 -128, ptr %arrayidx124.i.i, align 1
  %620 = zext i8 %590 to i64
  call void @__sanitizer_cov_trace_switch(i64 %620, ptr @__sancov_gen_cov_switch_values.140)
  switch i8 %590, label %if.else133.i.i [
    i8 16, label %if.end80.i.i.if.then132.i.i_crit_edge
    i8 19, label %if.end80.i.i.if.then132.i.i_crit_edge363
  ]

if.end80.i.i.if.then132.i.i_crit_edge363:         ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then132.i.i

if.end80.i.i.if.then132.i.i_crit_edge:            ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then132.i.i

if.then132.i.i:                                   ; preds = %if.end80.i.i.if.then132.i.i_crit_edge, %if.end80.i.i.if.then132.i.i_crit_edge363
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i.i, i32 12
  %raw_sys_info.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 14
  %621 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %raw_sys_info.i.i, i32 96)
  br label %if.end136.i.i

if.else133.i.i:                                   ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr134.i.i = getelementptr i8, ptr %call9.i.i.i, i32 12
  %raw_model_name.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 15
  %622 = call ptr @memcpy(ptr %add.ptr134.i.i, ptr %raw_model_name.i.i, i32 48)
  br label %if.end136.i.i

if.end136.i.i:                                    ; preds = %if.else133.i.i, %if.then132.i.i
  tail call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %call9.i.i.i, i32 noundef %.215.i.i, ptr noundef %srb) #9
  %length.i.i.i334 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %623 = ptrtoint ptr %length.i.i.i334 to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load i32, ptr %length.i.i.i334, align 4
  %sub.i.i335 = sub i32 %624, %.215.i.i
  %resid_len.i.i.i336 = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %625 = ptrtoint ptr %resid_len.i.i.i336 to i32
  call void @__asan_store4_noabort(i32 %625)
  store i32 %sub.i.i335, ptr %resid_len.i.i.i336, align 4
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #9
  br label %cleanup

sw.bb70:                                          ; preds = %if.end45.sw.bb70_crit_edge, %if.end45.sw.bb70_crit_edge346, %if.end45.sw.bb70_crit_edge347, %if.end45.sw.bb70_crit_edge348, %if.end45.sw.bb70_crit_edge349, %if.end45.sw.bb70_crit_edge350
  %call71 = tail call fastcc i32 @sd_extension_cmnd(ptr noundef %srb, ptr noundef %chip)
  br label %cleanup

sw.bb72:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %call73 = tail call fastcc i32 @mg_report_key(ptr noundef %srb, ptr noundef %chip)
  br label %cleanup

sw.bb74:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %call75 = tail call fastcc i32 @mg_send_key(ptr noundef %srb, ptr noundef %chip)
  br label %cleanup

sw.default:                                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i100.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %626 = ptrtoint ptr %arrayidx.i100.i to i32
  call void @__asan_store1_noabort(i32 %626)
  store i8 112, ptr %arrayidx.i100.i, align 1
  %sense_key2.i101.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %627 = ptrtoint ptr %sense_key2.i101.i to i32
  call void @__asan_store1_noabort(i32 %627)
  store i8 5, ptr %sense_key2.i101.i, align 1
  %info3.i102.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i106.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %628 = ptrtoint ptr %info3.i102.i to i32
  call void @__asan_storeN_noabort(i32 %628, i32 4)
  store i32 0, ptr %info3.i102.i, align 1
  %629 = ptrtoint ptr %ad_sense_len.i106.i to i32
  call void @__asan_store1_noabort(i32 %629)
  store i8 10, ptr %ad_sense_len.i106.i, align 1
  %asc16.i107.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %630 = ptrtoint ptr %asc16.i107.i to i32
  call void @__asan_store1_noabort(i32 %630)
  store i8 36, ptr %asc16.i107.i, align 1
  %ascq17.i108.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %631 = ptrtoint ptr %ascq17.i108.i to i32
  call void @__asan_store1_noabort(i32 %631)
  store i8 0, ptr %ascq17.i108.i, align 1
  %sns_key_info.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9
  %632 = ptrtoint ptr %sns_key_info.i.i to i32
  call void @__asan_store1_noabort(i32 %632)
  store i8 -64, ptr %sns_key_info.i.i, align 1
  %arrayidx27.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 1
  %633 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store1_noabort(i32 %633)
  store i8 0, ptr %arrayidx27.i.i, align 1
  %arrayidx32.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 2
  %634 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store1_noabort(i32 %634)
  store i8 1, ptr %arrayidx32.i.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb74, %sw.bb72, %sw.bb70, %if.end136.i.i, %if.end71.i.i.cleanup_crit_edge, %if.then70.i.i, %if.then34.i.i, %if.then6.i.i309, %if.then.i.i305, %if.then.i293, %sw.bb68.cleanup_crit_edge, %sw.default.i, %sw.bb17.i, %sw.default.i.i, %sw.bb33.i.i, %sw.bb.i89.i.i, %sw.bb31.i.i.cleanup_crit_edge, %set_chip_mode.exit.i.i, %sw.bb27.i.i, %sw.bb25.i.i, %sw.bb23.i.i, %sw.bb21.i.i, %sw.bb19.i.i, %sw.bb17.i.i, %sw.bb15.i.i, %sw.bb13.i.i, %sw.bb11.i.i, %sw.bb9.i.i, %sw.bb7.i.i, %if.else25.i.i.i, %if.then23.i.i.i, %sw.epilog.i.i.i, %sw.default.i.i.i, %sw.bb3.i.i, %sw.bb1.i.i, %sw.bb.i.i, %get_card_bus_width.exit.i, %if.end7.i.i, %if.then6.i.i, %if.then.i45.i, %sw.bb9.i, %sw.bb7.i272, %sw.bb5.i, %sw.bb3.i, %sw.bb1.i, %read_status.exit.i, %while.end.i, %if.end5.i.cleanup_crit_edge, %if.then4.i238, %if.end102.i, %if.end8.i.i.cleanup_crit_edge, %if.end23.i, %if.end18.i.cleanup_crit_edge, %if.then.i179, %sw.bb58.cleanup_crit_edge, %sw.epilog.i, %if.end15.i, %sw.bb11.i.cleanup_crit_edge, %if.then9.i, %sw.bb7.i.cleanup_crit_edge, %if.end.i165.cleanup_crit_edge, %sw.bb56.cleanup_crit_edge, %get_card_size.exit.i, %if.end9.i153.cleanup_crit_edge, %if.then4.i152, %if.then.i144, %if.end78.i, %if.end16.i.cleanup_crit_edge, %cleanup28.sink.split.i, %if.else.i.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %sw.bb, %if.end45.cleanup_crit_edge, %if.end45.cleanup_crit_edge351, %if.end45.cleanup_crit_edge352, %if.then43, %if.then23
  %retval.0 = phi i32 [ 1, %if.then43 ], [ 1, %if.then23 ], [ 1, %sw.default ], [ %call75, %sw.bb74 ], [ %call73, %sw.bb72 ], [ %call71, %sw.bb70 ], [ %call49, %sw.bb ], [ 0, %if.end45.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge351 ], [ 0, %if.end45.cleanup_crit_edge352 ], [ 0, %if.else.i.cleanup_crit_edge ], [ 0, %if.end9.i.cleanup_crit_edge ], [ 1, %cleanup28.sink.split.i ], [ 0, %if.end78.i ], [ 3, %if.end16.i.cleanup_crit_edge ], [ 0, %get_card_size.exit.i ], [ 1, %if.then4.i152 ], [ 1, %if.then.i144 ], [ 3, %if.end9.i153.cleanup_crit_edge ], [ 3, %sw.epilog.i ], [ 1, %if.end15.i ], [ 0, %sw.bb56.cleanup_crit_edge ], [ 0, %if.end.i165.cleanup_crit_edge ], [ 0, %if.then9.i ], [ 0, %sw.bb7.i.cleanup_crit_edge ], [ 0, %sw.bb11.i.cleanup_crit_edge ], [ 1, %if.then.i179 ], [ 0, %sw.bb58.cleanup_crit_edge ], [ 0, %if.end23.i ], [ 3, %if.end18.i.cleanup_crit_edge ], [ %status.0176.i, %if.end102.i ], [ 3, %if.end8.i.i.cleanup_crit_edge ], [ 0, %while.end.i ], [ 1, %if.then4.i238 ], [ 3, %if.end5.i.cleanup_crit_edge ], [ 1, %sw.default.i ], [ %call18.i277, %sw.bb17.i ], [ %retval.0.i69.i, %get_card_bus_width.exit.i ], [ 0, %sw.bb9.i ], [ %call8.i271, %sw.bb7.i272 ], [ %call6.i, %sw.bb5.i ], [ %call4.i, %sw.bb3.i ], [ %call2.i270, %sw.bb1.i ], [ 0, %read_status.exit.i ], [ 1, %if.then6.i.i ], [ 0, %if.end7.i.i ], [ 1, %if.then.i45.i ], [ 1, %sw.default.i.i ], [ 0, %sw.bb33.i.i ], [ %retval.0.i.i.i, %set_chip_mode.exit.i.i ], [ %call28.i.i, %sw.bb27.i.i ], [ %call26.i.i, %sw.bb25.i.i ], [ %call24.i.i, %sw.bb23.i.i ], [ %call22.i.i, %sw.bb21.i.i ], [ %call20.i.i, %sw.bb19.i.i ], [ %call18.i.i, %sw.bb17.i.i ], [ %call16.i.i, %sw.bb15.i.i ], [ %call14.i.i, %sw.bb13.i.i ], [ %call12.i.i, %sw.bb11.i.i ], [ %call10.i.i, %sw.bb9.i.i ], [ %call8.i.i, %sw.bb7.i.i ], [ 0, %sw.bb3.i.i ], [ 0, %sw.bb1.i.i ], [ %call.i71.i, %sw.bb.i.i ], [ 1, %sw.default.i.i.i ], [ 1, %if.else25.i.i.i ], [ 0, %sw.epilog.i.i.i ], [ 0, %if.then23.i.i.i ], [ %call.i88.i.i, %sw.bb.i89.i.i ], [ 3, %sw.bb31.i.i.cleanup_crit_edge ], [ %call.i292, %if.then.i293 ], [ 3, %sw.bb68.cleanup_crit_edge ], [ 1, %if.then6.i.i309 ], [ 1, %if.then34.i.i ], [ 1, %if.then70.i.i ], [ 0, %if.end136.i.i ], [ 1, %if.then.i.i305 ], [ 3, %if.end71.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @get_lun_card(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_write(ptr noundef %srb, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %4 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.do.body72_crit_edge, label %land.lhs.true

entry.do.body72_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body72

land.lhs.true:                                    ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %6 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body72_crit_edge

land.lhs.true.do.body72_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body72

if.then:                                          ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 212
  %12 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 ptrtoint (ptr blockaddress(@read_write, %__here) to i32), ptr %task_state_change, align 4
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %13, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !312
  %call68 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  br label %do.body72

do.body72:                                        ; preds = %__here, %land.lhs.true.do.body72_crit_edge, %entry.do.body72_crit_edge
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %15 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat73 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %16 = ptrtoint ptr %rtsx_stat73 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %rtsx_stat73, align 4
  %call76 = tail call i32 @check_card_ready(ptr noundef %chip, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %do.body72.if.then81_crit_edge, label %lor.lhs.false

do.body72.if.then81_crit_edge:                    ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then81

lor.lhs.false:                                    ; preds = %do.body72
  %call.i = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %call.i)
  %cmp.i = icmp eq i8 %call.i, 4
  br i1 %cmp.i, label %land.lhs.true.i, label %lor.lhs.false.get_card_size.exit_crit_edge

lor.lhs.false.get_card_size.exit_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_card_size.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %sd_lock_status.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %17 = ptrtoint ptr %sd_lock_status.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sd_lock_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %tobool.not.i = icmp sgt i8 %18, -1
  br i1 %tobool.not.i, label %land.lhs.true.i.get_card_size.exit_crit_edge, label %land.lhs.true.i.if.then81_crit_edge

land.lhs.true.i.if.then81_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then81

land.lhs.true.i.get_card_size.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_card_size.exit

get_card_size.exit:                               ; preds = %land.lhs.true.i.get_card_size.exit_crit_edge, %lor.lhs.false.get_card_size.exit_crit_edge
  %arrayidx.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 31, i32 %conv
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp79 = icmp eq i32 %20, 0
  br i1 %cmp79, label %get_card_size.exit.if.then81_crit_edge, label %if.end82

get_card_size.exit.if.then81_crit_edge:           ; preds = %get_card_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then81

if.then81:                                        ; preds = %get_card_size.exit.if.then81_crit_edge, %land.lhs.true.i.if.then81_crit_edge, %do.body72.if.then81_crit_edge
  %arrayidx.i46.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %21 = ptrtoint ptr %arrayidx.i46.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 112, ptr %arrayidx.i46.i, align 1
  %sense_key2.i47.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %22 = ptrtoint ptr %sense_key2.i47.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %sense_key2.i47.i, align 1
  %info3.i48.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i52.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %23 = ptrtoint ptr %info3.i48.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 0, ptr %info3.i48.i, align 1
  %24 = ptrtoint ptr %ad_sense_len.i52.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 10, ptr %ad_sense_len.i52.i, align 1
  %asc16.i53.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %25 = ptrtoint ptr %asc16.i53.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 58, ptr %asc16.i53.i, align 1
  %ascq17.i54.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %26 = ptrtoint ptr %ascq17.i54.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %ascq17.i54.i, align 1
  br label %cleanup

if.end82:                                         ; preds = %get_card_size.exit
  %lun_mc = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 25
  %27 = ptrtoint ptr %lun_mc to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %lun_mc, align 2
  %conv83 = zext i8 %28 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %conv83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool84.not = icmp eq i32 %and, 0
  br i1 %tobool84.not, label %if.then85, label %if.end90

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %29 = trunc i32 %shl to i8
  %conv89 = or i8 %28, %29
  %30 = ptrtoint ptr %lun_mc to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv89, ptr %lun_mc, align 2
  %arrayidx.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 112, ptr %arrayidx.i.i, align 1
  %sense_key2.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %32 = ptrtoint ptr %sense_key2.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 6, ptr %sense_key2.i.i, align 1
  %info3.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %33 = ptrtoint ptr %info3.i.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 0, ptr %info3.i.i, align 1
  %34 = ptrtoint ptr %ad_sense_len.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 10, ptr %ad_sense_len.i.i, align 1
  %asc16.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %35 = ptrtoint ptr %asc16.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 40, ptr %asc16.i.i, align 1
  %ascq17.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %36 = ptrtoint ptr %ascq17.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %ascq17.i.i, align 1
  br label %cleanup

if.end90:                                         ; preds = %if.end82
  %sd_erase_status = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 25
  %37 = ptrtoint ptr %sd_erase_status to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sd_erase_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool91.not = icmp eq i8 %38, 0
  br i1 %tobool91.not, label %if.end108, label %do.body93

do.body93:                                        ; preds = %if.end90
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_write, %if.then103)) #9
          to label %do.end107 [label %if.then103], !srcloc !310

if.then103:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_write.__UNIQUE_ID_ddebug294, ptr noundef %dev.i, ptr noundef nonnull @.str.96) #9
  br label %do.end107

do.end107:                                        ; preds = %if.then103, %do.body93
  %arrayidx.i163.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %43 = ptrtoint ptr %arrayidx.i163.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 112, ptr %arrayidx.i163.i, align 1
  %sense_key2.i164.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %44 = ptrtoint ptr %sense_key2.i164.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 7, ptr %sense_key2.i164.i, align 1
  %info3.i165.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i169.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %45 = ptrtoint ptr %info3.i165.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 0, ptr %info3.i165.i, align 1
  %46 = ptrtoint ptr %ad_sense_len.i169.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 10, ptr %ad_sense_len.i169.i, align 1
  %asc16.i170.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %47 = ptrtoint ptr %asc16.i170.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 17, ptr %asc16.i170.i, align 1
  %ascq17.i171.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %48 = ptrtoint ptr %ascq17.i171.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 19, ptr %ascq17.i171.i, align 1
  br label %cleanup

if.end108:                                        ; preds = %if.end90
  %call109 = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %call109)
  %cmp111 = icmp eq i8 %call109, 4
  br i1 %cmp111, label %if.then113, label %if.end108.if.end136_crit_edge

if.end108.if.end136_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136

if.then113:                                       ; preds = %if.end108
  %sd_lock_status = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %49 = ptrtoint ptr %sd_lock_status to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %sd_lock_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %50)
  %tobool116.not = icmp sgt i8 %50, -1
  br i1 %tobool116.not, label %if.then113.if.end136_crit_edge, label %do.body118

if.then113.if.end136_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136

do.body118:                                       ; preds = %if.then113
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_write, %if.then130)) #9
          to label %do.end134 [label %if.then130], !srcloc !310

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chip, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %dev.i473 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i473, ptr noundef nonnull @.str.97) #9
  br label %do.end134

do.end134:                                        ; preds = %if.then130, %do.body118
  %arrayidx.i163.i474 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %55 = ptrtoint ptr %arrayidx.i163.i474 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 112, ptr %arrayidx.i163.i474, align 1
  %sense_key2.i164.i475 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %56 = ptrtoint ptr %sense_key2.i164.i475 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 7, ptr %sense_key2.i164.i475, align 1
  %info3.i165.i476 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i169.i477 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %57 = ptrtoint ptr %info3.i165.i476 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 0, ptr %info3.i165.i476, align 1
  %58 = ptrtoint ptr %ad_sense_len.i169.i477 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 10, ptr %ad_sense_len.i169.i477, align 1
  %asc16.i170.i478 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %59 = ptrtoint ptr %asc16.i170.i478 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 17, ptr %asc16.i170.i478, align 1
  %ascq17.i171.i479 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %60 = ptrtoint ptr %ascq17.i171.i479 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 19, ptr %ascq17.i171.i479, align 1
  br label %cleanup

if.end136:                                        ; preds = %if.then113.if.end136_crit_edge, %if.end108.if.end136_crit_edge
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %61 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cmnd, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %62, align 1
  %65 = zext i8 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.141)
  switch i8 %64, label %if.end136.if.else262_crit_edge [
    i8 40, label %if.end136.if.then146_crit_edge
    i8 42, label %if.end136.if.then146_crit_edge525
    i8 8, label %if.end136.if.then186_crit_edge
    i8 10, label %if.end136.if.then186_crit_edge526
    i8 -16, label %land.lhs.true215
  ]

if.end136.if.then186_crit_edge526:                ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then186

if.end136.if.then186_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then186

if.end136.if.then146_crit_edge525:                ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then146

if.end136.if.then146_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then146

if.end136.if.else262_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else262

if.then146:                                       ; preds = %if.end136.if.then146_crit_edge, %if.end136.if.then146_crit_edge525
  %arrayidx148 = getelementptr i8, ptr %62, i32 2
  %66 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx148, align 1
  %conv149 = zext i8 %67 to i32
  %shl150 = shl nuw i32 %conv149, 24
  %arrayidx152 = getelementptr i8, ptr %62, i32 3
  %68 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx152, align 1
  %conv153 = zext i8 %69 to i32
  %shl154 = shl nuw nsw i32 %conv153, 16
  %or155 = or i32 %shl154, %shl150
  %arrayidx157 = getelementptr i8, ptr %62, i32 4
  %70 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx157, align 1
  %conv158 = zext i8 %71 to i32
  %shl159 = shl nuw nsw i32 %conv158, 8
  %or160 = or i32 %or155, %shl159
  %arrayidx162 = getelementptr i8, ptr %62, i32 5
  %72 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx162, align 1
  %conv163 = zext i8 %73 to i32
  %or164 = or i32 %or160, %conv163
  %arrayidx166 = getelementptr i8, ptr %62, i32 7
  %74 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx166, align 1
  %conv168 = zext i8 %75 to i16
  %shl169 = shl nuw i16 %conv168, 8
  %arrayidx171 = getelementptr i8, ptr %62, i32 8
  %76 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx171, align 1
  %conv172 = zext i8 %77 to i16
  %or173 = or i16 %shl169, %conv172
  br label %if.end265

if.then186:                                       ; preds = %if.end136.if.then186_crit_edge, %if.end136.if.then186_crit_edge526
  %arrayidx188 = getelementptr i8, ptr %62, i32 1
  %78 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx188, align 1
  %80 = and i8 %79, 31
  %and190 = zext i8 %80 to i32
  %shl191 = shl nuw nsw i32 %and190, 16
  %arrayidx193 = getelementptr i8, ptr %62, i32 2
  %81 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx193, align 1
  %conv194 = zext i8 %82 to i32
  %shl195 = shl nuw nsw i32 %conv194, 8
  %or196 = or i32 %shl191, %shl195
  %arrayidx198 = getelementptr i8, ptr %62, i32 3
  %83 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx198, align 1
  %conv199 = zext i8 %84 to i32
  %or200 = or i32 %or196, %conv199
  %arrayidx202 = getelementptr i8, ptr %62, i32 4
  %85 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx202, align 1
  %conv203 = zext i8 %86 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp205 = icmp eq i8 %86, 0
  %spec.store.select = select i1 %cmp205, i16 256, i16 %conv203
  br label %if.end265

land.lhs.true215:                                 ; preds = %if.end136
  %arrayidx217 = getelementptr i8, ptr %62, i32 1
  %87 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx217, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %88)
  %cmp219 = icmp eq i8 %88, 16
  br i1 %cmp219, label %land.lhs.true221, label %land.lhs.true215.if.else262_crit_edge

land.lhs.true215.if.else262_crit_edge:            ; preds = %land.lhs.true215
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else262

land.lhs.true221:                                 ; preds = %land.lhs.true215
  %arrayidx223 = getelementptr i8, ptr %62, i32 2
  %89 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx223, align 1
  %91 = zext i8 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %90, label %land.lhs.true221.if.else262_crit_edge [
    i8 26, label %land.lhs.true221.if.then233_crit_edge
    i8 10, label %land.lhs.true221.if.then233_crit_edge527
  ]

land.lhs.true221.if.then233_crit_edge527:         ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then233

land.lhs.true221.if.then233_crit_edge:            ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then233

land.lhs.true221.if.else262_crit_edge:            ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else262

if.then233:                                       ; preds = %land.lhs.true221.if.then233_crit_edge, %land.lhs.true221.if.then233_crit_edge527
  %arrayidx235 = getelementptr i8, ptr %62, i32 4
  %92 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx235, align 1
  %conv236 = zext i8 %93 to i32
  %shl237 = shl nuw i32 %conv236, 24
  %arrayidx239 = getelementptr i8, ptr %62, i32 5
  %94 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx239, align 1
  %conv240 = zext i8 %95 to i32
  %shl241 = shl nuw nsw i32 %conv240, 16
  %or242 = or i32 %shl241, %shl237
  %arrayidx244 = getelementptr i8, ptr %62, i32 6
  %96 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx244, align 1
  %conv245 = zext i8 %97 to i32
  %shl246 = shl nuw nsw i32 %conv245, 8
  %or247 = or i32 %or242, %shl246
  %arrayidx249 = getelementptr i8, ptr %62, i32 7
  %98 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx249, align 1
  %conv250 = zext i8 %99 to i32
  %or251 = or i32 %or247, %conv250
  %arrayidx253 = getelementptr i8, ptr %62, i32 9
  %100 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx253, align 1
  %conv255 = zext i8 %101 to i16
  %shl256 = shl nuw i16 %conv255, 8
  %arrayidx258 = getelementptr i8, ptr %62, i32 10
  %102 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx258, align 1
  %conv259 = zext i8 %103 to i16
  %or260 = or i16 %shl256, %conv259
  br label %if.end265

if.else262:                                       ; preds = %land.lhs.true221.if.else262_crit_edge, %land.lhs.true215.if.else262_crit_edge, %if.end136.if.else262_crit_edge
  %arrayidx.i100.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %104 = ptrtoint ptr %arrayidx.i100.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 112, ptr %arrayidx.i100.i, align 1
  %sense_key2.i101.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %105 = ptrtoint ptr %sense_key2.i101.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 5, ptr %sense_key2.i101.i, align 1
  %info3.i102.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i106.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %106 = ptrtoint ptr %info3.i102.i to i32
  call void @__asan_storeN_noabort(i32 %106, i32 4)
  store i32 0, ptr %info3.i102.i, align 1
  %107 = ptrtoint ptr %ad_sense_len.i106.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 10, ptr %ad_sense_len.i106.i, align 1
  %asc16.i107.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %108 = ptrtoint ptr %asc16.i107.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 36, ptr %asc16.i107.i, align 1
  %ascq17.i108.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %109 = ptrtoint ptr %ascq17.i108.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %ascq17.i108.i, align 1
  %sns_key_info.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9
  %110 = ptrtoint ptr %sns_key_info.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -64, ptr %sns_key_info.i.i, align 1
  %arrayidx27.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 1
  %111 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %arrayidx27.i.i, align 1
  %arrayidx32.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 2
  %112 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %arrayidx32.i.i, align 1
  br label %cleanup

if.end265:                                        ; preds = %if.then233, %if.then186, %if.then146
  %sec_cnt.0 = phi i16 [ %or173, %if.then146 ], [ %spec.store.select, %if.then186 ], [ %or260, %if.then233 ]
  %start_sec.0 = phi i32 [ %or164, %if.then146 ], [ %or200, %if.then186 ], [ %or251, %if.then233 ]
  %call.i480 = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %call.i480)
  %cmp.i481 = icmp eq i8 %call.i480, 4
  br i1 %cmp.i481, label %land.lhs.true.i484, label %if.end265.if.end.i486_crit_edge

if.end265.if.end.i486_crit_edge:                  ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i486

land.lhs.true.i484:                               ; preds = %if.end265
  %sd_lock_status.i482 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %113 = ptrtoint ptr %sd_lock_status.i482 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %sd_lock_status.i482, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %114)
  %tobool.not.i483 = icmp sgt i8 %114, -1
  br i1 %tobool.not.i483, label %land.lhs.true.i484.if.end.i486_crit_edge, label %land.lhs.true.i484.get_card_size.exit488_crit_edge

land.lhs.true.i484.get_card_size.exit488_crit_edge: ; preds = %land.lhs.true.i484
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_card_size.exit488

land.lhs.true.i484.if.end.i486_crit_edge:         ; preds = %land.lhs.true.i484
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i486

if.end.i486:                                      ; preds = %land.lhs.true.i484.if.end.i486_crit_edge, %if.end265.if.end.i486_crit_edge
  %115 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx.i, align 4
  br label %get_card_size.exit488

get_card_size.exit488:                            ; preds = %if.end.i486, %land.lhs.true.i484.get_card_size.exit488_crit_edge
  %retval.0.i487 = phi i32 [ %116, %if.end.i486 ], [ 0, %land.lhs.true.i484.get_card_size.exit488_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start_sec.0, i32 %retval.0.i487)
  %cmp267 = icmp ugt i32 %start_sec.0, %retval.0.i487
  br i1 %cmp267, label %get_card_size.exit488.if.then274_crit_edge, label %lor.lhs.false269

get_card_size.exit488.if.then274_crit_edge:       ; preds = %get_card_size.exit488
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then274

lor.lhs.false269:                                 ; preds = %get_card_size.exit488
  %conv270 = zext i16 %sec_cnt.0 to i32
  %add = add i32 %start_sec.0, %conv270
  %call.i489 = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %call.i489)
  %cmp.i490 = icmp eq i8 %call.i489, 4
  br i1 %cmp.i490, label %land.lhs.true.i493, label %lor.lhs.false269.if.end.i495_crit_edge

lor.lhs.false269.if.end.i495_crit_edge:           ; preds = %lor.lhs.false269
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i495

land.lhs.true.i493:                               ; preds = %lor.lhs.false269
  %sd_lock_status.i491 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %117 = ptrtoint ptr %sd_lock_status.i491 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %sd_lock_status.i491, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %118)
  %tobool.not.i492 = icmp sgt i8 %118, -1
  br i1 %tobool.not.i492, label %land.lhs.true.i493.if.end.i495_crit_edge, label %land.lhs.true.i493.get_card_size.exit497_crit_edge

land.lhs.true.i493.get_card_size.exit497_crit_edge: ; preds = %land.lhs.true.i493
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_card_size.exit497

land.lhs.true.i493.if.end.i495_crit_edge:         ; preds = %land.lhs.true.i493
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i495

if.end.i495:                                      ; preds = %land.lhs.true.i493.if.end.i495_crit_edge, %lor.lhs.false269.if.end.i495_crit_edge
  %119 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i, align 4
  br label %get_card_size.exit497

get_card_size.exit497:                            ; preds = %if.end.i495, %land.lhs.true.i493.get_card_size.exit497_crit_edge
  %retval.0.i496 = phi i32 [ %120, %if.end.i495 ], [ 0, %land.lhs.true.i493.get_card_size.exit497_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %retval.0.i496)
  %cmp272 = icmp ugt i32 %add, %retval.0.i496
  br i1 %cmp272, label %get_card_size.exit497.if.then274_crit_edge, label %if.end275

get_card_size.exit497.if.then274_crit_edge:       ; preds = %get_card_size.exit497
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then274

if.then274:                                       ; preds = %get_card_size.exit497.if.then274_crit_edge, %get_card_size.exit488.if.then274_crit_edge
  %arrayidx.i55.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %121 = ptrtoint ptr %arrayidx.i55.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 112, ptr %arrayidx.i55.i, align 1
  %sense_key2.i56.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %122 = ptrtoint ptr %sense_key2.i56.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 5, ptr %sense_key2.i56.i, align 1
  %info3.i57.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i61.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %123 = ptrtoint ptr %info3.i57.i to i32
  call void @__asan_storeN_noabort(i32 %123, i32 4)
  store i32 0, ptr %info3.i57.i, align 1
  %124 = ptrtoint ptr %ad_sense_len.i61.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 10, ptr %ad_sense_len.i61.i, align 1
  %asc16.i62.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %125 = ptrtoint ptr %asc16.i62.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 33, ptr %asc16.i62.i, align 1
  %ascq17.i63.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %126 = ptrtoint ptr %ascq17.i63.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %ascq17.i63.i, align 1
  br label %cleanup

if.end275:                                        ; preds = %get_card_size.exit497
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sec_cnt.0)
  %cmp277 = icmp eq i16 %sec_cnt.0, 0
  br i1 %cmp277, label %if.then279, label %if.end280

if.then279:                                       ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #11
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %127 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %resid_len.i, align 4
  br label %cleanup

if.end280:                                        ; preds = %if.end275
  %arrayidx281 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 36, i32 %conv
  %128 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx281, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %129)
  %cmp282 = icmp eq i32 %129, 3
  br i1 %cmp282, label %do.body285, label %if.end307

do.body285:                                       ; preds = %if.end280
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_write.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_write, %if.then297)) #9
          to label %do.end301 [label %if.then297], !srcloc !310

if.then297:                                       ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #11
  %130 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %chip, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  %dev.i498 = getelementptr inbounds %struct.pci_dev, ptr %133, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_write.__UNIQUE_ID_ddebug296, ptr noundef %dev.i498, ptr noundef nonnull @.str.98) #9
  br label %do.end301

do.end301:                                        ; preds = %if.then297, %do.body285
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 15
  %134 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %135)
  %cmp302 = icmp eq i32 %135, 2
  %arrayidx.i82.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %136 = ptrtoint ptr %arrayidx.i82.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 112, ptr %arrayidx.i82.i, align 1
  %sense_key2.i83.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %137 = ptrtoint ptr %sense_key2.i83.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 3, ptr %sense_key2.i83.i, align 1
  %info3.i84.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i88.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %138 = ptrtoint ptr %info3.i84.i to i32
  call void @__asan_storeN_noabort(i32 %138, i32 4)
  store i32 0, ptr %info3.i84.i, align 1
  %139 = ptrtoint ptr %ad_sense_len.i88.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 10, ptr %ad_sense_len.i88.i, align 1
  %asc16.i89.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  br i1 %cmp302, label %if.then304, label %if.else305

if.then304:                                       ; preds = %do.end301
  call void @__sanitizer_cov_trace_pc() #11
  %140 = ptrtoint ptr %asc16.i89.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 17, ptr %asc16.i89.i, align 1
  %ascq17.i90.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %141 = ptrtoint ptr %ascq17.i90.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %ascq17.i90.i, align 1
  br label %cleanup

if.else305:                                       ; preds = %do.end301
  call void @__sanitizer_cov_trace_pc() #11
  %142 = ptrtoint ptr %asc16.i89.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 12, ptr %asc16.i89.i, align 1
  %ascq17.i99.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %143 = ptrtoint ptr %ascq17.i99.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 2, ptr %ascq17.i99.i, align 1
  br label %cleanup

if.end307:                                        ; preds = %if.end280
  %sc_data_direction308 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 15
  %144 = ptrtoint ptr %sc_data_direction308 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %sc_data_direction308, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %145)
  %cmp309 = icmp eq i32 %145, 1
  br i1 %cmp309, label %if.then311, label %if.end307.if.end333_crit_edge

if.end307.if.end333_crit_edge:                    ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end333

if.then311:                                       ; preds = %if.end307
  %call312 = tail call i32 @check_card_wp(ptr noundef %chip, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call312)
  %tobool313.not = icmp eq i32 %call312, 0
  br i1 %tobool313.not, label %if.then311.if.end333_crit_edge, label %do.body315

if.then311.if.end333_crit_edge:                   ; preds = %if.then311
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end333

do.body315:                                       ; preds = %if.then311
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_write.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_write, %if.then327)) #9
          to label %do.end331 [label %if.then327], !srcloc !310

if.then327:                                       ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #11
  %146 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %chip, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 4
  %dev.i499 = getelementptr inbounds %struct.pci_dev, ptr %149, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_write.__UNIQUE_ID_ddebug297, ptr noundef %dev.i499, ptr noundef nonnull @.str.99) #9
  br label %do.end331

do.end331:                                        ; preds = %if.then327, %do.body315
  %arrayidx.i73.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %150 = ptrtoint ptr %arrayidx.i73.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 112, ptr %arrayidx.i73.i, align 1
  %sense_key2.i74.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %151 = ptrtoint ptr %sense_key2.i74.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 7, ptr %sense_key2.i74.i, align 1
  %info3.i75.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i79.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %152 = ptrtoint ptr %info3.i75.i to i32
  call void @__asan_storeN_noabort(i32 %152, i32 4)
  store i32 0, ptr %info3.i75.i, align 1
  %153 = ptrtoint ptr %ad_sense_len.i79.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 10, ptr %ad_sense_len.i79.i, align 1
  %asc16.i80.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %154 = ptrtoint ptr %asc16.i80.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 39, ptr %asc16.i80.i, align 1
  %ascq17.i81.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %155 = ptrtoint ptr %ascq17.i81.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %ascq17.i81.i, align 1
  br label %cleanup

if.end333:                                        ; preds = %if.then311.if.end333_crit_edge, %if.end307.if.end333_crit_edge
  %call334 = tail call i32 @card_rw(ptr noundef %srb, ptr noundef %chip, i32 noundef %start_sec.0, i16 noundef zeroext %sec_cnt.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call334)
  %cmp335.not = icmp eq i32 %call334, 0
  br i1 %cmp335.not, label %if.else355, label %if.then337

if.then337:                                       ; preds = %if.end333
  %need_release = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 14
  %156 = ptrtoint ptr %need_release to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %need_release, align 4
  %arrayidx338 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 35, i32 %conv
  %158 = ptrtoint ptr %arrayidx338 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx338, align 1
  %conv339 = zext i8 %159 to i32
  %and340 = and i32 %157, %conv339
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and340)
  %tobool341.not = icmp eq i32 %and340, 0
  br i1 %tobool341.not, label %if.else345, label %if.then342

if.then342:                                       ; preds = %if.then337
  call void @__sanitizer_cov_trace_pc() #11
  %160 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %arrayidx281, align 4
  %arrayidx.i46.i500 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %161 = ptrtoint ptr %arrayidx.i46.i500 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 112, ptr %arrayidx.i46.i500, align 1
  %sense_key2.i47.i501 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %162 = ptrtoint ptr %sense_key2.i47.i501 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 2, ptr %sense_key2.i47.i501, align 1
  %info3.i48.i502 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i52.i503 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %163 = ptrtoint ptr %info3.i48.i502 to i32
  call void @__asan_storeN_noabort(i32 %163, i32 4)
  store i32 0, ptr %info3.i48.i502, align 1
  %164 = ptrtoint ptr %ad_sense_len.i52.i503 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 10, ptr %ad_sense_len.i52.i503, align 1
  %asc16.i53.i504 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %165 = ptrtoint ptr %asc16.i53.i504 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 58, ptr %asc16.i53.i504, align 1
  %ascq17.i54.i505 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %166 = ptrtoint ptr %ascq17.i54.i505 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %ascq17.i54.i505, align 1
  br label %cleanup

if.else345:                                       ; preds = %if.then337
  %167 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx281, align 4
  %inc = add i32 %168, 1
  store i32 %inc, ptr %arrayidx281, align 4
  %169 = ptrtoint ptr %sc_data_direction308 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %sc_data_direction308, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %170)
  %cmp349 = icmp eq i32 %170, 2
  %arrayidx.i82.i506 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %171 = ptrtoint ptr %arrayidx.i82.i506 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 112, ptr %arrayidx.i82.i506, align 1
  %sense_key2.i83.i507 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %172 = ptrtoint ptr %sense_key2.i83.i507 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 3, ptr %sense_key2.i83.i507, align 1
  %info3.i84.i508 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i88.i509 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %173 = ptrtoint ptr %info3.i84.i508 to i32
  call void @__asan_storeN_noabort(i32 %173, i32 4)
  store i32 0, ptr %info3.i84.i508, align 1
  %174 = ptrtoint ptr %ad_sense_len.i88.i509 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 10, ptr %ad_sense_len.i88.i509, align 1
  %asc16.i89.i510 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  br i1 %cmp349, label %if.then351, label %if.else352

if.then351:                                       ; preds = %if.else345
  call void @__sanitizer_cov_trace_pc() #11
  %175 = ptrtoint ptr %asc16.i89.i510 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 17, ptr %asc16.i89.i510, align 1
  %ascq17.i90.i511 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %176 = ptrtoint ptr %ascq17.i90.i511 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 0, ptr %ascq17.i90.i511, align 1
  br label %cleanup

if.else352:                                       ; preds = %if.else345
  call void @__sanitizer_cov_trace_pc() #11
  %177 = ptrtoint ptr %asc16.i89.i510 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 12, ptr %asc16.i89.i510, align 1
  %ascq17.i99.i517 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %178 = ptrtoint ptr %ascq17.i99.i517 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 2, ptr %ascq17.i99.i517, align 1
  br label %cleanup

if.else355:                                       ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #11
  %179 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 0, ptr %arrayidx281, align 4
  %resid_len.i518 = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %180 = ptrtoint ptr %resid_len.i518 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %resid_len.i518, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else355, %if.else352, %if.then351, %if.then342, %do.end331, %if.else305, %if.then304, %if.then279, %if.then274, %if.else262, %do.end134, %do.end107, %if.then85, %if.then81
  %retval.0 = phi i32 [ 1, %if.then81 ], [ 1, %do.end107 ], [ 1, %do.end134 ], [ 1, %if.then274 ], [ 0, %if.then279 ], [ 1, %do.end331 ], [ 1, %if.else262 ], [ 1, %if.then85 ], [ 1, %if.else305 ], [ 1, %if.then304 ], [ 0, %if.else355 ], [ 1, %if.then351 ], [ 1, %if.else352 ], [ 1, %if.then342 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_extension_cmnd(ptr noundef %srb, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %lun1 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun1, align 8
  %conv = trunc i64 %3 to i32
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %4 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.do.body70_crit_edge, label %land.lhs.true

entry.do.body70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body70

land.lhs.true:                                    ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %6 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body70_crit_edge

land.lhs.true.do.body70_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body70

if.then:                                          ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 212
  %12 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 ptrtoint (ptr blockaddress(@sd_extension_cmnd, %__here) to i32), ptr %task_state_change, align 4
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %13, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !313
  %call66 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  br label %do.body70

do.body70:                                        ; preds = %__here, %land.lhs.true.do.body70_crit_edge, %entry.do.body70_crit_edge
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %15 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat71 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %16 = ptrtoint ptr %rtsx_stat71 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %rtsx_stat71, align 4
  tail call void @sd_cleanup_work(ptr noundef %chip) #9
  %call74 = tail call i32 @check_card_ready(ptr noundef %chip, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then76, label %if.end77

if.then76:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i46.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %17 = ptrtoint ptr %arrayidx.i46.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 112, ptr %arrayidx.i46.i, align 1
  %sense_key2.i47.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %18 = ptrtoint ptr %sense_key2.i47.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %sense_key2.i47.i, align 1
  %info3.i48.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i52.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %19 = ptrtoint ptr %info3.i48.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 0, ptr %info3.i48.i, align 1
  %20 = ptrtoint ptr %ad_sense_len.i52.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 10, ptr %ad_sense_len.i52.i, align 1
  %asc16.i53.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %21 = ptrtoint ptr %asc16.i53.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 58, ptr %asc16.i53.i, align 1
  %ascq17.i54.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %22 = ptrtoint ptr %ascq17.i54.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %ascq17.i54.i, align 1
  br label %cleanup

if.end77:                                         ; preds = %do.body70
  %call78 = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %call78)
  %cmp80.not = icmp eq i8 %call78, 4
  br i1 %cmp80.not, label %if.end83, label %if.then82

if.then82:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i64.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %23 = ptrtoint ptr %arrayidx.i64.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 112, ptr %arrayidx.i64.i, align 1
  %sense_key2.i65.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %24 = ptrtoint ptr %sense_key2.i65.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 5, ptr %sense_key2.i65.i, align 1
  %info3.i66.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i70.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %25 = ptrtoint ptr %info3.i66.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 0, ptr %info3.i66.i, align 1
  %26 = ptrtoint ptr %ad_sense_len.i70.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 10, ptr %ad_sense_len.i70.i, align 1
  %asc16.i71.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %27 = ptrtoint ptr %asc16.i71.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 37, ptr %asc16.i71.i, align 1
  %ascq17.i72.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %28 = ptrtoint ptr %ascq17.i72.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %ascq17.i72.i, align 1
  br label %cleanup

if.end83:                                         ; preds = %if.end77
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %29 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cmnd, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.143)
  switch i8 %32, label %sw.default [
    i8 -48, label %sw.bb
    i8 -47, label %sw.bb86
    i8 -46, label %sw.bb88
    i8 -45, label %sw.bb90
    i8 -44, label %sw.bb92
    i8 -42, label %sw.bb94
  ]

sw.bb:                                            ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %call85 = tail call i32 @sd_pass_thru_mode(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb86:                                          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %call87 = tail call i32 @sd_execute_no_data(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb88:                                          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %call89 = tail call i32 @sd_execute_read_data(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb90:                                          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %call91 = tail call i32 @sd_execute_write_data(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb92:                                          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %call93 = tail call i32 @sd_get_cmd_rsp(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.bb94:                                          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %call95 = tail call i32 @sd_hw_rst(ptr noundef %srb, ptr noundef %chip) #9
  br label %cleanup

sw.default:                                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i100.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %34 = ptrtoint ptr %arrayidx.i100.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 112, ptr %arrayidx.i100.i, align 1
  %sense_key2.i101.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %35 = ptrtoint ptr %sense_key2.i101.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 5, ptr %sense_key2.i101.i, align 1
  %info3.i102.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i106.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %36 = ptrtoint ptr %info3.i102.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 0, ptr %info3.i102.i, align 1
  %37 = ptrtoint ptr %ad_sense_len.i106.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 10, ptr %ad_sense_len.i106.i, align 1
  %asc16.i107.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %38 = ptrtoint ptr %asc16.i107.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 36, ptr %asc16.i107.i, align 1
  %ascq17.i108.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %39 = ptrtoint ptr %ascq17.i108.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %ascq17.i108.i, align 1
  %sns_key_info.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9
  %40 = ptrtoint ptr %sns_key_info.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -64, ptr %sns_key_info.i.i, align 1
  %arrayidx27.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 1
  %41 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx27.i.i, align 1
  %arrayidx32.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 2
  %42 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %arrayidx32.i.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb94, %sw.bb92, %sw.bb90, %sw.bb88, %sw.bb86, %sw.bb, %if.then82, %if.then76
  %retval.0 = phi i32 [ 1, %if.then82 ], [ 1, %sw.default ], [ 1, %if.then76 ], [ %call95, %sw.bb94 ], [ %call93, %sw.bb92 ], [ %call91, %sw.bb90 ], [ %call89, %sw.bb88 ], [ %call87, %sw.bb86 ], [ %call85, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mg_report_key(ptr noundef %srb, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %lun2 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %lun2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun2, align 8
  %conv = trunc i64 %3 to i32
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %4 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.do.body72_crit_edge, label %land.lhs.true

entry.do.body72_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body72

land.lhs.true:                                    ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %6 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body72_crit_edge

land.lhs.true.do.body72_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body72

if.then:                                          ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 212
  %12 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 ptrtoint (ptr blockaddress(@mg_report_key, %__here) to i32), ptr %task_state_change, align 4
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %13, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !314
  %call68 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  br label %do.body72

do.body72:                                        ; preds = %__here, %land.lhs.true.do.body72_crit_edge, %entry.do.body72_crit_edge
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %15 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat73 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %16 = ptrtoint ptr %rtsx_stat73 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %rtsx_stat73, align 4
  tail call void @ms_cleanup_work(ptr noundef %chip) #9
  %call76 = tail call i32 @check_card_ready(ptr noundef %chip, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then78, label %if.end79

if.then78:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i46.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %17 = ptrtoint ptr %arrayidx.i46.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 112, ptr %arrayidx.i46.i, align 1
  %sense_key2.i47.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %18 = ptrtoint ptr %sense_key2.i47.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %sense_key2.i47.i, align 1
  %info3.i48.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i52.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %19 = ptrtoint ptr %info3.i48.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 0, ptr %info3.i48.i, align 1
  %20 = ptrtoint ptr %ad_sense_len.i52.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 10, ptr %ad_sense_len.i52.i, align 1
  %asc16.i53.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %21 = ptrtoint ptr %asc16.i53.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 58, ptr %asc16.i53.i, align 1
  %ascq17.i54.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %22 = ptrtoint ptr %ascq17.i54.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %ascq17.i54.i, align 1
  br label %cleanup

if.end79:                                         ; preds = %do.body72
  %call80 = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %call80)
  %cmp82.not = icmp eq i8 %call80, 8
  br i1 %cmp82.not, label %if.end85, label %if.then84

if.then84:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i64.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %23 = ptrtoint ptr %arrayidx.i64.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 112, ptr %arrayidx.i64.i, align 1
  %sense_key2.i65.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %24 = ptrtoint ptr %sense_key2.i65.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 5, ptr %sense_key2.i65.i, align 1
  %info3.i66.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i70.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %25 = ptrtoint ptr %info3.i66.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 0, ptr %info3.i66.i, align 1
  %26 = ptrtoint ptr %ad_sense_len.i70.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 10, ptr %ad_sense_len.i70.i, align 1
  %asc16.i71.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %27 = ptrtoint ptr %asc16.i71.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 37, ptr %asc16.i71.i, align 1
  %ascq17.i72.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %28 = ptrtoint ptr %ascq17.i72.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %ascq17.i72.i, align 1
  br label %cleanup

if.end85:                                         ; preds = %if.end79
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %29 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %30, i32 7
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -66, i8 %32)
  %cmp87.not = icmp eq i8 %32, -66
  br i1 %cmp87.not, label %if.end90, label %if.then89

if.then89:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i100.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %33 = ptrtoint ptr %arrayidx.i100.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 112, ptr %arrayidx.i100.i, align 1
  %sense_key2.i101.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %34 = ptrtoint ptr %sense_key2.i101.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 5, ptr %sense_key2.i101.i, align 1
  %info3.i102.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i106.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %35 = ptrtoint ptr %info3.i102.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 0, ptr %info3.i102.i, align 1
  %36 = ptrtoint ptr %ad_sense_len.i106.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 10, ptr %ad_sense_len.i106.i, align 1
  %asc16.i107.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %37 = ptrtoint ptr %asc16.i107.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 36, ptr %asc16.i107.i, align 1
  %ascq17.i108.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %38 = ptrtoint ptr %ascq17.i108.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %ascq17.i108.i, align 1
  %sns_key_info.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9
  %39 = ptrtoint ptr %sns_key_info.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -64, ptr %sns_key_info.i.i, align 1
  %arrayidx27.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 1
  %40 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx27.i.i, align 1
  %arrayidx32.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 2
  %41 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %arrayidx32.i.i, align 1
  br label %cleanup

if.end90:                                         ; preds = %if.end85
  %42 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %ms_card1, align 4
  %44 = and i16 %43, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %44)
  %cmp92 = icmp eq i16 %44, 1
  br i1 %cmp92, label %if.end95, label %if.then94

if.then94:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i145.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %45 = ptrtoint ptr %arrayidx.i145.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 112, ptr %arrayidx.i145.i, align 1
  %sense_key2.i146.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %46 = ptrtoint ptr %sense_key2.i146.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 2, ptr %sense_key2.i146.i, align 1
  %info3.i147.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i151.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %47 = ptrtoint ptr %info3.i147.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 0, ptr %info3.i147.i, align 1
  %48 = ptrtoint ptr %ad_sense_len.i151.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 10, ptr %ad_sense_len.i151.i, align 1
  %asc16.i152.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %49 = ptrtoint ptr %asc16.i152.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 48, ptr %asc16.i152.i, align 1
  %ascq17.i153.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %50 = ptrtoint ptr %ascq17.i153.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %ascq17.i153.i, align 1
  br label %cleanup

if.end95:                                         ; preds = %if.end90
  %arrayidx97 = getelementptr i8, ptr %30, i32 10
  %51 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx97, align 1
  %53 = and i8 %52, 63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mg_report_key.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mg_report_key, %if.then111)) #9
          to label %do.end116 [label %if.then111], !srcloc !310

if.then111:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %chip, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %conv113 = zext i8 %53 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mg_report_key.__UNIQUE_ID_ddebug367, ptr noundef %dev.i, ptr noundef nonnull @.str.120, i32 noundef %conv113) #9
  br label %do.end116

do.end116:                                        ; preds = %if.then111, %if.end95
  %conv117 = zext i8 %53 to i32
  %58 = zext i32 %conv117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %conv117, label %sw.default [
    i32 50, label %sw.bb
    i32 52, label %sw.bb140
    i32 54, label %sw.bb164
  ]

sw.bb:                                            ; preds = %do.end116
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %59 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1052, i32 %60)
  %cmp119 = icmp eq i32 %60, 1052
  br i1 %cmp119, label %land.lhs.true121, label %sw.bb.if.else_crit_edge

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true121:                                 ; preds = %sw.bb
  %61 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cmnd, align 4
  %arrayidx123 = getelementptr i8, ptr %62, i32 8
  %63 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx123, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %64)
  %cmp125 = icmp eq i8 %64, 4
  br i1 %cmp125, label %land.lhs.true127, label %land.lhs.true121.if.else_crit_edge

land.lhs.true121.if.else_crit_edge:               ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true127:                                 ; preds = %land.lhs.true121
  %arrayidx129 = getelementptr i8, ptr %62, i32 9
  %65 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx129, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %66)
  %cmp131 = icmp eq i8 %66, 28
  br i1 %cmp131, label %if.then133, label %land.lhs.true127.if.else_crit_edge

land.lhs.true127.if.else_crit_edge:               ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then133:                                       ; preds = %land.lhs.true127
  %call134 = tail call i32 @mg_get_local_EKB(ptr noundef %srb, ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %cmp135.not = icmp eq i32 %call134, 0
  br i1 %cmp135.not, label %if.then133.sw.epilog_crit_edge, label %if.then133.cleanup_crit_edge

if.then133.cleanup_crit_edge:                     ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then133.sw.epilog_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true127.if.else_crit_edge, %land.lhs.true121.if.else_crit_edge, %sw.bb.if.else_crit_edge
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 6)
  br label %cleanup

sw.bb140:                                         ; preds = %do.end116
  %length.i273 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %67 = ptrtoint ptr %length.i273 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %length.i273, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %68)
  %cmp142 = icmp eq i32 %68, 36
  br i1 %cmp142, label %land.lhs.true144, label %sw.bb140.if.else162_crit_edge

sw.bb140.if.else162_crit_edge:                    ; preds = %sw.bb140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else162

land.lhs.true144:                                 ; preds = %sw.bb140
  %69 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cmnd, align 4
  %arrayidx146 = getelementptr i8, ptr %70, i32 8
  %71 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx146, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp148 = icmp eq i8 %72, 0
  br i1 %cmp148, label %land.lhs.true150, label %land.lhs.true144.if.else162_crit_edge

land.lhs.true144.if.else162_crit_edge:            ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else162

land.lhs.true150:                                 ; preds = %land.lhs.true144
  %arrayidx152 = getelementptr i8, ptr %70, i32 9
  %73 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx152, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %74)
  %cmp154 = icmp eq i8 %74, 36
  br i1 %cmp154, label %if.then156, label %land.lhs.true150.if.else162_crit_edge

land.lhs.true150.if.else162_crit_edge:            ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else162

if.then156:                                       ; preds = %land.lhs.true150
  %call157 = tail call i32 @mg_get_rsp_chg(ptr noundef %srb, ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %cmp158.not = icmp eq i32 %call157, 0
  br i1 %cmp158.not, label %if.then156.sw.epilog_crit_edge, label %if.then156.cleanup_crit_edge

if.then156.cleanup_crit_edge:                     ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then156.sw.epilog_crit_edge:                   ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else162:                                       ; preds = %land.lhs.true150.if.else162_crit_edge, %land.lhs.true144.if.else162_crit_edge, %sw.bb140.if.else162_crit_edge
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 6)
  br label %cleanup

sw.bb164:                                         ; preds = %do.end116
  %75 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cmnd, align 4
  %arrayidx166 = getelementptr i8, ptr %76, i32 5
  %77 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx166, align 1
  %mg_entry_num = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 26
  %79 = ptrtoint ptr %mg_entry_num to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %mg_entry_num, align 4
  %length.i274 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %80 = ptrtoint ptr %length.i274 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %length.i274, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1028, i32 %81)
  %cmp168 = icmp eq i32 %81, 1028
  br i1 %cmp168, label %land.lhs.true170, label %sw.bb164.if.else212_crit_edge

sw.bb164.if.else212_crit_edge:                    ; preds = %sw.bb164
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else212

land.lhs.true170:                                 ; preds = %sw.bb164
  %82 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cmnd, align 4
  %arrayidx172 = getelementptr i8, ptr %83, i32 8
  %84 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx172, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %85)
  %cmp174 = icmp eq i8 %85, 4
  br i1 %cmp174, label %land.lhs.true176, label %land.lhs.true170.if.else212_crit_edge

land.lhs.true170.if.else212_crit_edge:            ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else212

land.lhs.true176:                                 ; preds = %land.lhs.true170
  %arrayidx178 = getelementptr i8, ptr %83, i32 9
  %86 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx178, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %87)
  %cmp180 = icmp eq i8 %87, 4
  br i1 %cmp180, label %land.lhs.true182, label %land.lhs.true176.if.else212_crit_edge

land.lhs.true176.if.else212_crit_edge:            ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else212

land.lhs.true182:                                 ; preds = %land.lhs.true176
  %arrayidx184 = getelementptr i8, ptr %83, i32 2
  %88 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx184, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp186 = icmp eq i8 %89, 0
  br i1 %cmp186, label %land.lhs.true188, label %land.lhs.true182.if.else212_crit_edge

land.lhs.true182.if.else212_crit_edge:            ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else212

land.lhs.true188:                                 ; preds = %land.lhs.true182
  %arrayidx190 = getelementptr i8, ptr %83, i32 3
  %90 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx190, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %cmp192 = icmp eq i8 %91, 0
  br i1 %cmp192, label %land.lhs.true194, label %land.lhs.true188.if.else212_crit_edge

land.lhs.true188.if.else212_crit_edge:            ; preds = %land.lhs.true188
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else212

land.lhs.true194:                                 ; preds = %land.lhs.true188
  %arrayidx196 = getelementptr i8, ptr %83, i32 4
  %92 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx196, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp198 = icmp eq i8 %93, 0
  br i1 %cmp198, label %land.lhs.true200, label %land.lhs.true194.if.else212_crit_edge

land.lhs.true194.if.else212_crit_edge:            ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else212

land.lhs.true200:                                 ; preds = %land.lhs.true194
  %arrayidx202 = getelementptr i8, ptr %83, i32 5
  %94 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx202, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %95)
  %cmp204 = icmp ult i8 %95, 32
  br i1 %cmp204, label %if.then206, label %land.lhs.true200.if.else212_crit_edge

land.lhs.true200.if.else212_crit_edge:            ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else212

if.then206:                                       ; preds = %land.lhs.true200
  %call207 = tail call i32 @mg_get_ICV(ptr noundef %srb, ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %cmp208.not = icmp eq i32 %call207, 0
  br i1 %cmp208.not, label %if.then206.sw.epilog_crit_edge, label %if.then206.cleanup_crit_edge

if.then206.cleanup_crit_edge:                     ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then206.sw.epilog_crit_edge:                   ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else212:                                       ; preds = %land.lhs.true200.if.else212_crit_edge, %land.lhs.true194.if.else212_crit_edge, %land.lhs.true188.if.else212_crit_edge, %land.lhs.true182.if.else212_crit_edge, %land.lhs.true176.if.else212_crit_edge, %land.lhs.true170.if.else212_crit_edge, %sw.bb164.if.else212_crit_edge
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 6)
  br label %cleanup

sw.default:                                       ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 6)
  br label %cleanup

sw.epilog:                                        ; preds = %if.then206.sw.epilog_crit_edge, %if.then156.sw.epilog_crit_edge, %if.then133.sw.epilog_crit_edge
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %96 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %resid_len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.else212, %if.then206.cleanup_crit_edge, %if.else162, %if.then156.cleanup_crit_edge, %if.else, %if.then133.cleanup_crit_edge, %if.then94, %if.then89, %if.then84, %if.then78
  %retval.0 = phi i32 [ 1, %if.then84 ], [ 1, %if.then89 ], [ 1, %sw.default ], [ 0, %sw.epilog ], [ 1, %if.else212 ], [ 1, %if.else162 ], [ 1, %if.else ], [ 1, %if.then94 ], [ 1, %if.then78 ], [ 1, %if.then133.cleanup_crit_edge ], [ 1, %if.then156.cleanup_crit_edge ], [ 1, %if.then206.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mg_send_key(ptr noundef %srb, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %lun2 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %lun2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun2, align 8
  %conv = trunc i64 %3 to i32
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %4 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.do.body72_crit_edge, label %land.lhs.true

entry.do.body72_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body72

land.lhs.true:                                    ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %6 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body72_crit_edge

land.lhs.true.do.body72_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body72

if.then:                                          ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 212
  %12 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 ptrtoint (ptr blockaddress(@mg_send_key, %__here) to i32), ptr %task_state_change, align 4
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %13, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !315
  %call68 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  br label %do.body72

do.body72:                                        ; preds = %__here, %land.lhs.true.do.body72_crit_edge, %entry.do.body72_crit_edge
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %15 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat73 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %16 = ptrtoint ptr %rtsx_stat73 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %rtsx_stat73, align 4
  tail call void @ms_cleanup_work(ptr noundef %chip) #9
  %call76 = tail call i32 @check_card_ready(ptr noundef %chip, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then78, label %if.end79

if.then78:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i46.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %17 = ptrtoint ptr %arrayidx.i46.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 112, ptr %arrayidx.i46.i, align 1
  %sense_key2.i47.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %18 = ptrtoint ptr %sense_key2.i47.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %sense_key2.i47.i, align 1
  %info3.i48.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i52.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %19 = ptrtoint ptr %info3.i48.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 0, ptr %info3.i48.i, align 1
  %20 = ptrtoint ptr %ad_sense_len.i52.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 10, ptr %ad_sense_len.i52.i, align 1
  %asc16.i53.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %21 = ptrtoint ptr %asc16.i53.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 58, ptr %asc16.i53.i, align 1
  %ascq17.i54.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %22 = ptrtoint ptr %ascq17.i54.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %ascq17.i54.i, align 1
  br label %cleanup

if.end79:                                         ; preds = %do.body72
  %call80 = tail call i32 @check_card_wp(ptr noundef %chip, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.then82

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i73.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %23 = ptrtoint ptr %arrayidx.i73.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 112, ptr %arrayidx.i73.i, align 1
  %sense_key2.i74.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %24 = ptrtoint ptr %sense_key2.i74.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 7, ptr %sense_key2.i74.i, align 1
  %info3.i75.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i79.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %25 = ptrtoint ptr %info3.i75.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 0, ptr %info3.i75.i, align 1
  %26 = ptrtoint ptr %ad_sense_len.i79.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 10, ptr %ad_sense_len.i79.i, align 1
  %asc16.i80.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %27 = ptrtoint ptr %asc16.i80.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 39, ptr %asc16.i80.i, align 1
  %ascq17.i81.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %28 = ptrtoint ptr %ascq17.i81.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %ascq17.i81.i, align 1
  br label %cleanup

if.end83:                                         ; preds = %if.end79
  %call84 = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %call84)
  %cmp86.not = icmp eq i8 %call84, 8
  br i1 %cmp86.not, label %if.end89, label %if.then88

if.then88:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i64.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %29 = ptrtoint ptr %arrayidx.i64.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 112, ptr %arrayidx.i64.i, align 1
  %sense_key2.i65.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %30 = ptrtoint ptr %sense_key2.i65.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 5, ptr %sense_key2.i65.i, align 1
  %info3.i66.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i70.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %31 = ptrtoint ptr %info3.i66.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 0, ptr %info3.i66.i, align 1
  %32 = ptrtoint ptr %ad_sense_len.i70.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 10, ptr %ad_sense_len.i70.i, align 1
  %asc16.i71.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %33 = ptrtoint ptr %asc16.i71.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 37, ptr %asc16.i71.i, align 1
  %ascq17.i72.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %34 = ptrtoint ptr %ascq17.i72.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %ascq17.i72.i, align 1
  br label %cleanup

if.end89:                                         ; preds = %if.end83
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %35 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %36, i32 7
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -66, i8 %38)
  %cmp91.not = icmp eq i8 %38, -66
  br i1 %cmp91.not, label %if.end94, label %if.then93

if.then93:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i100.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %39 = ptrtoint ptr %arrayidx.i100.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 112, ptr %arrayidx.i100.i, align 1
  %sense_key2.i101.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %40 = ptrtoint ptr %sense_key2.i101.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 5, ptr %sense_key2.i101.i, align 1
  %info3.i102.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i106.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %41 = ptrtoint ptr %info3.i102.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 0, ptr %info3.i102.i, align 1
  %42 = ptrtoint ptr %ad_sense_len.i106.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 10, ptr %ad_sense_len.i106.i, align 1
  %asc16.i107.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %43 = ptrtoint ptr %asc16.i107.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 36, ptr %asc16.i107.i, align 1
  %ascq17.i108.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %44 = ptrtoint ptr %ascq17.i108.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %ascq17.i108.i, align 1
  %sns_key_info.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9
  %45 = ptrtoint ptr %sns_key_info.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -64, ptr %sns_key_info.i.i, align 1
  %arrayidx27.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 1
  %46 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %arrayidx27.i.i, align 1
  %arrayidx32.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 2
  %47 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %arrayidx32.i.i, align 1
  br label %cleanup

if.end94:                                         ; preds = %if.end89
  %48 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %ms_card1, align 4
  %50 = and i16 %49, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %50)
  %cmp96 = icmp eq i16 %50, 1
  br i1 %cmp96, label %if.end99, label %if.then98

if.then98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i145.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %51 = ptrtoint ptr %arrayidx.i145.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 112, ptr %arrayidx.i145.i, align 1
  %sense_key2.i146.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %52 = ptrtoint ptr %sense_key2.i146.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 2, ptr %sense_key2.i146.i, align 1
  %info3.i147.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i151.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %53 = ptrtoint ptr %info3.i147.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 0, ptr %info3.i147.i, align 1
  %54 = ptrtoint ptr %ad_sense_len.i151.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 10, ptr %ad_sense_len.i151.i, align 1
  %asc16.i152.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %55 = ptrtoint ptr %asc16.i152.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 48, ptr %asc16.i152.i, align 1
  %ascq17.i153.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %56 = ptrtoint ptr %ascq17.i153.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %ascq17.i153.i, align 1
  br label %cleanup

if.end99:                                         ; preds = %if.end94
  %arrayidx101 = getelementptr i8, ptr %36, i32 10
  %57 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx101, align 1
  %59 = and i8 %58, 63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mg_send_key.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mg_send_key, %if.then115)) #9
          to label %do.end120 [label %if.then115], !srcloc !310

if.then115:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chip, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  %conv117 = zext i8 %59 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mg_send_key.__UNIQUE_ID_ddebug369, ptr noundef %dev.i, ptr noundef nonnull @.str.120, i32 noundef %conv117) #9
  br label %do.end120

do.end120:                                        ; preds = %if.then115, %if.end99
  %conv121 = zext i8 %59 to i32
  %64 = zext i32 %conv121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %conv121, label %sw.default [
    i32 49, label %sw.bb
    i32 51, label %sw.bb144
    i32 53, label %sw.bb168
    i32 55, label %sw.bb192
  ]

sw.bb:                                            ; preds = %do.end120
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %65 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %66)
  %cmp123 = icmp eq i32 %66, 12
  br i1 %cmp123, label %land.lhs.true125, label %sw.bb.if.else_crit_edge

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true125:                                 ; preds = %sw.bb
  %67 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cmnd, align 4
  %arrayidx127 = getelementptr i8, ptr %68, i32 8
  %69 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx127, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp129 = icmp eq i8 %70, 0
  br i1 %cmp129, label %land.lhs.true131, label %land.lhs.true125.if.else_crit_edge

land.lhs.true125.if.else_crit_edge:               ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true131:                                 ; preds = %land.lhs.true125
  %arrayidx133 = getelementptr i8, ptr %68, i32 9
  %71 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx133, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %72)
  %cmp135 = icmp eq i8 %72, 12
  br i1 %cmp135, label %if.then137, label %land.lhs.true131.if.else_crit_edge

land.lhs.true131.if.else_crit_edge:               ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then137:                                       ; preds = %land.lhs.true131
  %call138 = tail call i32 @mg_set_leaf_id(ptr noundef %srb, ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %cmp139.not = icmp eq i32 %call138, 0
  br i1 %cmp139.not, label %if.then137.sw.epilog_crit_edge, label %if.then137.cleanup_crit_edge

if.then137.cleanup_crit_edge:                     ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then137.sw.epilog_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true131.if.else_crit_edge, %land.lhs.true125.if.else_crit_edge, %sw.bb.if.else_crit_edge
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 6)
  br label %cleanup

sw.bb144:                                         ; preds = %do.end120
  %length.i313 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %73 = ptrtoint ptr %length.i313 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %length.i313, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %74)
  %cmp146 = icmp eq i32 %74, 12
  br i1 %cmp146, label %land.lhs.true148, label %sw.bb144.if.else166_crit_edge

sw.bb144.if.else166_crit_edge:                    ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else166

land.lhs.true148:                                 ; preds = %sw.bb144
  %75 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cmnd, align 4
  %arrayidx150 = getelementptr i8, ptr %76, i32 8
  %77 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx150, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp152 = icmp eq i8 %78, 0
  br i1 %cmp152, label %land.lhs.true154, label %land.lhs.true148.if.else166_crit_edge

land.lhs.true148.if.else166_crit_edge:            ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else166

land.lhs.true154:                                 ; preds = %land.lhs.true148
  %arrayidx156 = getelementptr i8, ptr %76, i32 9
  %79 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx156, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %80)
  %cmp158 = icmp eq i8 %80, 12
  br i1 %cmp158, label %if.then160, label %land.lhs.true154.if.else166_crit_edge

land.lhs.true154.if.else166_crit_edge:            ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else166

if.then160:                                       ; preds = %land.lhs.true154
  %call161 = tail call i32 @mg_chg(ptr noundef %srb, ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %cmp162.not = icmp eq i32 %call161, 0
  br i1 %cmp162.not, label %if.then160.sw.epilog_crit_edge, label %if.then160.cleanup_crit_edge

if.then160.cleanup_crit_edge:                     ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then160.sw.epilog_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else166:                                       ; preds = %land.lhs.true154.if.else166_crit_edge, %land.lhs.true148.if.else166_crit_edge, %sw.bb144.if.else166_crit_edge
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 6)
  br label %cleanup

sw.bb168:                                         ; preds = %do.end120
  %length.i314 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %81 = ptrtoint ptr %length.i314 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %length.i314, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %82)
  %cmp170 = icmp eq i32 %82, 12
  br i1 %cmp170, label %land.lhs.true172, label %sw.bb168.if.else190_crit_edge

sw.bb168.if.else190_crit_edge:                    ; preds = %sw.bb168
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else190

land.lhs.true172:                                 ; preds = %sw.bb168
  %83 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cmnd, align 4
  %arrayidx174 = getelementptr i8, ptr %84, i32 8
  %85 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx174, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp176 = icmp eq i8 %86, 0
  br i1 %cmp176, label %land.lhs.true178, label %land.lhs.true172.if.else190_crit_edge

land.lhs.true172.if.else190_crit_edge:            ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else190

land.lhs.true178:                                 ; preds = %land.lhs.true172
  %arrayidx180 = getelementptr i8, ptr %84, i32 9
  %87 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx180, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %88)
  %cmp182 = icmp eq i8 %88, 12
  br i1 %cmp182, label %if.then184, label %land.lhs.true178.if.else190_crit_edge

land.lhs.true178.if.else190_crit_edge:            ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else190

if.then184:                                       ; preds = %land.lhs.true178
  %call185 = tail call i32 @mg_rsp(ptr noundef %srb, ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %cmp186.not = icmp eq i32 %call185, 0
  br i1 %cmp186.not, label %if.then184.sw.epilog_crit_edge, label %if.then184.cleanup_crit_edge

if.then184.cleanup_crit_edge:                     ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then184.sw.epilog_crit_edge:                   ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else190:                                       ; preds = %land.lhs.true178.if.else190_crit_edge, %land.lhs.true172.if.else190_crit_edge, %sw.bb168.if.else190_crit_edge
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 6)
  br label %cleanup

sw.bb192:                                         ; preds = %do.end120
  %89 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cmnd, align 4
  %arrayidx194 = getelementptr i8, ptr %90, i32 5
  %91 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx194, align 1
  %mg_entry_num = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 26
  %93 = ptrtoint ptr %mg_entry_num to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %mg_entry_num, align 4
  %length.i315 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %94 = ptrtoint ptr %length.i315 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %length.i315, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1028, i32 %95)
  %cmp196 = icmp eq i32 %95, 1028
  br i1 %cmp196, label %land.lhs.true198, label %sw.bb192.if.else240_crit_edge

sw.bb192.if.else240_crit_edge:                    ; preds = %sw.bb192
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else240

land.lhs.true198:                                 ; preds = %sw.bb192
  %96 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cmnd, align 4
  %arrayidx200 = getelementptr i8, ptr %97, i32 8
  %98 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx200, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %99)
  %cmp202 = icmp eq i8 %99, 4
  br i1 %cmp202, label %land.lhs.true204, label %land.lhs.true198.if.else240_crit_edge

land.lhs.true198.if.else240_crit_edge:            ; preds = %land.lhs.true198
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else240

land.lhs.true204:                                 ; preds = %land.lhs.true198
  %arrayidx206 = getelementptr i8, ptr %97, i32 9
  %100 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx206, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %101)
  %cmp208 = icmp eq i8 %101, 4
  br i1 %cmp208, label %land.lhs.true210, label %land.lhs.true204.if.else240_crit_edge

land.lhs.true204.if.else240_crit_edge:            ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else240

land.lhs.true210:                                 ; preds = %land.lhs.true204
  %arrayidx212 = getelementptr i8, ptr %97, i32 2
  %102 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx212, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %cmp214 = icmp eq i8 %103, 0
  br i1 %cmp214, label %land.lhs.true216, label %land.lhs.true210.if.else240_crit_edge

land.lhs.true210.if.else240_crit_edge:            ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else240

land.lhs.true216:                                 ; preds = %land.lhs.true210
  %arrayidx218 = getelementptr i8, ptr %97, i32 3
  %104 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx218, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %cmp220 = icmp eq i8 %105, 0
  br i1 %cmp220, label %land.lhs.true222, label %land.lhs.true216.if.else240_crit_edge

land.lhs.true216.if.else240_crit_edge:            ; preds = %land.lhs.true216
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else240

land.lhs.true222:                                 ; preds = %land.lhs.true216
  %arrayidx224 = getelementptr i8, ptr %97, i32 4
  %106 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx224, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %cmp226 = icmp eq i8 %107, 0
  br i1 %cmp226, label %land.lhs.true228, label %land.lhs.true222.if.else240_crit_edge

land.lhs.true222.if.else240_crit_edge:            ; preds = %land.lhs.true222
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else240

land.lhs.true228:                                 ; preds = %land.lhs.true222
  %arrayidx230 = getelementptr i8, ptr %97, i32 5
  %108 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx230, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %109)
  %cmp232 = icmp ult i8 %109, 32
  br i1 %cmp232, label %if.then234, label %land.lhs.true228.if.else240_crit_edge

land.lhs.true228.if.else240_crit_edge:            ; preds = %land.lhs.true228
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else240

if.then234:                                       ; preds = %land.lhs.true228
  %call235 = tail call i32 @mg_set_ICV(ptr noundef %srb, ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %cmp236.not = icmp eq i32 %call235, 0
  br i1 %cmp236.not, label %if.then234.sw.epilog_crit_edge, label %if.then234.cleanup_crit_edge

if.then234.cleanup_crit_edge:                     ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then234.sw.epilog_crit_edge:                   ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else240:                                       ; preds = %land.lhs.true228.if.else240_crit_edge, %land.lhs.true222.if.else240_crit_edge, %land.lhs.true216.if.else240_crit_edge, %land.lhs.true210.if.else240_crit_edge, %land.lhs.true204.if.else240_crit_edge, %land.lhs.true198.if.else240_crit_edge, %sw.bb192.if.else240_crit_edge
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 6)
  br label %cleanup

sw.default:                                       ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 6)
  br label %cleanup

sw.epilog:                                        ; preds = %if.then234.sw.epilog_crit_edge, %if.then184.sw.epilog_crit_edge, %if.then160.sw.epilog_crit_edge, %if.then137.sw.epilog_crit_edge
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %110 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %resid_len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.else240, %if.then234.cleanup_crit_edge, %if.else190, %if.then184.cleanup_crit_edge, %if.else166, %if.then160.cleanup_crit_edge, %if.else, %if.then137.cleanup_crit_edge, %if.then98, %if.then93, %if.then88, %if.then82, %if.then78
  %retval.0 = phi i32 [ 1, %if.then82 ], [ 1, %if.then88 ], [ 1, %if.then93 ], [ 1, %sw.default ], [ 0, %sw.epilog ], [ 1, %if.else240 ], [ 1, %if.else190 ], [ 1, %if.else166 ], [ 1, %if.else ], [ 1, %if.then98 ], [ 1, %if.then78 ], [ 1, %if.then137.cleanup_crit_edge ], [ 1, %if.then160.cleanup_crit_edge ], [ 1, %if.then184.cleanup_crit_edge ], [ 1, %if.then234.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_disable_aspm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_exit_ss(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_card_ready(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_card_wp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @card_rw(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_stor_set_xfer_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @eject_card(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ms_mode_sense(ptr noundef %chip, i8 noundef zeroext %cmd, i32 noundef %lun, ptr noundef writeonly %buf, i32 noundef %buf_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %cmd)
  %cmp = icmp eq i8 %cmd, 26
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.smin.i32(i32 %buf_len, i32 104)
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 103, ptr %buf, align 1
  br label %if.end14

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %buf, align 1
  %arrayidx13 = getelementptr i8, ptr %buf, i32 1
  %3 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 106, ptr %arrayidx13, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then
  %sys_info_offset.0 = phi i32 [ 8, %if.then ], [ 12, %if.else ]
  %data_size.0 = phi i32 [ %0, %if.then ], [ %buf_len, %if.else ]
  %i.0 = phi i32 [ 1, %if.then ], [ 2, %if.else ]
  %call = tail call i32 @check_card_ready(ptr noundef %chip, i32 noundef %lun) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else49, label %if.then15

if.then15:                                        ; preds = %if.end14
  %4 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ms_card1, align 4
  %6 = and i16 %5, 2303
  call void @__sanitizer_cov_trace_const_cmp2(i16 2049, i16 %6)
  %.not = icmp eq i16 %6, 2049
  br i1 %.not, label %if.then23, label %if.else26

if.then23:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx25 = getelementptr i8, ptr %buf, i32 %i.0
  %7 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 64, ptr %arrayidx25, align 1
  br label %if.end39

if.else26:                                        ; preds = %if.then15
  %8 = and i16 %5, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cmp30 = icmp eq i16 %8, 1
  %arrayidx34 = getelementptr i8, ptr %buf, i32 %i.0
  br i1 %cmp30, label %if.then32, label %if.else35

if.then32:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 32, ptr %arrayidx34, align 1
  br label %if.end39

if.else35:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 16, ptr %arrayidx34, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.else35, %if.then32, %if.then23
  %support_format.0 = phi i1 [ true, %if.then23 ], [ true, %if.then32 ], [ false, %if.else35 ]
  %i.1 = add nuw nsw i32 %i.0, 1
  %call40 = tail call i32 @check_card_wp(ptr noundef %chip, i32 noundef %lun) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  %arrayidx47 = getelementptr i8, ptr %buf, i32 %i.1
  br i1 %tobool41.not, label %if.else45, label %if.then42

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -128, ptr %arrayidx47, align 1
  br label %if.end54

if.else45:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx47, align 1
  br label %if.end54

if.else49:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %inc50 = add nuw nsw i32 %i.0, 1
  %arrayidx51 = getelementptr i8, ptr %buf, i32 %i.0
  %13 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx51, align 1
  %arrayidx53 = getelementptr i8, ptr %buf, i32 %inc50
  %14 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx53, align 1
  br label %if.end54

if.end54:                                         ; preds = %if.else49, %if.else45, %if.then42
  %support_format.1.off0 = phi i1 [ %support_format.0, %if.then42 ], [ %support_format.0, %if.else45 ], [ false, %if.else49 ]
  %i.2 = add nuw nsw i32 %i.0, 2
  %inc55 = add nuw nsw i32 %i.0, 3
  %arrayidx56 = getelementptr i8, ptr %buf, i32 %i.2
  %15 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx56, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %cmd)
  %cmp58 = icmp eq i8 %cmd, 90
  %inc61 = or i32 %i.0, 4
  %arrayidx62 = getelementptr i8, ptr %buf, i32 %inc55
  br i1 %cmp58, label %if.then60, label %if.then100

if.then60:                                        ; preds = %if.end54
  %16 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx62, align 1
  %inc63 = add nuw nsw i32 %i.0, 5
  %arrayidx64 = getelementptr i8, ptr %buf, i32 %inc61
  %17 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx64, align 1
  %arrayidx66 = getelementptr i8, ptr %buf, i32 %inc63
  %18 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx66, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %data_size.0)
  %cmp67 = icmp sgt i32 %data_size.0, 8
  br i1 %cmp67, label %if.end72, label %if.then60.if.end128_crit_edge

if.then60.if.end128_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

if.end72:                                         ; preds = %if.then60
  %inc65 = add nuw nsw i32 %i.0, 6
  %arrayidx71 = getelementptr i8, ptr %buf, i32 %inc65
  %19 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 32, ptr %arrayidx71, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %data_size.0)
  %cmp73.not = icmp eq i32 %data_size.0, 9
  br i1 %cmp73.not, label %if.end72.if.end128_crit_edge, label %if.end78

if.end72.if.end128_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

if.end78:                                         ; preds = %if.end72
  %inc70 = add nuw nsw i32 %i.0, 7
  %arrayidx77 = getelementptr i8, ptr %buf, i32 %inc70
  %20 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 98, ptr %arrayidx77, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %data_size.0)
  %cmp79 = icmp ugt i32 %data_size.0, 10
  br i1 %cmp79, label %if.end84, label %if.end78.if.end128_crit_edge

if.end78.if.end128_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

if.end84:                                         ; preds = %if.end78
  %inc76 = or i32 %i.0, 8
  %arrayidx83 = getelementptr i8, ptr %buf, i32 %inc76
  %21 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx83, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %data_size.0)
  %cmp85.not = icmp eq i32 %data_size.0, 11
  br i1 %cmp85.not, label %if.end84.if.end128_crit_edge, label %if.then87

if.end84.if.end128_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

if.then87:                                        ; preds = %if.end84
  %inc82 = add nuw nsw i32 %i.0, 9
  %arrayidx91 = getelementptr i8, ptr %buf, i32 %inc82
  br i1 %support_format.1.off0, label %if.then89, label %if.else92

if.then89:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -64, ptr %arrayidx91, align 1
  br label %if.end128

if.else92:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx91, align 1
  br label %if.end128

if.then100:                                       ; preds = %if.end54
  %24 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 32, ptr %arrayidx62, align 1
  %inc107 = add nuw nsw i32 %i.0, 5
  %arrayidx108 = getelementptr i8, ptr %buf, i32 %inc61
  %25 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 98, ptr %arrayidx108, align 1
  %inc113 = add nuw nsw i32 %i.0, 6
  %arrayidx114 = getelementptr i8, ptr %buf, i32 %inc107
  %26 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx114, align 1
  %arrayidx122 = getelementptr i8, ptr %buf, i32 %inc113
  br i1 %support_format.1.off0, label %if.then120, label %if.else123

if.then120:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -64, ptr %arrayidx122, align 1
  br label %if.end128

if.else123:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx122, align 1
  br label %if.end128

if.end128:                                        ; preds = %if.else123, %if.then120, %if.else92, %if.then89, %if.end84.if.end128_crit_edge, %if.end78.if.end128_crit_edge, %if.end72.if.end128_crit_edge, %if.then60.if.end128_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %data_size.0, i32 %sys_info_offset.0)
  %cmp129 = icmp sgt i32 %data_size.0, %sys_info_offset.0
  br i1 %cmp129, label %if.then131, label %if.end128.if.end134_crit_edge

if.end128.if.end134_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

if.then131:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %data_size.0, %sys_info_offset.0
  %29 = tail call i32 @llvm.smin.i32(i32 %sub, i32 96)
  %add.ptr = getelementptr i8, ptr %buf, i32 %sys_info_offset.0
  %raw_sys_info = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 14
  %30 = call ptr @memcpy(ptr %add.ptr, ptr %raw_sys_info, i32 %29)
  br label %if.end134

if.end134:                                        ; preds = %if.then131, %if.end128.if.end134_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_mem(ptr noundef %srb, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %0 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body68_crit_edge, label %land.lhs.true

entry.do.body68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

land.lhs.true:                                    ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %2 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body68_crit_edge

land.lhs.true.do.body68_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

if.then:                                          ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 212
  %8 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 ptrtoint (ptr blockaddress(@read_mem, %__here) to i32), ptr %task_state_change, align 4
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %9, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !316
  %call64 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  br label %do.body68

do.body68:                                        ; preds = %__here, %land.lhs.true.do.body68_crit_edge, %entry.do.body68_crit_edge
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %11 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat69 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %12 = ptrtoint ptr %rtsx_stat69 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %rtsx_stat69, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %13 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %14, i32 2
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv72 = zext i8 %16 to i32
  %shl = shl nuw nsw i32 %conv72, 8
  %arrayidx74 = getelementptr i8, ptr %14, i32 3
  %17 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %18 to i32
  %or = or i32 %shl, %conv75
  call void @__sanitizer_cov_trace_const_cmp4(i32 64512, i32 %or)
  %cmp88 = icmp ult i32 %or, 64512
  br i1 %cmp88, label %if.then90, label %if.end92

if.then90:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %20, i32 0, i32 18
  %21 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %lun, align 8
  %conv91 = trunc i64 %22 to i32
  %arrayidx.i100.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv91
  %23 = ptrtoint ptr %arrayidx.i100.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 112, ptr %arrayidx.i100.i, align 1
  %sense_key2.i101.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv91, i32 2
  %24 = ptrtoint ptr %sense_key2.i101.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 5, ptr %sense_key2.i101.i, align 1
  %info3.i102.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv91, i32 3
  %ad_sense_len.i106.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv91, i32 4
  %25 = ptrtoint ptr %info3.i102.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 0, ptr %info3.i102.i, align 1
  %26 = ptrtoint ptr %ad_sense_len.i106.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 10, ptr %ad_sense_len.i106.i, align 1
  %asc16.i107.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv91, i32 6
  %27 = ptrtoint ptr %asc16.i107.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 36, ptr %asc16.i107.i, align 1
  %ascq17.i108.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv91, i32 7
  %28 = ptrtoint ptr %ascq17.i108.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %ascq17.i108.i, align 1
  %sns_key_info.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv91, i32 9
  %29 = ptrtoint ptr %sns_key_info.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -64, ptr %sns_key_info.i.i, align 1
  %arrayidx27.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv91, i32 9, i32 1
  %30 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx27.i.i, align 1
  %arrayidx32.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv91, i32 9, i32 2
  %31 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %arrayidx32.i.i, align 1
  br label %cleanup

if.end92:                                         ; preds = %do.body68
  %arrayidx83 = getelementptr i8, ptr %14, i32 5
  %32 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx83, align 1
  %arrayidx78 = getelementptr i8, ptr %14, i32 4
  %34 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx78, align 1
  %conv80 = zext i8 %35 to i32
  %shl81 = shl nuw nsw i32 %conv80, 8
  %conv84 = zext i8 %33 to i32
  %or85 = or i32 %shl81, %conv84
  %call94 = tail call noalias ptr @vmalloc(i32 noundef %or85) #12
  %tobool95.not = icmp eq ptr %call94, null
  br i1 %tobool95.not, label %if.end92.cleanup_crit_edge, label %if.end97

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end97:                                         ; preds = %if.end92
  %call98 = tail call i32 @rtsx_force_power_on(ptr noundef %chip, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99.not = icmp eq i32 %call98, 0
  br i1 %cmp99.not, label %for.cond.preheader, label %if.then101

for.cond.preheader:                               ; preds = %if.end97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or85)
  %cmp108174.not = icmp eq i32 %or85, 0
  br i1 %cmp108174.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %36 = trunc i32 %or to i16
  br label %for.body

if.then101:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vfree(ptr noundef nonnull %call94) #9
  %device102 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %37 = ptrtoint ptr %device102 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device102, align 4
  %lun103 = getelementptr inbounds %struct.scsi_device, ptr %38, i32 0, i32 18
  %39 = ptrtoint ptr %lun103 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %lun103, align 8
  %conv104 = trunc i64 %40 to i32
  %arrayidx.i91.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv104
  %41 = ptrtoint ptr %arrayidx.i91.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 112, ptr %arrayidx.i91.i, align 1
  %sense_key2.i92.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv104, i32 2
  %42 = ptrtoint ptr %sense_key2.i92.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 3, ptr %sense_key2.i92.i, align 1
  %info3.i93.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv104, i32 3
  %ad_sense_len.i97.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv104, i32 4
  %43 = ptrtoint ptr %info3.i93.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 0, ptr %info3.i93.i, align 1
  %44 = ptrtoint ptr %ad_sense_len.i97.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 10, ptr %ad_sense_len.i97.i, align 1
  %asc16.i98.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv104, i32 6
  %45 = ptrtoint ptr %asc16.i98.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 12, ptr %asc16.i98.i, align 1
  %ascq17.i99.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv104, i32 7
  %46 = ptrtoint ptr %ascq17.i99.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 2, ptr %ascq17.i99.i, align 1
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %or85
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %47 = trunc i32 %indvars.iv to i16
  %conv112 = add i16 %47, %36
  %add.ptr = getelementptr i8, ptr %call94, i32 %indvars.iv
  %call114 = tail call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext %conv112, ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115.not = icmp eq i32 %call114, 0
  br i1 %cmp115.not, label %for.cond, label %if.then117

if.then117:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vfree(ptr noundef nonnull %call94) #9
  %device118 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %48 = ptrtoint ptr %device118 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device118, align 4
  %lun119 = getelementptr inbounds %struct.scsi_device, ptr %49, i32 0, i32 18
  %50 = ptrtoint ptr %lun119 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %lun119, align 8
  %conv120 = trunc i64 %51 to i32
  %arrayidx.i82.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv120
  %52 = ptrtoint ptr %arrayidx.i82.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 112, ptr %arrayidx.i82.i, align 1
  %sense_key2.i83.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv120, i32 2
  %53 = ptrtoint ptr %sense_key2.i83.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 3, ptr %sense_key2.i83.i, align 1
  %info3.i84.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv120, i32 3
  %ad_sense_len.i88.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv120, i32 4
  %54 = ptrtoint ptr %info3.i84.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 0, ptr %info3.i84.i, align 1
  %55 = ptrtoint ptr %ad_sense_len.i88.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 10, ptr %ad_sense_len.i88.i, align 1
  %asc16.i89.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv120, i32 6
  %56 = ptrtoint ptr %asc16.i89.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 17, ptr %asc16.i89.i, align 1
  %ascq17.i90.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv120, i32 7
  %57 = ptrtoint ptr %ascq17.i90.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %ascq17.i90.i, align 1
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %58 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %length.i, align 4
  %60 = tail call i32 @llvm.umin.i32(i32 %59, i32 %or85)
  tail call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %call94, i32 noundef %60, ptr noundef %srb) #9
  %61 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %length.i, align 4
  %sub = sub i32 %62, %60
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %63 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub, ptr %resid_len.i, align 4
  tail call void @vfree(ptr noundef nonnull %call94) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then117, %if.then101, %if.end92.cleanup_crit_edge, %if.then90
  %retval.0 = phi i32 [ 1, %if.then90 ], [ 1, %if.then101 ], [ 1, %if.then117 ], [ 0, %for.end ], [ 3, %if.end92.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_mem(ptr noundef %srb, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %0 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body68_crit_edge, label %land.lhs.true

entry.do.body68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

land.lhs.true:                                    ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %2 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body68_crit_edge

land.lhs.true.do.body68_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

if.then:                                          ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 212
  %8 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 ptrtoint (ptr blockaddress(@write_mem, %__here) to i32), ptr %task_state_change, align 4
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %9, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !317
  %call64 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  br label %do.body68

do.body68:                                        ; preds = %__here, %land.lhs.true.do.body68_crit_edge, %entry.do.body68_crit_edge
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %11 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat69 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %12 = ptrtoint ptr %rtsx_stat69 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %rtsx_stat69, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %13 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %14, i32 2
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv72 = zext i8 %16 to i32
  %shl = shl nuw nsw i32 %conv72, 8
  %arrayidx74 = getelementptr i8, ptr %14, i32 3
  %17 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %18 to i32
  %or = or i32 %shl, %conv75
  call void @__sanitizer_cov_trace_const_cmp4(i32 64512, i32 %or)
  %cmp88 = icmp ult i32 %or, 64512
  br i1 %cmp88, label %if.then90, label %if.end92

if.then90:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %20, i32 0, i32 18
  %21 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %lun, align 8
  %conv91 = trunc i64 %22 to i32
  %arrayidx.i100.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv91
  %23 = ptrtoint ptr %arrayidx.i100.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 112, ptr %arrayidx.i100.i, align 1
  %sense_key2.i101.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv91, i32 2
  %24 = ptrtoint ptr %sense_key2.i101.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 5, ptr %sense_key2.i101.i, align 1
  %info3.i102.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv91, i32 3
  %ad_sense_len.i106.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv91, i32 4
  %25 = ptrtoint ptr %info3.i102.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 0, ptr %info3.i102.i, align 1
  %26 = ptrtoint ptr %ad_sense_len.i106.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 10, ptr %ad_sense_len.i106.i, align 1
  %asc16.i107.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv91, i32 6
  %27 = ptrtoint ptr %asc16.i107.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 36, ptr %asc16.i107.i, align 1
  %ascq17.i108.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv91, i32 7
  %28 = ptrtoint ptr %ascq17.i108.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %ascq17.i108.i, align 1
  %sns_key_info.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv91, i32 9
  %29 = ptrtoint ptr %sns_key_info.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -64, ptr %sns_key_info.i.i, align 1
  %arrayidx27.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv91, i32 9, i32 1
  %30 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx27.i.i, align 1
  %arrayidx32.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv91, i32 9, i32 2
  %31 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %arrayidx32.i.i, align 1
  br label %cleanup

if.end92:                                         ; preds = %do.body68
  %arrayidx83 = getelementptr i8, ptr %14, i32 5
  %32 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx83, align 1
  %arrayidx78 = getelementptr i8, ptr %14, i32 4
  %34 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx78, align 1
  %conv80 = zext i8 %35 to i32
  %shl81 = shl nuw nsw i32 %conv80, 8
  %conv84 = zext i8 %33 to i32
  %or85 = or i32 %shl81, %conv84
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %36 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %length.i, align 4
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 %or85)
  %call100 = tail call noalias ptr @vmalloc(i32 noundef %38) #12
  %tobool101.not = icmp eq ptr %call100, null
  br i1 %tobool101.not, label %if.end92.cleanup_crit_edge, label %if.end103

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end103:                                        ; preds = %if.end92
  tail call void @rtsx_stor_get_xfer_buf(ptr noundef nonnull %call100, i32 noundef %38, ptr noundef %srb) #9
  %39 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length.i, align 4
  %sub = sub i32 %40, %38
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %41 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub, ptr %resid_len.i, align 4
  %call107 = tail call i32 @rtsx_force_power_on(ptr noundef %chip, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108.not = icmp eq i32 %call107, 0
  br i1 %cmp108.not, label %for.cond.preheader, label %if.then110

for.cond.preheader:                               ; preds = %if.end103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp117180.not = icmp eq i32 %38, 0
  br i1 %cmp117180.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %42 = trunc i32 %or to i16
  br label %for.body

if.then110:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vfree(ptr noundef nonnull %call100) #9
  %device111 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %43 = ptrtoint ptr %device111 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device111, align 4
  %lun112 = getelementptr inbounds %struct.scsi_device, ptr %44, i32 0, i32 18
  %45 = ptrtoint ptr %lun112 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %lun112, align 8
  %conv113 = trunc i64 %46 to i32
  %arrayidx.i91.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv113
  %47 = ptrtoint ptr %arrayidx.i91.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 112, ptr %arrayidx.i91.i, align 1
  %sense_key2.i92.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv113, i32 2
  %48 = ptrtoint ptr %sense_key2.i92.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 3, ptr %sense_key2.i92.i, align 1
  %info3.i93.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv113, i32 3
  %ad_sense_len.i97.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv113, i32 4
  %49 = ptrtoint ptr %info3.i93.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 0, ptr %info3.i93.i, align 1
  %50 = ptrtoint ptr %ad_sense_len.i97.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 10, ptr %ad_sense_len.i97.i, align 1
  %asc16.i98.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv113, i32 6
  %51 = ptrtoint ptr %asc16.i98.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 12, ptr %asc16.i98.i, align 1
  %ascq17.i99.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv113, i32 7
  %52 = ptrtoint ptr %ascq17.i99.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 2, ptr %ascq17.i99.i, align 1
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %38
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %53 = trunc i32 %indvars.iv to i16
  %conv121 = add i16 %53, %42
  %arrayidx122 = getelementptr i8, ptr %call100, i32 %indvars.iv
  %54 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx122, align 1
  %call123 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext %conv121, i8 noundef zeroext -1, i8 noundef zeroext %55) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124.not = icmp eq i32 %call123, 0
  br i1 %cmp124.not, label %for.cond, label %if.then126

if.then126:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vfree(ptr noundef nonnull %call100) #9
  %device127 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %56 = ptrtoint ptr %device127 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device127, align 4
  %lun128 = getelementptr inbounds %struct.scsi_device, ptr %57, i32 0, i32 18
  %58 = ptrtoint ptr %lun128 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %lun128, align 8
  %conv129 = trunc i64 %59 to i32
  %arrayidx.i91.i174 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv129
  %60 = ptrtoint ptr %arrayidx.i91.i174 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 112, ptr %arrayidx.i91.i174, align 1
  %sense_key2.i92.i175 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv129, i32 2
  %61 = ptrtoint ptr %sense_key2.i92.i175 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 3, ptr %sense_key2.i92.i175, align 1
  %info3.i93.i176 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv129, i32 3
  %ad_sense_len.i97.i177 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv129, i32 4
  %62 = ptrtoint ptr %info3.i93.i176 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 0, ptr %info3.i93.i176, align 1
  %63 = ptrtoint ptr %ad_sense_len.i97.i177 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 10, ptr %ad_sense_len.i97.i177, align 1
  %asc16.i98.i178 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv129, i32 6
  %64 = ptrtoint ptr %asc16.i98.i178 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 12, ptr %asc16.i98.i178, align 1
  %ascq17.i99.i179 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv129, i32 7
  %65 = ptrtoint ptr %ascq17.i99.i179 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 2, ptr %ascq17.i99.i179, align 1
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @vfree(ptr noundef nonnull %call100) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then126, %if.then110, %if.end92.cleanup_crit_edge, %if.then90
  %retval.0 = phi i32 [ 1, %if.then90 ], [ 1, %if.then110 ], [ 1, %if.then126 ], [ 0, %for.end ], [ 3, %if.end92.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_eeprom(ptr noundef %srb, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %0 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body68_crit_edge, label %land.lhs.true

entry.do.body68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

land.lhs.true:                                    ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %2 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body68_crit_edge

land.lhs.true.do.body68_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

if.then:                                          ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 212
  %8 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 ptrtoint (ptr blockaddress(@read_eeprom, %__here) to i32), ptr %task_state_change, align 4
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %9, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !318
  %call64 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  br label %do.body68

do.body68:                                        ; preds = %__here, %land.lhs.true.do.body68_crit_edge, %entry.do.body68_crit_edge
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %11 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat69 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %12 = ptrtoint ptr %rtsx_stat69 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %rtsx_stat69, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %13 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv72 = zext i8 %16 to i32
  %shl = shl nuw nsw i32 %conv72, 8
  %arrayidx74 = getelementptr i8, ptr %14, i32 5
  %17 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %18 to i32
  %or = or i32 %shl, %conv75
  %call78 = tail call noalias ptr @vmalloc(i32 noundef %or) #12
  %tobool79.not = icmp eq ptr %call78, null
  br i1 %tobool79.not, label %do.body68.cleanup_crit_edge, label %if.end81

do.body68.cleanup_crit_edge:                      ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end81:                                         ; preds = %do.body68
  %call82 = tail call i32 @rtsx_force_power_on(ptr noundef %chip, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83.not = icmp eq i32 %call82, 0
  br i1 %cmp83.not, label %for.cond.preheader, label %if.then85

for.cond.preheader:                               ; preds = %if.end81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp90153.not = icmp eq i32 %or, 0
  br i1 %cmp90153.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vfree(ptr noundef nonnull %call78) #9
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %20, i32 0, i32 18
  %21 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %lun, align 8
  %conv86 = trunc i64 %22 to i32
  %arrayidx.i82.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv86
  %23 = ptrtoint ptr %arrayidx.i82.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 112, ptr %arrayidx.i82.i, align 1
  %sense_key2.i83.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv86, i32 2
  %24 = ptrtoint ptr %sense_key2.i83.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %sense_key2.i83.i, align 1
  %info3.i84.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv86, i32 3
  %ad_sense_len.i88.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv86, i32 4
  %25 = ptrtoint ptr %info3.i84.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 0, ptr %info3.i84.i, align 1
  %26 = ptrtoint ptr %ad_sense_len.i88.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 10, ptr %ad_sense_len.i88.i, align 1
  %asc16.i89.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv86, i32 6
  %27 = ptrtoint ptr %asc16.i89.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 17, ptr %asc16.i89.i, align 1
  %ascq17.i90.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv86, i32 7
  %28 = ptrtoint ptr %ascq17.i90.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %ascq17.i90.i, align 1
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %or
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call78, i32 %indvars.iv
  %29 = trunc i32 %indvars.iv to i16
  %call93 = tail call i32 @spi_read_eeprom(ptr noundef %chip, i16 noundef zeroext %29, ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94.not = icmp eq i32 %call93, 0
  br i1 %cmp94.not, label %for.cond, label %if.then96

if.then96:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vfree(ptr noundef nonnull %call78) #9
  %device97 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %30 = ptrtoint ptr %device97 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device97, align 4
  %lun98 = getelementptr inbounds %struct.scsi_device, ptr %31, i32 0, i32 18
  %32 = ptrtoint ptr %lun98 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %lun98, align 8
  %conv99 = trunc i64 %33 to i32
  %arrayidx.i82.i146 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv99
  %34 = ptrtoint ptr %arrayidx.i82.i146 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 112, ptr %arrayidx.i82.i146, align 1
  %sense_key2.i83.i147 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv99, i32 2
  %35 = ptrtoint ptr %sense_key2.i83.i147 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 3, ptr %sense_key2.i83.i147, align 1
  %info3.i84.i148 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv99, i32 3
  %ad_sense_len.i88.i149 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv99, i32 4
  %36 = ptrtoint ptr %info3.i84.i148 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 0, ptr %info3.i84.i148, align 1
  %37 = ptrtoint ptr %ad_sense_len.i88.i149 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 10, ptr %ad_sense_len.i88.i149, align 1
  %asc16.i89.i150 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv99, i32 6
  %38 = ptrtoint ptr %asc16.i89.i150 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 17, ptr %asc16.i89.i150, align 1
  %ascq17.i90.i151 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv99, i32 7
  %39 = ptrtoint ptr %ascq17.i90.i151 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %ascq17.i90.i151, align 1
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %40 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %length.i, align 4
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 %or)
  tail call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %call78, i32 noundef %42, ptr noundef %srb) #9
  %43 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %length.i, align 4
  %sub = sub i32 %44, %42
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %45 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub, ptr %resid_len.i, align 4
  tail call void @vfree(ptr noundef nonnull %call78) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then96, %if.then85, %do.body68.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then85 ], [ 1, %if.then96 ], [ 0, %for.end ], [ 3, %do.body68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_eeprom(ptr noundef %srb, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %0 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body68_crit_edge, label %land.lhs.true

entry.do.body68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

land.lhs.true:                                    ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %2 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body68_crit_edge

land.lhs.true.do.body68_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

if.then:                                          ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 212
  %8 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 ptrtoint (ptr blockaddress(@write_eeprom, %__here) to i32), ptr %task_state_change, align 4
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %9, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !319
  %call64 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  br label %do.body68

do.body68:                                        ; preds = %__here, %land.lhs.true.do.body68_crit_edge, %entry.do.body68_crit_edge
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %11 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat69 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %12 = ptrtoint ptr %rtsx_stat69 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %rtsx_stat69, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %13 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %arrayidx74 = getelementptr i8, ptr %14, i32 5
  %17 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx74, align 1
  %call77 = tail call i32 @rtsx_force_power_on(ptr noundef %chip, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78.not = icmp eq i32 %call77, 0
  br i1 %cmp78.not, label %if.end82, label %if.then80

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %20, i32 0, i32 18
  %21 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %lun, align 8
  %conv81 = trunc i64 %22 to i32
  %arrayidx.i91.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv81
  %23 = ptrtoint ptr %arrayidx.i91.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 112, ptr %arrayidx.i91.i, align 1
  %sense_key2.i92.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv81, i32 2
  %24 = ptrtoint ptr %sense_key2.i92.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %sense_key2.i92.i, align 1
  %info3.i93.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv81, i32 3
  %ad_sense_len.i97.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv81, i32 4
  %25 = ptrtoint ptr %info3.i93.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 0, ptr %info3.i93.i, align 1
  %26 = ptrtoint ptr %ad_sense_len.i97.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 10, ptr %ad_sense_len.i97.i, align 1
  %asc16.i98.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv81, i32 6
  %27 = ptrtoint ptr %asc16.i98.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 12, ptr %asc16.i98.i, align 1
  %ascq17.i99.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv81, i32 7
  %28 = ptrtoint ptr %ascq17.i99.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 2, ptr %ascq17.i99.i, align 1
  br label %cleanup

if.end82:                                         ; preds = %do.body68
  %conv72 = zext i8 %16 to i32
  %shl = shl nuw nsw i32 %conv72, 8
  %conv75 = zext i8 %18 to i32
  %or = or i32 %shl, %conv75
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %or)
  %cmp84 = icmp eq i32 %or, 511
  br i1 %cmp84, label %if.then86, label %if.else

if.then86:                                        ; preds = %if.end82
  %call87 = tail call i32 @spi_erase_eeprom_chip(ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88.not = icmp eq i32 %call87, 0
  br i1 %cmp88.not, label %if.then86.cleanup_crit_edge, label %if.then90

if.then86.cleanup_crit_edge:                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then90:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  %device91 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %29 = ptrtoint ptr %device91 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device91, align 4
  %lun92 = getelementptr inbounds %struct.scsi_device, ptr %30, i32 0, i32 18
  %31 = ptrtoint ptr %lun92 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %lun92, align 8
  %conv93 = trunc i64 %32 to i32
  %arrayidx.i91.i163 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv93
  %33 = ptrtoint ptr %arrayidx.i91.i163 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 112, ptr %arrayidx.i91.i163, align 1
  %sense_key2.i92.i164 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv93, i32 2
  %34 = ptrtoint ptr %sense_key2.i92.i164 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 3, ptr %sense_key2.i92.i164, align 1
  %info3.i93.i165 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv93, i32 3
  %ad_sense_len.i97.i166 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv93, i32 4
  %35 = ptrtoint ptr %info3.i93.i165 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 0, ptr %info3.i93.i165, align 1
  %36 = ptrtoint ptr %ad_sense_len.i97.i166 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 10, ptr %ad_sense_len.i97.i166, align 1
  %asc16.i98.i167 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv93, i32 6
  %37 = ptrtoint ptr %asc16.i98.i167 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 12, ptr %asc16.i98.i167, align 1
  %ascq17.i99.i168 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv93, i32 7
  %38 = ptrtoint ptr %ascq17.i99.i168 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 2, ptr %ascq17.i99.i168, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end82
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %39 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length.i, align 4
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 %or)
  %call102 = tail call noalias ptr @vmalloc(i32 noundef %41) #12
  %tobool103.not = icmp eq ptr %call102, null
  br i1 %tobool103.not, label %if.else.cleanup_crit_edge, label %if.end105

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end105:                                        ; preds = %if.else
  tail call void @rtsx_stor_get_xfer_buf(ptr noundef nonnull %call102, i32 noundef %41, ptr noundef %srb) #9
  %42 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length.i, align 4
  %sub = sub i32 %43, %41
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %44 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub, ptr %resid_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp111176.not = icmp eq i32 %41, 0
  br i1 %cmp111176.not, label %if.end105.for.end_crit_edge, label %if.end105.for.body_crit_edge

if.end105.for.body_crit_edge:                     ; preds = %if.end105
  br label %for.body

if.end105.for.end_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %41
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end105.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.cond.for.body_crit_edge ], [ 0, %if.end105.for.body_crit_edge ]
  %arrayidx113 = getelementptr i8, ptr %call102, i32 %indvars.iv
  %45 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx113, align 1
  %47 = trunc i32 %indvars.iv to i16
  %call114 = tail call i32 @spi_write_eeprom(ptr noundef %chip, i16 noundef zeroext %47, i8 noundef zeroext %46) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115.not = icmp eq i32 %call114, 0
  br i1 %cmp115.not, label %for.cond, label %if.then117

if.then117:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vfree(ptr noundef nonnull %call102) #9
  %device118 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %48 = ptrtoint ptr %device118 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device118, align 4
  %lun119 = getelementptr inbounds %struct.scsi_device, ptr %49, i32 0, i32 18
  %50 = ptrtoint ptr %lun119 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %lun119, align 8
  %conv120 = trunc i64 %51 to i32
  %arrayidx.i91.i170 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv120
  %52 = ptrtoint ptr %arrayidx.i91.i170 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 112, ptr %arrayidx.i91.i170, align 1
  %sense_key2.i92.i171 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv120, i32 2
  %53 = ptrtoint ptr %sense_key2.i92.i171 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 3, ptr %sense_key2.i92.i171, align 1
  %info3.i93.i172 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv120, i32 3
  %ad_sense_len.i97.i173 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv120, i32 4
  %54 = ptrtoint ptr %info3.i93.i172 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 0, ptr %info3.i93.i172, align 1
  %55 = ptrtoint ptr %ad_sense_len.i97.i173 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 10, ptr %ad_sense_len.i97.i173, align 1
  %asc16.i98.i174 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv120, i32 6
  %56 = ptrtoint ptr %asc16.i98.i174 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 12, ptr %asc16.i98.i174, align 1
  %ascq17.i99.i175 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv120, i32 7
  %57 = ptrtoint ptr %ascq17.i99.i175 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 2, ptr %ascq17.i99.i175, align 1
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end105.for.end_crit_edge
  tail call void @vfree(ptr noundef nonnull %call102) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then117, %if.else.cleanup_crit_edge, %if.then90, %if.then86.cleanup_crit_edge, %if.then80
  %retval.0 = phi i32 [ 1, %if.then80 ], [ 1, %if.then90 ], [ 1, %if.then117 ], [ 3, %if.else.cleanup_crit_edge ], [ 0, %if.then86.cleanup_crit_edge ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @toggle_gpio_cmd(ptr nocapture noundef readonly %srb, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %0 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %4 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.do.body67_crit_edge, label %land.lhs.true

entry.do.body67_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body67

land.lhs.true:                                    ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %6 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body67_crit_edge

land.lhs.true.do.body67_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body67

if.then:                                          ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 212
  %12 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 ptrtoint (ptr blockaddress(@toggle_gpio_cmd, %__here) to i32), ptr %task_state_change, align 4
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %13, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !320
  %call63 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  br label %do.body67

do.body67:                                        ; preds = %__here, %land.lhs.true.do.body67_crit_edge, %entry.do.body67_crit_edge
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %15 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat68 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %16 = ptrtoint ptr %rtsx_stat68 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %rtsx_stat68, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp71 = icmp ugt i8 %3, 3
  %spec.store.select = select i1 %cmp71, i8 1, i8 %3
  tail call void @toggle_gpio(ptr noundef %chip, i8 noundef zeroext %spec.store.select) #9
  ret i32 undef
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_vendor_cmd(ptr noundef %srb, ptr noundef %chip) #0 align 64 {
entry:
  %gpio_dir = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %lun1 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun1, align 8
  %conv = trunc i64 %3 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %gpio_dir) #9
  %4 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %gpio_dir, align 1, !annotation !311
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %5 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %product_id, align 2
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.146)
  switch i16 %6, label %if.end [
    i16 21000, label %entry.if.then_crit_edge
    i16 21128, label %entry.if.then_crit_edge151
  ]

entry.if.then_crit_edge151:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge151
  %arrayidx.i100.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %8 = ptrtoint ptr %arrayidx.i100.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 112, ptr %arrayidx.i100.i, align 1
  %sense_key2.i101.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %9 = ptrtoint ptr %sense_key2.i101.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 5, ptr %sense_key2.i101.i, align 1
  %info3.i102.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i106.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %10 = ptrtoint ptr %info3.i102.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %info3.i102.i, align 1
  %11 = ptrtoint ptr %ad_sense_len.i106.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 10, ptr %ad_sense_len.i106.i, align 1
  %asc16.i107.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %12 = ptrtoint ptr %asc16.i107.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 36, ptr %asc16.i107.i, align 1
  %ascq17.i108.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %13 = ptrtoint ptr %ascq17.i108.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %ascq17.i108.i, align 1
  %sns_key_info.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9
  %14 = ptrtoint ptr %sns_key_info.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -64, ptr %sns_key_info.i.i, align 1
  %arrayidx27.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 1
  %15 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx27.i.i, align 1
  %arrayidx32.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 2
  %16 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %arrayidx32.i.i, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %17 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end.do.body79_crit_edge, label %land.lhs.true

if.end.do.body79_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body79

land.lhs.true:                                    ; preds = %if.end
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %19 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp8 = icmp eq i32 %20, 3
  br i1 %cmp8, label %if.then10, label %land.lhs.true.do.body79_crit_edge

land.lhs.true.do.body79_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body79

if.then10:                                        ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %21 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 212
  %25 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 ptrtoint (ptr blockaddress(@spi_vendor_cmd, %__here) to i32), ptr %task_state_change, align 4
  %26 = load ptr, ptr %task, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 1, ptr %26, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !321
  %call75 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  br label %do.body79

do.body79:                                        ; preds = %__here, %land.lhs.true.do.body79_crit_edge, %if.end.do.body79_crit_edge
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %28 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat80 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %29 = ptrtoint ptr %rtsx_stat80 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %rtsx_stat80, align 4
  %call83 = tail call i32 @rtsx_force_power_on(ptr noundef %chip, i8 noundef zeroext 1) #9
  %call84 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -681, ptr noundef nonnull %gpio_dir) #9
  %30 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %gpio_dir, align 1
  %32 = and i8 %31, 6
  %call87 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -681, i8 noundef zeroext 7, i8 noundef zeroext %32) #9
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %33 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %34, i32 2
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 1
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.147)
  switch i8 %36, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb90
    i8 2, label %sw.bb92
    i8 3, label %sw.bb94
    i8 4, label %sw.bb96
    i8 5, label %sw.bb98
    i8 6, label %sw.bb100
  ]

sw.bb:                                            ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  %call89 = call i32 @spi_get_status(ptr noundef %srb, ptr noundef %chip) #9
  br label %sw.epilog

sw.bb90:                                          ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  %call91 = call i32 @spi_set_parameter(ptr noundef %srb, ptr noundef %chip) #9
  br label %sw.epilog

sw.bb92:                                          ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  %call93 = call i32 @spi_read_flash_id(ptr noundef %srb, ptr noundef %chip) #9
  br label %sw.epilog

sw.bb94:                                          ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  %call95 = call i32 @spi_read_flash(ptr noundef %srb, ptr noundef %chip) #9
  br label %sw.epilog

sw.bb96:                                          ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  %call97 = call i32 @spi_write_flash(ptr noundef %srb, ptr noundef %chip) #9
  br label %sw.epilog

sw.bb98:                                          ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  %call99 = call i32 @spi_write_flash_status(ptr noundef %srb, ptr noundef %chip) #9
  br label %sw.epilog

sw.bb100:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  %call101 = call i32 @spi_erase_flash(ptr noundef %srb, ptr noundef %chip) #9
  br label %sw.epilog

sw.default:                                       ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %gpio_dir, align 1
  %call102 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -681, i8 noundef zeroext 7, i8 noundef zeroext %39) #9
  %arrayidx.i100.i142 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %40 = ptrtoint ptr %arrayidx.i100.i142 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 112, ptr %arrayidx.i100.i142, align 1
  %sense_key2.i101.i143 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %41 = ptrtoint ptr %sense_key2.i101.i143 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 5, ptr %sense_key2.i101.i143, align 1
  %info3.i102.i144 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i106.i145 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %42 = ptrtoint ptr %info3.i102.i144 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 0, ptr %info3.i102.i144, align 1
  %43 = ptrtoint ptr %ad_sense_len.i106.i145 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 10, ptr %ad_sense_len.i106.i145, align 1
  %asc16.i107.i146 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %44 = ptrtoint ptr %asc16.i107.i146 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 36, ptr %asc16.i107.i146, align 1
  %ascq17.i108.i147 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %45 = ptrtoint ptr %ascq17.i108.i147 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %ascq17.i108.i147, align 1
  %sns_key_info.i.i148 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9
  %46 = ptrtoint ptr %sns_key_info.i.i148 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -64, ptr %sns_key_info.i.i148, align 1
  %arrayidx27.i.i149 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 1
  %47 = ptrtoint ptr %arrayidx27.i.i149 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx27.i.i149, align 1
  %arrayidx32.i.i150 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 2
  %48 = ptrtoint ptr %arrayidx32.i.i150 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %arrayidx32.i.i150, align 1
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb100, %sw.bb98, %sw.bb96, %sw.bb94, %sw.bb92, %sw.bb90, %sw.bb
  %result.0 = phi i32 [ %call101, %sw.bb100 ], [ %call99, %sw.bb98 ], [ %call97, %sw.bb96 ], [ %call95, %sw.bb94 ], [ %call93, %sw.bb92 ], [ %call91, %sw.bb90 ], [ %call89, %sw.bb ]
  %49 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %gpio_dir, align 1
  %call103 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -681, i8 noundef zeroext 7, i8 noundef zeroext %50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0)
  %cmp104.not = icmp ne i32 %result.0, 0
  %. = zext i1 %cmp104.not to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %sw.default ], [ %., %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %gpio_dir) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_card_exist(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_force_power_on(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_read_register(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_stor_get_xfer_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_write_register(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_read_eeprom(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_erase_eeprom_chip(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_eeprom(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @toggle_gpio(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_host_reg(ptr noundef %srb, ptr noundef %chip) #0 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %0 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body67_crit_edge, label %land.lhs.true

entry.do.body67_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body67

land.lhs.true:                                    ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %2 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body67_crit_edge

land.lhs.true.do.body67_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body67

if.then:                                          ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 212
  %8 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 ptrtoint (ptr blockaddress(@read_host_reg, %__here) to i32), ptr %task_state_change, align 4
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %9, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !322
  %call63 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  br label %do.body67

do.body67:                                        ; preds = %__here, %land.lhs.true.do.body67_crit_edge, %entry.do.body67_crit_edge
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %11 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat68 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %12 = ptrtoint ptr %rtsx_stat68 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %rtsx_stat68, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %13 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 4
  %remap_addr = getelementptr inbounds %struct.rtsx_dev, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %remap_addr, align 4
  %conv = zext i8 %16 to i32
  %add.ptr = getelementptr i8, ptr %20, i32 %conv
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !323
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !324
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_host_reg.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_host_reg, %if.then82)) #9
          to label %do.end87 [label %if.then82], !srcloc !310

if.then82:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chip, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_host_reg.__UNIQUE_ID_ddebug314, ptr noundef %dev.i, ptr noundef nonnull @.str.105, i32 noundef %conv, i32 noundef %22) #9
  br label %do.end87

do.end87:                                         ; preds = %if.then82, %do.body67
  %27 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %28 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %29 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %shr = lshr i32 %22, 24
  %conv88 = trunc i32 %shr to i8
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv88, ptr %buf, align 1
  %shr90 = lshr i32 %22, 16
  %conv91 = trunc i32 %shr90 to i8
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv91, ptr %29, align 1
  %shr93 = lshr i32 %22, 8
  %conv94 = trunc i32 %shr93 to i8
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv94, ptr %28, align 1
  %conv96 = trunc i32 %22 to i8
  %33 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv96, ptr %27, align 1
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length.i, align 4
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 4)
  call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %buf, i32 noundef %36, ptr noundef %srb) #9
  %37 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %length.i, align 4
  %sub = sub i32 %38, %36
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %39 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub, ptr %resid_len.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  ret i32 undef
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_host_reg(ptr noundef %srb, ptr noundef %chip) #0 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf, align 4
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %1 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.body67_crit_edge, label %land.lhs.true

entry.do.body67_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body67

land.lhs.true:                                    ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %3 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body67_crit_edge

land.lhs.true.do.body67_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body67

if.then:                                          ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 212
  %9 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 ptrtoint (ptr blockaddress(@write_host_reg, %__here) to i32), ptr %task_state_change, align 4
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 1, ptr %10, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !325
  %call63 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  br label %do.body67

do.body67:                                        ; preds = %__here, %land.lhs.true.do.body67_crit_edge, %entry.do.body67_crit_edge
  %12 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %13 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %14 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %15 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat68 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %16 = ptrtoint ptr %rtsx_stat68 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %rtsx_stat68, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %17 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length.i, align 4
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 4)
  call void @rtsx_stor_get_xfer_buf(ptr noundef nonnull %buf, i32 noundef %23, ptr noundef %srb) #9
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length.i, align 4
  %sub = sub i32 %25, %23
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %26 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %resid_len.i, align 4
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %buf, align 4
  %conv = zext i8 %28 to i32
  %shl = shl nuw i32 %conv, 24
  %29 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %14, align 1
  %conv77 = zext i8 %30 to i32
  %shl78 = shl nuw nsw i32 %conv77, 16
  %or = or i32 %shl78, %shl
  %31 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %13, align 2
  %conv80 = zext i8 %32 to i32
  %shl81 = shl nuw nsw i32 %conv80, 8
  %or82 = or i32 %or, %shl81
  %33 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %12, align 1
  %conv84 = zext i8 %34 to i32
  %or85 = or i32 %or82, %conv84
  %35 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip, align 4
  %remap_addr = getelementptr inbounds %struct.rtsx_dev, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %remap_addr, align 4
  %conv86 = zext i8 %20 to i32
  %add.ptr = getelementptr i8, ptr %38, i32 %conv86
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !326
  call void @arm_heavy_mb() #9
  %39 = call i32 @llvm.bswap.i32(i32 %or85) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %39) #9, !srcloc !327
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  ret i32 undef
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_variable(ptr nocapture noundef readonly %srb, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %lun1 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun1, align 8
  %conv = trunc i64 %3 to i32
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %4 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.148)
  switch i8 %7, label %if.else122 [
    i8 1, label %if.then
    i8 2, label %if.then28
  ]

if.then:                                          ; preds = %entry
  %arrayidx8 = getelementptr i8, ptr %5, i32 4
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx8, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.149)
  switch i8 %10, label %sw.default [
    i8 16, label %sw.bb
    i8 4, label %sw.bb13
    i8 8, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx11 = getelementptr i8, ptr %5, i32 5
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %13 to i32
  %xd_clock = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 13
  %14 = ptrtoint ptr %xd_clock to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv12, ptr %xd_clock, align 4
  br label %cleanup125

sw.bb13:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx15 = getelementptr i8, ptr %5, i32 5
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %16 to i32
  %sd_clock = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 12
  %17 = ptrtoint ptr %sd_clock to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv16, ptr %sd_clock, align 4
  br label %cleanup125

sw.bb17:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx19 = getelementptr i8, ptr %5, i32 5
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %19 to i32
  %ms_clock = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 24
  %20 = ptrtoint ptr %ms_clock to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv20, ptr %ms_clock, align 4
  br label %cleanup125

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i100.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %21 = ptrtoint ptr %arrayidx.i100.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 112, ptr %arrayidx.i100.i, align 1
  %sense_key2.i101.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %22 = ptrtoint ptr %sense_key2.i101.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 5, ptr %sense_key2.i101.i, align 1
  %info3.i102.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i106.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %23 = ptrtoint ptr %info3.i102.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 0, ptr %info3.i102.i, align 1
  %24 = ptrtoint ptr %ad_sense_len.i106.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 10, ptr %ad_sense_len.i106.i, align 1
  %asc16.i107.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %25 = ptrtoint ptr %asc16.i107.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 36, ptr %asc16.i107.i, align 1
  %ascq17.i108.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %26 = ptrtoint ptr %ascq17.i108.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %ascq17.i108.i, align 1
  %sns_key_info.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9
  %27 = ptrtoint ptr %sns_key_info.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -64, ptr %sns_key_info.i.i, align 1
  %arrayidx27.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 1
  %28 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx27.i.i, align 1
  %arrayidx32.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 2
  %29 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %arrayidx32.i.i, align 1
  br label %cleanup125

if.then28:                                        ; preds = %entry
  %arrayidx30 = getelementptr i8, ptr %5, i32 4
  %30 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not = icmp eq i8 %31, 0
  %blink_led34 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 141
  br i1 %tobool.not, label %if.else32, label %if.then31

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %blink_led34 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %blink_led34, align 4
  br label %cleanup125

if.else32:                                        ; preds = %if.then28
  %33 = ptrtoint ptr %blink_led34 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %blink_led34, align 4
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %34 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool35.not = icmp eq i32 %35, 0
  br i1 %tobool35.not, label %if.else32.do.body106_crit_edge, label %land.lhs.true

if.else32.do.body106_crit_edge:                   ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body106

land.lhs.true:                                    ; preds = %if.else32
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %36 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp36 = icmp eq i32 %37, 3
  br i1 %cmp36, label %if.then38, label %land.lhs.true.do.body106_crit_edge

land.lhs.true.do.body106_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body106

if.then38:                                        ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %38 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 212
  %42 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 ptrtoint (ptr blockaddress(@set_variable, %__here) to i32), ptr %task_state_change, align 4
  %43 = load ptr, ptr %task, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 1, ptr %43, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !328
  %call102 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  br label %do.body106

do.body106:                                       ; preds = %__here, %land.lhs.true.do.body106_crit_edge, %if.else32.do.body106_crit_edge
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %45 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat107 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %46 = ptrtoint ptr %rtsx_stat107 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %rtsx_stat107, align 4
  %call110 = tail call i32 @rtsx_force_power_on(ptr noundef %chip, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111.not = icmp eq i32 %call110, 0
  br i1 %cmp111.not, label %if.end117, label %if.then113

if.then113:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device, align 4
  %lun115 = getelementptr inbounds %struct.scsi_device, ptr %48, i32 0, i32 18
  %49 = ptrtoint ptr %lun115 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %lun115, align 8
  %conv116 = trunc i64 %50 to i32
  %arrayidx.i91.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv116
  %51 = ptrtoint ptr %arrayidx.i91.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 112, ptr %arrayidx.i91.i, align 1
  %sense_key2.i92.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv116, i32 2
  %52 = ptrtoint ptr %sense_key2.i92.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 3, ptr %sense_key2.i92.i, align 1
  %info3.i93.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv116, i32 3
  %ad_sense_len.i97.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv116, i32 4
  %53 = ptrtoint ptr %info3.i93.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 0, ptr %info3.i93.i, align 1
  %54 = ptrtoint ptr %ad_sense_len.i97.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 10, ptr %ad_sense_len.i97.i, align 1
  %asc16.i98.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv116, i32 6
  %55 = ptrtoint ptr %asc16.i98.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 12, ptr %asc16.i98.i, align 1
  %ascq17.i99.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv116, i32 7
  %56 = ptrtoint ptr %ascq17.i99.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 2, ptr %ascq17.i99.i, align 1
  br label %cleanup125

if.end117:                                        ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @turn_off_led(ptr noundef %chip, i8 noundef zeroext 0) #9
  br label %cleanup125

if.else122:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i100.i155 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %57 = ptrtoint ptr %arrayidx.i100.i155 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 112, ptr %arrayidx.i100.i155, align 1
  %sense_key2.i101.i156 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %58 = ptrtoint ptr %sense_key2.i101.i156 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 5, ptr %sense_key2.i101.i156, align 1
  %info3.i102.i157 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i106.i158 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %59 = ptrtoint ptr %info3.i102.i157 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 0, ptr %info3.i102.i157, align 1
  %60 = ptrtoint ptr %ad_sense_len.i106.i158 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 10, ptr %ad_sense_len.i106.i158, align 1
  %asc16.i107.i159 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %61 = ptrtoint ptr %asc16.i107.i159 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 36, ptr %asc16.i107.i159, align 1
  %ascq17.i108.i160 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %62 = ptrtoint ptr %ascq17.i108.i160 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %ascq17.i108.i160, align 1
  %sns_key_info.i.i161 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9
  %63 = ptrtoint ptr %sns_key_info.i.i161 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -64, ptr %sns_key_info.i.i161, align 1
  %arrayidx27.i.i162 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 1
  %64 = ptrtoint ptr %arrayidx27.i.i162 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %arrayidx27.i.i162, align 1
  %arrayidx32.i.i163 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 2
  %65 = ptrtoint ptr %arrayidx32.i.i163 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %arrayidx32.i.i163, align 1
  br label %cleanup125

cleanup125:                                       ; preds = %if.else122, %if.end117, %if.then113, %if.then31, %sw.default, %sw.bb17, %sw.bb13, %sw.bb
  %retval.2 = phi i32 [ 1, %if.else122 ], [ 1, %sw.default ], [ 1, %if.then113 ], [ 0, %if.end117 ], [ 0, %sw.bb17 ], [ 0, %sw.bb13 ], [ 0, %sw.bb ], [ 0, %if.then31 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_access_ring_buffer(ptr nocapture noundef %srb, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %4 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.do.body71_crit_edge, label %land.lhs.true

entry.do.body71_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body71

land.lhs.true:                                    ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %6 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body71_crit_edge

land.lhs.true.do.body71_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body71

if.then:                                          ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 212
  %12 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 ptrtoint (ptr blockaddress(@dma_access_ring_buffer, %__here) to i32), ptr %task_state_change, align 4
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %13, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !329
  %call67 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  br label %do.body71

do.body71:                                        ; preds = %__here, %land.lhs.true.do.body71_crit_edge, %entry.do.body71_crit_edge
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %15 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat72 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %16 = ptrtoint ptr %rtsx_stat72 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %rtsx_stat72, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %17 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %conv76 = zext i8 %20 to i32
  %shl = shl nuw nsw i32 %conv76, 8
  %arrayidx78 = getelementptr i8, ptr %18, i32 5
  %21 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %22 to i32
  %or = or i32 %shl, %conv79
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %23 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length.i, align 4
  %conv85 = and i32 %24, 65535
  %25 = tail call i32 @llvm.umin.i32(i32 %or, i32 %conv85)
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 15
  %26 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp91 = icmp eq i32 %27, 2
  br i1 %cmp91, label %do.body94, label %do.body109

do.body94:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_access_ring_buffer.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dma_access_ring_buffer, %if.then104)) #9
          to label %if.end126 [label %if.then104], !srcloc !310

if.then104:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dma_access_ring_buffer.__UNIQUE_ID_ddebug324, ptr noundef %dev.i, ptr noundef nonnull @.str.107) #9
  br label %if.end126

do.body109:                                       ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_access_ring_buffer.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dma_access_ring_buffer, %if.then121)) #9
          to label %if.end126 [label %if.then121], !srcloc !310

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %dev.i172 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dma_access_ring_buffer.__UNIQUE_ID_ddebug325, ptr noundef %dev.i172, ptr noundef nonnull @.str.108) #9
  br label %if.end126

if.end126:                                        ; preds = %if.then121, %do.body109, %if.then104, %do.body94
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17
  %36 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sdb.i, align 4
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 0, i32 1
  %38 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nents.i, align 4
  %40 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sc_data_direction, align 4
  %call131 = tail call i32 @rtsx_transfer_data(ptr noundef %chip, i8 noundef zeroext 0, ptr noundef %37, i32 noundef %25, i32 noundef %39, i32 noundef %41, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %cmp132 = icmp slt i32 %call131, 0
  br i1 %cmp132, label %if.then134, label %if.end141

if.then134:                                       ; preds = %if.end126
  %42 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp136 = icmp eq i32 %43, 2
  %arrayidx.i82.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %44 = ptrtoint ptr %arrayidx.i82.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 112, ptr %arrayidx.i82.i, align 1
  %sense_key2.i83.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %45 = ptrtoint ptr %sense_key2.i83.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 3, ptr %sense_key2.i83.i, align 1
  %info3.i84.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i88.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %46 = ptrtoint ptr %info3.i84.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 0, ptr %info3.i84.i, align 1
  %47 = ptrtoint ptr %ad_sense_len.i88.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 10, ptr %ad_sense_len.i88.i, align 1
  %asc16.i89.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  br i1 %cmp136, label %if.then138, label %if.else139

if.then138:                                       ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %asc16.i89.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 17, ptr %asc16.i89.i, align 1
  %ascq17.i90.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %49 = ptrtoint ptr %ascq17.i90.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %ascq17.i90.i, align 1
  br label %cleanup

if.else139:                                       ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %asc16.i89.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 12, ptr %asc16.i89.i, align 1
  %ascq17.i99.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %51 = ptrtoint ptr %ascq17.i99.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 2, ptr %ascq17.i99.i, align 1
  br label %cleanup

if.end141:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %52 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %resid_len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end141, %if.else139, %if.then138
  %retval.0 = phi i32 [ 0, %if.end141 ], [ 1, %if.else139 ], [ 1, %if.then138 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_phy_register(ptr noundef %srb, ptr noundef %chip) #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !311
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %1 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.body68_crit_edge, label %land.lhs.true

entry.do.body68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

land.lhs.true:                                    ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %3 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body68_crit_edge

land.lhs.true.do.body68_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

if.then:                                          ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 212
  %9 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 ptrtoint (ptr blockaddress(@read_phy_register, %__here) to i32), ptr %task_state_change, align 4
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 1, ptr %10, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !330
  %call64 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  br label %do.body68

do.body68:                                        ; preds = %__here, %land.lhs.true.do.body68_crit_edge, %entry.do.body68_crit_edge
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %12 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat69 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %13 = ptrtoint ptr %rtsx_stat69 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %rtsx_stat69, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %14 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmnd, align 4
  %arrayidx74 = getelementptr i8, ptr %15, i32 5
  %16 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx74, align 1
  %arrayidx78 = getelementptr i8, ptr %15, i32 6
  %18 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx78, align 1
  %conv80 = zext i8 %19 to i16
  %shl81 = shl nuw i16 %conv80, 8
  %arrayidx83 = getelementptr i8, ptr %15, i32 7
  %20 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %21 to i16
  %or85 = or i16 %shl81, %conv84
  %22 = and i8 %21, 1
  %sext = sub nsw i8 0, %22
  %sub = sext i8 %sext to i16
  %spec.select = add i16 %or85, %sub
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %spec.select)
  %tobool95.not = icmp eq i16 %spec.select, 0
  br i1 %tobool95.not, label %do.body68.cleanup_crit_edge, label %if.then96

do.body68.cleanup_crit_edge:                      ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then96:                                        ; preds = %do.body68
  %conv97 = zext i16 %spec.select to i32
  %call98 = tail call noalias ptr @vmalloc(i32 noundef %conv97) #12
  %tobool99.not = icmp eq ptr %call98, null
  br i1 %tobool99.not, label %if.then96.cleanup_crit_edge, label %if.end101

if.then96.cleanup_crit_edge:                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end101:                                        ; preds = %if.then96
  %call102 = tail call i32 @rtsx_force_power_on(ptr noundef %chip, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103.not = icmp eq i32 %call102, 0
  br i1 %cmp103.not, label %for.cond.preheader, label %if.then105

for.cond.preheader:                               ; preds = %if.end101
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %spec.select)
  %cmp110197.not = icmp ult i16 %spec.select, 2
  br i1 %cmp110197.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %div189 = lshr i32 %conv97, 1
  %umax = call i32 @llvm.umax.i32(i32 %div189, i32 1)
  br label %for.body

if.then105:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vfree(ptr noundef nonnull %call98) #9
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %23 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 18
  %25 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %lun, align 8
  %conv106 = trunc i64 %26 to i32
  %arrayidx.i82.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv106
  %27 = ptrtoint ptr %arrayidx.i82.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 112, ptr %arrayidx.i82.i, align 1
  %sense_key2.i83.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv106, i32 2
  %28 = ptrtoint ptr %sense_key2.i83.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %sense_key2.i83.i, align 1
  %info3.i84.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv106, i32 3
  %ad_sense_len.i88.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv106, i32 4
  %29 = ptrtoint ptr %info3.i84.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 0, ptr %info3.i84.i, align 1
  %30 = ptrtoint ptr %ad_sense_len.i88.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 10, ptr %ad_sense_len.i88.i, align 1
  %asc16.i89.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv106, i32 6
  %31 = ptrtoint ptr %asc16.i89.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 17, ptr %asc16.i89.i, align 1
  %ascq17.i90.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv106, i32 7
  %32 = ptrtoint ptr %ascq17.i90.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %ascq17.i90.i, align 1
  br label %cleanup

for.body:                                         ; preds = %if.end122.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %if.end122.for.body_crit_edge ]
  %33 = trunc i32 %indvars.iv to i8
  %conv114 = add i8 %17, %33
  %call115 = call i32 @rtsx_read_phy_register(ptr noundef %chip, i8 noundef zeroext %conv114, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116.not = icmp eq i32 %call115, 0
  br i1 %cmp116.not, label %if.end122, label %if.then118

if.then118:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @vfree(ptr noundef nonnull %call98) #9
  %device119 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %34 = ptrtoint ptr %device119 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device119, align 4
  %lun120 = getelementptr inbounds %struct.scsi_device, ptr %35, i32 0, i32 18
  %36 = ptrtoint ptr %lun120 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %lun120, align 8
  %conv121 = trunc i64 %37 to i32
  %arrayidx.i82.i190 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv121
  %38 = ptrtoint ptr %arrayidx.i82.i190 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 112, ptr %arrayidx.i82.i190, align 1
  %sense_key2.i83.i191 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv121, i32 2
  %39 = ptrtoint ptr %sense_key2.i83.i191 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 3, ptr %sense_key2.i83.i191, align 1
  %info3.i84.i192 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv121, i32 3
  %ad_sense_len.i88.i193 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv121, i32 4
  %40 = ptrtoint ptr %info3.i84.i192 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 0, ptr %info3.i84.i192, align 1
  %41 = ptrtoint ptr %ad_sense_len.i88.i193 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 10, ptr %ad_sense_len.i88.i193, align 1
  %asc16.i89.i194 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv121, i32 6
  %42 = ptrtoint ptr %asc16.i89.i194 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 17, ptr %asc16.i89.i194, align 1
  %ascq17.i90.i195 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv121, i32 7
  %43 = ptrtoint ptr %ascq17.i90.i195 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %ascq17.i90.i195, align 1
  br label %cleanup

if.end122:                                        ; preds = %for.body
  %44 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %val, align 2
  %46 = lshr i16 %45, 8
  %conv124 = trunc i16 %46 to i8
  %mul = shl nuw nsw i32 %indvars.iv, 1
  %arrayidx126 = getelementptr i8, ptr %call98, i32 %mul
  %47 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv124, ptr %arrayidx126, align 1
  %conv127 = trunc i16 %45 to i8
  %add130 = or i32 %mul, 1
  %arrayidx131 = getelementptr i8, ptr %call98, i32 %add130
  %48 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv127, ptr %arrayidx131, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %umax
  br i1 %exitcond.not, label %if.end122.for.end_crit_edge, label %if.end122.for.body_crit_edge

if.end122.for.body_crit_edge:                     ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end122.for.end_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end122.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %49 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %length.i, align 4
  %51 = call i32 @llvm.umin.i32(i32 %50, i32 %conv97)
  call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %call98, i32 noundef %51, ptr noundef %srb) #9
  %52 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %length.i, align 4
  %sub141 = sub i32 %53, %51
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %54 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub141, ptr %resid_len.i, align 4
  call void @vfree(ptr noundef nonnull %call98) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then118, %if.then105, %if.then96.cleanup_crit_edge, %do.body68.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then105 ], [ 1, %if.then118 ], [ 3, %if.then96.cleanup_crit_edge ], [ 0, %for.end ], [ 0, %do.body68.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_phy_register(ptr noundef %srb, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %0 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body68_crit_edge, label %land.lhs.true

entry.do.body68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

land.lhs.true:                                    ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %2 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body68_crit_edge

land.lhs.true.do.body68_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

if.then:                                          ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 212
  %8 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 ptrtoint (ptr blockaddress(@write_phy_register, %__here) to i32), ptr %task_state_change, align 4
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %9, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !331
  %call64 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  br label %do.body68

do.body68:                                        ; preds = %__here, %land.lhs.true.do.body68_crit_edge, %entry.do.body68_crit_edge
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %11 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat69 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %12 = ptrtoint ptr %rtsx_stat69 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %rtsx_stat69, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %13 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmnd, align 4
  %arrayidx74 = getelementptr i8, ptr %14, i32 5
  %15 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx74, align 1
  %arrayidx78 = getelementptr i8, ptr %14, i32 6
  %17 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx78, align 1
  %conv80 = zext i8 %18 to i16
  %shl81 = shl nuw i16 %conv80, 8
  %arrayidx83 = getelementptr i8, ptr %14, i32 7
  %19 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %20 to i16
  %or85 = or i16 %shl81, %conv84
  %21 = and i8 %20, 1
  %sext = sub nsw i8 0, %21
  %sub = sext i8 %sext to i16
  %spec.select = add i16 %or85, %sub
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %spec.select)
  %tobool95.not = icmp eq i16 %spec.select, 0
  br i1 %tobool95.not, label %do.body68.cleanup_crit_edge, label %if.then96

do.body68.cleanup_crit_edge:                      ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then96:                                        ; preds = %do.body68
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %22 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length.i, align 4
  %conv98 = zext i16 %spec.select to i32
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 %conv98)
  %call104 = tail call noalias ptr @vmalloc(i32 noundef %24) #12
  %tobool105.not = icmp eq ptr %call104, null
  br i1 %tobool105.not, label %if.then96.cleanup_crit_edge, label %if.end107

if.then96.cleanup_crit_edge:                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end107:                                        ; preds = %if.then96
  tail call void @rtsx_stor_get_xfer_buf(ptr noundef nonnull %call104, i32 noundef %24, ptr noundef %srb) #9
  %25 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length.i, align 4
  %sub111 = sub i32 %26, %24
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %27 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub111, ptr %resid_len.i, align 4
  %call112 = tail call i32 @rtsx_force_power_on(ptr noundef %chip, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113.not = icmp eq i32 %call112, 0
  br i1 %cmp113.not, label %for.cond.preheader, label %if.then115

for.cond.preheader:                               ; preds = %if.end107
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp120200.not = icmp ult i32 %24, 2
  br i1 %cmp120200.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %div192 = lshr i32 %24, 1
  br label %for.body

if.then115:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vfree(ptr noundef nonnull %call104) #9
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %29, i32 0, i32 18
  %30 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %lun, align 8
  %conv116 = trunc i64 %31 to i32
  %arrayidx.i91.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv116
  %32 = ptrtoint ptr %arrayidx.i91.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 112, ptr %arrayidx.i91.i, align 1
  %sense_key2.i92.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv116, i32 2
  %33 = ptrtoint ptr %sense_key2.i92.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 3, ptr %sense_key2.i92.i, align 1
  %info3.i93.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv116, i32 3
  %ad_sense_len.i97.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv116, i32 4
  %34 = ptrtoint ptr %info3.i93.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 0, ptr %info3.i93.i, align 1
  %35 = ptrtoint ptr %ad_sense_len.i97.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 10, ptr %ad_sense_len.i97.i, align 1
  %asc16.i98.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv116, i32 6
  %36 = ptrtoint ptr %asc16.i98.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 12, ptr %asc16.i98.i, align 1
  %ascq17.i99.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv116, i32 7
  %37 = ptrtoint ptr %ascq17.i99.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %ascq17.i99.i, align 1
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %div192
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %indvars.iv, 1
  %arrayidx123 = getelementptr i8, ptr %call104, i32 %mul
  %38 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx123, align 1
  %conv125 = zext i8 %39 to i16
  %shl126 = shl nuw i16 %conv125, 8
  %add = or i32 %mul, 1
  %arrayidx129 = getelementptr i8, ptr %call104, i32 %add
  %40 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx129, align 1
  %conv130 = zext i8 %41 to i16
  %or131 = or i16 %shl126, %conv130
  %42 = trunc i32 %indvars.iv to i8
  %conv136 = add i8 %16, %42
  %call137 = tail call i32 @rtsx_write_phy_register(ptr noundef %chip, i8 noundef zeroext %conv136, i16 noundef zeroext %or131) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %cmp138.not = icmp eq i32 %call137, 0
  br i1 %cmp138.not, label %for.cond, label %if.then140

if.then140:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vfree(ptr noundef nonnull %call104) #9
  %device141 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %43 = ptrtoint ptr %device141 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device141, align 4
  %lun142 = getelementptr inbounds %struct.scsi_device, ptr %44, i32 0, i32 18
  %45 = ptrtoint ptr %lun142 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %lun142, align 8
  %conv143 = trunc i64 %46 to i32
  %arrayidx.i91.i194 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv143
  %47 = ptrtoint ptr %arrayidx.i91.i194 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 112, ptr %arrayidx.i91.i194, align 1
  %sense_key2.i92.i195 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv143, i32 2
  %48 = ptrtoint ptr %sense_key2.i92.i195 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 3, ptr %sense_key2.i92.i195, align 1
  %info3.i93.i196 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv143, i32 3
  %ad_sense_len.i97.i197 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv143, i32 4
  %49 = ptrtoint ptr %info3.i93.i196 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 0, ptr %info3.i93.i196, align 1
  %50 = ptrtoint ptr %ad_sense_len.i97.i197 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 10, ptr %ad_sense_len.i97.i197, align 1
  %asc16.i98.i198 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv143, i32 6
  %51 = ptrtoint ptr %asc16.i98.i198 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 12, ptr %asc16.i98.i198, align 1
  %ascq17.i99.i199 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv143, i32 7
  %52 = ptrtoint ptr %ascq17.i99.i199 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 2, ptr %ascq17.i99.i199, align 1
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @vfree(ptr noundef nonnull %call104) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then140, %if.then115, %if.then96.cleanup_crit_edge, %do.body68.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then115 ], [ 1, %if.then140 ], [ 3, %if.then96.cleanup_crit_edge ], [ 0, %for.end ], [ 0, %do.body68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @erase_eeprom2(ptr nocapture noundef readonly %srb, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %0 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body68_crit_edge, label %land.lhs.true

entry.do.body68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

land.lhs.true:                                    ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %2 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body68_crit_edge

land.lhs.true.do.body68_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

if.then:                                          ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 212
  %8 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 ptrtoint (ptr blockaddress(@erase_eeprom2, %__here) to i32), ptr %task_state_change, align 4
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %9, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !332
  %call64 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  br label %do.body68

do.body68:                                        ; preds = %__here, %land.lhs.true.do.body68_crit_edge, %entry.do.body68_crit_edge
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %11 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat69 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %12 = ptrtoint ptr %rtsx_stat69 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %rtsx_stat69, align 4
  %call72 = tail call i32 @rtsx_force_power_on(ptr noundef %chip, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73.not = icmp eq i32 %call72, 0
  br i1 %cmp73.not, label %if.end75, label %if.then74

if.then74:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %lun, align 8
  %conv = trunc i64 %16 to i32
  %arrayidx.i91.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %17 = ptrtoint ptr %arrayidx.i91.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 112, ptr %arrayidx.i91.i, align 1
  %sense_key2.i92.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %18 = ptrtoint ptr %sense_key2.i92.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %sense_key2.i92.i, align 1
  %info3.i93.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i97.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %19 = ptrtoint ptr %info3.i93.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 0, ptr %info3.i93.i, align 1
  %20 = ptrtoint ptr %ad_sense_len.i97.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 10, ptr %ad_sense_len.i97.i, align 1
  %asc16.i98.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %21 = ptrtoint ptr %asc16.i98.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 12, ptr %asc16.i98.i, align 1
  %ascq17.i99.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %22 = ptrtoint ptr %ascq17.i99.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %ascq17.i99.i, align 1
  br label %cleanup

if.end75:                                         ; preds = %do.body68
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %23 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %24, i32 3
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 1
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.150)
  switch i8 %26, label %if.else108 [
    i8 0, label %if.then87
    i8 1, label %if.then99
  ]

if.then87:                                        ; preds = %if.end75
  %call88 = tail call i32 @spi_erase_eeprom_chip(ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89.not = icmp eq i32 %call88, 0
  br i1 %cmp89.not, label %if.then87.cleanup_crit_edge, label %if.then91

if.then87.cleanup_crit_edge:                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then91:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  %device92 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %28 = ptrtoint ptr %device92 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device92, align 4
  %lun93 = getelementptr inbounds %struct.scsi_device, ptr %29, i32 0, i32 18
  %30 = ptrtoint ptr %lun93 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %lun93, align 8
  %conv94 = trunc i64 %31 to i32
  %arrayidx.i91.i139 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv94
  %32 = ptrtoint ptr %arrayidx.i91.i139 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 112, ptr %arrayidx.i91.i139, align 1
  %sense_key2.i92.i140 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv94, i32 2
  %33 = ptrtoint ptr %sense_key2.i92.i140 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 3, ptr %sense_key2.i92.i140, align 1
  %info3.i93.i141 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv94, i32 3
  %ad_sense_len.i97.i142 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv94, i32 4
  %34 = ptrtoint ptr %info3.i93.i141 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 0, ptr %info3.i93.i141, align 1
  %35 = ptrtoint ptr %ad_sense_len.i97.i142 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 10, ptr %ad_sense_len.i97.i142, align 1
  %asc16.i98.i143 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv94, i32 6
  %36 = ptrtoint ptr %asc16.i98.i143 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 12, ptr %asc16.i98.i143, align 1
  %ascq17.i99.i144 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv94, i32 7
  %37 = ptrtoint ptr %ascq17.i99.i144 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %ascq17.i99.i144, align 1
  br label %cleanup

if.then99:                                        ; preds = %if.end75
  %arrayidx77 = getelementptr i8, ptr %24, i32 4
  %38 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx77, align 1
  %conv79 = zext i8 %39 to i16
  %shl = shl nuw i16 %conv79, 8
  %arrayidx81 = getelementptr i8, ptr %24, i32 5
  %40 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %41 to i16
  %or = or i16 %shl, %conv82
  %call100 = tail call i32 @spi_erase_eeprom_byte(ptr noundef %chip, i16 noundef zeroext %or) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101.not = icmp eq i32 %call100, 0
  br i1 %cmp101.not, label %if.then99.cleanup_crit_edge, label %if.then103

if.then99.cleanup_crit_edge:                      ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then103:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #11
  %device104 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %42 = ptrtoint ptr %device104 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device104, align 4
  %lun105 = getelementptr inbounds %struct.scsi_device, ptr %43, i32 0, i32 18
  %44 = ptrtoint ptr %lun105 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %lun105, align 8
  %conv106 = trunc i64 %45 to i32
  %arrayidx.i91.i145 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv106
  %46 = ptrtoint ptr %arrayidx.i91.i145 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 112, ptr %arrayidx.i91.i145, align 1
  %sense_key2.i92.i146 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv106, i32 2
  %47 = ptrtoint ptr %sense_key2.i92.i146 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 3, ptr %sense_key2.i92.i146, align 1
  %info3.i93.i147 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv106, i32 3
  %ad_sense_len.i97.i148 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv106, i32 4
  %48 = ptrtoint ptr %info3.i93.i147 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 0, ptr %info3.i93.i147, align 1
  %49 = ptrtoint ptr %ad_sense_len.i97.i148 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 10, ptr %ad_sense_len.i97.i148, align 1
  %asc16.i98.i149 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv106, i32 6
  %50 = ptrtoint ptr %asc16.i98.i149 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 12, ptr %asc16.i98.i149, align 1
  %ascq17.i99.i150 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv106, i32 7
  %51 = ptrtoint ptr %ascq17.i99.i150 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 2, ptr %ascq17.i99.i150, align 1
  br label %cleanup

if.else108:                                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %device109 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %52 = ptrtoint ptr %device109 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device109, align 4
  %lun110 = getelementptr inbounds %struct.scsi_device, ptr %53, i32 0, i32 18
  %54 = ptrtoint ptr %lun110 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %lun110, align 8
  %conv111 = trunc i64 %55 to i32
  %arrayidx.i100.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv111
  %56 = ptrtoint ptr %arrayidx.i100.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 112, ptr %arrayidx.i100.i, align 1
  %sense_key2.i101.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv111, i32 2
  %57 = ptrtoint ptr %sense_key2.i101.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 5, ptr %sense_key2.i101.i, align 1
  %info3.i102.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv111, i32 3
  %ad_sense_len.i106.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv111, i32 4
  %58 = ptrtoint ptr %info3.i102.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 0, ptr %info3.i102.i, align 1
  %59 = ptrtoint ptr %ad_sense_len.i106.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 10, ptr %ad_sense_len.i106.i, align 1
  %asc16.i107.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv111, i32 6
  %60 = ptrtoint ptr %asc16.i107.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 36, ptr %asc16.i107.i, align 1
  %ascq17.i108.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv111, i32 7
  %61 = ptrtoint ptr %ascq17.i108.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %ascq17.i108.i, align 1
  %sns_key_info.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv111, i32 9
  %62 = ptrtoint ptr %sns_key_info.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -64, ptr %sns_key_info.i.i, align 1
  %arrayidx27.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv111, i32 9, i32 1
  %63 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %arrayidx27.i.i, align 1
  %arrayidx32.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv111, i32 9, i32 2
  %64 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %arrayidx32.i.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else108, %if.then103, %if.then99.cleanup_crit_edge, %if.then91, %if.then87.cleanup_crit_edge, %if.then74
  %retval.0 = phi i32 [ 1, %if.then74 ], [ 1, %if.then91 ], [ 1, %if.then103 ], [ 1, %if.else108 ], [ 0, %if.then99.cleanup_crit_edge ], [ 0, %if.then87.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_eeprom2(ptr noundef %srb, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %0 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body68_crit_edge, label %land.lhs.true

entry.do.body68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

land.lhs.true:                                    ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %2 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body68_crit_edge

land.lhs.true.do.body68_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

if.then:                                          ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 212
  %8 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 ptrtoint (ptr blockaddress(@read_eeprom2, %__here) to i32), ptr %task_state_change, align 4
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %9, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !333
  %call64 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  br label %do.body68

do.body68:                                        ; preds = %__here, %land.lhs.true.do.body68_crit_edge, %entry.do.body68_crit_edge
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %11 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat69 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %12 = ptrtoint ptr %rtsx_stat69 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %rtsx_stat69, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %13 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv72 = zext i8 %16 to i16
  %shl = shl nuw i16 %conv72, 8
  %arrayidx74 = getelementptr i8, ptr %14, i32 5
  %17 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %18 to i16
  %or = or i16 %shl, %conv75
  %arrayidx78 = getelementptr i8, ptr %14, i32 6
  %19 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx78, align 1
  %conv80 = zext i8 %20 to i32
  %shl81 = shl nuw nsw i32 %conv80, 8
  %arrayidx83 = getelementptr i8, ptr %14, i32 7
  %21 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %22 to i32
  %or85 = or i32 %shl81, %conv84
  %call88 = tail call noalias ptr @vmalloc(i32 noundef %or85) #12
  %tobool89.not = icmp eq ptr %call88, null
  br i1 %tobool89.not, label %do.body68.cleanup_crit_edge, label %if.end91

do.body68.cleanup_crit_edge:                      ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end91:                                         ; preds = %do.body68
  %call92 = tail call i32 @rtsx_force_power_on(ptr noundef %chip, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93.not = icmp eq i32 %call92, 0
  br i1 %cmp93.not, label %for.cond.preheader, label %if.then95

for.cond.preheader:                               ; preds = %if.end91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or85)
  %cmp100169.not = icmp eq i32 %or85, 0
  br i1 %cmp100169.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then95:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vfree(ptr noundef nonnull %call88) #9
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %23 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 18
  %25 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %lun, align 8
  %conv96 = trunc i64 %26 to i32
  %arrayidx.i82.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv96
  %27 = ptrtoint ptr %arrayidx.i82.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 112, ptr %arrayidx.i82.i, align 1
  %sense_key2.i83.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv96, i32 2
  %28 = ptrtoint ptr %sense_key2.i83.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %sense_key2.i83.i, align 1
  %info3.i84.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv96, i32 3
  %ad_sense_len.i88.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv96, i32 4
  %29 = ptrtoint ptr %info3.i84.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 0, ptr %info3.i84.i, align 1
  %30 = ptrtoint ptr %ad_sense_len.i88.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 10, ptr %ad_sense_len.i88.i, align 1
  %asc16.i89.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv96, i32 6
  %31 = ptrtoint ptr %asc16.i89.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 17, ptr %asc16.i89.i, align 1
  %ascq17.i90.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv96, i32 7
  %32 = ptrtoint ptr %ascq17.i90.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %ascq17.i90.i, align 1
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %or85
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %33 = trunc i32 %indvars.iv to i16
  %add = add i16 %or, %33
  %add.ptr = getelementptr i8, ptr %call88, i32 %indvars.iv
  %call106 = tail call i32 @spi_read_eeprom(ptr noundef %chip, i16 noundef zeroext %add, ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp107.not = icmp eq i32 %call106, 0
  br i1 %cmp107.not, label %for.cond, label %if.then109

if.then109:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vfree(ptr noundef nonnull %call88) #9
  %device110 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %34 = ptrtoint ptr %device110 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device110, align 4
  %lun111 = getelementptr inbounds %struct.scsi_device, ptr %35, i32 0, i32 18
  %36 = ptrtoint ptr %lun111 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %lun111, align 8
  %conv112 = trunc i64 %37 to i32
  %arrayidx.i82.i162 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv112
  %38 = ptrtoint ptr %arrayidx.i82.i162 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 112, ptr %arrayidx.i82.i162, align 1
  %sense_key2.i83.i163 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv112, i32 2
  %39 = ptrtoint ptr %sense_key2.i83.i163 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 3, ptr %sense_key2.i83.i163, align 1
  %info3.i84.i164 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv112, i32 3
  %ad_sense_len.i88.i165 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv112, i32 4
  %40 = ptrtoint ptr %info3.i84.i164 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 0, ptr %info3.i84.i164, align 1
  %41 = ptrtoint ptr %ad_sense_len.i88.i165 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 10, ptr %ad_sense_len.i88.i165, align 1
  %asc16.i89.i166 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv112, i32 6
  %42 = ptrtoint ptr %asc16.i89.i166 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 17, ptr %asc16.i89.i166, align 1
  %ascq17.i90.i167 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv112, i32 7
  %43 = ptrtoint ptr %ascq17.i90.i167 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %ascq17.i90.i167, align 1
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %44 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length.i, align 4
  %46 = tail call i32 @llvm.umin.i32(i32 %45, i32 %or85)
  tail call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %call88, i32 noundef %46, ptr noundef %srb) #9
  %47 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %length.i, align 4
  %sub = sub i32 %48, %46
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %49 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub, ptr %resid_len.i, align 4
  tail call void @vfree(ptr noundef nonnull %call88) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then109, %if.then95, %do.body68.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then95 ], [ 1, %if.then109 ], [ 0, %for.end ], [ 3, %do.body68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_eeprom2(ptr noundef %srb, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %0 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body68_crit_edge, label %land.lhs.true

entry.do.body68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

land.lhs.true:                                    ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %2 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body68_crit_edge

land.lhs.true.do.body68_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

if.then:                                          ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 212
  %8 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 ptrtoint (ptr blockaddress(@write_eeprom2, %__here) to i32), ptr %task_state_change, align 4
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %9, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !334
  %call64 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  br label %do.body68

do.body68:                                        ; preds = %__here, %land.lhs.true.do.body68_crit_edge, %entry.do.body68_crit_edge
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %11 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat69 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %12 = ptrtoint ptr %rtsx_stat69 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %rtsx_stat69, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %13 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv72 = zext i8 %16 to i16
  %shl = shl nuw i16 %conv72, 8
  %arrayidx74 = getelementptr i8, ptr %14, i32 5
  %17 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %18 to i16
  %or = or i16 %shl, %conv75
  %arrayidx78 = getelementptr i8, ptr %14, i32 6
  %19 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx78, align 1
  %conv80 = zext i8 %20 to i32
  %shl81 = shl nuw nsw i32 %conv80, 8
  %arrayidx83 = getelementptr i8, ptr %14, i32 7
  %21 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %22 to i32
  %or85 = or i32 %shl81, %conv84
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %23 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length.i, align 4
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 %or85)
  %call94 = tail call noalias ptr @vmalloc(i32 noundef %25) #12
  %tobool95.not = icmp eq ptr %call94, null
  br i1 %tobool95.not, label %do.body68.cleanup_crit_edge, label %if.end97

do.body68.cleanup_crit_edge:                      ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end97:                                         ; preds = %do.body68
  tail call void @rtsx_stor_get_xfer_buf(ptr noundef nonnull %call94, i32 noundef %25, ptr noundef %srb) #9
  %26 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length.i, align 4
  %sub = sub i32 %27, %25
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %28 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub, ptr %resid_len.i, align 4
  %call101 = tail call i32 @rtsx_force_power_on(ptr noundef %chip, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102.not = icmp eq i32 %call101, 0
  br i1 %cmp102.not, label %for.cond.preheader, label %if.then104

for.cond.preheader:                               ; preds = %if.end97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp109169.not = icmp eq i32 %25, 0
  br i1 %cmp109169.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then104:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vfree(ptr noundef nonnull %call94) #9
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %29 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %30, i32 0, i32 18
  %31 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %lun, align 8
  %conv105 = trunc i64 %32 to i32
  %arrayidx.i91.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv105
  %33 = ptrtoint ptr %arrayidx.i91.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 112, ptr %arrayidx.i91.i, align 1
  %sense_key2.i92.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv105, i32 2
  %34 = ptrtoint ptr %sense_key2.i92.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 3, ptr %sense_key2.i92.i, align 1
  %info3.i93.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv105, i32 3
  %ad_sense_len.i97.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv105, i32 4
  %35 = ptrtoint ptr %info3.i93.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 0, ptr %info3.i93.i, align 1
  %36 = ptrtoint ptr %ad_sense_len.i97.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 10, ptr %ad_sense_len.i97.i, align 1
  %asc16.i98.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv105, i32 6
  %37 = ptrtoint ptr %asc16.i98.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 12, ptr %asc16.i98.i, align 1
  %ascq17.i99.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv105, i32 7
  %38 = ptrtoint ptr %ascq17.i99.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 2, ptr %ascq17.i99.i, align 1
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %25
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %39 = trunc i32 %indvars.iv to i16
  %add = add i16 %or, %39
  %arrayidx114 = getelementptr i8, ptr %call94, i32 %indvars.iv
  %40 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx114, align 1
  %call115 = tail call i32 @spi_write_eeprom(ptr noundef %chip, i16 noundef zeroext %add, i8 noundef zeroext %41) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116.not = icmp eq i32 %call115, 0
  br i1 %cmp116.not, label %for.cond, label %if.then118

if.then118:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vfree(ptr noundef nonnull %call94) #9
  %device119 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %42 = ptrtoint ptr %device119 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device119, align 4
  %lun120 = getelementptr inbounds %struct.scsi_device, ptr %43, i32 0, i32 18
  %44 = ptrtoint ptr %lun120 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %lun120, align 8
  %conv121 = trunc i64 %45 to i32
  %arrayidx.i91.i163 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv121
  %46 = ptrtoint ptr %arrayidx.i91.i163 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 112, ptr %arrayidx.i91.i163, align 1
  %sense_key2.i92.i164 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv121, i32 2
  %47 = ptrtoint ptr %sense_key2.i92.i164 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 3, ptr %sense_key2.i92.i164, align 1
  %info3.i93.i165 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv121, i32 3
  %ad_sense_len.i97.i166 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv121, i32 4
  %48 = ptrtoint ptr %info3.i93.i165 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 0, ptr %info3.i93.i165, align 1
  %49 = ptrtoint ptr %ad_sense_len.i97.i166 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 10, ptr %ad_sense_len.i97.i166, align 1
  %asc16.i98.i167 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv121, i32 6
  %50 = ptrtoint ptr %asc16.i98.i167 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 12, ptr %asc16.i98.i167, align 1
  %ascq17.i99.i168 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv121, i32 7
  %51 = ptrtoint ptr %ascq17.i99.i168 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 2, ptr %ascq17.i99.i168, align 1
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @vfree(ptr noundef nonnull %call94) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then118, %if.then104, %do.body68.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then104 ], [ 1, %if.then118 ], [ 0, %for.end ], [ 3, %do.body68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_efuse(ptr noundef %srb, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %0 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body68_crit_edge, label %land.lhs.true

entry.do.body68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

land.lhs.true:                                    ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %2 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body68_crit_edge

land.lhs.true.do.body68_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

if.then:                                          ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 212
  %8 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 ptrtoint (ptr blockaddress(@read_efuse, %__here) to i32), ptr %task_state_change, align 4
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %9, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !335
  %call64 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  br label %do.body68

do.body68:                                        ; preds = %__here, %land.lhs.true.do.body68_crit_edge, %entry.do.body68_crit_edge
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %11 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat69 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %12 = ptrtoint ptr %rtsx_stat69 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %rtsx_stat69, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %13 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %arrayidx73 = getelementptr i8, ptr %14, i32 5
  %17 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx73, align 1
  %conv = zext i8 %18 to i32
  %call74 = tail call noalias ptr @vmalloc(i32 noundef %conv) #12
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %do.body68.cleanup_crit_edge, label %if.end77

do.body68.cleanup_crit_edge:                      ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end77:                                         ; preds = %do.body68
  %call78 = tail call i32 @rtsx_force_power_on(ptr noundef %chip, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79.not = icmp eq i32 %call78, 0
  br i1 %cmp79.not, label %for.cond.preheader, label %if.then81

for.cond.preheader:                               ; preds = %if.end77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp86153.not = icmp eq i8 %18, 0
  br i1 %cmp86153.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vfree(ptr noundef nonnull %call74) #9
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %20, i32 0, i32 18
  %21 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %lun, align 8
  %conv82 = trunc i64 %22 to i32
  %arrayidx.i82.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv82
  %23 = ptrtoint ptr %arrayidx.i82.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 112, ptr %arrayidx.i82.i, align 1
  %sense_key2.i83.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv82, i32 2
  %24 = ptrtoint ptr %sense_key2.i83.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %sense_key2.i83.i, align 1
  %info3.i84.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv82, i32 3
  %ad_sense_len.i88.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv82, i32 4
  %25 = ptrtoint ptr %info3.i84.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 0, ptr %info3.i84.i, align 1
  %26 = ptrtoint ptr %ad_sense_len.i88.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 10, ptr %ad_sense_len.i88.i, align 1
  %asc16.i89.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv82, i32 6
  %27 = ptrtoint ptr %asc16.i89.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 17, ptr %asc16.i89.i, align 1
  %ascq17.i90.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv82, i32 7
  %28 = ptrtoint ptr %ascq17.i90.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %ascq17.i90.i, align 1
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %29 = trunc i32 %indvars.iv to i8
  %add = add i8 %16, %29
  %add.ptr = getelementptr i8, ptr %call74, i32 %indvars.iv
  %call92 = tail call i32 @rtsx_read_efuse(ptr noundef %chip, i8 noundef zeroext %add, ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93.not = icmp eq i32 %call92, 0
  br i1 %cmp93.not, label %for.cond, label %if.then95

if.then95:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vfree(ptr noundef nonnull %call74) #9
  %device96 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %30 = ptrtoint ptr %device96 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device96, align 4
  %lun97 = getelementptr inbounds %struct.scsi_device, ptr %31, i32 0, i32 18
  %32 = ptrtoint ptr %lun97 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %lun97, align 8
  %conv98 = trunc i64 %33 to i32
  %arrayidx.i82.i146 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv98
  %34 = ptrtoint ptr %arrayidx.i82.i146 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 112, ptr %arrayidx.i82.i146, align 1
  %sense_key2.i83.i147 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv98, i32 2
  %35 = ptrtoint ptr %sense_key2.i83.i147 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 3, ptr %sense_key2.i83.i147, align 1
  %info3.i84.i148 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv98, i32 3
  %ad_sense_len.i88.i149 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv98, i32 4
  %36 = ptrtoint ptr %info3.i84.i148 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 0, ptr %info3.i84.i148, align 1
  %37 = ptrtoint ptr %ad_sense_len.i88.i149 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 10, ptr %ad_sense_len.i88.i149, align 1
  %asc16.i89.i150 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv98, i32 6
  %38 = ptrtoint ptr %asc16.i89.i150 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 17, ptr %asc16.i89.i150, align 1
  %ascq17.i90.i151 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv98, i32 7
  %39 = ptrtoint ptr %ascq17.i90.i151 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %ascq17.i90.i151, align 1
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %40 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %length.i, align 4
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 %conv)
  tail call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %call74, i32 noundef %42, ptr noundef %srb) #9
  %43 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %length.i, align 4
  %sub = sub i32 %44, %42
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %45 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub, ptr %resid_len.i, align 4
  tail call void @vfree(ptr noundef nonnull %call74) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then95, %if.then81, %do.body68.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then81 ], [ 1, %if.then95 ], [ 0, %for.end ], [ 3, %do.body68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_efuse(ptr noundef %srb, ptr noundef %chip) #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !311
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %1 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.body68_crit_edge, label %land.lhs.true

entry.do.body68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

land.lhs.true:                                    ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %3 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body68_crit_edge

land.lhs.true.do.body68_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

if.then:                                          ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 212
  %9 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 ptrtoint (ptr blockaddress(@write_efuse, %__here) to i32), ptr %task_state_change, align 4
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 1, ptr %10, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !336
  %call64 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  br label %do.body68

do.body68:                                        ; preds = %__here, %land.lhs.true.do.body68_crit_edge, %entry.do.body68_crit_edge
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %12 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat69 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %13 = ptrtoint ptr %rtsx_stat69 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %rtsx_stat69, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %14 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %arrayidx73 = getelementptr i8, ptr %15, i32 5
  %18 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx73, align 1
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %20 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i, align 4
  %conv = zext i8 %19 to i32
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %conv)
  %call80 = tail call noalias ptr @vmalloc(i32 noundef %22) #12
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %do.body68.cleanup_crit_edge, label %if.end83

do.body68.cleanup_crit_edge:                      ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end83:                                         ; preds = %do.body68
  tail call void @rtsx_stor_get_xfer_buf(ptr noundef nonnull %call80, i32 noundef %22, ptr noundef %srb) #9
  %23 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length.i, align 4
  %sub = sub i32 %24, %22
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %25 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub, ptr %resid_len.i, align 4
  %call87 = tail call i32 @rtsx_force_power_on(ptr noundef %chip, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88.not = icmp eq i32 %call87, 0
  br i1 %cmp88.not, label %if.end91, label %if.then90

if.then90:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vfree(ptr noundef nonnull %call80) #9
  br label %cleanup

if.end91:                                         ; preds = %if.end83
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %26 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool92.not = icmp eq i32 %27, 0
  br i1 %tobool92.not, label %if.end91.if.end286_crit_edge, label %if.then93

if.end91.if.end286_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end286

if.then93:                                        ; preds = %if.end91
  %call94 = call i32 @rtsx_read_phy_register(ptr noundef %chip, i8 noundef zeroext 8, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95.not = icmp eq i32 %call94, 0
  br i1 %cmp95.not, label %if.end98, label %if.then97

if.then97:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #11
  call void @vfree(ptr noundef nonnull %call80) #9
  br label %cleanup

if.end98:                                         ; preds = %if.then93
  %call99 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -395, i8 noundef zeroext 6, i8 noundef zeroext 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp100.not = icmp eq i32 %call99, 0
  br i1 %cmp100.not, label %__here156, label %if.then102

if.then102:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  call void @vfree(ptr noundef nonnull %call80) #9
  br label %cleanup

__here156:                                        ; preds = %if.end98
  %28 = call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i571 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i571 to ptr
  %task159 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task159 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task159, align 8
  %task_state_change160 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 212
  %32 = ptrtoint ptr %task_state_change160 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 ptrtoint (ptr blockaddress(@write_efuse, %__here156) to i32), ptr %task_state_change160, align 4
  %33 = load ptr, ptr %task159, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 1, ptr %33, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !337
  %call186 = call i32 @schedule_timeout(i32 noundef 60) #9
  %phy_voltage = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 142
  %35 = ptrtoint ptr %phy_voltage to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %phy_voltage, align 1
  %conv189 = zext i8 %36 to i16
  %or = or i16 %conv189, 19456
  %call191 = call i32 @rtsx_write_phy_register(ptr noundef %chip, i8 noundef zeroext 8, i16 noundef zeroext %or) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %cmp192.not = icmp eq i32 %call191, 0
  br i1 %cmp192.not, label %if.end195, label %if.then194

if.then194:                                       ; preds = %__here156
  call void @__sanitizer_cov_trace_pc() #11
  call void @vfree(ptr noundef nonnull %call80) #9
  br label %cleanup

if.end195:                                        ; preds = %__here156
  %call196 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -395, i8 noundef zeroext 6, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %cmp197.not = icmp eq i32 %call196, 0
  br i1 %cmp197.not, label %__here253, label %if.then199

if.then199:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #11
  call void @vfree(ptr noundef nonnull %call80) #9
  br label %cleanup

__here253:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %task159 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task159, align 8
  %task_state_change257 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 212
  %39 = ptrtoint ptr %task_state_change257 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 ptrtoint (ptr blockaddress(@write_efuse, %__here253) to i32), ptr %task_state_change257, align 4
  %40 = load ptr, ptr %task159, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 1, ptr %40, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !338
  %call283 = call i32 @schedule_timeout(i32 noundef 60) #9
  br label %if.end286

if.end286:                                        ; preds = %__here253, %if.end91.if.end286_crit_edge
  %call287 = call i32 @card_power_on(ptr noundef %chip, i8 noundef zeroext -128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call287)
  %cmp288.not = icmp eq i32 %call287, 0
  br i1 %cmp288.not, label %__here344, label %if.then290

if.then290:                                       ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #11
  call void @vfree(ptr noundef nonnull %call80) #9
  br label %cleanup

__here344:                                        ; preds = %if.end286
  %42 = call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i572 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i572 to ptr
  %task347 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task347 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task347, align 8
  %task_state_change348 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 212
  %46 = ptrtoint ptr %task_state_change348 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 ptrtoint (ptr blockaddress(@write_efuse, %__here344) to i32), ptr %task_state_change348, align 4
  %47 = load ptr, ptr %task347, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 1, ptr %47, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !339
  %call374 = call i32 @schedule_timeout(i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp379573.not = icmp eq i32 %22, 0
  br i1 %cmp379573.not, label %__here344.exit_crit_edge, label %__here344.for.body_crit_edge

__here344.for.body_crit_edge:                     ; preds = %__here344
  br label %for.body

__here344.exit_crit_edge:                         ; preds = %__here344
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %22
  br i1 %exitcond.not, label %for.cond.exit_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.exit_crit_edge:                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %__here344.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.cond.for.body_crit_edge ], [ 0, %__here344.for.body_crit_edge ]
  %49 = trunc i32 %indvars.iv to i8
  %add = add i8 %17, %49
  %arrayidx384 = getelementptr i8, ptr %call80, i32 %indvars.iv
  %50 = ptrtoint ptr %arrayidx384 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx384, align 1
  %call385 = call i32 @rtsx_write_efuse(ptr noundef %chip, i8 noundef zeroext %add, i8 noundef zeroext %51) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call385)
  %cmp386.not = icmp eq i32 %call385, 0
  br i1 %cmp386.not, label %for.cond, label %if.then388

if.then388:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %52 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %53, i32 0, i32 18
  %54 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %lun, align 8
  %conv389 = trunc i64 %55 to i32
  %arrayidx.i91.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv389
  %56 = ptrtoint ptr %arrayidx.i91.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 112, ptr %arrayidx.i91.i, align 1
  %sense_key2.i92.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv389, i32 2
  %57 = ptrtoint ptr %sense_key2.i92.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 3, ptr %sense_key2.i92.i, align 1
  %info3.i93.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv389, i32 3
  %ad_sense_len.i97.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv389, i32 4
  %58 = ptrtoint ptr %info3.i93.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 0, ptr %info3.i93.i, align 1
  %59 = ptrtoint ptr %ad_sense_len.i97.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 10, ptr %ad_sense_len.i97.i, align 1
  %asc16.i98.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv389, i32 6
  %60 = ptrtoint ptr %asc16.i98.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 12, ptr %asc16.i98.i, align 1
  %ascq17.i99.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv389, i32 7
  %61 = ptrtoint ptr %ascq17.i99.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 2, ptr %ascq17.i99.i, align 1
  br label %exit

exit:                                             ; preds = %if.then388, %for.cond.exit_crit_edge, %__here344.exit_crit_edge
  %result.0 = phi i32 [ 1, %if.then388 ], [ 0, %__here344.exit_crit_edge ], [ 0, %for.cond.exit_crit_edge ]
  call void @vfree(ptr noundef nonnull %call80) #9
  %call391 = call i32 @card_power_off(ptr noundef %chip, i8 noundef zeroext -128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call391)
  %cmp392.not = icmp eq i32 %call391, 0
  br i1 %cmp392.not, label %if.end395, label %exit.cleanup_crit_edge

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end395:                                        ; preds = %exit
  %62 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool397.not = icmp eq i32 %63, 0
  br i1 %tobool397.not, label %if.end395.if.end499_crit_edge, label %if.then398

if.end395.if.end499_crit_edge:                    ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end499

if.then398:                                       ; preds = %if.end395
  %call399 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -395, i8 noundef zeroext 6, i8 noundef zeroext 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call399)
  %cmp400.not = icmp eq i32 %call399, 0
  br i1 %cmp400.not, label %__here456, label %if.then398.cleanup_crit_edge

if.then398.cleanup_crit_edge:                     ; preds = %if.then398
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

__here456:                                        ; preds = %if.then398
  %64 = ptrtoint ptr %task347 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task347, align 8
  %task_state_change460 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 212
  %66 = ptrtoint ptr %task_state_change460 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 ptrtoint (ptr blockaddress(@write_efuse, %__here456) to i32), ptr %task_state_change460, align 4
  %67 = load ptr, ptr %task347, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 1, ptr %67, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !340
  %call486 = call i32 @schedule_timeout(i32 noundef 60) #9
  %69 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %val, align 2
  %call489 = call i32 @rtsx_write_phy_register(ptr noundef %chip, i8 noundef zeroext 8, i16 noundef zeroext %70) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call489)
  %cmp490.not = icmp eq i32 %call489, 0
  br i1 %cmp490.not, label %if.end493, label %__here456.cleanup_crit_edge

__here456.cleanup_crit_edge:                      ; preds = %__here456
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end493:                                        ; preds = %__here456
  %call494 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -395, i8 noundef zeroext 6, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call494)
  %cmp495.not = icmp eq i32 %call494, 0
  br i1 %cmp495.not, label %if.end493.if.end499_crit_edge, label %if.end493.cleanup_crit_edge

if.end493.cleanup_crit_edge:                      ; preds = %if.end493
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end493.if.end499_crit_edge:                    ; preds = %if.end493
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end499

if.end499:                                        ; preds = %if.end493.if.end499_crit_edge, %if.end395.if.end499_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end499, %if.end493.cleanup_crit_edge, %__here456.cleanup_crit_edge, %if.then398.cleanup_crit_edge, %exit.cleanup_crit_edge, %if.then290, %if.then199, %if.then194, %if.then102, %if.then97, %if.then90, %do.body68.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.then90 ], [ 3, %if.then97 ], [ 3, %if.then102 ], [ 3, %if.then194 ], [ 3, %if.then199 ], [ 3, %if.then290 ], [ %result.0, %if.end499 ], [ 3, %do.body68.cleanup_crit_edge ], [ 3, %exit.cleanup_crit_edge ], [ 3, %if.then398.cleanup_crit_edge ], [ 3, %__here456.cleanup_crit_edge ], [ 3, %if.end493.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_cfg_byte(ptr noundef %srb, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %0 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body68_crit_edge, label %land.lhs.true

entry.do.body68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

land.lhs.true:                                    ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %2 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body68_crit_edge

land.lhs.true.do.body68_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

if.then:                                          ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 212
  %8 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 ptrtoint (ptr blockaddress(@read_cfg_byte, %__here) to i32), ptr %task_state_change, align 4
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %9, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !341
  %call64 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  br label %do.body68

do.body68:                                        ; preds = %__here, %land.lhs.true.do.body68_crit_edge, %entry.do.body68_crit_edge
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %11 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat69 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %12 = ptrtoint ptr %rtsx_stat69 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %rtsx_stat69, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %13 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %14, i32 3
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %arrayidx73 = getelementptr i8, ptr %14, i32 4
  %17 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %18 to i16
  %shl = shl nuw i16 %conv74, 8
  %arrayidx76 = getelementptr i8, ptr %14, i32 5
  %19 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %20 to i16
  %or = or i16 %shl, %conv77
  %arrayidx80 = getelementptr i8, ptr %14, i32 6
  %21 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx80, align 1
  %conv82 = zext i8 %22 to i16
  %shl83 = shl nuw i16 %conv82, 8
  %arrayidx85 = getelementptr i8, ptr %14, i32 7
  %23 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %24 to i16
  %or87 = or i16 %shl83, %conv86
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_cfg_byte.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_cfg_byte, %if.then99)) #9
          to label %do.end106 [label %if.then99], !srcloc !310

if.then99:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %conv101 = zext i8 %16 to i32
  %conv102 = zext i16 %or to i32
  %conv103 = zext i16 %or87 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_cfg_byte.__UNIQUE_ID_ddebug354, ptr noundef %dev.i, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.113, i32 noundef %conv101, i32 noundef %conv102, i32 noundef %conv103) #9
  br label %do.end106

do.end106:                                        ; preds = %if.then99, %do.body68
  %sdio_func_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 77
  %29 = ptrtoint ptr %sdio_func_exist to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sdio_func_exist, align 4
  %31 = and i32 %30, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %32 = icmp eq i32 %31, 1
  %33 = zext i1 %32 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %33)
  %cmp117 = icmp ugt i8 %16, %33
  br i1 %cmp117, label %if.then119, label %if.end121

if.then119:                                       ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %34 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %35, i32 0, i32 18
  %36 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %lun, align 8
  %conv120 = trunc i64 %37 to i32
  %arrayidx.i100.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv120
  %38 = ptrtoint ptr %arrayidx.i100.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 112, ptr %arrayidx.i100.i, align 1
  %sense_key2.i101.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv120, i32 2
  %39 = ptrtoint ptr %sense_key2.i101.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 5, ptr %sense_key2.i101.i, align 1
  %info3.i102.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv120, i32 3
  %ad_sense_len.i106.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv120, i32 4
  %40 = ptrtoint ptr %info3.i102.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 0, ptr %info3.i102.i, align 1
  %41 = ptrtoint ptr %ad_sense_len.i106.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 10, ptr %ad_sense_len.i106.i, align 1
  %asc16.i107.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv120, i32 6
  %42 = ptrtoint ptr %asc16.i107.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 36, ptr %asc16.i107.i, align 1
  %ascq17.i108.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv120, i32 7
  %43 = ptrtoint ptr %ascq17.i108.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %ascq17.i108.i, align 1
  %sns_key_info.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv120, i32 9
  %44 = ptrtoint ptr %sns_key_info.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -64, ptr %sns_key_info.i.i, align 1
  %arrayidx27.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv120, i32 9, i32 1
  %45 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %arrayidx27.i.i, align 1
  %arrayidx32.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv120, i32 9, i32 2
  %46 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %arrayidx32.i.i, align 1
  br label %cleanup

if.end121:                                        ; preds = %do.end106
  %conv122 = zext i16 %or87 to i32
  %call123 = tail call noalias ptr @vmalloc(i32 noundef %conv122) #12
  %tobool124.not = icmp eq ptr %call123, null
  br i1 %tobool124.not, label %if.end121.cleanup_crit_edge, label %if.end126

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end126:                                        ; preds = %if.end121
  %call128 = tail call i32 @rtsx_read_cfg_seq(ptr noundef %chip, i8 noundef zeroext %16, i16 noundef zeroext %or, ptr noundef nonnull %call123, i32 noundef %conv122) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129.not = icmp eq i32 %call128, 0
  br i1 %cmp129.not, label %if.end135, label %if.then131

if.then131:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  %device132 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %47 = ptrtoint ptr %device132 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device132, align 4
  %lun133 = getelementptr inbounds %struct.scsi_device, ptr %48, i32 0, i32 18
  %49 = ptrtoint ptr %lun133 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %lun133, align 8
  %conv134 = trunc i64 %50 to i32
  %arrayidx.i82.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv134
  %51 = ptrtoint ptr %arrayidx.i82.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 112, ptr %arrayidx.i82.i, align 1
  %sense_key2.i83.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv134, i32 2
  %52 = ptrtoint ptr %sense_key2.i83.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 3, ptr %sense_key2.i83.i, align 1
  %info3.i84.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv134, i32 3
  %ad_sense_len.i88.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv134, i32 4
  %53 = ptrtoint ptr %info3.i84.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 0, ptr %info3.i84.i, align 1
  %54 = ptrtoint ptr %ad_sense_len.i88.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 10, ptr %ad_sense_len.i88.i, align 1
  %asc16.i89.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv134, i32 6
  %55 = ptrtoint ptr %asc16.i89.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 17, ptr %asc16.i89.i, align 1
  %ascq17.i90.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv134, i32 7
  %56 = ptrtoint ptr %ascq17.i90.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %ascq17.i90.i, align 1
  tail call void @vfree(ptr noundef nonnull %call123) #9
  br label %cleanup

if.end135:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %57 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %length.i, align 4
  %59 = tail call i32 @llvm.umin.i32(i32 %58, i32 %conv122)
  tail call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %call123, i32 noundef %59, ptr noundef %srb) #9
  %60 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %length.i, align 4
  %sub = sub i32 %61, %59
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %62 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub, ptr %resid_len.i, align 4
  tail call void @vfree(ptr noundef nonnull %call123) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end135, %if.then131, %if.end121.cleanup_crit_edge, %if.then119
  %retval.0 = phi i32 [ 1, %if.then119 ], [ 1, %if.then131 ], [ 0, %if.end135 ], [ 3, %if.end121.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_cfg_byte(ptr noundef %srb, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %0 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body68_crit_edge, label %land.lhs.true

entry.do.body68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

land.lhs.true:                                    ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %2 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body68_crit_edge

land.lhs.true.do.body68_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

if.then:                                          ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 212
  %8 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 ptrtoint (ptr blockaddress(@write_cfg_byte, %__here) to i32), ptr %task_state_change, align 4
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %9, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !342
  %call64 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  br label %do.body68

do.body68:                                        ; preds = %__here, %land.lhs.true.do.body68_crit_edge, %entry.do.body68_crit_edge
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %11 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat69 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %12 = ptrtoint ptr %rtsx_stat69 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %rtsx_stat69, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %13 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %14, i32 3
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %arrayidx73 = getelementptr i8, ptr %14, i32 4
  %17 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %18 to i16
  %shl = shl nuw i16 %conv74, 8
  %arrayidx76 = getelementptr i8, ptr %14, i32 5
  %19 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %20 to i16
  %or = or i16 %shl, %conv77
  %arrayidx80 = getelementptr i8, ptr %14, i32 6
  %21 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx80, align 1
  %conv82 = zext i8 %22 to i32
  %shl83 = shl nuw nsw i32 %conv82, 8
  %arrayidx85 = getelementptr i8, ptr %14, i32 7
  %23 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %24 to i32
  %or87 = or i32 %shl83, %conv86
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_cfg_byte.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_cfg_byte, %if.then99)) #9
          to label %do.end105 [label %if.then99], !srcloc !310

if.then99:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %conv101 = zext i8 %16 to i32
  %conv102 = zext i16 %or to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_cfg_byte.__UNIQUE_ID_ddebug358, ptr noundef %dev.i, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.115, i32 noundef %conv101, i32 noundef %conv102) #9
  br label %do.end105

do.end105:                                        ; preds = %if.then99, %do.body68
  %sdio_func_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 77
  %29 = ptrtoint ptr %sdio_func_exist to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sdio_func_exist, align 4
  %31 = and i32 %30, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %32 = icmp eq i32 %31, 1
  %33 = zext i1 %32 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %33)
  %cmp116 = icmp ugt i8 %16, %33
  br i1 %cmp116, label %if.then118, label %if.end120

if.then118:                                       ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %34 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %35, i32 0, i32 18
  %36 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %lun, align 8
  %conv119 = trunc i64 %37 to i32
  %arrayidx.i100.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv119
  %38 = ptrtoint ptr %arrayidx.i100.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 112, ptr %arrayidx.i100.i, align 1
  %sense_key2.i101.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv119, i32 2
  %39 = ptrtoint ptr %sense_key2.i101.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 5, ptr %sense_key2.i101.i, align 1
  %info3.i102.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv119, i32 3
  %ad_sense_len.i106.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv119, i32 4
  %40 = ptrtoint ptr %info3.i102.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 0, ptr %info3.i102.i, align 1
  %41 = ptrtoint ptr %ad_sense_len.i106.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 10, ptr %ad_sense_len.i106.i, align 1
  %asc16.i107.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv119, i32 6
  %42 = ptrtoint ptr %asc16.i107.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 36, ptr %asc16.i107.i, align 1
  %ascq17.i108.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv119, i32 7
  %43 = ptrtoint ptr %ascq17.i108.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %ascq17.i108.i, align 1
  %sns_key_info.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv119, i32 9
  %44 = ptrtoint ptr %sns_key_info.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -64, ptr %sns_key_info.i.i, align 1
  %arrayidx27.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv119, i32 9, i32 1
  %45 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %arrayidx27.i.i, align 1
  %arrayidx32.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv119, i32 9, i32 2
  %46 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %arrayidx32.i.i, align 1
  br label %cleanup

if.end120:                                        ; preds = %do.end105
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %47 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %length.i, align 4
  %49 = tail call i32 @llvm.umin.i32(i32 %48, i32 %or87)
  %call128 = tail call noalias ptr @vmalloc(i32 noundef %49) #12
  %tobool129.not = icmp eq ptr %call128, null
  br i1 %tobool129.not, label %if.end120.cleanup_crit_edge, label %if.end131

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end131:                                        ; preds = %if.end120
  tail call void @rtsx_stor_get_xfer_buf(ptr noundef nonnull %call128, i32 noundef %49, ptr noundef %srb) #9
  %50 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %length.i, align 4
  %sub = sub i32 %51, %49
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %52 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub, ptr %resid_len.i, align 4
  %call136 = tail call i32 @rtsx_write_cfg_seq(ptr noundef %chip, i8 noundef zeroext %16, i16 noundef zeroext %or, ptr noundef nonnull %call128, i32 noundef %49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %cmp137.not = icmp eq i32 %call136, 0
  br i1 %cmp137.not, label %if.end143, label %if.then139

if.then139:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  %device140 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %53 = ptrtoint ptr %device140 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device140, align 4
  %lun141 = getelementptr inbounds %struct.scsi_device, ptr %54, i32 0, i32 18
  %55 = ptrtoint ptr %lun141 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %lun141, align 8
  %conv142 = trunc i64 %56 to i32
  %arrayidx.i91.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv142
  %57 = ptrtoint ptr %arrayidx.i91.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 112, ptr %arrayidx.i91.i, align 1
  %sense_key2.i92.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv142, i32 2
  %58 = ptrtoint ptr %sense_key2.i92.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 3, ptr %sense_key2.i92.i, align 1
  %info3.i93.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv142, i32 3
  %ad_sense_len.i97.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv142, i32 4
  %59 = ptrtoint ptr %info3.i93.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 0, ptr %info3.i93.i, align 1
  %60 = ptrtoint ptr %ad_sense_len.i97.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 10, ptr %ad_sense_len.i97.i, align 1
  %asc16.i98.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv142, i32 6
  %61 = ptrtoint ptr %asc16.i98.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 12, ptr %asc16.i98.i, align 1
  %ascq17.i99.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv142, i32 7
  %62 = ptrtoint ptr %ascq17.i99.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 2, ptr %ascq17.i99.i, align 1
  tail call void @vfree(ptr noundef nonnull %call128) #9
  br label %cleanup

if.end143:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vfree(ptr noundef nonnull %call128) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end143, %if.then139, %if.end120.cleanup_crit_edge, %if.then118
  %retval.0 = phi i32 [ 1, %if.then118 ], [ 1, %if.then139 ], [ 0, %if.end143 ], [ 3, %if.end120.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_dev_status(ptr noundef %srb, ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %status = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  %ms_card2 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %lun3 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %lun3 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun3, align 8
  %conv = trunc i64 %3 to i32
  %call = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %status) #9
  %4 = getelementptr inbounds [32 x i8], ptr %status, i32 0, i32 1
  %5 = getelementptr inbounds [32 x i8], ptr %status, i32 0, i32 2
  %6 = getelementptr inbounds [32 x i8], ptr %status, i32 0, i32 3
  %7 = getelementptr inbounds [32 x i8], ptr %status, i32 0, i32 4
  %8 = getelementptr inbounds [32 x i8], ptr %status, i32 0, i32 5
  %9 = getelementptr inbounds [32 x i8], ptr %status, i32 0, i32 6
  %10 = getelementptr inbounds [32 x i8], ptr %status, i32 0, i32 7
  %11 = getelementptr inbounds [32 x i8], ptr %status, i32 0, i32 8
  %12 = getelementptr inbounds [32 x i8], ptr %status, i32 0, i32 14
  %13 = getelementptr inbounds [32 x i8], ptr %status, i32 0, i32 15
  %14 = getelementptr inbounds [32 x i8], ptr %status, i32 0, i32 23
  %15 = getelementptr inbounds i8, ptr %status, i32 9
  %16 = call ptr @memset(ptr %15, i32 0, i32 23)
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %17 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %product_id, align 2
  %conv4 = trunc i16 %18 to i8
  %19 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv4, ptr %status, align 1
  %ic_version = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 59
  %20 = ptrtoint ptr %ic_version to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ic_version, align 4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %4, align 1
  %auto_delink_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 65
  %23 = ptrtoint ptr %auto_delink_en to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %auto_delink_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  %. = select i1 %tobool.not, i8 0, i8 16
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %., ptr %5, align 1
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 20, ptr %6, align 1
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 10, ptr %7, align 1
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 5, ptr %8, align 1
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 21, ptr %9, align 1
  %card_wp = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 24
  %30 = ptrtoint ptr %card_wp to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %card_wp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool12.not = icmp eq i8 %31, 0
  %storemerge1 = select i1 %tobool12.not, i8 0, i8 32
  %32 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %storemerge1, ptr %10, align 1
  %33 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %11, align 1
  %lun_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 67
  %34 = ptrtoint ptr %lun_mode to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %lun_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp = icmp eq i8 %35, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.else26_crit_edge

entry.if.else26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else26

land.lhs.true:                                    ; preds = %entry
  %arrayidx21 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 35, i32 %conv
  %36 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %37)
  %cmp23 = icmp eq i8 %37, 8
  br i1 %cmp23, label %land.lhs.true.if.end27_crit_edge, label %land.lhs.true.if.else26_crit_edge

land.lhs.true.if.else26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else26

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.else26:                                        ; preds = %land.lhs.true.if.else26_crit_edge, %entry.if.else26_crit_edge
  br label %if.end27

if.end27:                                         ; preds = %if.else26, %land.lhs.true.if.end27_crit_edge
  %oc_now_mask.0 = phi i32 [ 4, %if.else26 ], [ 64, %land.lhs.true.if.end27_crit_edge ]
  %oc_ever_mask.0 = phi i32 [ 2, %if.else26 ], [ 32, %land.lhs.true.if.end27_crit_edge ]
  %ocp_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 19
  %38 = ptrtoint ptr %ocp_stat to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ocp_stat, align 4
  %conv28 = zext i8 %39 to i32
  %and = and i32 %oc_now_mask.0, %conv28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.end27.if.end35_crit_edge, label %if.then31

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %11, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end27.if.end35_crit_edge
  %and39 = and i32 %oc_ever_mask.0, %conv28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end35.if.end46_crit_edge, label %if.then41

if.end35.if.end46_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %11, align 1
  %43 = or i8 %42, 1
  store i8 %43, ptr %11, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %if.end35.if.end46_crit_edge
  %44 = zext i8 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.151)
  switch i8 %call, label %if.end46.do.body.sink.split_crit_edge [
    i8 4, label %if.then50
    i8 8, label %if.then198
  ]

if.end46.do.body.sink.split_crit_edge:            ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.sink.split

if.then50:                                        ; preds = %if.end46
  %45 = ptrtoint ptr %sd_card1 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %sd_card1, align 4
  %conv51 = zext i16 %46 to i32
  %trunc = trunc i16 %46 to i8
  %47 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.152)
  switch i8 %trunc, label %if.then50.if.else147_crit_edge [
    i8 0, label %land.lhs.true61
    i8 1, label %land.lhs.true140
  ]

if.then50.if.else147_crit_edge:                   ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else147

land.lhs.true61:                                  ; preds = %if.then50
  %and64 = and i32 %conv51, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %land.lhs.true61.if.end76_crit_edge, label %if.then66

land.lhs.true61.if.end76_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then66:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #11
  %capacity = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 4
  %48 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %capacity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %49)
  %cmp67 = icmp ugt i32 %49, 67108864
  %.22 = select i1 %cmp67, i8 2, i8 1
  br label %if.end76

if.end76:                                         ; preds = %if.then66, %land.lhs.true61.if.end76_crit_edge
  %.sink = phi i8 [ %.22, %if.then66 ], [ 0, %land.lhs.true61.if.end76_crit_edge ]
  %50 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %.sink, ptr %12, align 1
  %and85 = and i32 %conv51, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.else89, label %if.end76.if.then241_crit_edge

if.end76.if.then241_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then241

if.else89:                                        ; preds = %if.end76
  %and98 = and i32 %conv51, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.else102, label %if.else89.if.then241_crit_edge

if.else89.if.then241_crit_edge:                   ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then241

if.else102:                                       ; preds = %if.else89
  %and111 = and i32 %conv51, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.else115, label %if.else102.if.then241_crit_edge

if.else102.if.then241_crit_edge:                  ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then241

if.else115:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #11
  %and124 = lshr i16 %46, 8
  %51 = trunc i16 %and124 to i8
  %52 = and i8 %51, 1
  br label %if.then241

land.lhs.true140:                                 ; preds = %if.then50
  %and143 = and i32 %conv51, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %land.lhs.true140.if.else147_crit_edge, label %land.lhs.true140.if.end149_crit_edge

land.lhs.true140.if.end149_crit_edge:             ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

land.lhs.true140.if.else147_crit_edge:            ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else147

if.else147:                                       ; preds = %land.lhs.true140.if.else147_crit_edge, %if.then50.if.else147_crit_edge
  br label %if.end149

if.end149:                                        ; preds = %if.else147, %land.lhs.true140.if.end149_crit_edge
  %storemerge3 = phi i8 [ 0, %if.else147 ], [ 1, %land.lhs.true140.if.end149_crit_edge ]
  %53 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %storemerge3, ptr %12, align 1
  %54 = and i32 %conv51, 8447
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %54)
  %.not = icmp eq i32 %54, 8193
  br i1 %.not, label %if.end149.if.then241_crit_edge, label %if.else162

if.end149.if.then241_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then241

if.else162:                                       ; preds = %if.end149
  %55 = and i32 %conv51, 767
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %55)
  %.not17 = icmp eq i32 %55, 513
  br i1 %.not17, label %if.else162.if.then241_crit_edge, label %if.else175

if.else162.if.then241_crit_edge:                  ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then241

if.else175:                                       ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #11
  %56 = and i32 %conv51, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %56)
  %.not18 = icmp eq i32 %56, 257
  %.24 = zext i1 %.not18 to i8
  br label %if.then241

if.then198:                                       ; preds = %if.end46
  %57 = ptrtoint ptr %ms_card2 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %ms_card2, align 4
  %conv199 = zext i16 %58 to i32
  %and200 = and i32 %conv199, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and200)
  %cmp201 = icmp eq i32 %and200, 1
  br i1 %cmp201, label %land.lhs.true209, label %if.then198.do.body.sink.split_crit_edge

if.then198.do.body.sink.split_crit_edge:          ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.sink.split

land.lhs.true209:                                 ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #11
  %and212 = lshr i16 %58, 11
  %59 = trunc i16 %and212 to i8
  %60 = and i8 %59, 1
  %61 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %12, align 1
  %and227 = and i32 %conv199, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %and227)
  %cmp228 = icmp eq i32 %and227, 1536
  %.25 = zext i1 %cmp228 to i8
  %62 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %.25, ptr %13, align 1
  br label %do.body.sink.split

if.then241:                                       ; preds = %if.else175, %if.else162.if.then241_crit_edge, %if.end149.if.then241_crit_edge, %if.else115, %if.else102.if.then241_crit_edge, %if.else89.if.then241_crit_edge, %if.end76.if.then241_crit_edge
  %.sink19 = phi i8 [ 3, %if.end76.if.then241_crit_edge ], [ 4, %if.else89.if.then241_crit_edge ], [ 2, %if.else102.if.then241_crit_edge ], [ %52, %if.else115 ], [ 3, %if.end149.if.then241_crit_edge ], [ 2, %if.else162.if.then241_crit_edge ], [ %.24, %if.else175 ]
  %63 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %.sink19, ptr %13, align 1
  %sd_erase_status = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 25
  %64 = ptrtoint ptr %sd_erase_status to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %sd_erase_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool243.not = icmp eq i8 %65, 0
  %spec.store.select = select i1 %tobool243.not, i8 -128, i8 -127
  %66 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %spec.store.select, ptr %14, align 1
  %sd_lock_status = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %67 = ptrtoint ptr %sd_lock_status to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %sd_lock_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %68)
  %tobool252.not = icmp sgt i8 %68, -1
  br i1 %tobool252.not, label %if.then241.if.end262_crit_edge, label %if.then253

if.then241.if.end262_crit_edge:                   ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end262

if.then253:                                       ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #11
  %69 = or i8 %spec.store.select, 2
  %70 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %14, align 1
  %71 = or i8 %storemerge1, 64
  %72 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %10, align 1
  br label %if.end262

if.end262:                                        ; preds = %if.then253, %if.then241.if.end262_crit_edge
  %73 = and i8 %68, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool266.not = icmp eq i8 %73, 0
  br i1 %tobool266.not, label %if.end262.do.body_crit_edge, label %if.then267

if.end262.do.body_crit_edge:                      ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then267:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %14, align 1
  %76 = or i8 %75, 4
  br label %do.body.sink.split

do.body.sink.split:                               ; preds = %if.then267, %land.lhs.true209, %if.then198.do.body.sink.split_crit_edge, %if.end46.do.body.sink.split_crit_edge
  %.sink21 = phi i8 [ %76, %if.then267 ], [ 0, %land.lhs.true209 ], [ 0, %if.end46.do.body.sink.split_crit_edge ], [ 0, %if.then198.do.body.sink.split_crit_edge ]
  %77 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %.sink21, ptr %14, align 1
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %if.end262.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_dev_status.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_dev_status, %if.then280)) #9
          to label %do.end [label %if.then280], !srcloc !310

if.then280:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %chip, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  %82 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %14, align 1
  %conv283 = zext i8 %83 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_dev_status.__UNIQUE_ID_ddebug326, ptr noundef %dev.i, ptr noundef nonnull @.str.118, i32 noundef %conv283) #9
  br label %do.end

do.end:                                           ; preds = %if.then280, %do.body
  %84 = getelementptr inbounds [32 x i8], ptr %status, i32 0, i32 31
  %85 = getelementptr inbounds [32 x i8], ptr %status, i32 0, i32 26
  %86 = getelementptr inbounds [32 x i8], ptr %status, i32 0, i32 24
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 -118, ptr %86, align 1
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 40, ptr %85, align 1
  %89 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %84, align 1
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %90 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %length.i, align 4
  %92 = tail call i32 @llvm.umin.i32(i32 %91, i32 32)
  call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %status, i32 noundef %92, ptr noundef %srb) #9
  %93 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %length.i, align 4
  %sub = sub i32 %94, %92
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %95 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %sub, ptr %resid_len.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @turn_off_led(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_transfer_data(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_read_phy_register(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_write_phy_register(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_erase_eeprom_byte(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_read_efuse(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @card_power_on(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_write_efuse(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @card_power_off(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_read_cfg_seq(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_write_cfg_seq(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_disable_bus_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_enable_bus_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rw_mem_cmd_buf(ptr noundef %srb, ptr noundef %chip) #0 align 64 {
entry:
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #9
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %4 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.do.body71_crit_edge, label %land.lhs.true

entry.do.body71_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body71

land.lhs.true:                                    ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %6 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body71_crit_edge

land.lhs.true.do.body71_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body71

if.then:                                          ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 212
  %12 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 ptrtoint (ptr blockaddress(@rw_mem_cmd_buf, %__here) to i32), ptr %task_state_change, align 4
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %13, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !343
  %call67 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  br label %do.body71

do.body71:                                        ; preds = %__here, %land.lhs.true.do.body71_crit_edge, %entry.do.body71_crit_edge
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %15 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat72 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %16 = ptrtoint ptr %rtsx_stat72 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %rtsx_stat72, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %17 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %18, i32 3
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.153)
  switch i8 %20, label %sw.default [
    i8 65, label %sw.bb
    i8 66, label %sw.bb76
    i8 67, label %sw.bb95
    i8 68, label %sw.bb97
  ]

sw.bb:                                            ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %22 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %ci, align 4
  br label %cleanup

sw.bb76:                                          ; preds = %do.body71
  %arrayidx78 = getelementptr i8, ptr %18, i32 4
  %23 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx78, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp80 = icmp ugt i8 %24, 2
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i100.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %25 = ptrtoint ptr %arrayidx.i100.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 112, ptr %arrayidx.i100.i, align 1
  %sense_key2.i101.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %26 = ptrtoint ptr %sense_key2.i101.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 5, ptr %sense_key2.i101.i, align 1
  %info3.i102.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i106.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %27 = ptrtoint ptr %info3.i102.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 0, ptr %info3.i102.i, align 1
  %28 = ptrtoint ptr %ad_sense_len.i106.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 10, ptr %ad_sense_len.i106.i, align 1
  %asc16.i107.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %29 = ptrtoint ptr %asc16.i107.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 36, ptr %asc16.i107.i, align 1
  %ascq17.i108.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %30 = ptrtoint ptr %ascq17.i108.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %ascq17.i108.i, align 1
  %sns_key_info.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9
  %31 = ptrtoint ptr %sns_key_info.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -64, ptr %sns_key_info.i.i, align 1
  %arrayidx27.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 1
  %32 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx27.i.i, align 1
  %arrayidx32.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 2
  %33 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %arrayidx32.i.i, align 1
  br label %cleanup

if.end83:                                         ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx85 = getelementptr i8, ptr %18, i32 5
  %34 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %35 to i16
  %shl = shl nuw i16 %conv86, 8
  %arrayidx88 = getelementptr i8, ptr %18, i32 6
  %36 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %37 to i16
  %or = or i16 %shl, %conv89
  %arrayidx92 = getelementptr i8, ptr %18, i32 7
  %38 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx92, align 1
  %arrayidx94 = getelementptr i8, ptr %18, i32 8
  %40 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx94, align 1
  %42 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %value, align 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext %24, i16 noundef zeroext %or, i8 noundef zeroext %39, i8 noundef zeroext %41) #9
  br label %cleanup

sw.bb95:                                          ; preds = %do.body71
  %call96 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %phi.cmp = icmp eq i32 %call96, 0
  br i1 %phi.cmp, label %sw.bb95.cleanup_crit_edge, label %if.then109

sw.bb95.cleanup_crit_edge:                        ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb97:                                          ; preds = %do.body71
  %arrayidx99 = getelementptr i8, ptr %18, i32 4
  %43 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx99, align 1
  %host_cmds_ptr.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 4
  %45 = ptrtoint ptr %host_cmds_ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %host_cmds_ptr.i, align 4
  %conv101 = zext i8 %44 to i32
  %add.ptr = getelementptr i8, ptr %46, i32 %conv101
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %add.ptr, align 1
  %49 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %value, align 1
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %50 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp103 = icmp eq i32 %51, 0
  br i1 %cmp103, label %if.then105, label %if.end106

if.then105:                                       ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i100.i148 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %52 = ptrtoint ptr %arrayidx.i100.i148 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 112, ptr %arrayidx.i100.i148, align 1
  %sense_key2.i101.i149 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %53 = ptrtoint ptr %sense_key2.i101.i149 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 5, ptr %sense_key2.i101.i149, align 1
  %info3.i102.i150 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i106.i151 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %54 = ptrtoint ptr %info3.i102.i150 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 0, ptr %info3.i102.i150, align 1
  %55 = ptrtoint ptr %ad_sense_len.i106.i151 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 10, ptr %ad_sense_len.i106.i151, align 1
  %asc16.i107.i152 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %56 = ptrtoint ptr %asc16.i107.i152 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 36, ptr %asc16.i107.i152, align 1
  %ascq17.i108.i153 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %57 = ptrtoint ptr %ascq17.i108.i153 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %ascq17.i108.i153, align 1
  %sns_key_info.i.i154 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9
  %58 = ptrtoint ptr %sns_key_info.i.i154 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -64, ptr %sns_key_info.i.i154, align 1
  %arrayidx27.i.i155 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 1
  %59 = ptrtoint ptr %arrayidx27.i.i155 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %arrayidx27.i.i155, align 1
  %arrayidx32.i.i156 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 2
  %60 = ptrtoint ptr %arrayidx32.i.i156 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %arrayidx32.i.i156, align 1
  br label %cleanup

if.end106:                                        ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #11
  call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %value, i32 noundef 1, ptr noundef %srb) #9
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %61 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %resid_len.i, align 4
  br label %cleanup

sw.default:                                       ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i100.i157 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %62 = ptrtoint ptr %arrayidx.i100.i157 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 112, ptr %arrayidx.i100.i157, align 1
  %sense_key2.i101.i158 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %63 = ptrtoint ptr %sense_key2.i101.i158 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 5, ptr %sense_key2.i101.i158, align 1
  %info3.i102.i159 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i106.i160 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %64 = ptrtoint ptr %info3.i102.i159 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 0, ptr %info3.i102.i159, align 1
  %65 = ptrtoint ptr %ad_sense_len.i106.i160 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 10, ptr %ad_sense_len.i106.i160, align 1
  %asc16.i107.i161 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %66 = ptrtoint ptr %asc16.i107.i161 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 36, ptr %asc16.i107.i161, align 1
  %ascq17.i108.i162 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %67 = ptrtoint ptr %ascq17.i108.i162 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %ascq17.i108.i162, align 1
  %sns_key_info.i.i163 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9
  %68 = ptrtoint ptr %sns_key_info.i.i163 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -64, ptr %sns_key_info.i.i163, align 1
  %arrayidx27.i.i164 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 1
  %69 = ptrtoint ptr %arrayidx27.i.i164 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %arrayidx27.i.i164, align 1
  %arrayidx32.i.i165 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 2
  %70 = ptrtoint ptr %arrayidx32.i.i165 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %arrayidx32.i.i165, align 1
  br label %cleanup

if.then109:                                       ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i91.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %71 = ptrtoint ptr %arrayidx.i91.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 112, ptr %arrayidx.i91.i, align 1
  %sense_key2.i92.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %72 = ptrtoint ptr %sense_key2.i92.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 3, ptr %sense_key2.i92.i, align 1
  %info3.i93.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i97.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %73 = ptrtoint ptr %info3.i93.i to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 0, ptr %info3.i93.i, align 1
  %74 = ptrtoint ptr %ad_sense_len.i97.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 10, ptr %ad_sense_len.i97.i, align 1
  %asc16.i98.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %75 = ptrtoint ptr %asc16.i98.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 12, ptr %asc16.i98.i, align 1
  %ascq17.i99.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %76 = ptrtoint ptr %ascq17.i99.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 2, ptr %ascq17.i99.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then109, %sw.default, %if.end106, %if.then105, %sw.bb95.cleanup_crit_edge, %if.end83, %if.then82, %sw.bb
  %retval.0 = phi i32 [ 1, %sw.default ], [ 1, %if.then105 ], [ 1, %if.then109 ], [ 1, %if.then82 ], [ 0, %sw.bb ], [ 0, %if.end83 ], [ 0, %if.end106 ], [ 0, %sw.bb95.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_add_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_send_cmd(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_get_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_set_parameter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_read_flash_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_read_flash(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_flash(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_flash_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_erase_flash(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_format_cmnd(ptr noundef %srb, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %lun2 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %lun2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun2, align 8
  %conv = trunc i64 %3 to i32
  %call = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %call)
  %cmp.not = icmp eq i8 %call, 8
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i64.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %4 = ptrtoint ptr %arrayidx.i64.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 112, ptr %arrayidx.i64.i, align 1
  %sense_key2.i65.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %5 = ptrtoint ptr %sense_key2.i65.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 5, ptr %sense_key2.i65.i, align 1
  %info3.i66.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i70.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %6 = ptrtoint ptr %info3.i66.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 0, ptr %info3.i66.i, align 1
  %7 = ptrtoint ptr %ad_sense_len.i70.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 10, ptr %ad_sense_len.i70.i, align 1
  %asc16.i71.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %8 = ptrtoint ptr %asc16.i71.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 37, ptr %asc16.i71.i, align 1
  %ascq17.i72.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %9 = ptrtoint ptr %ascq17.i72.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %ascq17.i72.i, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %10 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %11, i32 3
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 77, i8 %13)
  %cmp7.not = icmp eq i8 %13, 77
  br i1 %cmp7.not, label %lor.lhs.false, label %if.end.if.then32_crit_edge

if.end.if.then32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx10 = getelementptr i8, ptr %11, i32 4
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 71, i8 %15)
  %cmp12.not = icmp eq i8 %15, 71
  br i1 %cmp12.not, label %lor.lhs.false14, label %lor.lhs.false.if.then32_crit_edge

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %arrayidx16 = getelementptr i8, ptr %11, i32 5
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 102, i8 %17)
  %cmp18.not = icmp eq i8 %17, 102
  br i1 %cmp18.not, label %lor.lhs.false20, label %lor.lhs.false14.if.then32_crit_edge

lor.lhs.false14.if.then32_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

lor.lhs.false20:                                  ; preds = %lor.lhs.false14
  %arrayidx22 = getelementptr i8, ptr %11, i32 6
  %18 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 109, i8 %19)
  %cmp24.not = icmp eq i8 %19, 109
  br i1 %cmp24.not, label %lor.lhs.false26, label %lor.lhs.false20.if.then32_crit_edge

lor.lhs.false20.if.then32_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

lor.lhs.false26:                                  ; preds = %lor.lhs.false20
  %arrayidx28 = getelementptr i8, ptr %11, i32 7
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 116, i8 %21)
  %cmp30.not = icmp eq i8 %21, 116
  br i1 %cmp30.not, label %if.end33, label %lor.lhs.false26.if.then32_crit_edge

lor.lhs.false26.if.then32_crit_edge:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false26.if.then32_crit_edge, %lor.lhs.false20.if.then32_crit_edge, %lor.lhs.false14.if.then32_crit_edge, %lor.lhs.false.if.then32_crit_edge, %if.end.if.then32_crit_edge
  %arrayidx.i100.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %22 = ptrtoint ptr %arrayidx.i100.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 112, ptr %arrayidx.i100.i, align 1
  %sense_key2.i101.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %23 = ptrtoint ptr %sense_key2.i101.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 5, ptr %sense_key2.i101.i, align 1
  %info3.i102.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i106.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %24 = ptrtoint ptr %info3.i102.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 0, ptr %info3.i102.i, align 1
  %25 = ptrtoint ptr %ad_sense_len.i106.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 10, ptr %ad_sense_len.i106.i, align 1
  %asc16.i107.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %26 = ptrtoint ptr %asc16.i107.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 36, ptr %asc16.i107.i, align 1
  %ascq17.i108.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %27 = ptrtoint ptr %ascq17.i108.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %ascq17.i108.i, align 1
  %sns_key_info.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9
  %28 = ptrtoint ptr %sns_key_info.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -64, ptr %sns_key_info.i.i, align 1
  %arrayidx27.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 1
  %29 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx27.i.i, align 1
  %arrayidx32.i.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 9, i32 2
  %30 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %arrayidx32.i.i, align 1
  br label %cleanup

if.end33:                                         ; preds = %lor.lhs.false26
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #9
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %31 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not = icmp eq i32 %32, 0
  br i1 %tobool.not, label %if.end33.do.body114_crit_edge, label %land.lhs.true

if.end33.do.body114_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body114

land.lhs.true:                                    ; preds = %if.end33
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %33 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp34 = icmp eq i32 %34, 3
  br i1 %cmp34, label %if.then36, label %land.lhs.true.do.body114_crit_edge

land.lhs.true.do.body114_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body114

if.then36:                                        ; preds = %land.lhs.true
  tail call void @rtsx_exit_ss(ptr noundef %chip) #9
  br label %__here

__here:                                           ; preds = %if.then36
  %35 = tail call i32 @llvm.read_register.i32(metadata !300) #9
  %and.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 212
  %39 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 ptrtoint (ptr blockaddress(@ms_format_cmnd, %__here) to i32), ptr %task_state_change, align 4
  %40 = load ptr, ptr %task, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 1, ptr %40, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !344
  %call102 = tail call i32 @schedule_timeout(i32 noundef 10) #9
  %call105 = tail call i32 @check_card_ready(ptr noundef %chip, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %__here.if.then111_crit_edge, label %lor.lhs.false107

__here.if.then111_crit_edge:                      ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then111

lor.lhs.false107:                                 ; preds = %__here
  %call.i = tail call zeroext i8 @get_lun_card(ptr noundef %chip, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %call.i)
  %cmp.i = icmp eq i8 %call.i, 4
  br i1 %cmp.i, label %land.lhs.true.i, label %lor.lhs.false107.get_card_size.exit_crit_edge

lor.lhs.false107.get_card_size.exit_crit_edge:    ; preds = %lor.lhs.false107
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_card_size.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false107
  %sd_lock_status.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 24
  %42 = ptrtoint ptr %sd_lock_status.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %sd_lock_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %43)
  %tobool.not.i = icmp sgt i8 %43, -1
  br i1 %tobool.not.i, label %land.lhs.true.i.get_card_size.exit_crit_edge, label %land.lhs.true.i.if.then111_crit_edge

land.lhs.true.i.if.then111_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then111

land.lhs.true.i.get_card_size.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_card_size.exit

get_card_size.exit:                               ; preds = %land.lhs.true.i.get_card_size.exit_crit_edge, %lor.lhs.false107.get_card_size.exit_crit_edge
  %arrayidx.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 31, i32 %conv
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp109 = icmp eq i32 %45, 0
  br i1 %cmp109, label %get_card_size.exit.if.then111_crit_edge, label %get_card_size.exit.do.body114_crit_edge

get_card_size.exit.do.body114_crit_edge:          ; preds = %get_card_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body114

get_card_size.exit.if.then111_crit_edge:          ; preds = %get_card_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then111

if.then111:                                       ; preds = %get_card_size.exit.if.then111_crit_edge, %land.lhs.true.i.if.then111_crit_edge, %__here.if.then111_crit_edge
  %arrayidx.i46.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %46 = ptrtoint ptr %arrayidx.i46.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 112, ptr %arrayidx.i46.i, align 1
  %sense_key2.i47.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %47 = ptrtoint ptr %sense_key2.i47.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 2, ptr %sense_key2.i47.i, align 1
  %info3.i48.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i52.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %48 = ptrtoint ptr %info3.i48.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 0, ptr %info3.i48.i, align 1
  %49 = ptrtoint ptr %ad_sense_len.i52.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 10, ptr %ad_sense_len.i52.i, align 1
  %asc16.i53.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %50 = ptrtoint ptr %asc16.i53.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 58, ptr %asc16.i53.i, align 1
  %ascq17.i54.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %51 = ptrtoint ptr %ascq17.i54.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %ascq17.i54.i, align 1
  br label %cleanup

do.body114:                                       ; preds = %get_card_size.exit.do.body114_crit_edge, %land.lhs.true.do.body114_crit_edge, %if.end33.do.body114_crit_edge
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %52 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat115 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %53 = ptrtoint ptr %rtsx_stat115 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %rtsx_stat115, align 4
  %54 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cmnd, align 4
  %arrayidx119 = getelementptr i8, ptr %55, i32 8
  %56 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx119, align 1
  %58 = and i8 %57, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool121.not = icmp eq i8 %58, 0
  %card_ready = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 21
  %59 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %card_ready, align 2
  %61 = and i8 %60, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool126.not = icmp eq i8 %61, 0
  br i1 %tobool126.not, label %if.then127, label %if.end128

if.then127:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i46.i187 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %62 = ptrtoint ptr %arrayidx.i46.i187 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 112, ptr %arrayidx.i46.i187, align 1
  %sense_key2.i47.i188 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %63 = ptrtoint ptr %sense_key2.i47.i188 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 2, ptr %sense_key2.i47.i188, align 1
  %info3.i48.i189 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i52.i190 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %64 = ptrtoint ptr %info3.i48.i189 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 0, ptr %info3.i48.i189, align 1
  %65 = ptrtoint ptr %ad_sense_len.i52.i190 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 10, ptr %ad_sense_len.i52.i190, align 1
  %asc16.i53.i191 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %66 = ptrtoint ptr %asc16.i53.i191 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 58, ptr %asc16.i53.i191, align 1
  %ascq17.i54.i192 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %67 = ptrtoint ptr %ascq17.i54.i192 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %ascq17.i54.i192, align 1
  br label %cleanup

if.end128:                                        ; preds = %do.body114
  %card_wp = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 24
  %68 = ptrtoint ptr %card_wp to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %card_wp, align 1
  %70 = and i8 %69, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool131.not = icmp eq i8 %70, 0
  br i1 %tobool131.not, label %if.end133, label %if.then132

if.then132:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i73.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %71 = ptrtoint ptr %arrayidx.i73.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 112, ptr %arrayidx.i73.i, align 1
  %sense_key2.i74.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %72 = ptrtoint ptr %sense_key2.i74.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 7, ptr %sense_key2.i74.i, align 1
  %info3.i75.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i79.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %73 = ptrtoint ptr %info3.i75.i to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 0, ptr %info3.i75.i, align 1
  %74 = ptrtoint ptr %ad_sense_len.i79.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 10, ptr %ad_sense_len.i79.i, align 1
  %asc16.i80.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %75 = ptrtoint ptr %asc16.i80.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 39, ptr %asc16.i80.i, align 1
  %ascq17.i81.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %76 = ptrtoint ptr %ascq17.i81.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %ascq17.i81.i, align 1
  br label %cleanup

if.end133:                                        ; preds = %if.end128
  %77 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %ms_card1, align 4
  %79 = and i16 %78, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %79)
  %cmp136 = icmp eq i16 %79, 1
  br i1 %cmp136, label %if.end139, label %if.then138

if.then138:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i64.i193 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %80 = ptrtoint ptr %arrayidx.i64.i193 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 112, ptr %arrayidx.i64.i193, align 1
  %sense_key2.i65.i194 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %81 = ptrtoint ptr %sense_key2.i65.i194 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 5, ptr %sense_key2.i65.i194, align 1
  %info3.i66.i195 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i70.i196 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %82 = ptrtoint ptr %info3.i66.i195 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 0, ptr %info3.i66.i195, align 1
  %83 = ptrtoint ptr %ad_sense_len.i70.i196 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 10, ptr %ad_sense_len.i70.i196, align 1
  %asc16.i71.i197 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %84 = ptrtoint ptr %asc16.i71.i197 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 37, ptr %asc16.i71.i197, align 1
  %ascq17.i72.i198 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %85 = ptrtoint ptr %ascq17.i72.i198 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %ascq17.i72.i198, align 1
  br label %cleanup

if.end139:                                        ; preds = %if.end133
  %call141 = tail call i32 @mspro_format(ptr noundef %srb, ptr noundef %chip, i32 noundef 32, i1 noundef zeroext %tobool121.not) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %cmp142.not = icmp eq i32 %call141, 0
  br i1 %cmp142.not, label %if.end145, label %if.then144

if.then144:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i118.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv
  %86 = ptrtoint ptr %arrayidx.i118.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 112, ptr %arrayidx.i118.i, align 1
  %sense_key2.i119.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 2
  %87 = ptrtoint ptr %sense_key2.i119.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 3, ptr %sense_key2.i119.i, align 1
  %info3.i120.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 3
  %ad_sense_len.i124.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 4
  %88 = ptrtoint ptr %info3.i120.i to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 0, ptr %info3.i120.i, align 1
  %89 = ptrtoint ptr %ad_sense_len.i124.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 10, ptr %ad_sense_len.i124.i, align 1
  %asc16.i125.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 6
  %90 = ptrtoint ptr %asc16.i125.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 49, ptr %asc16.i125.i, align 1
  %ascq17.i126.i = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 11, i32 %conv, i32 7
  %91 = ptrtoint ptr %ascq17.i126.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %ascq17.i126.i, align 1
  br label %cleanup

if.end145:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %92 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %resid_len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end145, %if.then144, %if.then138, %if.then132, %if.then127, %if.then111, %if.then32, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then32 ], [ 1, %if.then111 ], [ 1, %if.then132 ], [ 1, %if.then144 ], [ 0, %if.end145 ], [ 1, %if.then138 ], [ 1, %if.then127 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mspro_format(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sd_cleanup_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sd_pass_thru_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sd_execute_no_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sd_execute_read_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sd_execute_write_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sd_get_cmd_rsp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sd_hw_rst(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ms_cleanup_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mg_get_local_EKB(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mg_get_rsp_chg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mg_get_ICV(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mg_set_leaf_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mg_chg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mg_rsp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mg_set_ICV(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !183, !184, !185, !186, !188, !189, !191, !193, !194, !195, !197, !198, !200, !201, !203, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !229, !230, !232, !234, !236, !238, !239, !240, !242, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !270, !271, !273, !275, !276, !277, !279, !281, !282, !283, !285, !287, !289, !291, !293, !294, !295, !297, !299}
!llvm.named.register.sp = !{!300}
!llvm.module.flags = !{!301, !302, !303, !304, !305, !306, !307, !308}
!llvm.ident = !{!309}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 31, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 34, i32 10}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 37, i32 10}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 40, i32 10}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 43, i32 10}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 46, i32 10}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 49, i32 10}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 52, i32 10}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 55, i32 10}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 58, i32 10}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 61, i32 10}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 64, i32 10}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 67, i32 10}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 70, i32 10}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 73, i32 10}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 76, i32 10}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 79, i32 10}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 82, i32 10}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 85, i32 10}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 88, i32 10}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 91, i32 10}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 94, i32 10}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 97, i32 10}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 100, i32 10}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 103, i32 10}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 106, i32 10}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 109, i32 10}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 112, i32 10}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 115, i32 10}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 118, i32 10}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 121, i32 10}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 124, i32 10}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 127, i32 10}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 130, i32 10}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 133, i32 10}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 136, i32 10}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 139, i32 10}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 142, i32 10}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 145, i32 10}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 148, i32 10}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 151, i32 10}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 154, i32 10}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 157, i32 10}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 160, i32 10}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 163, i32 10}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 166, i32 10}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 169, i32 10}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 172, i32 10}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 175, i32 10}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 178, i32 10}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 181, i32 10}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 184, i32 10}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 187, i32 10}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 190, i32 10}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 193, i32 10}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 196, i32 10}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 199, i32 10}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 202, i32 10}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 205, i32 10}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 208, i32 10}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 211, i32 10}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 214, i32 10}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 217, i32 10}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 220, i32 10}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 223, i32 10}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 226, i32 10}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 229, i32 10}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 232, i32 10}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 235, i32 10}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 238, i32 10}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 241, i32 10}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 244, i32 10}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 247, i32 10}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 250, i32 10}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 253, i32 10}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 256, i32 10}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 259, i32 10}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 262, i32 10}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 265, i32 10}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 268, i32 10}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 271, i32 10}
!162 = !{ptr @.str.81, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 274, i32 10}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 277, i32 10}
!166 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 280, i32 10}
!168 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 283, i32 10}
!170 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 286, i32 10}
!172 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 289, i32 10}
!174 = !{ptr @.str.87, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 292, i32 10}
!176 = !{ptr @.str.88, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 295, i32 10}
!178 = !{ptr @.str.89, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 298, i32 10}
!180 = !{ptr @.str.90, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 304, i32 3}
!182 = !{ptr @.str.91, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.92, !181, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.93, !181, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @scsi_show_command.__UNIQUE_ID_ddebug287, !181, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!186 = !{ptr @.str.94, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 309, i32 3}
!188 = !{ptr @scsi_show_command.__UNIQUE_ID_ddebug290, !187, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!189 = distinct !{null, !190, !"__already_done", i1 false, i1 false}
!190 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 847, i32 3}
!191 = !{ptr @.str.95, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 867, i32 3}
!193 = !{ptr @.str.96, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @read_write.__UNIQUE_ID_ddebug294, !192, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!195 = !{ptr @.str.97, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 874, i32 4}
!197 = !{ptr @read_write.__UNIQUE_ID_ddebug295, !196, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!198 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 921, i32 3}
!200 = !{ptr @read_write.__UNIQUE_ID_ddebug296, !199, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!201 = !{ptr @.str.99, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 933, i32 4}
!203 = !{ptr @read_write.__UNIQUE_ID_ddebug297, !202, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!204 = !{ptr @.str.100, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 466, i32 34}
!206 = !{ptr @.str.101, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 467, i32 34}
!208 = !{ptr @.str.102, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 468, i32 34}
!210 = !{ptr @.str.103, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 469, i32 34}
!212 = !{ptr @formatter_inquiry_str, !213, !"formatter_inquiry_str", i1 false, i1 false}
!213 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 445, i32 22}
!214 = distinct !{null, !215, !"__already_done", i1 false, i1 false}
!215 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 1198, i32 3}
!216 = distinct !{null, !217, !"__already_done", i1 false, i1 false}
!217 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 1251, i32 3}
!218 = distinct !{null, !219, !"__already_done", i1 false, i1 false}
!219 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 1096, i32 3}
!220 = distinct !{null, !221, !"__already_done", i1 false, i1 false}
!221 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 1143, i32 3}
!222 = distinct !{null, !223, !"__already_done", i1 false, i1 false}
!223 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 1323, i32 3}
!224 = distinct !{null, !225, !"__already_done", i1 false, i1 false}
!225 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 1344, i32 3}
!226 = !{ptr @.str.104, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 1351, i32 2}
!228 = !{ptr @.str.105, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @read_host_reg.__UNIQUE_ID_ddebug314, !227, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!230 = distinct !{null, !231, !"__already_done", i1 false, i1 false}
!231 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 1375, i32 3}
!232 = distinct !{null, !233, !"__already_done", i1 false, i1 false}
!233 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 1434, i32 5}
!234 = distinct !{null, !235, !"__already_done", i1 false, i1 false}
!235 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 1507, i32 3}
!236 = !{ptr @.str.106, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 1515, i32 3}
!238 = !{ptr @.str.107, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @dma_access_ring_buffer.__UNIQUE_ID_ddebug324, !237, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!240 = !{ptr @.str.108, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 1517, i32 3}
!242 = !{ptr @dma_access_ring_buffer.__UNIQUE_ID_ddebug325, !241, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!243 = distinct !{null, !244, !"__already_done", i1 false, i1 false}
!244 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 1805, i32 3}
!245 = distinct !{null, !246, !"__already_done", i1 false, i1 false}
!246 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 1864, i32 3}
!247 = distinct !{null, !248, !"__already_done", i1 false, i1 false}
!248 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 1920, i32 3}
!249 = distinct !{null, !250, !"__already_done", i1 false, i1 false}
!250 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 1966, i32 3}
!251 = distinct !{null, !252, !"__already_done", i1 false, i1 false}
!252 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 2014, i32 3}
!253 = distinct !{null, !254, !"__already_done", i1 false, i1 false}
!254 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 2061, i32 3}
!255 = distinct !{null, !256, !"__already_done", i1 false, i1 false}
!256 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 2110, i32 3}
!257 = distinct !{null, !258, !"__already_done", i1 false, i1 false}
!258 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 2145, i32 3}
!259 = distinct !{null, !260, !"__already_done", i1 false, i1 false}
!260 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 2161, i32 3}
!261 = distinct !{null, !262, !"__already_done", i1 false, i1 false}
!262 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 2170, i32 2}
!263 = distinct !{null, !264, !"__already_done", i1 false, i1 false}
!264 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 2195, i32 3}
!265 = distinct !{null, !266, !"__already_done", i1 false, i1 false}
!266 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 2222, i32 3}
!267 = !{ptr @.str.113, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 2230, i32 2}
!269 = !{ptr @.str.114, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @read_cfg_byte.__UNIQUE_ID_ddebug354, !268, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!271 = distinct !{null, !272, !"__already_done", i1 false, i1 false}
!272 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 2277, i32 3}
!273 = !{ptr @.str.115, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 2285, i32 2}
!275 = !{ptr @.str.116, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @write_cfg_byte.__UNIQUE_ID_ddebug358, !274, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!277 = distinct !{null, !278, !"__already_done", i1 false, i1 false}
!278 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 1730, i32 3}
!279 = !{ptr @.str.117, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 1652, i32 2}
!281 = !{ptr @.str.118, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @get_dev_status.__UNIQUE_ID_ddebug326, !280, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!283 = distinct !{null, !284, !"__already_done", i1 false, i1 false}
!284 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 2575, i32 3}
!285 = distinct !{null, !286, !"__already_done", i1 false, i1 false}
!286 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 2730, i32 3}
!287 = distinct !{null, !288, !"__already_done", i1 false, i1 false}
!288 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 2889, i32 3}
!289 = distinct !{null, !290, !"__already_done", i1 false, i1 false}
!290 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 2950, i32 3}
!291 = !{ptr @.str.119, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 2976, i32 2}
!293 = !{ptr @.str.120, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @mg_report_key.__UNIQUE_ID_ddebug367, !292, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!295 = distinct !{null, !296, !"__already_done", i1 false, i1 false}
!296 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 3049, i32 3}
!297 = !{ptr @.str.121, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/staging/rts5208/rtsx_scsi.c", i32 3079, i32 2}
!299 = !{ptr @mg_send_key.__UNIQUE_ID_ddebug369, !298, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!300 = !{!"sp"}
!301 = !{i32 1, !"wchar_size", i32 2}
!302 = !{i32 1, !"min_enum_size", i32 4}
!303 = !{i32 8, !"branch-target-enforcement", i32 0}
!304 = !{i32 8, !"sign-return-address", i32 0}
!305 = !{i32 8, !"sign-return-address-all", i32 0}
!306 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!307 = !{i32 7, !"uwtable", i32 1}
!308 = !{i32 7, !"frame-pointer", i32 2}
!309 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!310 = !{i64 2148343983, i64 2148343988, i64 2148344001, i64 2148344045, i64 2148344079, i64 2148344100}
!311 = !{!"auto-init"}
!312 = !{i64 2155237918}
!313 = !{i64 2155448747}
!314 = !{i64 2155454084}
!315 = !{i64 2155461789}
!316 = !{i64 2155273783}
!317 = !{i64 2155281023}
!318 = !{i64 2155259330}
!319 = !{i64 2155266541}
!320 = !{i64 2155288386}
!321 = !{i64 2155437006}
!322 = !{i64 2155293570}
!323 = !{i64 6020650}
!324 = !{i64 2153560999}
!325 = !{i64 2155303105}
!326 = !{i64 2153562354}
!327 = !{i64 6020232}
!328 = !{i64 2155310587}
!329 = !{i64 2155316137}
!330 = !{i64 2155339524}
!331 = !{i64 2155346735}
!332 = !{i64 2155353946}
!333 = !{i64 2155359257}
!334 = !{i64 2155366468}
!335 = !{i64 2155373679}
!336 = !{i64 2155380892}
!337 = !{i64 2155388043}
!338 = !{i64 2155393030}
!339 = !{i64 2155398083}
!340 = !{i64 2155403190}
!341 = !{i64 2155408202}
!342 = !{i64 2155422080}
!343 = !{i64 2155334258}
!344 = !{i64 2155442466}
