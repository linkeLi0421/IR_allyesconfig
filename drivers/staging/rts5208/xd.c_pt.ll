; ModuleID = '/llk/IR_all_yes/drivers/staging/rts5208/xd.c_pt.bc'
source_filename = "../drivers/staging/rts5208/xd.c"
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%union.anon.61 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.zone_entry = type { ptr, ptr, [10 x i16], i32, i32, i32, i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }

@xd_rw.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 -51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rts5208\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xd_rw\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/staging/rts5208/xd.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: scsi_sg_count = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@xd_rw.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 1, i8 -23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"old_blk = 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@xd_cleanup_work.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 2, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xd_cleanup_work\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xD: delay write\0A\00", [47 x i8] zeroinitializer }, align 32
@reset_xd.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reset_xd\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Over current, OCPSTAT is 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@reset_xd.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 0, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"XD_DAT: 0x%x, XD_CTL: 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@reset_xd.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.12, i8 0, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"READ_ID: 0x%x 0x%x 0x%x 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@reset_xd.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.13, i8 0, i8 -87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"READ_XD_ID: 0x%x 0x%x 0x%x 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@reset_xd.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.14, i8 0, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CIS block: 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@xd_read_cis.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xd_read_cis\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ECC_BIT1 = 0x%x, ECC_BYTE1 = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@xd_read_cis.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Before correct: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@xd_read_cis.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.18, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"After correct: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@xd_read_cis.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.19, i8 0, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ECC_BIT2 = 0x%x, ECC_BYTE2 = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@xd_read_cis.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@xd_read_cis.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.18, i8 0, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@xd_init_l2p_tbl.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 -58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xd_init_l2p_tbl\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: zone_cnt = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@xd_init_l2p_tbl.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.22, i8 0, i8 -57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Buffer size for l2p table is %d\0A\00", [63 x i8] zeroinitializer }, align 32
@xd_finish_write.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 1, i8 -105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xd_finish_write\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"old_blk = 0x%x, \00", [47 x i8] zeroinitializer }, align 32
@xd_finish_write.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.25, i8 1, i8 -104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"new_blk = 0x%x, \00", [47 x i8] zeroinitializer }, align 32
@xd_finish_write.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.26, i8 1, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"log_blk = 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@xd_init_page.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 1, i8 7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xd_init_page\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Init block 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@xd_set_unused_block.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xd_set_unused_block\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Set unused block to invalid zone (zone_no = %d, zone_cnt = %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@xd_set_unused_block.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.31, i8 0, i8 -43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Set unused block fail, invalid set_index\0A\00", [54 x i8] zeroinitializer }, align 32
@xd_set_unused_block.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.32, i8 0, i8 -42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Set unused block to index %d\0A\00", [34 x i8] zeroinitializer }, align 32
@xd_mark_bad_block.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 -6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xd_mark_bad_block\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mark block 0x%x as bad block\0A\00", [34 x i8] zeroinitializer }, align 32
@xd_build_l2p_tbl.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 1, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xd_build_l2p_tbl\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %d\0A\00", [24 x i8] zeroinitializer }, align 32
@xd_build_l2p_tbl.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.37, i8 1, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"l2p table of zone %d has been built\0A\00", [59 x i8] zeroinitializer }, align 32
@xd_build_l2p_tbl.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.38, i8 1, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"start block 0x%x, end block 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@xd_build_l2p_tbl.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.39, i8 1, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bad block\0A\00", [21 x i8] zeroinitializer }, align 32
@xd_build_l2p_tbl.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.40, i8 1, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"blank block\0A\00", [19 x i8] zeroinitializer }, align 32
@xd_build_l2p_tbl.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.41, i8 1, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Block count %d, invalid L2P entry %d\0A\00", [58 x i8] zeroinitializer }, align 32
@xd_build_l2p_tbl.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.42, i8 1, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Total unused block: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@xd_copy_page.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 1, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xd_copy_page\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Copy page from block 0x%x to block 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@xd_copy_page.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.45, i8 1, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"old block 0x%x ecc error\0A\00", [38 x i8] zeroinitializer }, align 32
@xd_get_l2p_tbl.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 -24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xd_get_l2p_tbl\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"In %s, delay write fail!\0A\00", [38 x i8] zeroinitializer }, align 32
@xd_get_l2p_tbl.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.48, i8 0, i8 -23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No unused block!\0A\00", [46 x i8] zeroinitializer }, align 32
@xd_get_l2p_tbl.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.49, i8 0, i8 -21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No unused block available!\0A\00", [36 x i8] zeroinitializer }, align 32
@xd_get_l2p_tbl.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.50, i8 0, i8 -18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No good unused block available!\0A\00", [63 x i8] zeroinitializer }, align 32
@xd_get_unused_block.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 -38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xd_get_unused_block\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Get unused block from invalid zone (zone_no = %d, zone_cnt = %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@xd_get_unused_block.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.53, i8 0, i8 -36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Get unused block fail, no unused block available\0A\00", [46 x i8] zeroinitializer }, align 32
@xd_get_unused_block.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.54, i8 0, i8 -35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Get unused block fail, invalid get_index\0A\00", [54 x i8] zeroinitializer }, align 32
@xd_get_unused_block.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.55, i8 0, i8 -33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Get unused block from index %d\0A\00", [32 x i8] zeroinitializer }, align 32
@xd_prepare_write.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 1, i8 -90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xd_prepare_write\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s, old_blk = 0x%x, new_blk = 0x%x, log_blk = 0x%x, page_off = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@xd_write_multiple_pages.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 1, i8 -85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xd_write_multiple_pages\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s, old_blk = 0x%x, new_blk = 0x%x, log_blk = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 21000, i64 21128]
@__sancov_gen_cov_switch_values.60 = internal global [13 x i64] [i64 11, i64 8, i64 113, i64 115, i64 117, i64 118, i64 121, i64 211, i64 213, i64 220, i64 227, i64 229, i64 230]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 16, i64 21000, i64 21128]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 16, i64 21000, i64 21128]
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1845, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1956, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 2094, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 503, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 563, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 574, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 675, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 739, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 257, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 260, i32 5 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 263, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 285, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 791, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 798, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1631, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1632, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1633, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1052, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 839, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 853, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 857, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1000, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1303, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1312, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1351, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1367, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1372, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1458, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1460, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1106, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1171, i32 6 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 928, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 935, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 942, i32 5 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 952, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 873, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 882, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 887, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 891, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1687, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.235 = private constant [32 x i8] c"../drivers/staging/rts5208/xd.c\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1710, i32 2 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reset_xd_card(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %xd_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41
  %cis_block = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 5
  %0 = call ptr @memset(ptr %xd_card1, i32 0, i32 48)
  %1 = ptrtoint ptr %cis_block to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %cis_block, align 2
  %call = tail call i32 @enable_card_clock(ptr noundef %chip, i8 noundef zeroext 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @reset_xd(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call fastcc i32 @xd_init_l2p_tbl(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp ne i32 %call7, 0
  %. = zext i1 %cmp8.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ %., %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enable_card_clock(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reset_xd(ptr noundef %chip) #0 align 64 {
entry:
  %id_buf = alloca [4 x i8], align 4
  %redunt = alloca [11 x i8], align 1
  %buf = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id_buf) #5
  %0 = getelementptr inbounds [4 x i8], ptr %id_buf, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %id_buf, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %id_buf, i32 0, i32 3
  %3 = ptrtoint ptr %id_buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %id_buf, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %redunt) #5
  %4 = getelementptr inbounds [11 x i8], ptr %redunt, i32 0, i32 1
  %5 = getelementptr inbounds [11 x i8], ptr %redunt, i32 0, i32 10
  %6 = call ptr @memset(ptr %redunt, i32 255, i32 11)
  %call = tail call i32 @select_card(ptr noundef %chip, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup727_crit_edge

entry.cleanup727_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup727

if.end:                                           ; preds = %entry
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %7 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -723, i8 noundef zeroext -1, i8 noundef zeroext 2) #5
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %8 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.else8, label %if.then3

if.then3:                                         ; preds = %if.end
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %10 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %product_id, align 2
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i16 %11, label %if.then3.if.end9_crit_edge [
    i16 21128, label %if.else
    i16 21000, label %if.then.i
  ]

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -672, i8 noundef zeroext -1, i8 noundef zeroext 85) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -671, i8 noundef zeroext -1, i8 noundef zeroext 85) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -670, i8 noundef zeroext -1, i8 noundef zeroext 75) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -669, i8 noundef zeroext -1, i8 noundef zeroext 85) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -668, i8 noundef zeroext -1, i8 noundef zeroext -76) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -667, i8 noundef zeroext -1, i8 noundef zeroext 5) #5
  br label %if.end9

if.else:                                          ; preds = %if.then3
  %baro_pkg.i916 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 73
  %13 = ptrtoint ptr %baro_pkg.i916 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %baro_pkg.i916, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %if.then.i917, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then.i917:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -672, i8 noundef zeroext -1, i8 noundef zeroext 85) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -671, i8 noundef zeroext -1, i8 noundef zeroext 85) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -670, i8 noundef zeroext -1, i8 noundef zeroext 75) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -669, i8 noundef zeroext -1, i8 noundef zeroext 85) #5
  br label %if.end9

if.else8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -995, i8 noundef zeroext -1, i8 noundef zeroext -6) #5
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.then.i917, %if.else.if.end9_crit_edge, %if.then.i, %if.then3.if.end9_crit_edge
  %ft2_fast_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 131
  %15 = ptrtoint ptr %ft2_fast_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ft2_fast_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not = icmp eq i32 %16, 0
  br i1 %tobool10.not, label %if.then11, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -752, i8 noundef zeroext 8, i8 noundef zeroext 0) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -683, i8 noundef zeroext 2, i8 noundef zeroext 0) #5
  %call13 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 16, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.cleanup727_crit_edge, label %if.end17

if.end12.cleanup727_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup727

if.end17:                                         ; preds = %if.end12
  %17 = ptrtoint ptr %ft2_fast_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ft2_fast_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool19.not = icmp eq i32 %18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end216.thread

if.end216.thread:                                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ci, align 4
  br label %if.then220

if.then20:                                        ; preds = %if.end17
  %call21 = tail call i32 @card_power_off(ptr noundef %chip, i8 noundef zeroext 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %__here, label %if.then20.cleanup727_crit_edge

if.then20.cleanup727_crit_edge:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup727

__here:                                           ; preds = %if.then20
  %20 = tail call i32 @llvm.read_register.i32(metadata !154) #5
  %and.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 212
  %24 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 ptrtoint (ptr blockaddress(@reset_xd, %__here) to i32), ptr %task_state_change, align 4
  %25 = load ptr, ptr %task, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 1, ptr %25, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !164
  %call91 = tail call i32 @schedule_timeout(i32 noundef 25) #5
  %27 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ci, align 4
  %28 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool96.not = icmp eq i32 %29, 0
  br i1 %tobool96.not, label %if.else98, label %if.then97

if.then97:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @xd_fill_pull_ctl_enable(ptr noundef %chip)
  br label %if.end99

if.else98:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -995, i8 noundef zeroext -1, i8 noundef zeroext -4) #5
  br label %if.end99

if.end99:                                         ; preds = %if.else98, %if.then97
  %call100 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 16, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.end99.cleanup727_crit_edge, label %if.end104

if.end99.cleanup727_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup727

if.end104:                                        ; preds = %if.end99
  %call105 = tail call i32 @card_power_on(ptr noundef %chip, i8 noundef zeroext 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp106.not = icmp eq i32 %call105, 0
  br i1 %cmp106.not, label %__here162, label %if.end104.cleanup727_crit_edge

if.end104.cleanup727_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup727

__here162:                                        ; preds = %if.end104
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %task_state_change166 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 212
  %32 = ptrtoint ptr %task_state_change166 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 ptrtoint (ptr blockaddress(@reset_xd, %__here162) to i32), ptr %task_state_change166, align 4
  %33 = load ptr, ptr %task, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 1, ptr %33, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !165
  %call192 = tail call i32 @schedule_timeout(i32 noundef 5) #5
  %ocp_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 19
  %35 = ptrtoint ptr %ocp_stat to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ocp_stat, align 4
  %37 = and i8 %36, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool196.not = icmp eq i8 %37, 0
  br i1 %tobool196.not, label %if.end216, label %do.body198

do.body198:                                       ; preds = %__here162
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reset_xd.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_xd, %if.then208)) #5
          to label %cleanup727 [label %if.then208], !srcloc !166

if.then208:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chip, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %42 = ptrtoint ptr %ocp_stat to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ocp_stat, align 4
  %conv211 = zext i8 %43 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reset_xd.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.9, i32 noundef %conv211) #5
  br label %cleanup727

if.end216:                                        ; preds = %__here162
  %44 = ptrtoint ptr %ft2_fast_mode to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr = load i32, ptr %ft2_fast_mode, align 4
  %45 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %ci, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool219.not = icmp eq i32 %.pr, 0
  br i1 %tobool219.not, label %if.end216.if.end226_crit_edge, label %if.end216.if.then220_crit_edge

if.end216.if.then220_crit_edge:                   ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then220

if.end216.if.end226_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end226

if.then220:                                       ; preds = %if.end216.if.then220_crit_edge, %if.end216.thread
  %46 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool222.not = icmp eq i32 %47, 0
  br i1 %tobool222.not, label %if.else224, label %if.then223

if.then223:                                       ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @xd_fill_pull_ctl_enable(ptr noundef %chip)
  br label %if.end226

if.else224:                                       ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -995, i8 noundef zeroext -1, i8 noundef zeroext -4) #5
  br label %if.end226

if.end226:                                        ; preds = %if.else224, %if.then223, %if.end216.if.end226_crit_edge
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -683, i8 noundef zeroext 2, i8 noundef zeroext 2) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -750, i8 noundef zeroext 2, i8 noundef zeroext 2) #5
  %call227 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 16, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %cmp228 = icmp slt i32 %call227, 0
  br i1 %cmp228, label %if.end226.cleanup727_crit_edge, label %if.end231

if.end226.cleanup727_crit_edge:                   ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup727

if.end231:                                        ; preds = %if.end226
  %48 = ptrtoint ptr %ft2_fast_mode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ft2_fast_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool233.not = icmp eq i32 %49, 0
  br i1 %tobool233.not, label %__here287, label %if.end231.if.end320_crit_edge

if.end231.if.end320_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end320

__here287:                                        ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #7
  %50 = tail call i32 @llvm.read_register.i32(metadata !154) #5
  %and.i918 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i918 to ptr
  %task290 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task290 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task290, align 8
  %task_state_change291 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 212
  %54 = ptrtoint ptr %task_state_change291 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 ptrtoint (ptr blockaddress(@reset_xd, %__here287) to i32), ptr %task_state_change291, align 4
  %55 = load ptr, ptr %task290, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 1, ptr %55, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !167
  %call317 = tail call i32 @schedule_timeout(i32 noundef 20) #5
  br label %if.end320

if.end320:                                        ; preds = %__here287, %if.end231.if.end320_crit_edge
  %57 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i = icmp eq i32 %58, 0
  %xd_clock3.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 13
  br i1 %tobool.not.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %xd_clock3.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 47, ptr %xd_clock3.i, align 4
  %call.i.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef 47) #5
  br label %xd_set_init_para.exit

if.else.i.i:                                      ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %xd_clock3.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 4, ptr %xd_clock3.i, align 4
  %call2.i.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef 4) #5
  br label %xd_set_init_para.exit

xd_set_init_para.exit:                            ; preds = %if.else.i.i, %if.then.i.i
  %retval1.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i)
  %cmp.not.i.not = icmp eq i32 %retval1.0.i.i, 0
  br i1 %cmp.not.i.not, label %for.cond.preheader, label %xd_set_init_para.exit.cleanup727_crit_edge

xd_set_init_para.exit.cleanup727_crit_edge:       ; preds = %xd_set_init_para.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup727

for.cond.preheader:                               ; preds = %xd_set_init_para.exit
  %host_cmds_ptr.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 4
  %device_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 1
  %block_shift483 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 2
  %page_off484 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 3
  %addr_cycle487 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 4
  %zone_cnt488 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 10
  %capacity489 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 8
  %multi_flag = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc512.for.body_crit_edge, %for.cond.preheader
  %i.0952 = phi i32 [ 0, %for.cond.preheader ], [ %inc513, %for.inc512.for.body_crit_edge ]
  %61 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %ci, align 4
  %62 = trunc i32 %i.0952 to i8
  %63 = mul i8 %62, 36
  %conv332 = add i8 %63, 11
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -751, i8 noundef zeroext -1, i8 noundef zeroext %conv332) #5
  %conv339 = add i8 %63, 115
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -722, i8 noundef zeroext -1, i8 noundef zeroext %conv339) #5
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -749, i8 noundef zeroext -1, i8 noundef zeroext -128) #5
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -749, i8 noundef zeroext 64, i8 noundef zeroext 64) #5
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -742, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -750, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %call340 = call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 16, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call340)
  %cmp341 = icmp slt i32 %call340, 0
  br i1 %cmp341, label %for.body.cleanup727_crit_edge, label %if.end344

for.body.cleanup727_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup727

if.end344:                                        ; preds = %for.body
  %64 = ptrtoint ptr %host_cmds_ptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %host_cmds_ptr.i, align 4
  %add.ptr = getelementptr i8, ptr %65, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reset_xd.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_xd, %if.then358)) #5
          to label %do.end365 [label %if.then358], !srcloc !166

if.then358:                                       ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %chip, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %dev.i919 = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %70 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %add.ptr, align 1
  %conv360 = zext i8 %71 to i32
  %arrayidx361 = getelementptr i8, ptr %65, i32 2
  %72 = ptrtoint ptr %arrayidx361 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx361, align 1
  %conv362 = zext i8 %73 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reset_xd.__UNIQUE_ID_ddebug297, ptr noundef %dev.i919, ptr noundef nonnull @.str.11, i32 noundef %conv360, i32 noundef %conv362) #5
  br label %do.end365

do.end365:                                        ; preds = %if.then358, %if.end344
  %74 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %add.ptr, align 1
  %76 = and i8 %75, 95
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %76)
  %cmp369.not = icmp eq i8 %76, 64
  br i1 %cmp369.not, label %lor.lhs.false, label %do.end365.for.inc512_crit_edge

do.end365.for.inc512_crit_edge:                   ; preds = %do.end365
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc512

lor.lhs.false:                                    ; preds = %do.end365
  %arrayidx371 = getelementptr i8, ptr %65, i32 2
  %77 = ptrtoint ptr %arrayidx371 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx371, align 1
  %79 = and i8 %78, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool374.not = icmp eq i8 %79, 0
  br i1 %tobool374.not, label %lor.lhs.false.for.inc512_crit_edge, label %if.end376

lor.lhs.false.for.inc512_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc512

if.end376:                                        ; preds = %lor.lhs.false
  %call377 = call fastcc i32 @xd_read_id(ptr noundef %chip, i8 noundef zeroext -112, ptr noundef nonnull %id_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call377)
  %cmp378.not = icmp eq i32 %call377, 0
  br i1 %cmp378.not, label %do.body382, label %if.end376.cleanup727_crit_edge

if.end376.cleanup727_crit_edge:                   ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup727

do.body382:                                       ; preds = %if.end376
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reset_xd.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_xd, %if.then394)) #5
          to label %do.end406 [label %if.then394], !srcloc !166

if.then394:                                       ; preds = %do.body382
  call void @__sanitizer_cov_trace_pc() #7
  %80 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %chip, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %dev.i920 = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44
  %84 = ptrtoint ptr %id_buf to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %id_buf, align 4
  %conv397 = zext i8 %85 to i32
  %86 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %0, align 1
  %conv399 = zext i8 %87 to i32
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %1, align 2
  %conv401 = zext i8 %89 to i32
  %90 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %2, align 1
  %conv403 = zext i8 %91 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reset_xd.__UNIQUE_ID_ddebug298, ptr noundef %dev.i920, ptr noundef nonnull @.str.12, i32 noundef %conv397, i32 noundef %conv399, i32 noundef %conv401, i32 noundef %conv403) #5
  br label %do.end406

do.end406:                                        ; preds = %if.then394, %do.body382
  %92 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %0, align 1
  %94 = ptrtoint ptr %device_code to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %device_code, align 1
  %95 = zext i8 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %93, label %do.end406.for.inc512_crit_edge [
    i8 -29, label %do.end406.sw.bb_crit_edge
    i8 -27, label %do.end406.sw.bb_crit_edge993
    i8 -26, label %sw.bb412
    i8 115, label %do.body419
    i8 117, label %do.body428
    i8 118, label %do.body437
    i8 121, label %do.body446
    i8 113, label %do.body455
    i8 -36, label %do.body464
    i8 -45, label %do.body473
    i8 -43, label %do.body482
  ]

do.end406.sw.bb_crit_edge993:                     ; preds = %do.end406
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

do.end406.sw.bb_crit_edge:                        ; preds = %do.end406
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

do.end406.for.inc512_crit_edge:                   ; preds = %do.end406
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc512

sw.bb:                                            ; preds = %do.end406.sw.bb_crit_edge, %do.end406.sw.bb_crit_edge993
  %96 = ptrtoint ptr %block_shift483 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 4, ptr %block_shift483, align 2
  %97 = ptrtoint ptr %page_off484 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 15, ptr %page_off484, align 1
  %98 = ptrtoint ptr %addr_cycle487 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 3, ptr %addr_cycle487, align 4
  %99 = ptrtoint ptr %zone_cnt488 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %zone_cnt488, align 4
  %100 = ptrtoint ptr %capacity489 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 8000, ptr %capacity489, align 4
  %101 = ptrtoint ptr %multi_flag to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %multi_flag, align 4
  %103 = or i8 %102, 16
  store i8 %103, ptr %multi_flag, align 4
  br label %sw.epilog

sw.bb412:                                         ; preds = %do.end406
  call void @__sanitizer_cov_trace_pc() #7
  %104 = ptrtoint ptr %block_shift483 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 4, ptr %block_shift483, align 2
  %105 = ptrtoint ptr %page_off484 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 15, ptr %page_off484, align 1
  %106 = ptrtoint ptr %addr_cycle487 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 3, ptr %addr_cycle487, align 4
  %107 = ptrtoint ptr %zone_cnt488 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %zone_cnt488, align 4
  %108 = ptrtoint ptr %capacity489 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 16000, ptr %capacity489, align 4
  br label %sw.epilog

do.body419:                                       ; preds = %do.end406
  call void @__sanitizer_cov_trace_pc() #7
  %109 = ptrtoint ptr %block_shift483 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 5, ptr %block_shift483, align 2
  %110 = ptrtoint ptr %page_off484 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 31, ptr %page_off484, align 1
  %111 = ptrtoint ptr %addr_cycle487 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 3, ptr %addr_cycle487, align 4
  %112 = ptrtoint ptr %zone_cnt488 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1, ptr %zone_cnt488, align 4
  %113 = ptrtoint ptr %capacity489 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 32000, ptr %capacity489, align 4
  br label %sw.epilog

do.body428:                                       ; preds = %do.end406
  call void @__sanitizer_cov_trace_pc() #7
  %114 = ptrtoint ptr %block_shift483 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 5, ptr %block_shift483, align 2
  %115 = ptrtoint ptr %page_off484 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 31, ptr %page_off484, align 1
  %116 = ptrtoint ptr %addr_cycle487 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 3, ptr %addr_cycle487, align 4
  %117 = ptrtoint ptr %zone_cnt488 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 2, ptr %zone_cnt488, align 4
  %118 = ptrtoint ptr %capacity489 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 64000, ptr %capacity489, align 4
  br label %sw.epilog

do.body437:                                       ; preds = %do.end406
  call void @__sanitizer_cov_trace_pc() #7
  %119 = ptrtoint ptr %block_shift483 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 5, ptr %block_shift483, align 2
  %120 = ptrtoint ptr %page_off484 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 31, ptr %page_off484, align 1
  %121 = ptrtoint ptr %addr_cycle487 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 4, ptr %addr_cycle487, align 4
  %122 = ptrtoint ptr %zone_cnt488 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 4, ptr %zone_cnt488, align 4
  %123 = ptrtoint ptr %capacity489 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 128000, ptr %capacity489, align 4
  br label %sw.epilog

do.body446:                                       ; preds = %do.end406
  call void @__sanitizer_cov_trace_pc() #7
  %124 = ptrtoint ptr %block_shift483 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 5, ptr %block_shift483, align 2
  %125 = ptrtoint ptr %page_off484 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 31, ptr %page_off484, align 1
  %126 = ptrtoint ptr %addr_cycle487 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 4, ptr %addr_cycle487, align 4
  %127 = ptrtoint ptr %zone_cnt488 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 8, ptr %zone_cnt488, align 4
  %128 = ptrtoint ptr %capacity489 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 256000, ptr %capacity489, align 4
  br label %sw.epilog

do.body455:                                       ; preds = %do.end406
  call void @__sanitizer_cov_trace_pc() #7
  %129 = ptrtoint ptr %block_shift483 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 5, ptr %block_shift483, align 2
  %130 = ptrtoint ptr %page_off484 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 31, ptr %page_off484, align 1
  %131 = ptrtoint ptr %addr_cycle487 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 4, ptr %addr_cycle487, align 4
  %132 = ptrtoint ptr %zone_cnt488 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 16, ptr %zone_cnt488, align 4
  %133 = ptrtoint ptr %capacity489 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 512000, ptr %capacity489, align 4
  br label %sw.epilog

do.body464:                                       ; preds = %do.end406
  call void @__sanitizer_cov_trace_pc() #7
  %134 = ptrtoint ptr %block_shift483 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 5, ptr %block_shift483, align 2
  %135 = ptrtoint ptr %page_off484 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 31, ptr %page_off484, align 1
  %136 = ptrtoint ptr %addr_cycle487 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 4, ptr %addr_cycle487, align 4
  %137 = ptrtoint ptr %zone_cnt488 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 32, ptr %zone_cnt488, align 4
  %138 = ptrtoint ptr %capacity489 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1024000, ptr %capacity489, align 4
  br label %sw.epilog

do.body473:                                       ; preds = %do.end406
  call void @__sanitizer_cov_trace_pc() #7
  %139 = ptrtoint ptr %block_shift483 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 5, ptr %block_shift483, align 2
  %140 = ptrtoint ptr %page_off484 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 31, ptr %page_off484, align 1
  %141 = ptrtoint ptr %addr_cycle487 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 4, ptr %addr_cycle487, align 4
  %142 = ptrtoint ptr %zone_cnt488 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 64, ptr %zone_cnt488, align 4
  %143 = ptrtoint ptr %capacity489 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 2048000, ptr %capacity489, align 4
  br label %sw.epilog

do.body482:                                       ; preds = %do.end406
  call void @__sanitizer_cov_trace_pc() #7
  %144 = ptrtoint ptr %block_shift483 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 5, ptr %block_shift483, align 2
  %145 = ptrtoint ptr %page_off484 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 31, ptr %page_off484, align 1
  %146 = ptrtoint ptr %addr_cycle487 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 4, ptr %addr_cycle487, align 4
  %147 = ptrtoint ptr %zone_cnt488 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 128, ptr %zone_cnt488, align 4
  %148 = ptrtoint ptr %capacity489 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 4096000, ptr %capacity489, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body482, %do.body473, %do.body464, %do.body455, %do.body446, %do.body437, %do.body428, %do.body419, %sw.bb412, %sw.bb
  %call495 = call fastcc i32 @xd_read_id(ptr noundef %chip, i8 noundef zeroext -112, ptr noundef nonnull %id_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call495)
  %cmp496.not = icmp eq i32 %call495, 0
  br i1 %cmp496.not, label %if.end499, label %sw.epilog.cleanup727_crit_edge

sw.epilog.cleanup727_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup727

if.end499:                                        ; preds = %sw.epilog
  %149 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %0, align 1
  %151 = ptrtoint ptr %device_code to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %device_code, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %150, i8 %152)
  %cmp504.not = icmp eq i8 %150, %152
  br i1 %cmp504.not, label %for.inc, label %if.end499.for.inc512_crit_edge

if.end499.for.inc512_crit_edge:                   ; preds = %if.end499
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc512

for.inc:                                          ; preds = %if.end499
  %call495.1 = call fastcc i32 @xd_read_id(ptr noundef %chip, i8 noundef zeroext -112, ptr noundef nonnull %id_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call495.1)
  %cmp496.not.1 = icmp eq i32 %call495.1, 0
  br i1 %cmp496.not.1, label %if.end499.1, label %for.inc.cleanup727_crit_edge

for.inc.cleanup727_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup727

if.end499.1:                                      ; preds = %for.inc
  %153 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %0, align 1
  %155 = ptrtoint ptr %device_code to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %device_code, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %154, i8 %156)
  %cmp504.not.1 = icmp eq i8 %154, %156
  br i1 %cmp504.not.1, label %for.inc.1, label %if.end499.1.for.inc512_crit_edge

if.end499.1.for.inc512_crit_edge:                 ; preds = %if.end499.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc512

for.inc.1:                                        ; preds = %if.end499.1
  %call495.2 = call fastcc i32 @xd_read_id(ptr noundef %chip, i8 noundef zeroext -112, ptr noundef nonnull %id_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call495.2)
  %cmp496.not.2 = icmp eq i32 %call495.2, 0
  br i1 %cmp496.not.2, label %if.end499.2, label %for.inc.1.cleanup727_crit_edge

for.inc.1.cleanup727_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup727

if.end499.2:                                      ; preds = %for.inc.1
  %157 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %0, align 1
  %159 = ptrtoint ptr %device_code to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %device_code, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %158, i8 %160)
  %cmp504.not.2 = icmp eq i8 %158, %160
  br i1 %cmp504.not.2, label %for.inc.2, label %if.end499.2.for.inc512_crit_edge

if.end499.2.for.inc512_crit_edge:                 ; preds = %if.end499.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc512

for.inc.2:                                        ; preds = %if.end499.2
  %call495.3 = call fastcc i32 @xd_read_id(ptr noundef %chip, i8 noundef zeroext -112, ptr noundef nonnull %id_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call495.3)
  %cmp496.not.3 = icmp eq i32 %call495.3, 0
  br i1 %cmp496.not.3, label %if.end499.3, label %for.inc.2.cleanup727_crit_edge

for.inc.2.cleanup727_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup727

if.end499.3:                                      ; preds = %for.inc.2
  %161 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %0, align 1
  %163 = ptrtoint ptr %device_code to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %device_code, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %162, i8 %164)
  %cmp504.not.3 = icmp eq i8 %162, %164
  br i1 %cmp504.not.3, label %for.inc.3, label %if.end499.3.for.inc512_crit_edge

if.end499.3.for.inc512_crit_edge:                 ; preds = %if.end499.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc512

for.inc.3:                                        ; preds = %if.end499.3
  %call495.4 = call fastcc i32 @xd_read_id(ptr noundef %chip, i8 noundef zeroext -112, ptr noundef nonnull %id_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call495.4)
  %cmp496.not.4 = icmp eq i32 %call495.4, 0
  br i1 %cmp496.not.4, label %if.end499.4, label %for.inc.3.cleanup727_crit_edge

for.inc.3.cleanup727_crit_edge:                   ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup727

if.end499.4:                                      ; preds = %for.inc.3
  %165 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %0, align 1
  %167 = ptrtoint ptr %device_code to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %device_code, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %166, i8 %168)
  %cmp504.not.4 = icmp eq i8 %166, %168
  br i1 %cmp504.not.4, label %for.inc.4, label %if.end499.4.for.inc512_crit_edge

if.end499.4.for.inc512_crit_edge:                 ; preds = %if.end499.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc512

for.inc.4:                                        ; preds = %if.end499.4
  %call495.5 = call fastcc i32 @xd_read_id(ptr noundef %chip, i8 noundef zeroext -112, ptr noundef nonnull %id_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call495.5)
  %cmp496.not.5 = icmp eq i32 %call495.5, 0
  br i1 %cmp496.not.5, label %if.end499.5, label %for.inc.4.cleanup727_crit_edge

for.inc.4.cleanup727_crit_edge:                   ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup727

if.end499.5:                                      ; preds = %for.inc.4
  %169 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %0, align 1
  %171 = ptrtoint ptr %device_code to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %device_code, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %170, i8 %172)
  %cmp504.not.5 = icmp eq i8 %170, %172
  br i1 %cmp504.not.5, label %for.inc.5, label %if.end499.5.for.inc512_crit_edge

if.end499.5.for.inc512_crit_edge:                 ; preds = %if.end499.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc512

for.inc.5:                                        ; preds = %if.end499.5
  %call495.6 = call fastcc i32 @xd_read_id(ptr noundef %chip, i8 noundef zeroext -112, ptr noundef nonnull %id_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call495.6)
  %cmp496.not.6 = icmp eq i32 %call495.6, 0
  br i1 %cmp496.not.6, label %if.end499.6, label %for.inc.5.cleanup727_crit_edge

for.inc.5.cleanup727_crit_edge:                   ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup727

if.end499.6:                                      ; preds = %for.inc.5
  %173 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %0, align 1
  %175 = ptrtoint ptr %device_code to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %device_code, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %174, i8 %176)
  %cmp504.not.6 = icmp eq i8 %174, %176
  br i1 %cmp504.not.6, label %for.inc.6, label %if.end499.6.for.inc512_crit_edge

if.end499.6.for.inc512_crit_edge:                 ; preds = %if.end499.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc512

for.inc.6:                                        ; preds = %if.end499.6
  %call495.7 = call fastcc i32 @xd_read_id(ptr noundef %chip, i8 noundef zeroext -112, ptr noundef nonnull %id_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call495.7)
  %cmp496.not.7 = icmp eq i32 %call495.7, 0
  br i1 %cmp496.not.7, label %if.end499.7, label %for.inc.6.cleanup727_crit_edge

for.inc.6.cleanup727_crit_edge:                   ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup727

if.end499.7:                                      ; preds = %for.inc.6
  %177 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %0, align 1
  %179 = ptrtoint ptr %device_code to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %device_code, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %178, i8 %180)
  %cmp504.not.7 = icmp eq i8 %178, %180
  br i1 %cmp504.not.7, label %for.inc.7, label %if.end499.7.for.inc512_crit_edge

if.end499.7.for.inc512_crit_edge:                 ; preds = %if.end499.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc512

for.inc.7:                                        ; preds = %if.end499.7
  %call495.8 = call fastcc i32 @xd_read_id(ptr noundef %chip, i8 noundef zeroext -112, ptr noundef nonnull %id_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call495.8)
  %cmp496.not.8 = icmp eq i32 %call495.8, 0
  br i1 %cmp496.not.8, label %if.end499.8, label %for.inc.7.cleanup727_crit_edge

for.inc.7.cleanup727_crit_edge:                   ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup727

if.end499.8:                                      ; preds = %for.inc.7
  %181 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %0, align 1
  %183 = ptrtoint ptr %device_code to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %device_code, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %182, i8 %184)
  %cmp504.not.8 = icmp eq i8 %182, %184
  br i1 %cmp504.not.8, label %for.inc.8, label %if.end499.8.for.inc512_crit_edge

if.end499.8.for.inc512_crit_edge:                 ; preds = %if.end499.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc512

for.inc.8:                                        ; preds = %if.end499.8
  %call495.9 = call fastcc i32 @xd_read_id(ptr noundef %chip, i8 noundef zeroext -112, ptr noundef nonnull %id_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call495.9)
  %cmp496.not.9 = icmp eq i32 %call495.9, 0
  br i1 %cmp496.not.9, label %if.end499.9, label %for.inc.8.cleanup727_crit_edge

for.inc.8.cleanup727_crit_edge:                   ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup727

if.end499.9:                                      ; preds = %for.inc.8
  %185 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %0, align 1
  %187 = ptrtoint ptr %device_code to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %device_code, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %186, i8 %188)
  %cmp504.not.9 = icmp eq i8 %186, %188
  br i1 %cmp504.not.9, label %for.end514, label %if.end499.9.for.inc512_crit_edge

if.end499.9.for.inc512_crit_edge:                 ; preds = %if.end499.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc512

for.inc512:                                       ; preds = %if.end499.9.for.inc512_crit_edge, %if.end499.8.for.inc512_crit_edge, %if.end499.7.for.inc512_crit_edge, %if.end499.6.for.inc512_crit_edge, %if.end499.5.for.inc512_crit_edge, %if.end499.4.for.inc512_crit_edge, %if.end499.3.for.inc512_crit_edge, %if.end499.2.for.inc512_crit_edge, %if.end499.1.for.inc512_crit_edge, %if.end499.for.inc512_crit_edge, %do.end406.for.inc512_crit_edge, %lor.lhs.false.for.inc512_crit_edge, %do.end365.for.inc512_crit_edge
  %inc513 = add nuw nsw i32 %i.0952, 1
  %exitcond.not = icmp eq i32 %inc513, 4
  br i1 %exitcond.not, label %for.inc512.if.then517_crit_edge, label %for.inc512.for.body_crit_edge

for.inc512.for.body_crit_edge:                    ; preds = %for.inc512
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc512.if.then517_crit_edge:                  ; preds = %for.inc512
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then517

for.end514:                                       ; preds = %if.end499.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0952)
  %cmp515 = icmp eq i32 %i.0952, 4
  br i1 %cmp515, label %for.end514.if.then517_crit_edge, label %if.end522

for.end514.if.then517_crit_edge:                  ; preds = %for.end514
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then517

if.then517:                                       ; preds = %for.end514.if.then517_crit_edge, %for.inc512.if.then517_crit_edge
  %189 = ptrtoint ptr %block_shift483 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 0, ptr %block_shift483, align 2
  %190 = ptrtoint ptr %page_off484 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %page_off484, align 1
  %191 = ptrtoint ptr %addr_cycle487 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 0, ptr %addr_cycle487, align 4
  %192 = ptrtoint ptr %capacity489 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 0, ptr %capacity489, align 4
  br label %cleanup727

if.end522:                                        ; preds = %for.end514
  %call524 = call fastcc i32 @xd_read_id(ptr noundef %chip, i8 noundef zeroext -102, ptr noundef nonnull %id_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call524)
  %cmp525.not = icmp eq i32 %call524, 0
  br i1 %cmp525.not, label %do.body529, label %if.end522.cleanup727_crit_edge

if.end522.cleanup727_crit_edge:                   ; preds = %if.end522
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup727

do.body529:                                       ; preds = %if.end522
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reset_xd.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_xd, %if.then541)) #5
          to label %do.end553 [label %if.then541], !srcloc !166

if.then541:                                       ; preds = %do.body529
  call void @__sanitizer_cov_trace_pc() #7
  %193 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %chip, align 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %194, align 4
  %dev.i921 = getelementptr inbounds %struct.pci_dev, ptr %196, i32 0, i32 44
  %197 = ptrtoint ptr %id_buf to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %id_buf, align 4
  %conv544 = zext i8 %198 to i32
  %199 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %0, align 1
  %conv546 = zext i8 %200 to i32
  %201 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %1, align 2
  %conv548 = zext i8 %202 to i32
  %203 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %2, align 1
  %conv550 = zext i8 %204 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reset_xd.__UNIQUE_ID_ddebug299, ptr noundef %dev.i921, ptr noundef nonnull @.str.13, i32 noundef %conv544, i32 noundef %conv546, i32 noundef %conv548, i32 noundef %conv550) #5
  br label %do.end553

do.end553:                                        ; preds = %if.then541, %do.body529
  %205 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -75, i8 %206)
  %cmp556.not = icmp eq i8 %206, -75
  br i1 %cmp556.not, label %do.end553.for.body563_crit_edge, label %do.end553.cleanup727_crit_edge

do.end553.cleanup727_crit_edge:                   ; preds = %do.end553
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup727

do.end553.for.body563_crit_edge:                  ; preds = %do.end553
  br label %for.body563

for.body563:                                      ; preds = %for.inc695.for.body563_crit_edge, %do.end553.for.body563_crit_edge
  %i.1955 = phi i32 [ %inc696, %for.inc695.for.body563_crit_edge ], [ 0, %do.end553.for.body563_crit_edge ]
  %call564 = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call564)
  %cmp565.not = icmp eq i32 %call564, 0
  br i1 %cmp565.not, label %if.end568, label %for.body563.cleanup727_crit_edge

for.body563.cleanup727_crit_edge:                 ; preds = %for.body563
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup727

if.end568:                                        ; preds = %for.body563
  %207 = ptrtoint ptr %block_shift483 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %block_shift483, align 2
  %conv570 = zext i8 %208 to i32
  %shl = shl i32 %i.1955, %conv570
  %call576 = call fastcc i32 @xd_read_redundant(ptr noundef %chip, i32 noundef %shl, ptr noundef nonnull %redunt, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call576)
  %cmp577 = icmp eq i32 %call576, 0
  br i1 %cmp577, label %if.end568.if.end587_crit_edge, label %for.inc581

if.end568.if.end587_crit_edge:                    ; preds = %if.end568
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end587

for.inc581:                                       ; preds = %if.end568
  %call576.1 = call fastcc i32 @xd_read_redundant(ptr noundef %chip, i32 noundef %shl, ptr noundef nonnull %redunt, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call576.1)
  %cmp577.1 = icmp eq i32 %call576.1, 0
  br i1 %cmp577.1, label %for.inc581.if.end587_crit_edge, label %for.inc581.1

for.inc581.if.end587_crit_edge:                   ; preds = %for.inc581
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end587

for.inc581.1:                                     ; preds = %for.inc581
  %call576.2 = call fastcc i32 @xd_read_redundant(ptr noundef %chip, i32 noundef %shl, ptr noundef nonnull %redunt, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call576.2)
  %cmp577.2 = icmp eq i32 %call576.2, 0
  br i1 %cmp577.2, label %for.inc581.1.if.end587_crit_edge, label %for.inc581.1.for.inc695_crit_edge

for.inc581.1.for.inc695_crit_edge:                ; preds = %for.inc581.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc695

for.inc581.1.if.end587_crit_edge:                 ; preds = %for.inc581.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end587

if.end587:                                        ; preds = %for.inc581.1.if.end587_crit_edge, %for.inc581.if.end587_crit_edge, %if.end568.if.end587_crit_edge
  %209 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %210)
  %cmp590.not = icmp eq i8 %210, -1
  br i1 %cmp590.not, label %if.end593, label %if.end587.for.inc695_crit_edge

if.end587.for.inc695_crit_edge:                   ; preds = %if.end587
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc695

if.end593:                                        ; preds = %if.end587
  %211 = ptrtoint ptr %redunt to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %redunt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %212)
  %cmp596.not = icmp eq i8 %212, -1
  br i1 %cmp596.not, label %if.end593.land.lhs.true_crit_edge, label %for.body602.preheader

if.end593.land.lhs.true_crit_edge:                ; preds = %if.end593
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

for.body602.preheader:                            ; preds = %if.end593
  %add603 = add i32 %shl, 1
  %call605 = call fastcc i32 @xd_read_redundant(ptr noundef %chip, i32 noundef %add603, ptr noundef nonnull %redunt, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call605)
  %cmp606 = icmp eq i32 %call605, 0
  br i1 %cmp606, label %if.then608, label %for.body602.preheader.for.inc616_crit_edge

for.body602.preheader.for.inc616_crit_edge:       ; preds = %for.body602.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc616

if.then608:                                       ; preds = %for.body602.preheader
  %213 = ptrtoint ptr %redunt to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %redunt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %214)
  %cmp611 = icmp eq i8 %214, -1
  br i1 %cmp611, label %if.then608.if.end623_crit_edge, label %if.then608.for.inc616_crit_edge

if.then608.for.inc616_crit_edge:                  ; preds = %if.then608
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc616

if.then608.if.end623_crit_edge:                   ; preds = %if.then608
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end623

for.inc616:                                       ; preds = %if.then608.for.inc616_crit_edge, %for.body602.preheader.for.inc616_crit_edge
  %add603.1 = add i32 %shl, 2
  %call605.1 = call fastcc i32 @xd_read_redundant(ptr noundef %chip, i32 noundef %add603.1, ptr noundef nonnull %redunt, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call605.1)
  %cmp606.1 = icmp eq i32 %call605.1, 0
  br i1 %cmp606.1, label %if.then608.1, label %for.inc616.for.inc616.1_crit_edge

for.inc616.for.inc616.1_crit_edge:                ; preds = %for.inc616
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc616.1

if.then608.1:                                     ; preds = %for.inc616
  %215 = ptrtoint ptr %redunt to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %redunt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %216)
  %cmp611.1 = icmp eq i8 %216, -1
  br i1 %cmp611.1, label %if.then608.1.if.end623_crit_edge, label %if.then608.1.for.inc616.1_crit_edge

if.then608.1.for.inc616.1_crit_edge:              ; preds = %if.then608.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc616.1

if.then608.1.if.end623_crit_edge:                 ; preds = %if.then608.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end623

for.inc616.1:                                     ; preds = %if.then608.1.for.inc616.1_crit_edge, %for.inc616.for.inc616.1_crit_edge
  %add603.2 = add i32 %shl, 3
  %call605.2 = call fastcc i32 @xd_read_redundant(ptr noundef %chip, i32 noundef %add603.2, ptr noundef nonnull %redunt, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call605.2)
  %cmp606.2 = icmp eq i32 %call605.2, 0
  br i1 %cmp606.2, label %if.then608.2, label %for.inc616.1.for.inc616.2_crit_edge

for.inc616.1.for.inc616.2_crit_edge:              ; preds = %for.inc616.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc616.2

if.then608.2:                                     ; preds = %for.inc616.1
  %217 = ptrtoint ptr %redunt to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %redunt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %218)
  %cmp611.2 = icmp eq i8 %218, -1
  br i1 %cmp611.2, label %if.then608.2.if.end623_crit_edge, label %if.then608.2.for.inc616.2_crit_edge

if.then608.2.for.inc616.2_crit_edge:              ; preds = %if.then608.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc616.2

if.then608.2.if.end623_crit_edge:                 ; preds = %if.then608.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end623

for.inc616.2:                                     ; preds = %if.then608.2.for.inc616.2_crit_edge, %for.inc616.1.for.inc616.2_crit_edge
  %add603.3 = add i32 %shl, 4
  %call605.3 = call fastcc i32 @xd_read_redundant(ptr noundef %chip, i32 noundef %add603.3, ptr noundef nonnull %redunt, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call605.3)
  %cmp606.3 = icmp eq i32 %call605.3, 0
  br i1 %cmp606.3, label %if.then608.3, label %for.inc616.2.for.inc616.3_crit_edge

for.inc616.2.for.inc616.3_crit_edge:              ; preds = %for.inc616.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc616.3

if.then608.3:                                     ; preds = %for.inc616.2
  %219 = ptrtoint ptr %redunt to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %redunt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %220)
  %cmp611.3 = icmp eq i8 %220, -1
  br i1 %cmp611.3, label %if.then608.3.if.end623_crit_edge, label %if.then608.3.for.inc616.3_crit_edge

if.then608.3.for.inc616.3_crit_edge:              ; preds = %if.then608.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc616.3

if.then608.3.if.end623_crit_edge:                 ; preds = %if.then608.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end623

for.inc616.3:                                     ; preds = %if.then608.3.for.inc616.3_crit_edge, %for.inc616.2.for.inc616.3_crit_edge
  %add603.4 = add i32 %shl, 5
  %call605.4 = call fastcc i32 @xd_read_redundant(ptr noundef %chip, i32 noundef %add603.4, ptr noundef nonnull %redunt, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call605.4)
  %cmp606.4 = icmp eq i32 %call605.4, 0
  br i1 %cmp606.4, label %if.then608.4, label %for.inc616.3.for.inc616.4_crit_edge

for.inc616.3.for.inc616.4_crit_edge:              ; preds = %for.inc616.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc616.4

if.then608.4:                                     ; preds = %for.inc616.3
  %221 = ptrtoint ptr %redunt to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %redunt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %222)
  %cmp611.4 = icmp eq i8 %222, -1
  br i1 %cmp611.4, label %if.then608.4.if.end623_crit_edge, label %if.then608.4.for.inc616.4_crit_edge

if.then608.4.for.inc616.4_crit_edge:              ; preds = %if.then608.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc616.4

if.then608.4.if.end623_crit_edge:                 ; preds = %if.then608.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end623

for.inc616.4:                                     ; preds = %if.then608.4.for.inc616.4_crit_edge, %for.inc616.3.for.inc616.4_crit_edge
  %add603.5 = add i32 %shl, 6
  %call605.5 = call fastcc i32 @xd_read_redundant(ptr noundef %chip, i32 noundef %add603.5, ptr noundef nonnull %redunt, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call605.5)
  %cmp606.5 = icmp eq i32 %call605.5, 0
  br i1 %cmp606.5, label %if.then608.5, label %for.inc616.4.for.inc616.5_crit_edge

for.inc616.4.for.inc616.5_crit_edge:              ; preds = %for.inc616.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc616.5

if.then608.5:                                     ; preds = %for.inc616.4
  %223 = ptrtoint ptr %redunt to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %redunt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %224)
  %cmp611.5 = icmp eq i8 %224, -1
  br i1 %cmp611.5, label %if.then608.5.if.end623_crit_edge, label %if.then608.5.for.inc616.5_crit_edge

if.then608.5.for.inc616.5_crit_edge:              ; preds = %if.then608.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc616.5

if.then608.5.if.end623_crit_edge:                 ; preds = %if.then608.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end623

for.inc616.5:                                     ; preds = %if.then608.5.for.inc616.5_crit_edge, %for.inc616.4.for.inc616.5_crit_edge
  %add603.6 = add i32 %shl, 7
  %call605.6 = call fastcc i32 @xd_read_redundant(ptr noundef %chip, i32 noundef %add603.6, ptr noundef nonnull %redunt, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call605.6)
  %cmp606.6 = icmp eq i32 %call605.6, 0
  br i1 %cmp606.6, label %if.then608.6, label %for.inc616.5.for.inc616.6_crit_edge

for.inc616.5.for.inc616.6_crit_edge:              ; preds = %for.inc616.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc616.6

if.then608.6:                                     ; preds = %for.inc616.5
  %225 = ptrtoint ptr %redunt to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %redunt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %226)
  %cmp611.6 = icmp eq i8 %226, -1
  br i1 %cmp611.6, label %if.then608.6.if.end623_crit_edge, label %if.then608.6.for.inc616.6_crit_edge

if.then608.6.for.inc616.6_crit_edge:              ; preds = %if.then608.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc616.6

if.then608.6.if.end623_crit_edge:                 ; preds = %if.then608.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end623

for.inc616.6:                                     ; preds = %if.then608.6.for.inc616.6_crit_edge, %for.inc616.5.for.inc616.6_crit_edge
  %add603.7 = add i32 %shl, 8
  %call605.7 = call fastcc i32 @xd_read_redundant(ptr noundef %chip, i32 noundef %add603.7, ptr noundef nonnull %redunt, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call605.7)
  %cmp606.7 = icmp eq i32 %call605.7, 0
  br i1 %cmp606.7, label %if.then608.7, label %for.inc616.6.do.body698_crit_edge

for.inc616.6.do.body698_crit_edge:                ; preds = %for.inc616.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body698

if.then608.7:                                     ; preds = %for.inc616.6
  %227 = ptrtoint ptr %redunt to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %redunt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %228)
  %cmp611.7 = icmp eq i8 %228, -1
  br i1 %cmp611.7, label %if.then608.7.if.end623_crit_edge, label %if.then608.7.do.body698_crit_edge

if.then608.7.do.body698_crit_edge:                ; preds = %if.then608.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body698

if.then608.7.if.end623_crit_edge:                 ; preds = %if.then608.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end623

if.end623:                                        ; preds = %if.then608.7.if.end623_crit_edge, %if.then608.6.if.end623_crit_edge, %if.then608.5.if.end623_crit_edge, %if.then608.4.if.end623_crit_edge, %if.then608.3.if.end623_crit_edge, %if.then608.2.if.end623_crit_edge, %if.then608.1.if.end623_crit_edge, %if.then608.if.end623_crit_edge
  %j.2957.lcssa = phi i32 [ 1, %if.then608.if.end623_crit_edge ], [ 2, %if.then608.1.if.end623_crit_edge ], [ 3, %if.then608.2.if.end623_crit_edge ], [ 4, %if.then608.3.if.end623_crit_edge ], [ 5, %if.then608.4.if.end623_crit_edge ], [ 6, %if.then608.5.if.end623_crit_edge ], [ 7, %if.then608.6.if.end623_crit_edge ], [ 8, %if.then608.7.if.end623_crit_edge ]
  %229 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %229)
  %.pr931 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %.pr931)
  %cmp626 = icmp eq i8 %.pr931, -1
  br i1 %cmp626, label %if.end623.land.lhs.true_crit_edge, label %if.end623.do.body698_crit_edge

if.end623.do.body698_crit_edge:                   ; preds = %if.end623
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body698

if.end623.land.lhs.true_crit_edge:                ; preds = %if.end623
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end623.land.lhs.true_crit_edge, %if.end593.land.lhs.true_crit_edge
  %j.3934 = phi i32 [ %j.2957.lcssa, %if.end623.land.lhs.true_crit_edge ], [ 0, %if.end593.land.lhs.true_crit_edge ]
  %230 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %5, align 1
  %232 = and i8 %231, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool631.not = icmp eq i8 %232, 0
  br i1 %tobool631.not, label %land.lhs.true.do.body698_crit_edge, label %if.then632

land.lhs.true.do.body698_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body698

if.then632:                                       ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf) #5
  %233 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 1
  %234 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 2
  %235 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 3
  %236 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 4
  %237 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 5
  %238 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 6
  %239 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 7
  %240 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 8
  %241 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 9
  %add633 = add i32 %j.3934, %shl
  %242 = call ptr @memset(ptr %buf, i32 255, i32 10)
  %call635 = call fastcc i32 @xd_read_cis(ptr noundef %chip, i32 noundef %add633, ptr noundef nonnull %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call635)
  %cmp636.not = icmp eq i32 %call635, 0
  br i1 %cmp636.not, label %if.end639, label %cleanup693.critedge

if.end639:                                        ; preds = %if.then632
  %243 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %244)
  %cmp642 = icmp eq i8 %244, 1
  br i1 %cmp642, label %land.lhs.true644, label %if.end692.critedge

land.lhs.true644:                                 ; preds = %if.end639
  %245 = ptrtoint ptr %233 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %233, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %246)
  %cmp647 = icmp eq i8 %246, 3
  br i1 %cmp647, label %land.lhs.true649, label %if.end692.critedge897

land.lhs.true649:                                 ; preds = %land.lhs.true644
  %247 = ptrtoint ptr %234 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %234, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -39, i8 %248)
  %cmp652 = icmp eq i8 %248, -39
  br i1 %cmp652, label %land.lhs.true654, label %if.end692.critedge898

land.lhs.true654:                                 ; preds = %land.lhs.true649
  %249 = ptrtoint ptr %235 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %235, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %250)
  %cmp657 = icmp eq i8 %250, 1
  br i1 %cmp657, label %land.lhs.true659, label %if.end692.critedge899

land.lhs.true659:                                 ; preds = %land.lhs.true654
  %251 = ptrtoint ptr %236 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %236, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %252)
  %cmp662 = icmp eq i8 %252, -1
  br i1 %cmp662, label %land.lhs.true664, label %if.end692.critedge900

land.lhs.true664:                                 ; preds = %land.lhs.true659
  %253 = ptrtoint ptr %237 to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %237, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %254)
  %cmp667 = icmp eq i8 %254, 24
  br i1 %cmp667, label %land.lhs.true669, label %if.end692.critedge901

land.lhs.true669:                                 ; preds = %land.lhs.true664
  %255 = ptrtoint ptr %238 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %238, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %256)
  %cmp672 = icmp eq i8 %256, 2
  br i1 %cmp672, label %land.lhs.true674, label %if.end692.critedge902

land.lhs.true674:                                 ; preds = %land.lhs.true669
  %257 = ptrtoint ptr %239 to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %239, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %258)
  %cmp677 = icmp eq i8 %258, -33
  br i1 %cmp677, label %land.lhs.true679, label %if.end692.critedge903

land.lhs.true679:                                 ; preds = %land.lhs.true674
  %259 = ptrtoint ptr %240 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %240, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %260)
  %cmp682 = icmp eq i8 %260, 1
  br i1 %cmp682, label %land.lhs.true684, label %land.lhs.true679.cleanup_crit_edge

land.lhs.true679.cleanup_crit_edge:               ; preds = %land.lhs.true679
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true684:                                 ; preds = %land.lhs.true679
  %261 = ptrtoint ptr %241 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %241, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %262)
  %cmp687 = icmp eq i8 %262, 32
  br i1 %cmp687, label %if.then689, label %land.lhs.true684.cleanup_crit_edge

land.lhs.true684.cleanup_crit_edge:               ; preds = %land.lhs.true684
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then689:                                       ; preds = %land.lhs.true684
  call void @__sanitizer_cov_trace_pc() #7
  %conv690 = trunc i32 %i.1955 to i16
  %cis_block = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 5
  %263 = ptrtoint ptr %cis_block to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 %conv690, ptr %cis_block, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then689, %land.lhs.true684.cleanup_crit_edge, %land.lhs.true679.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #5
  br label %do.body698

if.end692.critedge:                               ; preds = %if.end639
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #5
  br label %do.body698

if.end692.critedge897:                            ; preds = %land.lhs.true644
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #5
  br label %do.body698

if.end692.critedge898:                            ; preds = %land.lhs.true649
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #5
  br label %do.body698

if.end692.critedge899:                            ; preds = %land.lhs.true654
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #5
  br label %do.body698

if.end692.critedge900:                            ; preds = %land.lhs.true659
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #5
  br label %do.body698

if.end692.critedge901:                            ; preds = %land.lhs.true664
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #5
  br label %do.body698

if.end692.critedge902:                            ; preds = %land.lhs.true669
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #5
  br label %do.body698

if.end692.critedge903:                            ; preds = %land.lhs.true674
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #5
  br label %do.body698

cleanup693.critedge:                              ; preds = %if.then632
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #5
  br label %cleanup727

for.inc695:                                       ; preds = %if.end587.for.inc695_crit_edge, %for.inc581.1.for.inc695_crit_edge
  %inc696 = add nuw nsw i32 %i.1955, 1
  %exitcond966.not = icmp eq i32 %inc696, 24
  br i1 %exitcond966.not, label %for.inc695.do.body698_crit_edge, label %for.inc695.for.body563_crit_edge

for.inc695.for.body563_crit_edge:                 ; preds = %for.inc695
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body563

for.inc695.do.body698_crit_edge:                  ; preds = %for.inc695
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body698

do.body698:                                       ; preds = %for.inc695.do.body698_crit_edge, %if.end692.critedge903, %if.end692.critedge902, %if.end692.critedge901, %if.end692.critedge900, %if.end692.critedge899, %if.end692.critedge898, %if.end692.critedge897, %if.end692.critedge, %cleanup, %land.lhs.true.do.body698_crit_edge, %if.end623.do.body698_crit_edge, %if.then608.7.do.body698_crit_edge, %for.inc616.6.do.body698_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reset_xd.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_xd, %if.then710)) #5
          to label %do.end716 [label %if.then710], !srcloc !166

if.then710:                                       ; preds = %do.body698
  call void @__sanitizer_cov_trace_pc() #7
  %264 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %chip, align 4
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %265, align 4
  %dev.i922 = getelementptr inbounds %struct.pci_dev, ptr %267, i32 0, i32 44
  %cis_block712 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 5
  %268 = ptrtoint ptr %cis_block712 to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %cis_block712, align 2
  %conv713 = zext i16 %269 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reset_xd.__UNIQUE_ID_ddebug300, ptr noundef %dev.i922, ptr noundef nonnull @.str.14, i32 noundef %conv713) #5
  br label %do.end716

do.end716:                                        ; preds = %if.then710, %do.body698
  %cis_block717 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 5
  %270 = ptrtoint ptr %cis_block717 to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %cis_block717, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %271)
  %cmp719 = icmp eq i16 %271, -1
  br i1 %cmp719, label %do.end716.cleanup727_crit_edge, label %if.end722

do.end716.cleanup727_crit_edge:                   ; preds = %do.end716
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup727

if.end722:                                        ; preds = %do.end716
  call void @__sanitizer_cov_trace_pc() #7
  %272 = ptrtoint ptr %capacity489 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %capacity489, align 4
  %arrayidx725 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 16
  %274 = ptrtoint ptr %arrayidx725 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %arrayidx725, align 4
  %idxprom = zext i8 %275 to i32
  %arrayidx726 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 31, i32 %idxprom
  %276 = ptrtoint ptr %arrayidx726 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %273, ptr %arrayidx726, align 4
  br label %cleanup727

cleanup727:                                       ; preds = %if.end722, %do.end716.cleanup727_crit_edge, %cleanup693.critedge, %for.body563.cleanup727_crit_edge, %do.end553.cleanup727_crit_edge, %if.end522.cleanup727_crit_edge, %if.then517, %for.inc.8.cleanup727_crit_edge, %for.inc.7.cleanup727_crit_edge, %for.inc.6.cleanup727_crit_edge, %for.inc.5.cleanup727_crit_edge, %for.inc.4.cleanup727_crit_edge, %for.inc.3.cleanup727_crit_edge, %for.inc.2.cleanup727_crit_edge, %for.inc.1.cleanup727_crit_edge, %for.inc.cleanup727_crit_edge, %sw.epilog.cleanup727_crit_edge, %if.end376.cleanup727_crit_edge, %for.body.cleanup727_crit_edge, %xd_set_init_para.exit.cleanup727_crit_edge, %if.end226.cleanup727_crit_edge, %if.then208, %do.body198, %if.end104.cleanup727_crit_edge, %if.end99.cleanup727_crit_edge, %if.then20.cleanup727_crit_edge, %if.end12.cleanup727_crit_edge, %entry.cleanup727_crit_edge
  %retval.4 = phi i32 [ 1, %if.then517 ], [ 0, %if.end722 ], [ 1, %entry.cleanup727_crit_edge ], [ 1, %if.end12.cleanup727_crit_edge ], [ 1, %if.then20.cleanup727_crit_edge ], [ 1, %if.end99.cleanup727_crit_edge ], [ 1, %if.end104.cleanup727_crit_edge ], [ 1, %if.then208 ], [ 1, %if.end226.cleanup727_crit_edge ], [ 1, %xd_set_init_para.exit.cleanup727_crit_edge ], [ 1, %if.end522.cleanup727_crit_edge ], [ 1, %do.end553.cleanup727_crit_edge ], [ 1, %do.end716.cleanup727_crit_edge ], [ 1, %do.body198 ], [ 1, %cleanup693.critedge ], [ 1, %for.body563.cleanup727_crit_edge ], [ 1, %for.inc.8.cleanup727_crit_edge ], [ 1, %for.inc.7.cleanup727_crit_edge ], [ 1, %for.inc.6.cleanup727_crit_edge ], [ 1, %for.inc.5.cleanup727_crit_edge ], [ 1, %for.inc.4.cleanup727_crit_edge ], [ 1, %for.inc.3.cleanup727_crit_edge ], [ 1, %for.inc.2.cleanup727_crit_edge ], [ 1, %for.inc.1.cleanup727_crit_edge ], [ 1, %for.inc.cleanup727_crit_edge ], [ 1, %sw.epilog.cleanup727_crit_edge ], [ 1, %for.body.cleanup727_crit_edge ], [ 1, %if.end376.cleanup727_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %redunt) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id_buf) #5
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xd_init_l2p_tbl(ptr nocapture noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_init_l2p_tbl.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_init_l2p_tbl, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %zone_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 10
  %4 = ptrtoint ptr %zone_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %zone_cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_init_l2p_tbl.__UNIQUE_ID_ddebug301, ptr noundef %dev.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %5) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %zone_cnt5 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 10
  %6 = ptrtoint ptr %zone_cnt5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %zone_cnt5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp slt i32 %7, 1
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %mul = mul i32 %7, 48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_init_l2p_tbl.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_init_l2p_tbl, %if.then21)) #5
          to label %do.end25 [label %if.then21], !srcloc !166

if.then21:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %dev.i70 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_init_l2p_tbl.__UNIQUE_ID_ddebug302, ptr noundef %dev.i70, ptr noundef nonnull @.str.22, i32 noundef %mul) #5
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %if.end7
  %call26 = tail call noalias ptr @vmalloc(i32 noundef %mul) #8
  %zone = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 9
  %12 = ptrtoint ptr %zone to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call26, ptr %zone, align 4
  %tobool28.not = icmp eq ptr %call26, null
  br i1 %tobool28.not, label %do.end25.cleanup_crit_edge, label %for.cond.preheader

do.end25.cleanup_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end25
  %13 = ptrtoint ptr %zone_cnt5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %zone_cnt5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp3273 = icmp sgt i32 %14, 0
  br i1 %cmp3273, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.074 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %15 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %zone, align 4
  %build_flag = getelementptr %struct.zone_entry, ptr %16, i32 %i.074, i32 7
  %17 = ptrtoint ptr %build_flag to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %build_flag, align 4
  %18 = load ptr, ptr %zone, align 4
  %arrayidx35 = getelementptr %struct.zone_entry, ptr %18, i32 %i.074
  %19 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx35, align 4
  %20 = load ptr, ptr %zone, align 4
  %free_table = getelementptr %struct.zone_entry, ptr %20, i32 %i.074, i32 1
  %21 = ptrtoint ptr %free_table to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %free_table, align 4
  %22 = load ptr, ptr %zone, align 4
  %get_index = getelementptr %struct.zone_entry, ptr %22, i32 %i.074, i32 4
  %23 = ptrtoint ptr %get_index to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %get_index, align 4
  %24 = load ptr, ptr %zone, align 4
  %set_index = getelementptr %struct.zone_entry, ptr %24, i32 %i.074, i32 3
  %25 = ptrtoint ptr %set_index to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %set_index, align 4
  %26 = load ptr, ptr %zone, align 4
  %unused_blk_cnt = getelementptr %struct.zone_entry, ptr %26, i32 %i.074, i32 5
  %27 = ptrtoint ptr %unused_blk_cnt to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %unused_blk_cnt, align 4
  %inc = add nuw nsw i32 %i.074, 1
  %28 = ptrtoint ptr %zone_cnt5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %zone_cnt5, align 4
  %cmp32 = icmp slt i32 %inc, %29
  br i1 %cmp32, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %do.end25.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end.cleanup_crit_edge ], [ 10, %do.end25.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xd_delay_write(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %delay_write2 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 11
  %delay_write_flag = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 11, i32 4
  %0 = ptrtoint ptr %delay_write_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %delay_write_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @select_card(ptr noundef %chip, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %xd_clock.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 13
  %2 = ptrtoint ptr %xd_clock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xd_clock.i, align 4
  %asic_code.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %4 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %3) #5
  br label %xd_switch_clock.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %3) #5
  br label %xd_switch_clock.exit

xd_switch_clock.exit:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval1.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i)
  %cmp4.not.i.not = icmp eq i32 %retval1.0.i.i, 0
  br i1 %cmp4.not.i.not, label %if.end, label %xd_switch_clock.exit.cleanup_crit_edge

xd_switch_clock.exit.cleanup_crit_edge:           ; preds = %xd_switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %xd_switch_clock.exit
  %6 = ptrtoint ptr %delay_write_flag to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %delay_write_flag, align 1
  %7 = ptrtoint ptr %delay_write2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %delay_write2, align 4
  %new_phyblock = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 11, i32 1
  %9 = ptrtoint ptr %new_phyblock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %new_phyblock, align 4
  %logblock = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 11, i32 2
  %11 = ptrtoint ptr %logblock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %logblock, align 4
  %pageoff = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 11, i32 3
  %13 = ptrtoint ptr %pageoff to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pageoff, align 4
  %call6 = tail call fastcc i32 @xd_finish_write(ptr noundef %chip, i32 noundef %8, i32 noundef %10, i32 noundef %12, i8 noundef zeroext %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end.if.end10_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %xd_switch_clock.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ 1, %xd_switch_clock.exit.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xd_finish_write(ptr noundef %chip, i32 noundef %old_blk, i32 noundef %new_blk, i32 noundef %log_blk, i8 noundef zeroext %page_off) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_finish_write.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_finish_write, %if.then)) #5
          to label %do.body6 [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_finish_write.__UNIQUE_ID_ddebug326, ptr noundef %dev.i, ptr noundef nonnull @.str.24, i32 noundef %old_blk) #5
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_finish_write.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_finish_write, %if.then18)) #5
          to label %do.body23 [label %if.then18], !srcloc !166

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev.i160 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_finish_write.__UNIQUE_ID_ddebug327, ptr noundef %dev.i160, ptr noundef nonnull @.str.25, i32 noundef %new_blk) #5
  br label %do.body23

do.body23:                                        ; preds = %if.then18, %do.body6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_finish_write.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_finish_write, %if.then35)) #5
          to label %do.end39 [label %if.then35], !srcloc !166

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %dev.i161 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_finish_write.__UNIQUE_ID_ddebug328, ptr noundef %dev.i161, ptr noundef nonnull @.str.26, i32 noundef %log_blk) #5
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %do.body23
  %page_off40 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 3
  %12 = ptrtoint ptr %page_off40 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %page_off40, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %page_off)
  %cmp = icmp ult i8 %13, %page_off
  br i1 %cmp, label %do.end39.cleanup_crit_edge, label %if.end44

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end44:                                         ; preds = %do.end39
  %div = udiv i32 %log_blk, 1000
  %14 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %log_blk, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %old_blk)
  %cmp46 = icmp eq i32 %old_blk, -1
  br i1 %cmp46, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.end44
  %conv45 = trunc i32 %rem.decomposed to i16
  %add = add i8 %13, 1
  %call52 = tail call fastcc i32 @xd_init_page(ptr noundef %chip, i32 noundef %new_blk, i16 noundef zeroext %conv45, i8 noundef zeroext %page_off, i8 noundef zeroext %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53.not = icmp eq i32 %call52, 0
  br i1 %cmp53.not, label %if.then48.if.end106_crit_edge, label %if.then55

if.then48.if.end106_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106

if.then55:                                        ; preds = %if.then48
  %call56 = tail call fastcc i32 @xd_erase_block(ptr noundef %chip, i32 noundef %new_blk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then59, label %if.then55.cleanup_crit_edge

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then59:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @xd_set_unused_block(ptr noundef %chip, i32 noundef %new_blk)
  br label %cleanup

if.else:                                          ; preds = %if.end44
  %add64 = add i8 %13, 1
  %call66 = tail call fastcc i32 @xd_copy_page(ptr noundef %chip, i32 noundef %old_blk, i32 noundef %new_blk, i8 noundef zeroext %page_off, i8 noundef zeroext %add64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67.not = icmp eq i32 %call66, 0
  br i1 %cmp67.not, label %if.end83, label %if.then69

if.then69:                                        ; preds = %if.else
  %multi_flag = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 6
  %15 = ptrtoint ptr %multi_flag to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %multi_flag, align 4
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool71.not = icmp eq i8 %17, 0
  br i1 %tobool71.not, label %if.then72, label %if.then69.if.end78_crit_edge

if.then69.if.end78_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

if.then72:                                        ; preds = %if.then69
  %call73 = tail call fastcc i32 @xd_erase_block(ptr noundef %chip, i32 noundef %new_blk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp eq i32 %call73, 0
  br i1 %cmp74, label %if.then76, label %if.then72.if.end78_crit_edge

if.then72.if.end78_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

if.then76:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @xd_set_unused_block(ptr noundef %chip, i32 noundef %new_blk)
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.then72.if.end78_crit_edge, %if.then69.if.end78_crit_edge
  %18 = ptrtoint ptr %multi_flag to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %multi_flag, align 4
  %20 = and i8 %19, -2
  store i8 %20, ptr %multi_flag, align 4
  br label %cleanup

if.end83:                                         ; preds = %if.else
  %call84 = tail call fastcc i32 @xd_erase_block(ptr noundef %chip, i32 noundef %old_blk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp eq i32 %call84, 0
  br i1 %cmp85, label %if.then87, label %if.else100

if.then87:                                        ; preds = %if.end83
  %multi_flag88 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 6
  %21 = ptrtoint ptr %multi_flag88 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %multi_flag88, align 4
  %23 = and i8 %22, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool91.not = icmp eq i8 %23, 0
  br i1 %tobool91.not, label %if.else98, label %if.then92

if.then92:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @xd_mark_bad_block(ptr noundef %chip, i32 noundef %old_blk)
  %24 = ptrtoint ptr %multi_flag88 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %multi_flag88, align 4
  %26 = and i8 %25, -3
  store i8 %26, ptr %multi_flag88, align 4
  br label %if.end106

if.else98:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @xd_set_unused_block(ptr noundef %chip, i32 noundef %old_blk)
  br label %if.end106

if.else100:                                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 7
  %27 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %err_code2.i, align 1
  %multi_flag101 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 6
  %28 = ptrtoint ptr %multi_flag101 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %multi_flag101, align 4
  %30 = and i8 %29, -3
  store i8 %30, ptr %multi_flag101, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.else100, %if.else98, %if.then92, %if.then48.if.end106_crit_edge
  %31 = trunc i32 %new_blk to i16
  %conv108 = and i16 %31, 1023
  %zone2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 9
  %32 = ptrtoint ptr %zone2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %zone2.i, align 4
  %arrayidx.i = getelementptr %struct.zone_entry, ptr %33, i32 %div
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr i16, ptr %35, i32 %rem.decomposed
  %36 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv108, ptr %arrayidx3.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end106, %if.end78, %if.then59, %if.then55.cleanup_crit_edge, %do.end39.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end106 ], [ 1, %if.end78 ], [ 1, %do.end39.cleanup_crit_edge ], [ 1, %if.then59 ], [ 1, %if.then55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xd_rw(ptr nocapture noundef %srb, ptr noundef %chip, i32 noundef %start_sector, i16 noundef zeroext %sector_cnt) local_unnamed_addr #0 align 64 {
entry:
  %index = alloca i32, align 4
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
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
  %delay_write3 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #5
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #5
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %offset, align 4
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 7
  %6 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %err_code2.i, align 1
  %cleanup_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 12
  %7 = ptrtoint ptr %cleanup_counter to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %cleanup_counter, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_rw.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_rw, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 0, i32 1
  %12 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nents.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_rw.__UNIQUE_ID_ddebug331, ptr noundef %dev.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %13) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17
  %14 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdb.i, align 4
  %call.i = tail call i32 @select_card(ptr noundef %chip, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %do.end
  %xd_clock.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 13
  %16 = ptrtoint ptr %xd_clock.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xd_clock.i, align 4
  %asic_code.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %18 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %17) #5
  br label %xd_switch_clock.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %17) #5
  br label %xd_switch_clock.exit

xd_switch_clock.exit:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval1.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i)
  %cmp4.not.i.not = icmp eq i32 %retval1.0.i.i, 0
  br i1 %cmp4.not.i.not, label %if.end13, label %xd_switch_clock.exit.cleanup_crit_edge

xd_switch_clock.exit.cleanup_crit_edge:           ; preds = %xd_switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %xd_switch_clock.exit
  %call14 = tail call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end20, label %if.then17

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %card_fail = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 22
  %20 = ptrtoint ptr %card_fail to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %card_fail, align 1
  %22 = or i8 %21, 16
  store i8 %22, ptr %card_fail, align 1
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 2) #5
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %block_shift = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 2
  %23 = ptrtoint ptr %block_shift to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %block_shift, align 2
  %conv21 = zext i8 %24 to i32
  %shr = lshr i32 %start_sector, %conv21
  %page_off = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 3
  %25 = ptrtoint ptr %page_off to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %page_off, align 1
  %27 = trunc i32 %start_sector to i8
  %conv25 = and i8 %26, %27
  %shr.frozen = freeze i32 %shr
  %div = udiv i32 %shr.frozen, 1000
  %28 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %shr.frozen, %28
  %conv26 = trunc i32 %rem.decomposed to i16
  %zone = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 9
  %29 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %zone, align 4
  %build_flag = getelementptr %struct.zone_entry, ptr %30, i32 %div, i32 7
  %31 = ptrtoint ptr %build_flag to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %build_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp27 = icmp eq i32 %32, 0
  br i1 %cmp27, label %if.then29, label %if.end20.if.end39_crit_edge

if.end20.if.end39_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then29:                                        ; preds = %if.end20
  %call30 = tail call fastcc i32 @xd_build_l2p_tbl(ptr noundef %chip, i32 noundef %div)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, 0
  br i1 %cmp31.not, label %if.then29.if.end39_crit_edge, label %if.then33

if.then29.if.end39_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then33:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  %card_fail34 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 22
  %33 = ptrtoint ptr %card_fail34 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %card_fail34, align 1
  %35 = or i8 %34, 16
  store i8 %35, ptr %card_fail34, align 1
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 2) #5
  br label %cleanup

if.end39:                                         ; preds = %if.then29.if.end39_crit_edge, %if.end20.if.end39_crit_edge
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 15
  %36 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp40 = icmp eq i32 %37, 1
  br i1 %cmp40, label %if.then42, label %if.else110

if.then42:                                        ; preds = %if.end39
  %delay_write_flag = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 11, i32 4
  %38 = ptrtoint ptr %delay_write_flag to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %delay_write_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool44.not = icmp eq i8 %39, 0
  br i1 %tobool44.not, label %if.then42.if.else84_crit_edge, label %land.lhs.true

if.then42.if.else84_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else84

land.lhs.true:                                    ; preds = %if.then42
  %logblock = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 11, i32 2
  %40 = ptrtoint ptr %logblock to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %logblock, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %shr)
  %cmp45 = icmp eq i32 %41, %shr
  br i1 %cmp45, label %land.lhs.true47, label %land.lhs.true.land.lhs.true70_crit_edge

land.lhs.true.land.lhs.true70_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true70

land.lhs.true47:                                  ; preds = %land.lhs.true
  %pageoff = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 11, i32 3
  %42 = ptrtoint ptr %pageoff to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pageoff, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %conv25, i8 %43)
  %cmp50 = icmp ugt i8 %conv25, %43
  br i1 %cmp50, label %if.then52, label %land.lhs.true47.land.lhs.true70_crit_edge

land.lhs.true47.land.lhs.true70_crit_edge:        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true70

if.then52:                                        ; preds = %land.lhs.true47
  %44 = ptrtoint ptr %delay_write_flag to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %delay_write_flag, align 1
  %45 = ptrtoint ptr %delay_write3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %delay_write3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %cmp54.not = icmp eq i32 %46, -1
  br i1 %cmp54.not, label %if.then52.do.body127.sink.split_crit_edge, label %if.then56

if.then52.do.body127.sink.split_crit_edge:        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body127.sink.split

if.then56:                                        ; preds = %if.then52
  %new_phyblock = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 11, i32 1
  %47 = ptrtoint ptr %new_phyblock to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %new_phyblock, align 4
  %call59 = tail call fastcc i32 @xd_copy_page(ptr noundef %chip, i32 noundef %46, i32 noundef %48, i8 noundef zeroext %43, i8 noundef zeroext %conv25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60.not = icmp eq i32 %call59, 0
  br i1 %cmp60.not, label %if.then56.do.body127.sink.split_crit_edge, label %if.then62

if.then56.do.body127.sink.split_crit_edge:        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body127.sink.split

if.then62:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 8) #5
  br label %cleanup

land.lhs.true70:                                  ; preds = %land.lhs.true47.land.lhs.true70_crit_edge, %land.lhs.true.land.lhs.true70_crit_edge
  %49 = ptrtoint ptr %logblock to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %logblock, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %shr)
  %cmp72 = icmp eq i32 %50, %shr
  br i1 %cmp72, label %land.lhs.true74, label %land.lhs.true70.if.else84_crit_edge

land.lhs.true70.if.else84_crit_edge:              ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else84

land.lhs.true74:                                  ; preds = %land.lhs.true70
  %pageoff76 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 11, i32 3
  %51 = ptrtoint ptr %pageoff76 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %pageoff76, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %conv25, i8 %52)
  %cmp78 = icmp eq i8 %conv25, %52
  br i1 %cmp78, label %if.then80, label %land.lhs.true74.if.else84_crit_edge

land.lhs.true74.if.else84_crit_edge:              ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else84

if.then80:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %delay_write_flag to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %delay_write_flag, align 1
  br label %do.body127.sink.split

if.else84:                                        ; preds = %land.lhs.true74.if.else84_crit_edge, %land.lhs.true70.if.else84_crit_edge, %if.then42.if.else84_crit_edge
  %call85 = tail call i32 @xd_delay_write(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86.not = icmp eq i32 %call85, 0
  br i1 %cmp86.not, label %if.end89, label %if.then88

if.then88:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 8) #5
  br label %cleanup

if.end89:                                         ; preds = %if.else84
  %call90 = tail call fastcc i32 @xd_get_l2p_tbl(ptr noundef %chip, i32 noundef %div, i16 noundef zeroext %conv26)
  %call91 = tail call fastcc i32 @xd_get_unused_block(ptr noundef %chip, i32 noundef %div)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call90)
  %cmp92 = icmp eq i32 %call90, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call91)
  %cmp94 = icmp eq i32 %call91, -1
  %or.cond = select i1 %cmp92, i1 true, i1 %cmp94
  br i1 %or.cond, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 8) #5
  br label %cleanup

if.end97:                                         ; preds = %if.end89
  %call98 = tail call fastcc i32 @xd_prepare_write(ptr noundef %chip, i32 noundef %call90, i32 noundef %call91, i32 noundef %shr, i8 noundef zeroext %conv25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99.not = icmp eq i32 %call98, 0
  br i1 %cmp99.not, label %if.end97.do.body127_crit_edge, label %if.then101

if.end97.do.body127_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body127

if.then101:                                       ; preds = %if.end97
  %call102 = tail call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103.not = icmp eq i32 %call102, 0
  br i1 %cmp103.not, label %if.end106, label %if.then105

if.then105:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 2) #5
  br label %cleanup

if.end106:                                        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 8) #5
  br label %cleanup

if.else110:                                       ; preds = %if.end39
  %call111 = tail call i32 @xd_delay_write(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp112.not = icmp eq i32 %call111, 0
  br i1 %cmp112.not, label %if.end120, label %if.then114

if.then114:                                       ; preds = %if.else110
  %call115 = tail call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116.not = icmp eq i32 %call115, 0
  br i1 %cmp116.not, label %if.end119, label %if.then118

if.then118:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 2) #5
  br label %cleanup

if.end119:                                        ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 7) #5
  br label %cleanup

if.end120:                                        ; preds = %if.else110
  %call121 = tail call fastcc i32 @xd_get_l2p_tbl(ptr noundef %chip, i32 noundef %div, i16 noundef zeroext %conv26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call121)
  %cmp122 = icmp eq i32 %call121, -1
  br i1 %cmp122, label %if.then124, label %if.end120.do.body127_crit_edge

if.end120.do.body127_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body127

if.then124:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 7) #5
  br label %cleanup

do.body127.sink.split:                            ; preds = %if.then80, %if.then56.do.body127.sink.split_crit_edge, %if.then52.do.body127.sink.split_crit_edge
  %54 = ptrtoint ptr %delay_write3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %delay_write3, align 4
  %new_phyblock83 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 11, i32 1
  %56 = ptrtoint ptr %new_phyblock83 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %new_phyblock83, align 4
  br label %do.body127

do.body127:                                       ; preds = %do.body127.sink.split, %if.end120.do.body127_crit_edge, %if.end97.do.body127_crit_edge
  %old_blk.0 = phi i32 [ %call90, %if.end97.do.body127_crit_edge ], [ %call121, %if.end120.do.body127_crit_edge ], [ %55, %do.body127.sink.split ]
  %new_blk.0 = phi i32 [ %call91, %if.end97.do.body127_crit_edge ], [ 0, %if.end120.do.body127_crit_edge ], [ %57, %do.body127.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_rw.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_rw, %if.then139)) #5
          to label %do.end143 [label %if.then139], !srcloc !166

if.then139:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chip, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %dev.i437 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_rw.__UNIQUE_ID_ddebug332, ptr noundef %dev.i437, ptr noundef nonnull @.str.4, i32 noundef %old_blk.0) #5
  br label %do.end143

do.end143:                                        ; preds = %if.then139, %do.body127
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sector_cnt)
  %tobool144.not461 = icmp eq i16 %sector_cnt, 0
  br i1 %tobool144.not461, label %do.end143.while.end_crit_edge, label %while.body.lr.ph

do.end143.while.end_crit_edge:                    ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end143
  %nents.i438 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 0, i32 1
  %call145527 = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145527)
  %cmp146.not528 = icmp eq i32 %call145527, 0
  br i1 %cmp146.not528, label %while.body.lr.ph.if.end153_crit_edge, label %while.body.lr.ph.if.then148_crit_edge

while.body.lr.ph.if.then148_crit_edge:            ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then148

while.body.lr.ph.if.end153_crit_edge:             ; preds = %while.body.lr.ph
  br label %if.end153

if.then148:                                       ; preds = %if.end246.if.then148_crit_edge, %while.body.lr.ph.if.then148_crit_edge
  %card_fail149 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 22
  %62 = ptrtoint ptr %card_fail149 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %card_fail149, align 1
  %64 = or i8 %63, 16
  store i8 %64, ptr %card_fail149, align 1
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 2) #5
  br label %cleanup

if.end153:                                        ; preds = %if.end246.if.end153_crit_edge, %while.body.lr.ph.if.end153_crit_edge
  %log_blk.0462535 = phi i32 [ %inc, %if.end246.if.end153_crit_edge ], [ %shr, %while.body.lr.ph.if.end153_crit_edge ]
  %old_blk.1463534 = phi i32 [ %call226, %if.end246.if.end153_crit_edge ], [ %old_blk.0, %while.body.lr.ph.if.end153_crit_edge ]
  %new_blk.1464533 = phi i32 [ %new_blk.2, %if.end246.if.end153_crit_edge ], [ %new_blk.0, %while.body.lr.ph.if.end153_crit_edge ]
  %total_sec_cnt.0465532 = phi i16 [ %conv195, %if.end246.if.end153_crit_edge ], [ %sector_cnt, %while.body.lr.ph.if.end153_crit_edge ]
  %start_page.0466531 = phi i8 [ 0, %if.end246.if.end153_crit_edge ], [ %conv25, %while.body.lr.ph.if.end153_crit_edge ]
  %ptr.0467529 = phi ptr [ %ptr.1, %if.end246.if.end153_crit_edge ], [ %15, %while.body.lr.ph.if.end153_crit_edge ]
  %conv154 = zext i8 %start_page.0466531 to i32
  %conv155 = zext i16 %total_sec_cnt.0465532 to i32
  %add = add nuw nsw i32 %conv154, %conv155
  %65 = ptrtoint ptr %page_off to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %page_off, align 1
  %conv157 = zext i8 %66 to i32
  %add158 = add nuw nsw i32 %conv157, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add158)
  %cmp159 = icmp ugt i32 %add, %add158
  %conv165 = trunc i32 %add158 to i8
  %conv169 = trunc i16 %total_sec_cnt.0465532 to i8
  %add170 = add i8 %start_page.0466531, %conv169
  %end_page.1 = select i1 %cmp159, i8 %conv165, i8 %add170
  %sub = sub i8 %end_page.1, %start_page.0466531
  %67 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp177 = icmp eq i32 %68, 2
  br i1 %cmp177, label %if.then179, label %if.else185

if.then179:                                       ; preds = %if.end153
  %call180 = call fastcc i32 @xd_read_multiple_pages(ptr noundef %chip, i32 noundef %old_blk.1463534, i32 noundef %log_blk.0462535, i8 noundef zeroext %start_page.0466531, i8 noundef zeroext %end_page.1, ptr noundef %ptr.0467529, ptr noundef nonnull %index, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %cmp181.not = icmp eq i32 %call180, 0
  br i1 %cmp181.not, label %if.then179.if.end191_crit_edge, label %if.then183

if.then179.if.end191_crit_edge:                   ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end191

if.then183:                                       ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #7
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 7) #5
  br label %cleanup

if.else185:                                       ; preds = %if.end153
  %call186 = call fastcc i32 @xd_write_multiple_pages(ptr noundef %chip, i32 noundef %old_blk.1463534, i32 noundef %new_blk.1464533, i32 noundef %log_blk.0462535, i8 noundef zeroext %start_page.0466531, i8 noundef zeroext %end_page.1, ptr noundef %ptr.0467529, ptr noundef nonnull %index, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %cmp187.not = icmp eq i32 %call186, 0
  br i1 %cmp187.not, label %if.else185.if.end191_crit_edge, label %if.then189

if.else185.if.end191_crit_edge:                   ; preds = %if.else185
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end191

if.then189:                                       ; preds = %if.else185
  call void @__sanitizer_cov_trace_pc() #7
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 8) #5
  br label %cleanup

if.end191:                                        ; preds = %if.else185.if.end191_crit_edge, %if.then179.if.end191_crit_edge
  %69 = zext i8 %sub to i16
  %conv195 = sub i16 %total_sec_cnt.0465532, %69
  %70 = ptrtoint ptr %nents.i438 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nents.i438, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp197 = icmp eq i32 %71, 0
  %conv192 = zext i8 %sub to i32
  %mul = shl nuw nsw i32 %conv192, 9
  %ptr.1.idx = select i1 %cmp197, i32 %mul, i32 0
  %ptr.1 = getelementptr i8, ptr %ptr.0467529, i32 %ptr.1.idx
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv195)
  %cmp203 = icmp eq i16 %conv195, 0
  br i1 %cmp203, label %if.end191.while.end_crit_edge, label %if.end206

if.end191.while.end_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end206:                                        ; preds = %if.end191
  %inc = add i32 %log_blk.0462535, 1
  %inc.frozen = freeze i32 %inc
  %div207 = udiv i32 %inc.frozen, 1000
  %72 = mul i32 %div207, 1000
  %rem208.decomposed = sub i32 %inc.frozen, %72
  %conv209 = trunc i32 %rem208.decomposed to i16
  %73 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %zone, align 4
  %build_flag212 = getelementptr %struct.zone_entry, ptr %74, i32 %div207, i32 7
  %75 = ptrtoint ptr %build_flag212 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %build_flag212, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp213 = icmp eq i32 %76, 0
  br i1 %cmp213, label %if.then215, label %if.end206.if.end225_crit_edge

if.end206.if.end225_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end225

if.then215:                                       ; preds = %if.end206
  %call216 = call fastcc i32 @xd_build_l2p_tbl(ptr noundef %chip, i32 noundef %div207)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %cmp217.not = icmp eq i32 %call216, 0
  br i1 %cmp217.not, label %if.then215.if.end225_crit_edge, label %if.then219

if.then215.if.end225_crit_edge:                   ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end225

if.then219:                                       ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #7
  %card_fail220 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 22
  %77 = ptrtoint ptr %card_fail220 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %card_fail220, align 1
  %79 = or i8 %78, 16
  store i8 %79, ptr %card_fail220, align 1
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 2) #5
  br label %cleanup

if.end225:                                        ; preds = %if.then215.if.end225_crit_edge, %if.end206.if.end225_crit_edge
  %call226 = call fastcc i32 @xd_get_l2p_tbl(ptr noundef %chip, i32 noundef %div207, i16 noundef zeroext %conv209)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call226)
  %cmp227 = icmp eq i32 %call226, -1
  %80 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sc_data_direction, align 4
  br i1 %cmp227, label %if.then229, label %if.end236

if.then229:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %81)
  %cmp231 = icmp eq i32 %81, 2
  br i1 %cmp231, label %if.then233, label %if.else234

if.then233:                                       ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #7
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 7) #5
  br label %cleanup

if.else234:                                       ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #7
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 8) #5
  br label %cleanup

if.end236:                                        ; preds = %if.end225
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp238 = icmp eq i32 %81, 1
  br i1 %cmp238, label %if.then240, label %if.end236.if.end246_crit_edge

if.end236.if.end246_crit_edge:                    ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end246

if.then240:                                       ; preds = %if.end236
  %call241 = call fastcc i32 @xd_get_unused_block(ptr noundef %chip, i32 noundef %div207)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call241)
  %cmp242 = icmp eq i32 %call241, -1
  br i1 %cmp242, label %if.then244, label %if.then240.if.end246_crit_edge

if.then240.if.end246_crit_edge:                   ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end246

if.then244:                                       ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #7
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 8) #5
  br label %cleanup

if.end246:                                        ; preds = %if.then240.if.end246_crit_edge, %if.end236.if.end246_crit_edge
  %new_blk.2 = phi i32 [ %call241, %if.then240.if.end246_crit_edge ], [ %new_blk.1464533, %if.end236.if.end246_crit_edge ]
  %call145 = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 16) #5
  %cmp146.not = icmp eq i32 %call145, 0
  br i1 %cmp146.not, label %if.end246.if.end153_crit_edge, label %if.end246.if.then148_crit_edge

if.end246.if.then148_crit_edge:                   ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then148

if.end246.if.end153_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end153

while.end:                                        ; preds = %if.end191.while.end_crit_edge, %do.end143.while.end_crit_edge
  %log_blk.0.lcssa = phi i32 [ %shr, %do.end143.while.end_crit_edge ], [ %log_blk.0462535, %if.end191.while.end_crit_edge ]
  %old_blk.1.lcssa = phi i32 [ %old_blk.0, %do.end143.while.end_crit_edge ], [ %old_blk.1463534, %if.end191.while.end_crit_edge ]
  %new_blk.1.lcssa = phi i32 [ %new_blk.0, %do.end143.while.end_crit_edge ], [ %new_blk.1464533, %if.end191.while.end_crit_edge ]
  %end_page.2 = phi i8 [ 0, %do.end143.while.end_crit_edge ], [ %end_page.1, %if.end191.while.end_crit_edge ]
  %82 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp248 = icmp eq i32 %83, 1
  br i1 %cmp248, label %land.lhs.true250, label %while.end.if.end263_crit_edge

while.end.if.end263_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end263

land.lhs.true250:                                 ; preds = %while.end
  %conv251 = zext i8 %end_page.2 to i32
  %84 = ptrtoint ptr %page_off to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %page_off, align 1
  %conv253 = zext i8 %85 to i32
  %add254 = add nuw nsw i32 %conv253, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add254, i32 %conv251)
  %cmp255.not = icmp eq i32 %add254, %conv251
  br i1 %cmp255.not, label %land.lhs.true250.if.end263_crit_edge, label %if.then257

land.lhs.true250.if.end263_crit_edge:             ; preds = %land.lhs.true250
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end263

if.then257:                                       ; preds = %land.lhs.true250
  call void @__sanitizer_cov_trace_pc() #7
  %delay_write_flag258 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 11, i32 4
  %86 = ptrtoint ptr %delay_write_flag258 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %delay_write_flag258, align 1
  %87 = ptrtoint ptr %delay_write3 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %old_blk.1.lcssa, ptr %delay_write3, align 4
  %new_phyblock260 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 11, i32 1
  %88 = ptrtoint ptr %new_phyblock260 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %new_blk.1.lcssa, ptr %new_phyblock260, align 4
  %logblock261 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 11, i32 2
  %89 = ptrtoint ptr %logblock261 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %log_blk.0.lcssa, ptr %logblock261, align 4
  %pageoff262 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 11, i32 3
  %90 = ptrtoint ptr %pageoff262 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %end_page.2, ptr %pageoff262, align 4
  br label %if.end263

if.end263:                                        ; preds = %if.then257, %land.lhs.true250.if.end263_crit_edge, %while.end.if.end263_crit_edge
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %91 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %resid_len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end263, %if.then244, %if.else234, %if.then233, %if.then219, %if.then189, %if.then183, %if.then148, %if.then124, %if.end119, %if.then118, %if.end106, %if.then105, %if.then96, %if.then88, %if.then62, %if.then33, %if.then17, %xd_switch_clock.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then17 ], [ 1, %if.then33 ], [ 1, %if.then62 ], [ 1, %if.then148 ], [ 1, %if.then183 ], [ 0, %if.end263 ], [ 1, %if.then219 ], [ 1, %if.then244 ], [ 1, %if.then189 ], [ 1, %if.then88 ], [ 1, %if.then96 ], [ 1, %if.then105 ], [ 1, %if.end106 ], [ 1, %if.then118 ], [ 1, %if.end119 ], [ 1, %if.then124 ], [ 1, %xd_switch_clock.exit.cleanup_crit_edge ], [ 1, %if.else234 ], [ 1, %if.then233 ], [ 1, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @detect_card_cd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_sense_type(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xd_build_l2p_tbl(ptr noundef %chip, i32 noundef %zone_no) unnamed_addr #0 align 64 {
entry:
  %redunt = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %redunt) #5
  %0 = getelementptr inbounds [11 x i8], ptr %redunt, i32 0, i32 1
  %1 = getelementptr inbounds [11 x i8], ptr %redunt, i32 0, i32 2
  %2 = getelementptr inbounds [11 x i8], ptr %redunt, i32 0, i32 3
  %3 = getelementptr inbounds [11 x i8], ptr %redunt, i32 0, i32 4
  %4 = getelementptr inbounds [11 x i8], ptr %redunt, i32 0, i32 5
  %5 = getelementptr inbounds [11 x i8], ptr %redunt, i32 0, i32 6
  %6 = getelementptr inbounds [11 x i8], ptr %redunt, i32 0, i32 7
  %7 = getelementptr inbounds [11 x i8], ptr %redunt, i32 0, i32 8
  %8 = getelementptr inbounds [11 x i8], ptr %redunt, i32 0, i32 9
  %9 = getelementptr inbounds [11 x i8], ptr %redunt, i32 0, i32 10
  %10 = call ptr @memset(ptr %redunt, i32 255, i32 11)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_build_l2p_tbl.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_build_l2p_tbl, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_build_l2p_tbl.__UNIQUE_ID_ddebug318, ptr noundef %dev.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, i32 noundef %zone_no) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %zone6 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 9
  %15 = ptrtoint ptr %zone6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %zone6, align 4
  %tobool7.not = icmp eq ptr %16, null
  br i1 %tobool7.not, label %if.then8, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then8:                                         ; preds = %do.end
  %call9 = tail call fastcc i32 @xd_init_l2p_tbl(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 0
  br i1 %cmp.not, label %if.then8.if.end12_crit_edge, label %if.then8.cleanup348_crit_edge

if.then8.cleanup348_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup348

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end12:                                         ; preds = %if.then8.if.end12_crit_edge, %do.end.if.end12_crit_edge
  %17 = ptrtoint ptr %zone6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %zone6, align 4
  %arrayidx = getelementptr %struct.zone_entry, ptr %18, i32 %zone_no
  %build_flag = getelementptr %struct.zone_entry, ptr %18, i32 %zone_no, i32 7
  %19 = ptrtoint ptr %build_flag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %build_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool14.not = icmp eq i32 %20, 0
  br i1 %tobool14.not, label %if.end33, label %do.body16

do.body16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_build_l2p_tbl.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_build_l2p_tbl, %if.then28)) #5
          to label %cleanup348 [label %if.then28], !srcloc !166

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %dev.i496 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_build_l2p_tbl.__UNIQUE_ID_ddebug319, ptr noundef %dev.i496, ptr noundef nonnull @.str.37, i32 noundef %zone_no) #5
  br label %cleanup348

if.end33:                                         ; preds = %if.end12
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %tobool36.not = icmp eq ptr %26, null
  br i1 %tobool36.not, label %if.then37, label %if.end33.if.end44_crit_edge

if.end33.if.end44_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then37:                                        ; preds = %if.end33
  %call38 = tail call noalias ptr @vmalloc(i32 noundef 2000) #8
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call38, ptr %arrayidx, align 4
  %tobool41.not = icmp eq ptr %call38, null
  br i1 %tobool41.not, label %if.then37.build_fail_crit_edge, label %if.then37.if.end44_crit_edge

if.then37.if.end44_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then37.build_fail_crit_edge:                   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  br label %build_fail

if.end44:                                         ; preds = %if.then37.if.end44_crit_edge, %if.end33.if.end44_crit_edge
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %30 = call ptr @memset(ptr %29, i32 255, i32 2000)
  %free_table = getelementptr %struct.zone_entry, ptr %18, i32 %zone_no, i32 1
  %31 = ptrtoint ptr %free_table to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %free_table, align 4
  %tobool46.not = icmp eq ptr %32, null
  br i1 %tobool46.not, label %if.then47, label %if.end44.if.end54_crit_edge

if.end44.if.end54_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

if.then47:                                        ; preds = %if.end44
  %call48 = tail call noalias ptr @vmalloc(i32 noundef 2400) #8
  %33 = ptrtoint ptr %free_table to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call48, ptr %free_table, align 4
  %tobool51.not = icmp eq ptr %call48, null
  br i1 %tobool51.not, label %if.then47.build_fail_crit_edge, label %if.then47.if.end54_crit_edge

if.then47.if.end54_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

if.then47.build_fail_crit_edge:                   ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  br label %build_fail

if.end54:                                         ; preds = %if.then47.if.end54_crit_edge, %if.end44.if.end54_crit_edge
  %34 = ptrtoint ptr %free_table to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %free_table, align 4
  %36 = call ptr @memset(ptr %35, i32 255, i32 2400)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zone_no)
  %cmp56 = icmp eq i32 %zone_no, 0
  br i1 %cmp56, label %if.then57, label %if.else69

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %cis_block = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 5
  %37 = ptrtoint ptr %cis_block to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %cis_block, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %38)
  %cmp58 = icmp eq i16 %38, -1
  %conv = zext i16 %38 to i32
  %add = add nuw nsw i32 %conv, 1
  %start.0 = select i1 %cmp58, i32 0, i32 %add
  %multi_flag = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 6
  %39 = ptrtoint ptr %multi_flag to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %multi_flag, align 4
  %41 = and i8 %40, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool65.not = icmp eq i8 %41, 0
  %spec.select476 = select i1 %tobool65.not, i32 999, i32 499
  %spec.select477 = select i1 %tobool65.not, i32 1024, i32 512
  br label %do.body73

if.else69:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl i32 %zone_no, 10
  %shl71 = add i32 %shl, 1024
  br label %do.body73

do.body73:                                        ; preds = %if.else69, %if.then57
  %max_logoff.0 = phi i32 [ 999, %if.else69 ], [ %spec.select476, %if.then57 ]
  %end.0 = phi i32 [ %shl71, %if.else69 ], [ %spec.select477, %if.then57 ]
  %start.1 = phi i32 [ %shl, %if.else69 ], [ %start.0, %if.then57 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_build_l2p_tbl.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_build_l2p_tbl, %if.then85)) #5
          to label %do.end89 [label %if.then85], !srcloc !166

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chip, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %dev.i497 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_build_l2p_tbl.__UNIQUE_ID_ddebug320, ptr noundef %dev.i497, ptr noundef nonnull @.str.38, i32 noundef %start.1, i32 noundef %end.0) #5
  br label %do.end89

do.end89:                                         ; preds = %if.then85, %do.body73
  %set_index = getelementptr %struct.zone_entry, ptr %18, i32 %zone_no, i32 3
  %46 = ptrtoint ptr %set_index to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %set_index, align 4
  %get_index = getelementptr %struct.zone_entry, ptr %18, i32 %zone_no, i32 4
  %47 = ptrtoint ptr %get_index to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %get_index, align 4
  %unused_blk_cnt = getelementptr %struct.zone_entry, ptr %18, i32 %zone_no, i32 5
  %48 = ptrtoint ptr %unused_blk_cnt to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %unused_blk_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %start.1, i32 %end.0)
  %cmp90552 = icmp ult i32 %start.1, %end.0
  br i1 %cmp90552, label %for.body.lr.ph, label %do.end89.for.end276_crit_edge

do.end89.for.end276_crit_edge:                    ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end276

for.body.lr.ph:                                   ; preds = %do.end89
  %block_shift = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 2
  %not.cmp56 = xor i1 %cmp56, true
  %multi_flag171 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 6
  %shl191 = shl i32 %zone_no, 10
  br label %for.body

for.body:                                         ; preds = %cleanup270.for.body_crit_edge, %for.body.lr.ph
  %i.0553 = phi i32 [ %start.1, %for.body.lr.ph ], [ %inc275, %cleanup270.for.body_crit_edge ]
  %49 = ptrtoint ptr %block_shift to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %block_shift, align 2
  %conv92 = zext i8 %50 to i32
  %shl93 = shl i32 %i.0553, %conv92
  %call94 = call fastcc i32 @xd_read_redundant(ptr noundef %chip, i32 noundef %shl93, ptr noundef nonnull %redunt, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95.not = icmp eq i32 %call94, 0
  br i1 %cmp95.not, label %if.end98, label %for.body.cleanup270_crit_edge

for.body.cleanup270_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup270

if.end98:                                         ; preds = %for.body
  %51 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %52)
  %cmp101.not = icmp eq i8 %52, -1
  br i1 %cmp101.not, label %if.end121, label %do.body104

do.body104:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_build_l2p_tbl.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_build_l2p_tbl, %if.then116)) #5
          to label %cleanup270 [label %if.then116], !srcloc !166

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chip, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %dev.i498 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_build_l2p_tbl.__UNIQUE_ID_ddebug321, ptr noundef %dev.i498, ptr noundef nonnull @.str.39) #5
  br label %cleanup270

if.end121:                                        ; preds = %if.end98
  %57 = ptrtoint ptr %redunt to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %redunt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %58)
  %cmp1.not.i = icmp eq i8 %58, -1
  br i1 %cmp1.not.i, label %for.cond.i, label %if.end121.if.end143_crit_edge

if.end121.if.end143_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end143

for.cond.i:                                       ; preds = %if.end121
  %59 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %60)
  %cmp1.not.1.i = icmp eq i8 %60, -1
  br i1 %cmp1.not.1.i, label %for.cond.1.i, label %for.cond.i.if.end143_crit_edge

for.cond.i.if.end143_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end143

for.cond.1.i:                                     ; preds = %for.cond.i
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %62)
  %cmp1.not.2.i = icmp eq i8 %62, -1
  br i1 %cmp1.not.2.i, label %for.cond.2.i, label %for.cond.1.i.if.end143_crit_edge

for.cond.1.i.if.end143_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end143

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %63 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %64)
  %cmp1.not.3.i = icmp eq i8 %64, -1
  br i1 %cmp1.not.3.i, label %for.cond.3.i, label %for.cond.2.i.if.end143_crit_edge

for.cond.2.i.if.end143_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end143

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %66)
  %cmp1.not.4.i = icmp eq i8 %66, -1
  br i1 %cmp1.not.4.i, label %for.cond.4.i, label %for.cond.3.i.if.end143_crit_edge

for.cond.3.i.if.end143_crit_edge:                 ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end143

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %67 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %68)
  %cmp1.not.5.i = icmp eq i8 %68, -1
  br i1 %cmp1.not.5.i, label %for.cond.5.i, label %for.cond.4.i.if.end143_crit_edge

for.cond.4.i.if.end143_crit_edge:                 ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end143

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %69 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %70)
  %cmp5.not.i = icmp ugt i8 %70, -65
  br i1 %cmp5.not.i, label %for.body12.preheader.i, label %for.cond.5.i.if.end143_crit_edge

for.cond.5.i.if.end143_crit_edge:                 ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end143

for.body12.preheader.i:                           ; preds = %for.cond.5.i
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %72)
  %cmp16.not.i = icmp eq i8 %72, -1
  br i1 %cmp16.not.i, label %for.cond9.i, label %for.body12.preheader.i.if.end143_crit_edge

for.body12.preheader.i.if.end143_crit_edge:       ; preds = %for.body12.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end143

for.cond9.i:                                      ; preds = %for.body12.preheader.i
  %73 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %74)
  %cmp16.not.1.i = icmp eq i8 %74, -1
  br i1 %cmp16.not.1.i, label %for.cond9.1.i, label %for.cond9.i.if.end143_crit_edge

for.cond9.i.if.end143_crit_edge:                  ; preds = %for.cond9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end143

for.cond9.1.i:                                    ; preds = %for.cond9.i
  %75 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %76)
  %cmp16.not.2.i = icmp eq i8 %76, -1
  br i1 %cmp16.not.2.i, label %xd_check_data_blank.exit, label %for.cond9.1.i.if.end143_crit_edge

for.cond9.1.i.if.end143_crit_edge:                ; preds = %for.cond9.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end143

xd_check_data_blank.exit:                         ; preds = %for.cond9.1.i
  %77 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %78)
  %cmp16.not.3.i.not = icmp eq i8 %78, -1
  br i1 %cmp16.not.3.i.not, label %do.body126, label %xd_check_data_blank.exit.if.end143_crit_edge

xd_check_data_blank.exit.if.end143_crit_edge:     ; preds = %xd_check_data_blank.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end143

do.body126:                                       ; preds = %xd_check_data_blank.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_build_l2p_tbl.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_build_l2p_tbl, %if.then138)) #5
          to label %do.end142 [label %if.then138], !srcloc !166

if.then138:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #7
  %79 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %chip, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %dev.i500 = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_build_l2p_tbl.__UNIQUE_ID_ddebug322, ptr noundef %dev.i500, ptr noundef nonnull @.str.40) #5
  br label %do.end142

do.end142:                                        ; preds = %if.then138, %do.body126
  call fastcc void @xd_set_unused_block(ptr noundef %chip, i32 noundef %i.0553)
  br label %cleanup270

if.end143:                                        ; preds = %xd_check_data_blank.exit.if.end143_crit_edge, %for.cond9.1.i.if.end143_crit_edge, %for.cond9.i.if.end143_crit_edge, %for.body12.preheader.i.if.end143_crit_edge, %for.cond.5.i.if.end143_crit_edge, %for.cond.4.i.if.end143_crit_edge, %for.cond.3.i.if.end143_crit_edge, %for.cond.2.i.if.end143_crit_edge, %for.cond.1.i.if.end143_crit_edge, %for.cond.i.if.end143_crit_edge, %if.end121.if.end143_crit_edge
  %83 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %9, align 1
  %conv.i = zext i8 %84 to i32
  %85 = and i32 %conv.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %if.else20.i, label %if.end143.xd_load_log_block_addr.exit_crit_edge

if.end143.xd_load_log_block_addr.exit_crit_edge:  ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #7
  br label %xd_load_log_block_addr.exit

if.else20.i:                                      ; preds = %if.end143
  %and23.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.else20.i.if.then153_crit_edge, label %if.else20.i.xd_load_log_block_addr.exit_crit_edge

if.else20.i.xd_load_log_block_addr.exit_crit_edge: ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xd_load_log_block_addr.exit

if.else20.i.if.then153_crit_edge:                 ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then153

xd_load_log_block_addr.exit:                      ; preds = %if.else20.i.xd_load_log_block_addr.exit_crit_edge, %if.end143.xd_load_log_block_addr.exit_crit_edge
  %.sink45.i = phi i32 [ 3, %if.end143.xd_load_log_block_addr.exit_crit_edge ], [ 5, %if.else20.i.xd_load_log_block_addr.exit_crit_edge ]
  %.sink.i = phi i32 [ 2, %if.end143.xd_load_log_block_addr.exit_crit_edge ], [ 4, %if.else20.i.xd_load_log_block_addr.exit_crit_edge ]
  %arrayidx12.i = getelementptr i8, ptr %redunt, i32 %.sink45.i
  %87 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx12.i, align 1
  %conv14.i = zext i8 %88 to i16
  %shl15.i = shl nuw i16 %conv14.i, 8
  %arrayidx16.i = getelementptr i8, ptr %redunt, i32 %.sink.i
  %89 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %90 to i16
  %or18.i = or i16 %shl15.i, %conv17.i
  %conv146 = zext i16 %or18.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %or18.i)
  %cmp147 = icmp eq i16 %or18.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %max_logoff.0, i32 %conv146)
  %cmp151 = icmp ult i32 %max_logoff.0, %conv146
  %or.cond = or i1 %cmp147, %cmp151
  br i1 %or.cond, label %xd_load_log_block_addr.exit.if.then153_crit_edge, label %if.end159

xd_load_log_block_addr.exit.if.then153_crit_edge: ; preds = %xd_load_log_block_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then153

if.then153:                                       ; preds = %xd_load_log_block_addr.exit.if.then153_crit_edge, %if.else20.i.if.then153_crit_edge
  %call154 = call fastcc i32 @xd_erase_block(ptr noundef %chip, i32 noundef %i.0553)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %cmp155 = icmp eq i32 %call154, 0
  br i1 %cmp155, label %if.then157, label %if.then153.cleanup270_crit_edge

if.then153.cleanup270_crit_edge:                  ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup270

if.then157:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @xd_set_unused_block(ptr noundef %chip, i32 noundef %i.0553)
  br label %cleanup270

if.end159:                                        ; preds = %xd_load_log_block_addr.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or18.i)
  %cmp163 = icmp ne i16 %or18.i, 0
  %or.cond472 = select i1 %not.cmp56, i1 true, i1 %cmp163
  %brmerge = select i1 %or.cond472, i1 true, i1 %cmp1.not.i
  br i1 %brmerge, label %if.end159.if.end174_crit_edge, label %if.then170

if.end159.if.end174_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end174

if.then170:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #7
  %91 = ptrtoint ptr %multi_flag171 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %multi_flag171, align 4
  %93 = or i8 %92, 4
  store i8 %93, ptr %multi_flag171, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.then170, %if.end159.if.end174_crit_edge
  %94 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx, align 4
  %arrayidx176 = getelementptr i16, ptr %95, i32 %conv146
  %96 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx176, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %97)
  %cmp178 = icmp eq i16 %97, -1
  br i1 %cmp178, label %if.then180, label %if.end186

if.then180:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #7
  %98 = trunc i32 %i.0553 to i16
  %conv182 = and i16 %98, 1023
  %99 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv182, ptr %arrayidx176, align 2
  br label %cleanup270

if.end186:                                        ; preds = %if.end174
  %conv177 = zext i16 %97 to i32
  %add192 = add i32 %shl191, %conv177
  %add193 = add nuw i32 %i.0553, 1
  %100 = ptrtoint ptr %block_shift to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %block_shift, align 2
  %conv195 = zext i8 %101 to i32
  %shl196 = shl i32 %add193, %conv195
  %sub = add i32 %shl196, -1
  %call198 = call fastcc i32 @xd_read_redundant(ptr noundef %chip, i32 noundef %sub, ptr noundef nonnull %redunt, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %cmp199.not = icmp eq i32 %call198, 0
  br i1 %cmp199.not, label %if.end202, label %if.end186.cleanup270_crit_edge

if.end186.cleanup270_crit_edge:                   ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup270

if.end202:                                        ; preds = %if.end186
  %102 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %9, align 1
  %conv.i502 = zext i8 %103 to i32
  %104 = and i32 %conv.i502, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %if.else20.i505, label %if.end202.if.end35.sink.split.i514_crit_edge

if.end202.if.end35.sink.split.i514_crit_edge:     ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.sink.split.i514

if.else20.i505:                                   ; preds = %if.end202
  %and23.i503 = and i32 %conv.i502, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i503)
  %tobool24.not.i504 = icmp eq i32 %and23.i503, 0
  br i1 %tobool24.not.i504, label %if.else20.i505.xd_load_log_block_addr.exit516_crit_edge, label %if.else20.i505.if.end35.sink.split.i514_crit_edge

if.else20.i505.if.end35.sink.split.i514_crit_edge: ; preds = %if.else20.i505
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.sink.split.i514

if.else20.i505.xd_load_log_block_addr.exit516_crit_edge: ; preds = %if.else20.i505
  call void @__sanitizer_cov_trace_pc() #7
  br label %xd_load_log_block_addr.exit516

if.end35.sink.split.i514:                         ; preds = %if.else20.i505.if.end35.sink.split.i514_crit_edge, %if.end202.if.end35.sink.split.i514_crit_edge
  %.sink45.i506 = phi i32 [ 3, %if.end202.if.end35.sink.split.i514_crit_edge ], [ 5, %if.else20.i505.if.end35.sink.split.i514_crit_edge ]
  %.sink.i507 = phi i32 [ 2, %if.end202.if.end35.sink.split.i514_crit_edge ], [ 4, %if.else20.i505.if.end35.sink.split.i514_crit_edge ]
  %arrayidx12.i508 = getelementptr i8, ptr %redunt, i32 %.sink45.i506
  %106 = ptrtoint ptr %arrayidx12.i508 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx12.i508, align 1
  %conv14.i509 = zext i8 %107 to i16
  %shl15.i510 = shl nuw i16 %conv14.i509, 8
  %arrayidx16.i511 = getelementptr i8, ptr %redunt, i32 %.sink.i507
  %108 = ptrtoint ptr %arrayidx16.i511 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx16.i511, align 1
  %conv17.i512 = zext i8 %109 to i16
  %or18.i513 = or i16 %shl15.i510, %conv17.i512
  br label %xd_load_log_block_addr.exit516

xd_load_log_block_addr.exit516:                   ; preds = %if.end35.sink.split.i514, %if.else20.i505.xd_load_log_block_addr.exit516_crit_edge
  %addr.0.i515 = phi i16 [ -1, %if.else20.i505.xd_load_log_block_addr.exit516_crit_edge ], [ %or18.i513, %if.end35.sink.split.i514 ]
  call void @__sanitizer_cov_trace_cmp2(i16 %addr.0.i515, i16 %or18.i)
  %cmp207 = icmp eq i16 %addr.0.i515, %or18.i
  br i1 %cmp207, label %if.then209, label %if.else263

if.then209:                                       ; preds = %xd_load_log_block_addr.exit516
  %add210 = add i32 %add192, 1
  %110 = ptrtoint ptr %block_shift to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %block_shift, align 2
  %conv212 = zext i8 %111 to i32
  %shl213 = shl i32 %add210, %conv212
  %sub214 = add i32 %shl213, -1
  %call220 = call fastcc i32 @xd_read_redundant(ptr noundef %chip, i32 noundef %sub214, ptr noundef nonnull %redunt, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %cmp221 = icmp eq i32 %call220, 0
  br i1 %cmp221, label %if.then209.if.end238_crit_edge, label %for.inc

if.then209.if.end238_crit_edge:                   ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end238

for.inc:                                          ; preds = %if.then209
  %call220.1 = call fastcc i32 @xd_read_redundant(ptr noundef %chip, i32 noundef %sub214, ptr noundef nonnull %redunt, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220.1)
  %cmp221.1 = icmp eq i32 %call220.1, 0
  br i1 %cmp221.1, label %for.inc.if.end238_crit_edge, label %for.inc.1

for.inc.if.end238_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end238

for.inc.1:                                        ; preds = %for.inc
  %call220.2 = call fastcc i32 @xd_read_redundant(ptr noundef %chip, i32 noundef %sub214, ptr noundef nonnull %redunt, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220.2)
  %cmp221.2 = icmp eq i32 %call220.2, 0
  br i1 %cmp221.2, label %for.inc.1.if.end238_crit_edge, label %if.then227

for.inc.1.if.end238_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end238

if.then227:                                       ; preds = %for.inc.1
  %112 = trunc i32 %i.0553 to i16
  %conv229 = and i16 %112, 1023
  %113 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx, align 4
  %arrayidx232 = getelementptr i16, ptr %114, i32 %conv146
  %115 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %conv229, ptr %arrayidx232, align 2
  %call233 = call fastcc i32 @xd_erase_block(ptr noundef %chip, i32 noundef %add192)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %cmp234 = icmp eq i32 %call233, 0
  br i1 %cmp234, label %if.then236, label %if.then227.cleanup270_crit_edge

if.then227.cleanup270_crit_edge:                  ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup270

if.then236:                                       ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @xd_set_unused_block(ptr noundef %chip, i32 noundef %add192)
  br label %cleanup270

if.end238:                                        ; preds = %for.inc.1.if.end238_crit_edge, %for.inc.if.end238_crit_edge, %if.then209.if.end238_crit_edge
  %116 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %9, align 1
  %conv.i518 = zext i8 %117 to i32
  %118 = and i32 %conv.i518, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %if.else20.i521, label %if.end238.if.end35.sink.split.i530_crit_edge

if.end238.if.end35.sink.split.i530_crit_edge:     ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.sink.split.i530

if.else20.i521:                                   ; preds = %if.end238
  %and23.i519 = and i32 %conv.i518, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i519)
  %tobool24.not.i520 = icmp eq i32 %and23.i519, 0
  br i1 %tobool24.not.i520, label %if.else20.i521.xd_load_log_block_addr.exit532_crit_edge, label %if.else20.i521.if.end35.sink.split.i530_crit_edge

if.else20.i521.if.end35.sink.split.i530_crit_edge: ; preds = %if.else20.i521
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.sink.split.i530

if.else20.i521.xd_load_log_block_addr.exit532_crit_edge: ; preds = %if.else20.i521
  call void @__sanitizer_cov_trace_pc() #7
  br label %xd_load_log_block_addr.exit532

if.end35.sink.split.i530:                         ; preds = %if.else20.i521.if.end35.sink.split.i530_crit_edge, %if.end238.if.end35.sink.split.i530_crit_edge
  %.sink45.i522 = phi i32 [ 3, %if.end238.if.end35.sink.split.i530_crit_edge ], [ 5, %if.else20.i521.if.end35.sink.split.i530_crit_edge ]
  %.sink.i523 = phi i32 [ 2, %if.end238.if.end35.sink.split.i530_crit_edge ], [ 4, %if.else20.i521.if.end35.sink.split.i530_crit_edge ]
  %arrayidx12.i524 = getelementptr i8, ptr %redunt, i32 %.sink45.i522
  %120 = ptrtoint ptr %arrayidx12.i524 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx12.i524, align 1
  %conv14.i525 = zext i8 %121 to i16
  %shl15.i526 = shl nuw i16 %conv14.i525, 8
  %arrayidx16.i527 = getelementptr i8, ptr %redunt, i32 %.sink.i523
  %122 = ptrtoint ptr %arrayidx16.i527 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx16.i527, align 1
  %conv17.i528 = zext i8 %123 to i16
  %or18.i529 = or i16 %shl15.i526, %conv17.i528
  br label %xd_load_log_block_addr.exit532

xd_load_log_block_addr.exit532:                   ; preds = %if.end35.sink.split.i530, %if.else20.i521.xd_load_log_block_addr.exit532_crit_edge
  %addr.0.i531 = phi i16 [ -1, %if.else20.i521.xd_load_log_block_addr.exit532_crit_edge ], [ %or18.i529, %if.end35.sink.split.i530 ]
  call void @__sanitizer_cov_trace_cmp2(i16 %addr.0.i531, i16 %or18.i)
  %cmp243.not = icmp eq i16 %addr.0.i531, %or18.i
  br i1 %cmp243.not, label %if.else256, label %if.then245

if.then245:                                       ; preds = %xd_load_log_block_addr.exit532
  %124 = trunc i32 %i.0553 to i16
  %conv247 = and i16 %124, 1023
  %125 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx, align 4
  %arrayidx250 = getelementptr i16, ptr %126, i32 %conv146
  %127 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %conv247, ptr %arrayidx250, align 2
  %call251 = call fastcc i32 @xd_erase_block(ptr noundef %chip, i32 noundef %add192)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call251)
  %cmp252 = icmp eq i32 %call251, 0
  br i1 %cmp252, label %if.then254, label %if.then245.cleanup270_crit_edge

if.then245.cleanup270_crit_edge:                  ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup270

if.then254:                                       ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @xd_set_unused_block(ptr noundef %chip, i32 noundef %add192)
  br label %cleanup270

if.else256:                                       ; preds = %xd_load_log_block_addr.exit532
  %call257 = call fastcc i32 @xd_erase_block(ptr noundef %chip, i32 noundef %i.0553)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call257)
  %cmp258 = icmp eq i32 %call257, 0
  br i1 %cmp258, label %if.then260, label %if.else256.cleanup270_crit_edge

if.else256.cleanup270_crit_edge:                  ; preds = %if.else256
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup270

if.then260:                                       ; preds = %if.else256
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @xd_set_unused_block(ptr noundef %chip, i32 noundef %i.0553)
  br label %cleanup270

if.else263:                                       ; preds = %xd_load_log_block_addr.exit516
  %call264 = call fastcc i32 @xd_erase_block(ptr noundef %chip, i32 noundef %i.0553)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264)
  %cmp265 = icmp eq i32 %call264, 0
  br i1 %cmp265, label %if.then267, label %if.else263.cleanup270_crit_edge

if.else263.cleanup270_crit_edge:                  ; preds = %if.else263
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup270

if.then267:                                       ; preds = %if.else263
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @xd_set_unused_block(ptr noundef %chip, i32 noundef %i.0553)
  br label %cleanup270

cleanup270:                                       ; preds = %if.then267, %if.else263.cleanup270_crit_edge, %if.then260, %if.else256.cleanup270_crit_edge, %if.then254, %if.then245.cleanup270_crit_edge, %if.then236, %if.then227.cleanup270_crit_edge, %if.end186.cleanup270_crit_edge, %if.then180, %if.then157, %if.then153.cleanup270_crit_edge, %do.end142, %if.then116, %do.body104, %for.body.cleanup270_crit_edge
  %inc275 = add nuw i32 %i.0553, 1
  %exitcond.not = icmp eq i32 %inc275, %end.0
  br i1 %exitcond.not, label %cleanup270.for.end276_crit_edge, label %cleanup270.for.body_crit_edge

cleanup270.for.body_crit_edge:                    ; preds = %cleanup270
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup270.for.end276_crit_edge:                  ; preds = %cleanup270
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end276

for.end276:                                       ; preds = %cleanup270.for.end276_crit_edge, %do.end89.for.end276_crit_edge
  %multi_flag277 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 6
  %128 = ptrtoint ptr %multi_flag277 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %multi_flag277, align 4
  %130 = and i8 %129, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool280.not = icmp eq i8 %130, 0
  %. = select i1 %tobool280.not, i32 1000, i32 500
  %131 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx, align 4
  br label %for.body287

for.body287:                                      ; preds = %for.body287.for.body287_crit_edge, %for.end276
  %start.2558 = phi i32 [ 0, %for.end276 ], [ %inc297, %for.body287.for.body287_crit_edge ]
  %i.1557 = phi i32 [ 0, %for.end276 ], [ %spec.select, %for.body287.for.body287_crit_edge ]
  %arrayidx289 = getelementptr i16, ptr %132, i32 %start.2558
  %133 = ptrtoint ptr %arrayidx289 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %arrayidx289, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %134)
  %cmp291 = icmp eq i16 %134, -1
  %inc294 = zext i1 %cmp291 to i32
  %spec.select = add i32 %i.1557, %inc294
  %inc297 = add nuw nsw i32 %start.2558, 1
  %exitcond559.not = icmp eq i32 %inc297, %.
  br i1 %exitcond559.not, label %do.body299, label %for.body287.for.body287_crit_edge

for.body287.for.body287_crit_edge:                ; preds = %for.body287
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body287

do.body299:                                       ; preds = %for.body287
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_build_l2p_tbl.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_build_l2p_tbl, %if.then311)) #5
          to label %do.body316 [label %if.then311], !srcloc !166

if.then311:                                       ; preds = %do.body299
  call void @__sanitizer_cov_trace_pc() #7
  %135 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %chip, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 4
  %dev.i533 = getelementptr inbounds %struct.pci_dev, ptr %138, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_build_l2p_tbl.__UNIQUE_ID_ddebug323, ptr noundef %dev.i533, ptr noundef nonnull @.str.41, i32 noundef %., i32 noundef %spec.select) #5
  br label %do.body316

do.body316:                                       ; preds = %if.then311, %do.body299
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_build_l2p_tbl.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_build_l2p_tbl, %if.then328)) #5
          to label %do.end333 [label %if.then328], !srcloc !166

if.then328:                                       ; preds = %do.body316
  call void @__sanitizer_cov_trace_pc() #7
  %139 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %chip, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %dev.i534 = getelementptr inbounds %struct.pci_dev, ptr %142, i32 0, i32 44
  %143 = ptrtoint ptr %unused_blk_cnt to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %unused_blk_cnt, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_build_l2p_tbl.__UNIQUE_ID_ddebug324, ptr noundef %dev.i534, ptr noundef nonnull @.str.42, i32 noundef %144) #5
  br label %do.end333

do.end333:                                        ; preds = %if.then328, %do.body316
  %145 = ptrtoint ptr %unused_blk_cnt to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %unused_blk_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %146, i32 %spec.select)
  %cmp336 = icmp eq i32 %146, %spec.select
  br i1 %cmp336, label %if.then338, label %do.end333.if.end342_crit_edge

do.end333.if.end342_crit_edge:                    ; preds = %do.end333
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end342

if.then338:                                       ; preds = %do.end333
  call void @__sanitizer_cov_trace_pc() #7
  %card_wp = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 24
  %147 = ptrtoint ptr %card_wp to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %card_wp, align 1
  %149 = or i8 %148, 16
  store i8 %149, ptr %card_wp, align 1
  br label %if.end342

if.end342:                                        ; preds = %if.then338, %do.end333.if.end342_crit_edge
  %150 = ptrtoint ptr %build_flag to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 1, ptr %build_flag, align 4
  br label %cleanup348

build_fail:                                       ; preds = %if.then47.build_fail_crit_edge, %if.then37.build_fail_crit_edge
  %151 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx, align 4
  tail call void @vfree(ptr noundef %152) #5
  %153 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr null, ptr %arrayidx, align 4
  %free_table346 = getelementptr %struct.zone_entry, ptr %18, i32 %zone_no, i32 1
  %154 = ptrtoint ptr %free_table346 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %free_table346, align 4
  tail call void @vfree(ptr noundef %155) #5
  %156 = ptrtoint ptr %free_table346 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %free_table346, align 4
  br label %cleanup348

cleanup348:                                       ; preds = %build_fail, %if.end342, %if.then28, %do.body16, %if.then8.cleanup348_crit_edge
  %retval.0 = phi i32 [ 0, %if.end342 ], [ 1, %build_fail ], [ %call9, %if.then8.cleanup348_crit_edge ], [ 0, %if.then28 ], [ 0, %do.body16 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %redunt) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xd_copy_page(ptr noundef %chip, i32 noundef %old_blk, i32 noundef %new_blk, i8 noundef zeroext %start_page, i8 noundef zeroext %end_page) unnamed_addr #0 align 64 {
entry:
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #5
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %reg, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_copy_page.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_copy_page, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_copy_page.__UNIQUE_ID_ddebug316, ptr noundef %dev.i, ptr noundef nonnull @.str.44, i32 noundef %old_blk, i32 noundef %new_blk) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv = zext i8 %start_page to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %start_page, i8 %end_page)
  %cmp = icmp ugt i8 %start_page, %end_page
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %old_blk)
  %cmp10 = icmp eq i32 %old_blk, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %new_blk)
  %cmp12 = icmp eq i32 %new_blk, -1
  %or.cond = or i1 %cmp10, %cmp12
  br i1 %or.cond, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %block_shift = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 2
  %5 = ptrtoint ptr %block_shift to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %block_shift, align 2
  %multi_flag = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 6
  %7 = ptrtoint ptr %multi_flag to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %multi_flag, align 4
  %9 = and i8 %8, -2
  store i8 %9, ptr %multi_flag, align 4
  %call25 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_cmp1(i8 %start_page, i8 %end_page)
  %cmp31201 = icmp ult i8 %start_page, %end_page
  br i1 %cmp31201, label %for.body.lr.ph, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end28
  %conv16 = zext i8 %6 to i32
  %shl = shl i32 %old_blk, %conv16
  %add = add i32 %shl, %conv
  %shl20 = shl i32 %new_blk, %conv16
  %add22 = add i32 %shl20, %conv
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %addr_cycle.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end116.for.body_crit_edge, %for.body.lr.ph
  %old_page.0204 = phi i32 [ %add, %for.body.lr.ph ], [ %inc, %if.end116.for.body_crit_edge ]
  %new_page.0203 = phi i32 [ %add22, %for.body.lr.ph ], [ %inc117, %if.end116.for.body_crit_edge ]
  %i.0202 = phi i8 [ %start_page, %for.body.lr.ph ], [ %inc118, %if.end116.for.body_crit_edge ]
  %call33 = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34.not = icmp eq i32 %call33, 0
  br i1 %cmp34.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 34, i8 noundef zeroext 34) #5
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 7
  %10 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 32, ptr %err_code2.i, align 1
  br label %cleanup

if.end37:                                         ; preds = %for.body
  %11 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ci, align 4
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -747, i8 noundef zeroext -1, i8 noundef zeroext 0) #5
  %conv2.i = trunc i32 %old_page.0204 to i8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -746, i8 noundef zeroext -1, i8 noundef zeroext %conv2.i) #5
  %shr.i = lshr i32 %old_page.0204, 8
  %conv3.i = trunc i32 %shr.i to i8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -745, i8 noundef zeroext -1, i8 noundef zeroext %conv3.i) #5
  %shr4.i = lshr i32 %old_page.0204, 16
  %conv5.i = trunc i32 %shr4.i to i8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -744, i8 noundef zeroext -1, i8 noundef zeroext %conv5.i) #5
  %12 = ptrtoint ptr %addr_cycle.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %addr_cycle.i, align 4
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -748, i8 noundef zeroext -1, i8 noundef zeroext %13) #5
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -741, i8 noundef zeroext -1, i8 noundef zeroext 1) #5
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -723, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -749, i8 noundef zeroext -1, i8 noundef zeroext -123) #5
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -749, i8 noundef zeroext 64, i8 noundef zeroext 64) #5
  %call38 = call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 16, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.end37.if.end92_crit_edge

if.end37.if.end92_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92

if.then41:                                        ; preds = %if.end37
  %call.i182 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 34, i8 noundef zeroext 34) #5
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %reg, align 1
  %call42 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -750, ptr noundef nonnull %reg) #5
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reg, align 1
  %17 = and i8 %16, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool45.not = icmp eq i8 %17, 0
  br i1 %tobool45.not, label %if.else, label %if.then41.while.body_crit_edge

if.then41.while.body_crit_edge:                   ; preds = %if.then41
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then41.while.body_crit_edge
  %__ms.0200 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %if.then41.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0200, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748000) #5
  %tobool47.not = icmp eq i32 %dec, 0
  br i1 %tobool47.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  %call48 = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49.not = icmp eq i32 %call48, 0
  br i1 %cmp49.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %err_code2.i183 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 7
  %19 = ptrtoint ptr %err_code2.i183 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 32, ptr %err_code2.i183, align 1
  br label %cleanup

if.end52:                                         ; preds = %while.end
  %20 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reg, align 1
  %conv53 = zext i8 %21 to i32
  %22 = and i32 %conv53, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %22)
  %.not = icmp eq i32 %22, 48
  %23 = and i32 %conv53, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %23)
  %.not198 = icmp eq i32 %23, 192
  %or.cond199 = or i1 %.not, %.not198
  br i1 %or.cond199, label %if.then67, label %if.end52.if.end92_crit_edge

if.end52.if.end92_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92

if.then67:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %call68 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -740, i8 noundef zeroext -1, i8 noundef zeroext 0) #5
  %call69 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -739, i8 noundef zeroext -1, i8 noundef zeroext -1) #5
  %24 = ptrtoint ptr %multi_flag to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %multi_flag, align 4
  %26 = or i8 %25, 2
  store i8 %26, ptr %multi_flag, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_copy_page.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_copy_page, %if.then85)) #5
          to label %if.end92 [label %if.then85], !srcloc !166

if.then85:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %dev.i184 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_copy_page.__UNIQUE_ID_ddebug317, ptr noundef %dev.i184, ptr noundef nonnull @.str.45, i32 noundef %old_blk) #5
  br label %if.end92

if.else:                                          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  %err_code2.i185 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 7
  %31 = ptrtoint ptr %err_code2.i185 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %err_code2.i185, align 1
  br label %cleanup

if.end92:                                         ; preds = %if.then85, %if.then67, %if.end52.if.end92_crit_edge, %if.end37.if.end92_crit_edge
  %32 = ptrtoint ptr %multi_flag to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %multi_flag, align 4
  %34 = and i8 %33, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool96.not = icmp eq i8 %34, 0
  br i1 %tobool96.not, label %if.end92.if.end98_crit_edge, label %if.then97

if.end92.if.end98_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

if.then97:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  %call.i186 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 34, i8 noundef zeroext 34) #5
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.end92.if.end98_crit_edge
  %35 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %ci, align 4
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -747, i8 noundef zeroext -1, i8 noundef zeroext 0) #5
  %conv2.i187 = trunc i32 %new_page.0203 to i8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -746, i8 noundef zeroext -1, i8 noundef zeroext %conv2.i187) #5
  %shr.i188 = lshr i32 %new_page.0203, 8
  %conv3.i189 = trunc i32 %shr.i188 to i8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -745, i8 noundef zeroext -1, i8 noundef zeroext %conv3.i189) #5
  %shr4.i190 = lshr i32 %new_page.0203, 16
  %conv5.i191 = trunc i32 %shr4.i190 to i8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -744, i8 noundef zeroext -1, i8 noundef zeroext %conv5.i191) #5
  %36 = ptrtoint ptr %addr_cycle.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %addr_cycle.i, align 4
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -748, i8 noundef zeroext -1, i8 noundef zeroext %37) #5
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -741, i8 noundef zeroext -1, i8 noundef zeroext 1) #5
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -749, i8 noundef zeroext -1, i8 noundef zeroext -120) #5
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -749, i8 noundef zeroext 64, i8 noundef zeroext 64) #5
  %call100 = call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 16, i32 noundef 300) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.then103, label %if.end116

if.then103:                                       ; preds = %if.end98
  %call.i193 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 34, i8 noundef zeroext 34) #5
  %38 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %reg, align 1
  %call104 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -742, ptr noundef nonnull %reg) #5
  %39 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %reg, align 1
  %41 = and i8 %40, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool107.not = icmp eq i8 %41, 0
  br i1 %tobool107.not, label %if.else114, label %if.then108

if.then108:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @xd_mark_bad_block(ptr noundef %chip, i32 noundef %new_blk)
  %err_code2.i194 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 7
  %42 = ptrtoint ptr %err_code2.i194 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 64, ptr %err_code2.i194, align 1
  %43 = ptrtoint ptr %multi_flag to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %multi_flag, align 4
  %45 = or i8 %44, 1
  store i8 %45, ptr %multi_flag, align 4
  br label %cleanup

if.else114:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #7
  %err_code2.i195 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 7
  %46 = ptrtoint ptr %err_code2.i195 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %err_code2.i195, align 1
  br label %cleanup

if.end116:                                        ; preds = %if.end98
  %inc = add i32 %old_page.0204, 1
  %inc117 = add i32 %new_page.0203, 1
  %inc118 = add nuw i8 %i.0202, 1
  %cmp31 = icmp ult i8 %inc118, %end_page
  br i1 %cmp31, label %if.end116.for.body_crit_edge, label %if.end116.cleanup_crit_edge

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end116.for.body_crit_edge:                     ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %if.end116.cleanup_crit_edge, %if.else114, %if.then108, %if.else, %if.then51, %if.then36, %if.end28.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then36 ], [ 1, %if.then51 ], [ 1, %if.else ], [ 1, %do.end.cleanup_crit_edge ], [ 1, %if.end9.cleanup_crit_edge ], [ %call25, %if.end15.cleanup_crit_edge ], [ 1, %if.else114 ], [ 1, %if.then108 ], [ 0, %if.end28.cleanup_crit_edge ], [ 0, %if.end116.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xd_get_l2p_tbl(ptr noundef %chip, i32 noundef %zone_no, i16 noundef zeroext %log_off) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %zone3 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 9
  %0 = ptrtoint ptr %zone3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zone3, align 4
  %arrayidx = getelementptr %struct.zone_entry, ptr %1, i32 %zone_no
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %idxprom = zext i16 %log_off to i32
  %arrayidx4 = getelementptr i16, ptr %3, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp = icmp eq i16 %5, -1
  br i1 %cmp, label %if.then, label %if.end92

if.then:                                          ; preds = %entry
  %call = tail call i32 @xd_delay_write(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6.not = icmp eq i32 %call, 0
  br i1 %cmp6.not, label %if.end14, label %do.body

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_get_l2p_tbl.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_get_l2p_tbl, %if.then12)) #5
          to label %cleanup98 [label %if.then12], !srcloc !166

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_get_l2p_tbl.__UNIQUE_ID_ddebug310, ptr noundef %dev.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46) #5
  br label %cleanup98

if.end14:                                         ; preds = %if.then
  %unused_blk_cnt = getelementptr %struct.zone_entry, ptr %1, i32 %zone_no, i32 5
  %10 = ptrtoint ptr %unused_blk_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %unused_blk_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp15 = icmp slt i32 %11, 1
  br i1 %cmp15, label %do.body18, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end14
  %12 = ptrtoint ptr %unused_blk_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %unused_blk_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp37143 = icmp sgt i32 %13, 0
  br i1 %cmp37143, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %page_off = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 3
  br label %for.body

do.body18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_get_l2p_tbl.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_get_l2p_tbl, %if.then30)) #5
          to label %cleanup98 [label %if.then30], !srcloc !166

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %dev.i135 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_get_l2p_tbl.__UNIQUE_ID_ddebug311, ptr noundef %dev.i135, ptr noundef nonnull @.str.48) #5
  br label %cleanup98

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0144 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call39 = tail call fastcc i32 @xd_get_unused_block(ptr noundef %chip, i32 noundef %zone_no)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call39)
  %cmp40 = icmp eq i32 %call39, -1
  br i1 %cmp40, label %do.body43, label %if.end60

do.body43:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_get_l2p_tbl.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_get_l2p_tbl, %if.then55)) #5
          to label %cleanup98 [label %if.then55], !srcloc !166

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %dev.i136 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_get_l2p_tbl.__UNIQUE_ID_ddebug312, ptr noundef %dev.i136, ptr noundef nonnull @.str.49) #5
  br label %cleanup98

if.end60:                                         ; preds = %for.body
  %22 = ptrtoint ptr %page_off to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %page_off, align 1
  %add = add i8 %23, 1
  %call63 = tail call fastcc i32 @xd_init_page(ptr noundef %chip, i32 noundef %call39, i16 noundef zeroext %log_off, i8 noundef zeroext 0, i8 noundef zeroext %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp eq i32 %call63, 0
  br i1 %cmp64, label %if.end60.for.end_crit_edge, label %for.inc

if.end60.for.end_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %if.end60
  %inc = add nuw nsw i32 %i.0144, 1
  %24 = ptrtoint ptr %unused_blk_cnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %unused_blk_cnt, align 4
  %cmp37 = icmp slt i32 %inc, %25
  br i1 %cmp37, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end60.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.0144, %if.end60.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %phy_blk.1 = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %call39, %if.end60.for.end_crit_edge ], [ %call39, %for.inc.for.end_crit_edge ]
  %26 = ptrtoint ptr %unused_blk_cnt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %unused_blk_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %27)
  %cmp69.not = icmp slt i32 %i.0.lcssa, %27
  br i1 %cmp69.not, label %if.end89, label %do.body72

do.body72:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_get_l2p_tbl.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_get_l2p_tbl, %if.then84)) #5
          to label %cleanup98 [label %if.then84], !srcloc !166

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %dev.i137 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_get_l2p_tbl.__UNIQUE_ID_ddebug313, ptr noundef %dev.i137, ptr noundef nonnull @.str.50) #5
  br label %cleanup98

if.end89:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %32 = trunc i32 %phy_blk.1 to i16
  %conv90 = and i16 %32, 1023
  %33 = ptrtoint ptr %zone3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %zone3, align 4
  %arrayidx.i = getelementptr %struct.zone_entry, ptr %34, i32 %zone_no
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr i16, ptr %36, i32 %idxprom
  %37 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv90, ptr %arrayidx3.i, align 2
  br label %cleanup98

if.end92:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i16 %5 to i32
  %shl = shl i32 %zone_no, 10
  %add97 = add i32 %shl, %conv
  br label %cleanup98

cleanup98:                                        ; preds = %if.end92, %if.end89, %if.then84, %do.body72, %if.then55, %do.body43, %if.then30, %do.body18, %if.then12, %do.body
  %retval.1 = phi i32 [ %add97, %if.end92 ], [ %phy_blk.1, %if.end89 ], [ -1, %if.then12 ], [ -1, %if.then30 ], [ -1, %if.then55 ], [ -1, %if.then84 ], [ -1, %do.body ], [ -1, %do.body18 ], [ -1, %do.body43 ], [ -1, %do.body72 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xd_get_unused_block(ptr nocapture noundef readonly %chip, i32 noundef %zone_no) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 10
  %0 = ptrtoint ptr %zone_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zone_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %zone_no)
  %cmp.not = icmp sgt i32 %1, %zone_no
  br i1 %cmp.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_get_unused_block.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_get_unused_block, %if.then4)) #5
          to label %cleanup [label %if.then4], !srcloc !166

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %zone_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %zone_cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_get_unused_block.__UNIQUE_ID_ddebug306, ptr noundef %dev.i, ptr noundef nonnull @.str.52, i32 noundef %zone_no, i32 noundef %7) #5
  br label %cleanup

if.end7:                                          ; preds = %entry
  %zone8 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 9
  %8 = ptrtoint ptr %zone8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %zone8, align 4
  %arrayidx = getelementptr %struct.zone_entry, ptr %9, i32 %zone_no
  %unused_blk_cnt = getelementptr %struct.zone_entry, ptr %9, i32 %zone_no, i32 5
  %10 = ptrtoint ptr %unused_blk_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %unused_blk_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9 = icmp eq i32 %11, 0
  br i1 %cmp9, label %if.end7.if.then11_crit_edge, label %lor.lhs.false

if.end7.if.then11_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end7
  %set_index = getelementptr %struct.zone_entry, ptr %9, i32 %zone_no, i32 3
  %12 = ptrtoint ptr %set_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %set_index, align 4
  %get_index = getelementptr %struct.zone_entry, ptr %9, i32 %zone_no, i32 4
  %14 = ptrtoint ptr %get_index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %get_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp10 = icmp eq i32 %13, %15
  br i1 %cmp10, label %lor.lhs.false.if.then11_crit_edge, label %if.end29

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.end7.if.then11_crit_edge
  %tobool.not.i = icmp eq ptr %arrayidx, null
  br i1 %tobool.not.i, label %if.then11.free_zone.exit_crit_edge, label %if.end.i

if.then11.free_zone.exit_crit_edge:               ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_zone.exit

if.end.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %build_flag.i = getelementptr %struct.zone_entry, ptr %9, i32 %zone_no, i32 7
  %16 = ptrtoint ptr %build_flag.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %build_flag.i, align 4
  %set_index.i = getelementptr %struct.zone_entry, ptr %9, i32 %zone_no, i32 3
  %17 = ptrtoint ptr %set_index.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %set_index.i, align 4
  %get_index.i = getelementptr %struct.zone_entry, ptr %9, i32 %zone_no, i32 4
  %18 = ptrtoint ptr %get_index.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %get_index.i, align 4
  %19 = ptrtoint ptr %unused_blk_cnt to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %unused_blk_cnt, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  tail call void @vfree(ptr noundef %21) #5
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx, align 4
  %free_table.i = getelementptr %struct.zone_entry, ptr %9, i32 %zone_no, i32 1
  %23 = ptrtoint ptr %free_table.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %free_table.i, align 4
  tail call void @vfree(ptr noundef %24) #5
  %25 = ptrtoint ptr %free_table.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %free_table.i, align 4
  br label %free_zone.exit

free_zone.exit:                                   ; preds = %if.end.i, %if.then11.free_zone.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_get_unused_block.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_get_unused_block, %if.then24)) #5
          to label %cleanup [label %if.then24], !srcloc !166

if.then24:                                        ; preds = %free_zone.exit
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %dev.i119 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_get_unused_block.__UNIQUE_ID_ddebug307, ptr noundef %dev.i119, ptr noundef nonnull @.str.53) #5
  br label %cleanup

if.end29:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1199, i32 %15)
  %30 = icmp ugt i32 %15, 1199
  br i1 %30, label %if.then35, label %do.body54

if.then35:                                        ; preds = %if.end29
  %tobool.not.i120 = icmp eq ptr %arrayidx, null
  br i1 %tobool.not.i120, label %if.then35.free_zone.exit127_crit_edge, label %if.end.i126

if.then35.free_zone.exit127_crit_edge:            ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_zone.exit127

if.end.i126:                                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %build_flag.i121 = getelementptr %struct.zone_entry, ptr %9, i32 %zone_no, i32 7
  %31 = ptrtoint ptr %build_flag.i121 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %build_flag.i121, align 4
  %32 = ptrtoint ptr %set_index to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %set_index, align 4
  %33 = ptrtoint ptr %get_index to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %get_index, align 4
  %34 = ptrtoint ptr %unused_blk_cnt to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %unused_blk_cnt, align 4
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  tail call void @vfree(ptr noundef %36) #5
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %arrayidx, align 4
  %free_table.i125 = getelementptr %struct.zone_entry, ptr %9, i32 %zone_no, i32 1
  %38 = ptrtoint ptr %free_table.i125 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %free_table.i125, align 4
  tail call void @vfree(ptr noundef %39) #5
  %40 = ptrtoint ptr %free_table.i125 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %free_table.i125, align 4
  br label %free_zone.exit127

free_zone.exit127:                                ; preds = %if.end.i126, %if.then35.free_zone.exit127_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_get_unused_block.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_get_unused_block, %if.then48)) #5
          to label %cleanup [label %if.then48], !srcloc !166

if.then48:                                        ; preds = %free_zone.exit127
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chip, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %dev.i128 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_get_unused_block.__UNIQUE_ID_ddebug308, ptr noundef %dev.i128, ptr noundef nonnull @.str.54) #5
  br label %cleanup

do.body54:                                        ; preds = %if.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_get_unused_block.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_get_unused_block, %if.then66)) #5
          to label %do.end71 [label %if.then66], !srcloc !166

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chip, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %dev.i129 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %49 = ptrtoint ptr %get_index to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %get_index, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_get_unused_block.__UNIQUE_ID_ddebug309, ptr noundef %dev.i129, ptr noundef nonnull @.str.55, i32 noundef %50) #5
  br label %do.end71

do.end71:                                         ; preds = %if.then66, %do.body54
  %free_table = getelementptr %struct.zone_entry, ptr %9, i32 %zone_no, i32 1
  %51 = ptrtoint ptr %free_table to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %free_table, align 4
  %53 = ptrtoint ptr %get_index to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %get_index, align 4
  %arrayidx73 = getelementptr i16, ptr %52, i32 %54
  %55 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx73, align 2
  %conv = zext i16 %56 to i32
  %inc = add i32 %54, 1
  store i32 %inc, ptr %get_index, align 4
  store i16 -1, ptr %arrayidx73, align 2
  %57 = load i32, ptr %get_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1199, i32 %57)
  %cmp78 = icmp sgt i32 %57, 1199
  br i1 %cmp78, label %if.then80, label %do.end71.if.end82_crit_edge

do.end71.if.end82_crit_edge:                      ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

if.then80:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %get_index to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %get_index, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %do.end71.if.end82_crit_edge
  %59 = ptrtoint ptr %unused_blk_cnt to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %unused_blk_cnt, align 4
  %dec = add i32 %60, -1
  store i32 %dec, ptr %unused_blk_cnt, align 4
  %shl = shl i32 %zone_no, 10
  %add = add i32 %shl, %conv
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %if.then48, %free_zone.exit127, %if.then24, %free_zone.exit, %if.then4, %do.body
  %retval.0 = phi i32 [ %add, %if.end82 ], [ -1, %if.then4 ], [ -1, %if.then24 ], [ -1, %if.then48 ], [ -1, %do.body ], [ -1, %free_zone.exit ], [ -1, %free_zone.exit127 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xd_prepare_write(ptr noundef %chip, i32 noundef %old_blk, i32 noundef %new_blk, i32 noundef %log_blk, i8 noundef zeroext %page_off) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_prepare_write.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_prepare_write, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %conv = zext i8 %page_off to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_prepare_write.__UNIQUE_ID_ddebug329, ptr noundef %dev.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56, i32 noundef %old_blk, i32 noundef %new_blk, i32 noundef %log_blk, i32 noundef %conv) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %page_off)
  %tobool5.not = icmp eq i8 %page_off, 0
  br i1 %tobool5.not, label %do.end.if.end11_crit_edge, label %if.then6

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then6:                                         ; preds = %do.end
  %call7 = tail call fastcc i32 @xd_copy_page(ptr noundef %chip, i32 noundef %old_blk, i32 noundef %new_blk, i8 noundef zeroext 0, i8 noundef zeroext %page_off)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp.not = icmp eq i32 %call7, 0
  br i1 %cmp.not, label %if.then6.if.end11_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %do.end.if.end11_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ 1, %if.then6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xd_read_multiple_pages(ptr noundef %chip, i32 noundef %phy_blk, i32 noundef %log_blk, i8 noundef zeroext %start_page, i8 noundef zeroext %end_page, ptr noundef %buf, ptr noundef %index, ptr noundef %offset) #0 align 64 {
entry:
  %reg_val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_val) #5
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_val, align 1, !annotation !168
  %conv = zext i8 %start_page to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %end_page, i8 %start_page)
  %cmp = icmp ult i8 %end_page, %start_page
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = sub i8 %end_page, %start_page
  %div = udiv i32 %log_blk, 1000
  %1 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %log_blk, %1
  %and = and i32 %phy_blk, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %and)
  %cmp9 = icmp eq i32 %and, 1023
  br i1 %cmp9, label %for.cond.preheader, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

for.cond.preheader:                               ; preds = %if.end
  %block_shift = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 2
  br label %for.body

for.cond:                                         ; preds = %if.end18
  %inc = add nuw nsw i32 %i.0260, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.cond.if.end24_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.if.end24_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %i.0260 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond.for.body_crit_edge ]
  %2 = ptrtoint ptr %block_shift to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %block_shift, align 2
  %conv14 = zext i8 %3 to i32
  %shl = shl i32 %i.0260, %conv14
  %call = tail call fastcc i32 @xd_read_redundant(ptr noundef %chip, i32 noundef %shl, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp15 = icmp eq i32 %call, 0
  br i1 %cmp15, label %for.body.if.end24_crit_edge, label %if.end18

for.body.if.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.end18:                                         ; preds = %for.body
  %call19 = tail call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %for.cond, label %if.then22

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 7
  %4 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 32, ptr %err_code2.i, align 1
  br label %cleanup

if.end24:                                         ; preds = %for.body.if.end24_crit_edge, %for.cond.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %block_shift25 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 2
  %5 = ptrtoint ptr %block_shift25 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %block_shift25, align 2
  %conv26 = zext i8 %6 to i32
  %shl27 = shl i32 %phy_blk, %conv26
  %add = add i32 %shl27, %conv
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %7 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -747, i8 noundef zeroext -1, i8 noundef zeroext 0) #5
  %conv2.i = trunc i32 %add to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -746, i8 noundef zeroext -1, i8 noundef zeroext %conv2.i) #5
  %shr.i = lshr i32 %add, 8
  %conv3.i = trunc i32 %shr.i to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -745, i8 noundef zeroext -1, i8 noundef zeroext %conv3.i) #5
  %shr4.i = lshr i32 %add, 16
  %conv5.i = trunc i32 %shr4.i to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -744, i8 noundef zeroext -1, i8 noundef zeroext %conv5.i) #5
  %addr_cycle.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 4
  %8 = ptrtoint ptr %addr_cycle.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr_cycle.i, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -748, i8 noundef zeroext -1, i8 noundef zeroext %9) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -748, i8 noundef zeroext -128, i8 noundef zeroext -128) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -741, i8 noundef zeroext -1, i8 noundef zeroext %sub) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -723, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  %srb = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 10
  %10 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %srb, align 4
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sc_data_direction, align 4
  %conv29 = zext i8 %sub to i32
  %mul = shl nuw nsw i32 %conv29, 9
  tail call void @trans_dma_enable(i32 noundef %13, ptr noundef %chip, i32 noundef %mul, i8 noundef zeroext 32) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -749, i8 noundef zeroext -1, i8 noundef zeroext -123) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -749, i8 noundef zeroext 96, i8 noundef zeroext 96) #5
  tail call void @rtsx_send_cmd_no_wait(ptr noundef %chip) #5
  %14 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %srb, align 4
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %15, i32 0, i32 17, i32 0, i32 1
  %16 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nents.i, align 4
  %xd_timeout = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 118
  %18 = ptrtoint ptr %xd_timeout to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xd_timeout, align 4
  %call34 = tail call i32 @rtsx_transfer_data_partial(ptr noundef %chip, i8 noundef zeroext 16, ptr noundef %buf, i32 noundef %mul, i32 noundef %17, ptr noundef %index, ptr noundef %offset, i32 noundef 2, i32 noundef %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then37:                                        ; preds = %if.end24
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 34, i8 noundef zeroext 34) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call34)
  %cmp38 = icmp eq i32 %call34, -110
  br i1 %cmp38, label %if.then40, label %fail

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  %err_code2.i256 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 7
  %20 = ptrtoint ptr %err_code2.i256 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %err_code2.i256, align 1
  br label %cleanup

fail:                                             ; preds = %if.then37
  %call42 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -740, ptr noundef nonnull %reg_val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool.not = icmp eq i32 %call42, 0
  br i1 %tobool.not, label %if.end44, label %fail.cleanup_crit_edge

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end44:                                         ; preds = %fail
  %21 = ptrtoint ptr %reg_val to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reg_val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %cmp46.not = icmp eq i8 %22, -1
  br i1 %cmp46.not, label %if.end44.if.end49_crit_edge, label %if.then48

if.end44.if.end49_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %err_code2.i257 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 7
  %23 = ptrtoint ptr %err_code2.i257 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 64, ptr %err_code2.i257, align 1
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end44.if.end49_crit_edge
  %call50 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -750, ptr noundef nonnull %reg_val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  %24 = ptrtoint ptr %reg_val to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %reg_val, align 1
  %conv54 = zext i8 %25 to i32
  %and55 = and i32 %conv54, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and55)
  %cmp56 = icmp eq i32 %and55, 48
  %and59 = and i32 %conv54, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and59)
  %cmp60 = icmp eq i32 %and59, 192
  %or.cond = or i1 %cmp56, %cmp60
  br i1 %or.cond, label %__here, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

__here:                                           ; preds = %if.end53
  %26 = call i32 @llvm.read_register.i32(metadata !154) #5
  %and.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 212
  %30 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 ptrtoint (ptr blockaddress(@xd_read_multiple_pages, %__here) to i32), ptr %task_state_change, align 4
  %31 = load ptr, ptr %task, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 1, ptr %31, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !169
  %call128 = call i32 @schedule_timeout(i32 noundef 10) #5
  %call131 = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %cmp132.not = icmp eq i32 %call131, 0
  %err_code2.i259 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 7
  br i1 %cmp132.not, label %if.end135, label %if.then134

if.then134:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %err_code2.i259 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 32, ptr %err_code2.i259, align 1
  br label %cleanup

if.end135:                                        ; preds = %__here
  %34 = ptrtoint ptr %err_code2.i259 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 2, ptr %err_code2.i259, align 1
  %call136 = call fastcc i32 @xd_get_unused_block(ptr noundef %chip, i32 noundef %div)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call136)
  %cmp137 = icmp eq i32 %call136, -1
  br i1 %cmp137, label %if.then139, label %if.end143

if.then139:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #7
  %multi_flag = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 6
  %35 = ptrtoint ptr %multi_flag to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %multi_flag, align 4
  %37 = and i8 %36, -3
  store i8 %37, ptr %multi_flag, align 4
  br label %cleanup

if.end143:                                        ; preds = %if.end135
  %page_off = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 3
  %38 = ptrtoint ptr %page_off to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %page_off, align 1
  %add145 = add i8 %39, 1
  %call147 = call fastcc i32 @xd_copy_page(ptr noundef %chip, i32 noundef %phy_blk, i32 noundef %call136, i8 noundef zeroext 0, i8 noundef zeroext %add145)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %cmp148.not = icmp eq i32 %call147, 0
  br i1 %cmp148.not, label %if.end171, label %if.then150

if.then150:                                       ; preds = %if.end143
  %multi_flag151 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 6
  %40 = ptrtoint ptr %multi_flag151 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %multi_flag151, align 4
  %42 = and i8 %41, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool154.not = icmp eq i8 %42, 0
  br i1 %tobool154.not, label %if.then155, label %if.else161

if.then155:                                       ; preds = %if.then150
  %call156 = call fastcc i32 @xd_erase_block(ptr noundef %chip, i32 noundef %call136)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %cmp157 = icmp eq i32 %call156, 0
  br i1 %cmp157, label %if.then159, label %if.then155.if.end166_crit_edge

if.then155.if.end166_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end166

if.then159:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @xd_set_unused_block(ptr noundef %chip, i32 noundef %call136)
  br label %if.end166

if.else161:                                       ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #7
  %and164 = and i8 %41, -2
  %43 = ptrtoint ptr %multi_flag151 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %and164, ptr %multi_flag151, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.else161, %if.then159, %if.then155.if.end166_crit_edge
  %44 = ptrtoint ptr %multi_flag151 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %multi_flag151, align 4
  %46 = and i8 %45, -3
  store i8 %46, ptr %multi_flag151, align 4
  br label %cleanup

if.end171:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #7
  %47 = trunc i32 %call136 to i16
  %conv173 = and i16 %47, 1023
  %zone2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 9
  %48 = ptrtoint ptr %zone2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %zone2.i, align 4
  %arrayidx.i = getelementptr %struct.zone_entry, ptr %49, i32 %div
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr i16, ptr %51, i32 %rem.decomposed
  %52 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv173, ptr %arrayidx3.i, align 2
  %call174 = call fastcc i32 @xd_erase_block(ptr noundef %chip, i32 noundef %phy_blk)
  call fastcc void @xd_mark_bad_block(ptr noundef %chip, i32 noundef %phy_blk)
  %multi_flag176 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 6
  %53 = ptrtoint ptr %multi_flag176 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %multi_flag176, align 4
  %55 = and i8 %54, -3
  store i8 %55, ptr %multi_flag176, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end171, %if.end166, %if.then139, %if.then134, %if.end53.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %fail.cleanup_crit_edge, %if.then40, %if.end24.cleanup_crit_edge, %if.then22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24.cleanup_crit_edge ], [ %call42, %fail.cleanup_crit_edge ], [ %call50, %if.end49.cleanup_crit_edge ], [ 1, %if.end53.cleanup_crit_edge ], [ 1, %if.end171 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end166 ], [ 1, %if.then139 ], [ 1, %if.then134 ], [ 1, %if.then40 ], [ 1, %if.then22 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xd_write_multiple_pages(ptr noundef %chip, i32 noundef %old_blk, i32 noundef %new_blk, i32 noundef %log_blk, i8 noundef zeroext %start_page, i8 noundef zeroext %end_page, ptr noundef %buf, ptr noundef %index, ptr noundef %offset) unnamed_addr #0 align 64 {
entry:
  %reg_val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_val) #5
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_val, align 1, !annotation !168
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_write_multiple_pages.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_write_multiple_pages, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_write_multiple_pages.__UNIQUE_ID_ddebug330, ptr noundef %dev.i, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, i32 noundef %old_blk, i32 noundef %new_blk, i32 noundef %log_blk) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv6 = zext i8 %end_page to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %end_page, i8 %start_page)
  %cmp = icmp ult i8 %end_page, %start_page
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %div = udiv i32 %log_blk, 1000
  %5 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %log_blk, %5
  %block_shift = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 2
  %6 = ptrtoint ptr %block_shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %block_shift, align 2
  %ci.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %8 = ptrtoint ptr %ci.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ci.i, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -742, i8 noundef zeroext -1, i8 noundef zeroext 0) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -749, i8 noundef zeroext -1, i8 noundef zeroext -122) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -749, i8 noundef zeroext 64, i8 noundef zeroext 64) #5
  %call.i = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 16, i32 noundef 200) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp17.not = icmp sgt i32 %call.i, -1
  br i1 %cmp17.not, label %if.end20, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end9
  %conv14 = zext i8 %7 to i32
  %shl = shl i32 %new_blk, %conv14
  %conv = zext i8 %start_page to i32
  %add = add i32 %shl, %conv
  %sub = sub i8 %end_page, %start_page
  %9 = ptrtoint ptr %ci.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ci.i, align 4
  %10 = lshr i32 %rem.decomposed, 8
  %conv22 = trunc i32 %10 to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -737, i8 noundef zeroext -1, i8 noundef zeroext %conv22) #5
  %conv23 = trunc i32 %rem.decomposed to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -738, i8 noundef zeroext -1, i8 noundef zeroext %conv23) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -739, i8 noundef zeroext -1, i8 noundef zeroext -1) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -740, i8 noundef zeroext -1, i8 noundef zeroext -1) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -747, i8 noundef zeroext -1, i8 noundef zeroext 0) #5
  %conv2.i = trunc i32 %add to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -746, i8 noundef zeroext -1, i8 noundef zeroext %conv2.i) #5
  %shr.i = lshr i32 %add, 8
  %conv3.i = trunc i32 %shr.i to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -745, i8 noundef zeroext -1, i8 noundef zeroext %conv3.i) #5
  %shr4.i = lshr i32 %add, 16
  %conv5.i = trunc i32 %shr4.i to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -744, i8 noundef zeroext -1, i8 noundef zeroext %conv5.i) #5
  %addr_cycle.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 4
  %11 = ptrtoint ptr %addr_cycle.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %addr_cycle.i, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -748, i8 noundef zeroext -1, i8 noundef zeroext %12) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -748, i8 noundef zeroext 64, i8 noundef zeroext 64) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -741, i8 noundef zeroext -1, i8 noundef zeroext %sub) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  %srb = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 10
  %13 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %srb, align 4
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sc_data_direction, align 4
  %conv24 = zext i8 %sub to i32
  %mul = shl nuw nsw i32 %conv24, 9
  tail call void @trans_dma_enable(i32 noundef %16, ptr noundef %chip, i32 noundef %mul, i8 noundef zeroext 32) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -749, i8 noundef zeroext -1, i8 noundef zeroext -120) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -749, i8 noundef zeroext 64, i8 noundef zeroext 64) #5
  tail call void @rtsx_send_cmd_no_wait(ptr noundef %chip) #5
  %17 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %srb, align 4
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %18, i32 0, i32 17, i32 0, i32 1
  %19 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nents.i, align 4
  %xd_timeout = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 118
  %21 = ptrtoint ptr %xd_timeout to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xd_timeout, align 4
  %call29 = tail call i32 @rtsx_transfer_data_partial(ptr noundef %chip, i8 noundef zeroext 16, ptr noundef %buf, i32 noundef %mul, i32 noundef %20, ptr noundef %index, ptr noundef %offset, i32 noundef 1, i32 noundef %22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.end36

if.then32:                                        ; preds = %if.end20
  %call.i142 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 34, i8 noundef zeroext 34) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call29)
  %cmp33 = icmp eq i32 %call29, -110
  br i1 %cmp33, label %if.then35, label %fail

if.then35:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 7
  %23 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %err_code2.i, align 1
  br label %cleanup

if.end36:                                         ; preds = %if.end20
  %page_off = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 3
  %24 = ptrtoint ptr %page_off to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %page_off, align 1
  %conv38 = zext i8 %25 to i32
  %add39 = add nuw nsw i32 %conv38, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add39, i32 %conv6)
  %cmp40 = icmp eq i32 %add39, %conv6
  br i1 %cmp40, label %if.then42, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then42:                                        ; preds = %if.end36
  %delay_write_flag = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 11, i32 4
  %26 = ptrtoint ptr %delay_write_flag to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %delay_write_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %old_blk)
  %cmp43.not = icmp eq i32 %old_blk, -1
  br i1 %cmp43.not, label %if.then42.if.end66_crit_edge, label %if.then45

if.then42.if.end66_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then45:                                        ; preds = %if.then42
  %call46 = tail call fastcc i32 @xd_erase_block(ptr noundef %chip, i32 noundef %old_blk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.else60

if.then49:                                        ; preds = %if.then45
  %multi_flag = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 6
  %27 = ptrtoint ptr %multi_flag to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %multi_flag, align 4
  %29 = and i8 %28, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool51.not = icmp eq i8 %29, 0
  br i1 %tobool51.not, label %if.else58, label %if.then52

if.then52:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @xd_mark_bad_block(ptr noundef %chip, i32 noundef %old_blk)
  %30 = ptrtoint ptr %multi_flag to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %multi_flag, align 4
  %32 = and i8 %31, -3
  store i8 %32, ptr %multi_flag, align 4
  br label %if.end66

if.else58:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @xd_set_unused_block(ptr noundef %chip, i32 noundef %old_blk)
  br label %if.end66

if.else60:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  %err_code2.i143 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 7
  %33 = ptrtoint ptr %err_code2.i143 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %err_code2.i143, align 1
  %multi_flag61 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 6
  %34 = ptrtoint ptr %multi_flag61 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %multi_flag61, align 4
  %36 = and i8 %35, -3
  store i8 %36, ptr %multi_flag61, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else60, %if.else58, %if.then52, %if.then42.if.end66_crit_edge
  %37 = trunc i32 %new_blk to i16
  %conv68 = and i16 %37, 1023
  %zone2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 9
  %38 = ptrtoint ptr %zone2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %zone2.i, align 4
  %arrayidx.i = getelementptr %struct.zone_entry, ptr %39, i32 %div
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr i16, ptr %41, i32 %rem.decomposed
  %42 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv68, ptr %arrayidx3.i, align 2
  br label %cleanup

fail:                                             ; preds = %if.then32
  %call70 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -742, ptr noundef nonnull %reg_val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %fail.cleanup_crit_edge

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end73:                                         ; preds = %fail
  %43 = ptrtoint ptr %reg_val to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %reg_val, align 1
  %45 = and i8 %44, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool76.not = icmp eq i8 %45, 0
  br i1 %tobool76.not, label %if.end73.cleanup_crit_edge, label %if.then77

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  %err_code2.i144 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 7
  %46 = ptrtoint ptr %err_code2.i144 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 64, ptr %err_code2.i144, align 1
  call fastcc void @xd_mark_bad_block(ptr noundef %chip, i32 noundef %new_blk)
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %if.end73.cleanup_crit_edge, %fail.cleanup_crit_edge, %if.end66, %if.end36.cleanup_crit_edge, %if.then35, %if.end9.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end66 ], [ 0, %if.end36.cleanup_crit_edge ], [ %call70, %fail.cleanup_crit_edge ], [ 1, %if.end73.cleanup_crit_edge ], [ 1, %if.then77 ], [ 1, %if.end9.cleanup_crit_edge ], [ 1, %do.end.cleanup_crit_edge ], [ 1, %if.then35 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xd_free_l2p_tbl(ptr nocapture noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %zone = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 9
  %0 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zone, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %zone_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 10
  %2 = ptrtoint ptr %zone_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %zone_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25 = icmp sgt i32 %3, 0
  br i1 %cmp25, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %zone, align 4
  %arrayidx = getelementptr %struct.zone_entry, ptr %5, i32 %i.026
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @vfree(ptr noundef %7) #5
  %8 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %zone, align 4
  %arrayidx4 = getelementptr %struct.zone_entry, ptr %9, i32 %i.026
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx4, align 4
  %11 = load ptr, ptr %zone, align 4
  %free_table = getelementptr %struct.zone_entry, ptr %11, i32 %i.026, i32 1
  %12 = ptrtoint ptr %free_table to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %free_table, align 4
  tail call void @vfree(ptr noundef %13) #5
  %14 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %zone, align 4
  %free_table10 = getelementptr %struct.zone_entry, ptr %15, i32 %i.026, i32 1
  %16 = ptrtoint ptr %free_table10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %free_table10, align 4
  %inc = add nuw nsw i32 %i.026, 1
  %17 = ptrtoint ptr %zone_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %zone_cnt, align 4
  %cmp = icmp slt i32 %inc, %18
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %19 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %zone, align 4
  tail call void @vfree(ptr noundef %20) #5
  %21 = ptrtoint ptr %zone to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %zone, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xd_cleanup_work(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %delay_write_flag = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 11, i32 4
  %0 = ptrtoint ptr %delay_write_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %delay_write_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %do.body

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_cleanup_work.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_cleanup_work, %if.then5)) #5
          to label %do.end [label %if.then5], !srcloc !166

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_cleanup_work.__UNIQUE_ID_ddebug333, ptr noundef %dev.i, ptr noundef nonnull @.str.6) #5
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %call7 = tail call i32 @xd_delay_write(ptr noundef %chip)
  %cleanup_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 12
  %6 = ptrtoint ptr %cleanup_counter to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cleanup_counter, align 4
  br label %if.end8

if.end8:                                          ; preds = %do.end, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xd_power_off_card3v3(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @disable_card_clock(ptr noundef %chip, i8 noundef zeroext 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -683, i8 noundef zeroext 2, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ft2_fast_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 131
  %0 = ptrtoint ptr %ft2_fast_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ft2_fast_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool5.not = icmp eq i32 %1, 0
  br i1 %tobool5.not, label %if.then6, label %if.end4.if.end78_crit_edge

if.end4.if.end78_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

if.then6:                                         ; preds = %if.end4
  %call7 = tail call i32 @card_power_off(ptr noundef %chip, i8 noundef zeroext 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %__here, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

__here:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %2 = tail call i32 @llvm.read_register.i32(metadata !154) #5
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 212
  %6 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 ptrtoint (ptr blockaddress(@xd_power_off_card3v3, %__here) to i32), ptr %task_state_change, align 4
  %7 = load ptr, ptr %task, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %7, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !170
  %call75 = tail call i32 @schedule_timeout(i32 noundef 5) #5
  br label %if.end78

if.end78:                                         ; preds = %__here, %if.end4.if.end78_crit_edge
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %9 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool79.not = icmp eq i32 %10, 0
  br i1 %tobool79.not, label %if.else, label %if.then80

if.then80:                                        ; preds = %if.end78
  %product_id.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %11 = ptrtoint ptr %product_id.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %product_id.i, align 2
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.61)
  switch i16 %12, label %if.then80.if.end89_crit_edge [
    i16 21000, label %if.then.i
    i16 21128, label %if.then28.i
  ]

if.then80.if.end89_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

if.then.i:                                        ; preds = %if.then80
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -672, i8 noundef zeroext -1, i8 noundef zeroext 85) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %call4.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -671, i8 noundef zeroext -1, i8 noundef zeroext 85) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -670, i8 noundef zeroext -1, i8 noundef zeroext 75) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11.i:                                       ; preds = %if.end7.i
  %call12.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -669, i8 noundef zeroext -1, i8 noundef zeroext 85) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end11.i.cleanup_crit_edge

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15.i:                                       ; preds = %if.end11.i
  %call16.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -668, i8 noundef zeroext -1, i8 noundef zeroext -76) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end15.i.cleanup_crit_edge

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19.i:                                       ; preds = %if.end15.i
  %call20.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -667, i8 noundef zeroext -1, i8 noundef zeroext 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.if.end89_crit_edge, label %if.end19.i.cleanup_crit_edge

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19.i.if.end89_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

if.then28.i:                                      ; preds = %if.then80
  %baro_pkg.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 73
  %14 = ptrtoint ptr %baro_pkg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %baro_pkg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp29.i = icmp eq i32 %15, 0
  br i1 %cmp29.i, label %if.then31.i, label %if.then28.i.if.end89_crit_edge

if.then28.i.if.end89_crit_edge:                   ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

if.then31.i:                                      ; preds = %if.then28.i
  %call32.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -672, i8 noundef zeroext -1, i8 noundef zeroext 85) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.then31.i.cleanup_crit_edge

if.then31.i.cleanup_crit_edge:                    ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end35.i:                                       ; preds = %if.then31.i
  %call36.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -671, i8 noundef zeroext -1, i8 noundef zeroext 85) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %if.end35.i.cleanup_crit_edge

if.end35.i.cleanup_crit_edge:                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end39.i:                                       ; preds = %if.end35.i
  %call40.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -670, i8 noundef zeroext -1, i8 noundef zeroext 75) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end43.i, label %if.end39.i.cleanup_crit_edge

if.end39.i.cleanup_crit_edge:                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end43.i:                                       ; preds = %if.end39.i
  %call44.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -669, i8 noundef zeroext -1, i8 noundef zeroext 105) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end43.i.if.end89_crit_edge, label %if.end43.i.cleanup_crit_edge

if.end43.i.cleanup_crit_edge:                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end43.i.if.end89_crit_edge:                    ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

if.else:                                          ; preds = %if.end78
  %call85 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -995, i8 noundef zeroext -1, i8 noundef zeroext -33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.else.if.end89_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else.if.end89_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

if.end89:                                         ; preds = %if.else.if.end89_crit_edge, %if.end43.i.if.end89_crit_edge, %if.then28.i.if.end89_crit_edge, %if.end19.i.if.end89_crit_edge, %if.then80.if.end89_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %if.else.cleanup_crit_edge, %if.end43.i.cleanup_crit_edge, %if.end39.i.cleanup_crit_edge, %if.end35.i.cleanup_crit_edge, %if.then31.i.cleanup_crit_edge, %if.end19.i.cleanup_crit_edge, %if.end15.i.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end89 ], [ 1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ 1, %if.then6.cleanup_crit_edge ], [ %call85, %if.else.cleanup_crit_edge ], [ 1, %if.then.i.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ], [ 1, %if.end7.i.cleanup_crit_edge ], [ 1, %if.end11.i.cleanup_crit_edge ], [ 1, %if.end15.i.cleanup_crit_edge ], [ 1, %if.end19.i.cleanup_crit_edge ], [ 1, %if.then31.i.cleanup_crit_edge ], [ 1, %if.end35.i.cleanup_crit_edge ], [ 1, %if.end39.i.cleanup_crit_edge ], [ 1, %if.end43.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @disable_card_clock(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_write_register(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @card_power_off(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @release_xd_card(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %card_ready = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 21
  %0 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %card_ready, align 2
  %2 = and i8 %1, -17
  store i8 %2, ptr %card_ready, align 2
  %card_fail = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 22
  %3 = ptrtoint ptr %card_fail to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %card_fail, align 1
  %5 = and i8 %4, -17
  store i8 %5, ptr %card_fail, align 1
  %card_wp = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 24
  %6 = ptrtoint ptr %card_wp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %card_wp, align 1
  %8 = and i8 %7, -17
  store i8 %8, ptr %card_wp, align 1
  %delay_write_flag = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 11, i32 4
  %9 = ptrtoint ptr %delay_write_flag to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %delay_write_flag, align 1
  %zone.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 9
  %10 = ptrtoint ptr %zone.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %zone.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.xd_free_l2p_tbl.exit_crit_edge, label %for.cond.preheader.i

entry.xd_free_l2p_tbl.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %xd_free_l2p_tbl.exit

for.cond.preheader.i:                             ; preds = %entry
  %zone_cnt.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 10
  %12 = ptrtoint ptr %zone_cnt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %zone_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp25.i = icmp sgt i32 %13, 0
  br i1 %cmp25.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %zone.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %zone.i, align 4
  %arrayidx.i = getelementptr %struct.zone_entry, ptr %15, i32 %i.026.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  tail call void @vfree(ptr noundef %17) #5
  %18 = ptrtoint ptr %zone.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %zone.i, align 4
  %arrayidx4.i = getelementptr %struct.zone_entry, ptr %19, i32 %i.026.i
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx4.i, align 4
  %21 = load ptr, ptr %zone.i, align 4
  %free_table.i = getelementptr %struct.zone_entry, ptr %21, i32 %i.026.i, i32 1
  %22 = ptrtoint ptr %free_table.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %free_table.i, align 4
  tail call void @vfree(ptr noundef %23) #5
  %24 = ptrtoint ptr %zone.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %zone.i, align 4
  %free_table10.i = getelementptr %struct.zone_entry, ptr %25, i32 %i.026.i, i32 1
  %26 = ptrtoint ptr %free_table10.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %free_table10.i, align 4
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %27 = ptrtoint ptr %zone_cnt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %zone_cnt.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %28
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %29 = ptrtoint ptr %zone.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %zone.i, align 4
  tail call void @vfree(ptr noundef %30) #5
  %31 = ptrtoint ptr %zone.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %zone.i, align 4
  br label %xd_free_l2p_tbl.exit

xd_free_l2p_tbl.exit:                             ; preds = %for.end.i, %entry.xd_free_l2p_tbl.exit_crit_edge
  %call = tail call i32 @xd_power_off_card3v3(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp ne i32 %call, 0
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @select_card(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_add_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_send_cmd(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xd_fill_pull_ctl_enable(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %0 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %product_id, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.62)
  switch i16 %1, label %entry.if.end11_crit_edge [
    i16 21000, label %if.then
    i16 21128, label %if.then6
  ]

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -672, i8 noundef zeroext -1, i8 noundef zeroext 85) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -671, i8 noundef zeroext -1, i8 noundef zeroext 85) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -670, i8 noundef zeroext -1, i8 noundef zeroext 83) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -669, i8 noundef zeroext -1, i8 noundef zeroext -87) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -668, i8 noundef zeroext -1, i8 noundef zeroext -76) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -667, i8 noundef zeroext -1, i8 noundef zeroext 5) #5
  br label %if.end11

if.then6:                                         ; preds = %entry
  %baro_pkg = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 73
  %3 = ptrtoint ptr %baro_pkg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %baro_pkg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp7 = icmp eq i32 %4, 0
  br i1 %cmp7, label %if.then9, label %if.then6.if.end11_crit_edge

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -672, i8 noundef zeroext -1, i8 noundef zeroext 85) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -671, i8 noundef zeroext -1, i8 noundef zeroext 85) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -670, i8 noundef zeroext -1, i8 noundef zeroext 83) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -669, i8 noundef zeroext -1, i8 noundef zeroext -87) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then6.if.end11_crit_edge, %if.then, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @card_power_on(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xd_read_id(ptr noundef %chip, i8 noundef zeroext %id_cmd, ptr noundef writeonly %id_buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -742, i8 noundef zeroext -1, i8 noundef zeroext %id_cmd) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -749, i8 noundef zeroext -1, i8 noundef zeroext -125) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -749, i8 noundef zeroext 64, i8 noundef zeroext 64) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -746, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -745, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -744, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -743, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %call = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 16, i32 noundef 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %id_buf, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %host_cmds_ptr.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 4
  %1 = ptrtoint ptr %host_cmds_ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %host_cmds_ptr.i, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 1
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %add.ptr, align 1
  %5 = ptrtoint ptr %id_buf to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %id_buf, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xd_read_redundant(ptr noundef %chip, i32 noundef %page_addr, ptr noundef writeonly %buf, i32 noundef %buf_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -747, i8 noundef zeroext -1, i8 noundef zeroext 0) #5
  %conv2.i = trunc i32 %page_addr to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -746, i8 noundef zeroext -1, i8 noundef zeroext %conv2.i) #5
  %shr.i = lshr i32 %page_addr, 8
  %conv3.i = trunc i32 %shr.i to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -745, i8 noundef zeroext -1, i8 noundef zeroext %conv3.i) #5
  %shr4.i = lshr i32 %page_addr, 16
  %conv5.i = trunc i32 %shr4.i to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -744, i8 noundef zeroext -1, i8 noundef zeroext %conv5.i) #5
  %addr_cycle.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 4
  %1 = ptrtoint ptr %addr_cycle.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr_cycle.i, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -748, i8 noundef zeroext -1, i8 noundef zeroext %2) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -749, i8 noundef zeroext -1, i8 noundef zeroext -124) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -749, i8 noundef zeroext 64, i8 noundef zeroext 64) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -740, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -739, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -738, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -737, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -736, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -735, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -727, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -726, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -725, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -724, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -732, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %call = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 16, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp11 = icmp slt i32 %call, 0
  br i1 %cmp11, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %tobool13.not = icmp eq i32 %buf_len, 0
  %or.cond = or i1 %tobool.not, %tobool13.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.then14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %host_cmds_ptr.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 4
  %3 = ptrtoint ptr %host_cmds_ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host_cmds_ptr.i, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 1
  %5 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %buf_len)
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xd_read_cis(ptr noundef %chip, i32 noundef %page_addr, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  %reg = alloca i8, align 1
  %ecc_bit = alloca i8, align 1
  %ecc_byte = alloca i8, align 1
  %ecc_bit117 = alloca i8, align 1
  %ecc_byte118 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #5
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg, align 1, !annotation !168
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.cleanup206_crit_edge, label %if.end

entry.cleanup206_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup206

if.end:                                           ; preds = %entry
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %1 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -747, i8 noundef zeroext -1, i8 noundef zeroext 0) #5
  %conv2.i = trunc i32 %page_addr to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -746, i8 noundef zeroext -1, i8 noundef zeroext %conv2.i) #5
  %shr.i = lshr i32 %page_addr, 8
  %conv3.i = trunc i32 %shr.i to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -745, i8 noundef zeroext -1, i8 noundef zeroext %conv3.i) #5
  %shr4.i = lshr i32 %page_addr, 16
  %conv5.i = trunc i32 %shr4.i to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -744, i8 noundef zeroext -1, i8 noundef zeroext %conv5.i) #5
  %addr_cycle.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 4
  %2 = ptrtoint ptr %addr_cycle.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr_cycle.i, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -748, i8 noundef zeroext -1, i8 noundef zeroext %3) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -741, i8 noundef zeroext -1, i8 noundef zeroext 1) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -723, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -749, i8 noundef zeroext -1, i8 noundef zeroext -123) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -749, i8 noundef zeroext 64, i8 noundef zeroext 64) #5
  %call = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 16, i32 noundef 250) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call)
  %cmp2 = icmp eq i32 %call, -110
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 34, i8 noundef zeroext 34) #5
  br label %cleanup206

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -740, ptr noundef nonnull %reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup206_crit_edge

if.end4.cleanup206_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup206

if.end8:                                          ; preds = %if.end4
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp9.not = icmp eq i8 %5, -1
  br i1 %cmp9.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %call.i17 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 34, i8 noundef zeroext 34) #5
  br label %cleanup206

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -750, ptr noundef nonnull %reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup206_crit_edge

if.end12.cleanup206_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup206

if.end16:                                         ; preds = %if.end12
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg, align 1
  %conv17 = zext i8 %7 to i32
  %8 = and i32 %conv17, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %8)
  %.not = icmp eq i32 %8, 48
  br i1 %.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end16
  %call24 = call fastcc i32 @xd_read_data_from_ppb(ptr noundef %chip, i32 noundef 0, ptr noundef nonnull %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %if.end28, label %if.then23.cleanup206_crit_edge

if.then23.cleanup206_crit_edge:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup206

if.end28:                                         ; preds = %if.then23
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %reg, align 1
  %11 = and i8 %10, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool31.not = icmp eq i8 %11, 0
  br i1 %tobool31.not, label %if.end28.cleanup206_crit_edge, label %if.then32

if.end28.cleanup206_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup206

if.then32:                                        ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ecc_bit) #5
  %12 = ptrtoint ptr %ecc_bit to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %ecc_bit, align 1, !annotation !168
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ecc_byte) #5
  %13 = ptrtoint ptr %ecc_byte to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %ecc_byte, align 1, !annotation !168
  %call33 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -731, ptr noundef nonnull %ecc_bit) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.then32.cleanup.thread31_crit_edge

if.then32.cleanup.thread31_crit_edge:             ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread31

if.end36:                                         ; preds = %if.then32
  %call37 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -730, ptr noundef nonnull %ecc_byte) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %do.body, label %if.end36.cleanup.thread31_crit_edge

if.end36.cleanup.thread31_crit_edge:              ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread31

do.body:                                          ; preds = %if.end36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_read_cis.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_read_cis, %if.then45)) #5
          to label %do.end [label %if.then45], !srcloc !166

if.then45:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %18 = ptrtoint ptr %ecc_bit to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ecc_bit, align 1
  %conv47 = zext i8 %19 to i32
  %20 = ptrtoint ptr %ecc_byte to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ecc_byte, align 1
  %conv48 = zext i8 %21 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_read_cis.__UNIQUE_ID_ddebug287, ptr noundef %dev.i, ptr noundef nonnull @.str.16, i32 noundef %conv47, i32 noundef %conv48) #5
  br label %do.end

do.end:                                           ; preds = %if.then45, %do.body
  %22 = ptrtoint ptr %ecc_byte to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ecc_byte, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %23)
  %cmp51 = icmp ult i8 %23, 10
  br i1 %cmp51, label %do.body54, label %do.end.cleanup.thread_crit_edge

do.end.cleanup.thread_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

do.body54:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_read_cis.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_read_cis, %if.then66)) #5
          to label %do.end71 [label %if.then66], !srcloc !166

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %dev.i18 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %28 = ptrtoint ptr %ecc_byte to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ecc_byte, align 1
  %idxprom = zext i8 %29 to i32
  %arrayidx = getelementptr i8, ptr %buf, i32 %idxprom
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  %conv68 = zext i8 %31 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_read_cis.__UNIQUE_ID_ddebug288, ptr noundef %dev.i18, ptr noundef nonnull @.str.17, i32 noundef %conv68) #5
  br label %do.end71

do.end71:                                         ; preds = %if.then66, %do.body54
  %32 = ptrtoint ptr %ecc_bit to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ecc_bit, align 1
  %conv72 = zext i8 %33 to i32
  %shl = shl nuw i32 1, %conv72
  %34 = ptrtoint ptr %ecc_byte to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ecc_byte, align 1
  %idxprom73 = zext i8 %35 to i32
  %arrayidx74 = getelementptr i8, ptr %buf, i32 %idxprom73
  %36 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx74, align 1
  %38 = trunc i32 %shl to i8
  %conv76 = xor i8 %37, %38
  store i8 %conv76, ptr %arrayidx74, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_read_cis.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_read_cis, %if.then89)) #5
          to label %cleanup [label %if.then89], !srcloc !166

if.then89:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %dev.i19 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %43 = ptrtoint ptr %ecc_byte to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ecc_byte, align 1
  %idxprom91 = zext i8 %44 to i32
  %arrayidx92 = getelementptr i8, ptr %buf, i32 %idxprom91
  %45 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %46 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_read_cis.__UNIQUE_ID_ddebug289, ptr noundef %dev.i19, ptr noundef nonnull @.str.18, i32 noundef %conv93) #5
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then89, %do.end.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ecc_byte) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ecc_bit) #5
  br label %cleanup206

cleanup.thread31:                                 ; preds = %if.end36.cleanup.thread31_crit_edge, %if.then32.cleanup.thread31_crit_edge
  %retval.0.ph = phi i32 [ %call37, %if.end36.cleanup.thread31_crit_edge ], [ %call33, %if.then32.cleanup.thread31_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ecc_byte) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ecc_bit) #5
  br label %cleanup206

cleanup:                                          ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ecc_byte) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ecc_bit) #5
  br label %cleanup206

if.else:                                          ; preds = %if.end16
  %47 = and i32 %conv17, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %47)
  %.not43 = icmp eq i32 %47, 192
  %call.i24 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 34, i8 noundef zeroext 34) #5
  br i1 %.not43, label %if.else.cleanup206_crit_edge, label %if.then107

if.else.cleanup206_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup206

if.then107:                                       ; preds = %if.else
  %call108 = call fastcc i32 @xd_read_data_from_ppb(ptr noundef %chip, i32 noundef 256, ptr noundef nonnull %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp109.not = icmp eq i32 %call108, 0
  br i1 %cmp109.not, label %if.end112, label %if.then107.cleanup206_crit_edge

if.then107.cleanup206_crit_edge:                  ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup206

if.end112:                                        ; preds = %if.then107
  %48 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %reg, align 1
  %50 = and i8 %49, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool115.not = icmp eq i8 %50, 0
  br i1 %tobool115.not, label %if.end112.cleanup206_crit_edge, label %if.then116

if.end112.cleanup206_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup206

if.then116:                                       ; preds = %if.end112
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ecc_bit117) #5
  %51 = ptrtoint ptr %ecc_bit117 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -1, ptr %ecc_bit117, align 1, !annotation !168
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ecc_byte118) #5
  %52 = ptrtoint ptr %ecc_byte118 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -1, ptr %ecc_byte118, align 1, !annotation !168
  %call119 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -729, ptr noundef nonnull %ecc_bit117) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end122, label %if.then116.cleanup198.thread40_crit_edge

if.then116.cleanup198.thread40_crit_edge:         ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup198.thread40

if.end122:                                        ; preds = %if.then116
  %call123 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -728, ptr noundef nonnull %ecc_byte118) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %do.body127, label %if.end122.cleanup198.thread40_crit_edge

if.end122.cleanup198.thread40_crit_edge:          ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup198.thread40

do.body127:                                       ; preds = %if.end122
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_read_cis.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_read_cis, %if.then139)) #5
          to label %do.end145 [label %if.then139], !srcloc !166

if.then139:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chip, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %dev.i21 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %57 = ptrtoint ptr %ecc_bit117 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ecc_bit117, align 1
  %conv141 = zext i8 %58 to i32
  %59 = ptrtoint ptr %ecc_byte118 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ecc_byte118, align 1
  %conv142 = zext i8 %60 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_read_cis.__UNIQUE_ID_ddebug290, ptr noundef %dev.i21, ptr noundef nonnull @.str.19, i32 noundef %conv141, i32 noundef %conv142) #5
  br label %do.end145

do.end145:                                        ; preds = %if.then139, %do.body127
  %61 = ptrtoint ptr %ecc_byte118 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %ecc_byte118, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %62)
  %cmp147 = icmp ult i8 %62, 10
  br i1 %cmp147, label %do.body150, label %do.end145.cleanup198.thread_crit_edge

do.end145.cleanup198.thread_crit_edge:            ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup198.thread

do.body150:                                       ; preds = %do.end145
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_read_cis.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_read_cis, %if.then162)) #5
          to label %do.end169 [label %if.then162], !srcloc !166

if.then162:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chip, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %dev.i22 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %67 = ptrtoint ptr %ecc_byte118 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ecc_byte118, align 1
  %idxprom164 = zext i8 %68 to i32
  %arrayidx165 = getelementptr i8, ptr %buf, i32 %idxprom164
  %69 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx165, align 1
  %conv166 = zext i8 %70 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_read_cis.__UNIQUE_ID_ddebug291, ptr noundef %dev.i22, ptr noundef nonnull @.str.17, i32 noundef %conv166) #5
  br label %do.end169

do.end169:                                        ; preds = %if.then162, %do.body150
  %71 = ptrtoint ptr %ecc_bit117 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ecc_bit117, align 1
  %conv170 = zext i8 %72 to i32
  %shl171 = shl nuw i32 1, %conv170
  %73 = ptrtoint ptr %ecc_byte118 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %ecc_byte118, align 1
  %idxprom172 = zext i8 %74 to i32
  %arrayidx173 = getelementptr i8, ptr %buf, i32 %idxprom172
  %75 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx173, align 1
  %77 = trunc i32 %shl171 to i8
  %conv176 = xor i8 %76, %77
  store i8 %conv176, ptr %arrayidx173, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_read_cis.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_read_cis, %if.then189)) #5
          to label %cleanup198 [label %if.then189], !srcloc !166

if.then189:                                       ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %chip, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %dev.i23 = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  %82 = ptrtoint ptr %ecc_byte118 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %ecc_byte118, align 1
  %idxprom191 = zext i8 %83 to i32
  %arrayidx192 = getelementptr i8, ptr %buf, i32 %idxprom191
  %84 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx192, align 1
  %conv193 = zext i8 %85 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_read_cis.__UNIQUE_ID_ddebug292, ptr noundef %dev.i23, ptr noundef nonnull @.str.18, i32 noundef %conv193) #5
  br label %cleanup198.thread

cleanup198.thread:                                ; preds = %if.then189, %do.end145.cleanup198.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ecc_byte118) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ecc_bit117) #5
  br label %cleanup206

cleanup198.thread40:                              ; preds = %if.end122.cleanup198.thread40_crit_edge, %if.then116.cleanup198.thread40_crit_edge
  %retval.1.ph = phi i32 [ %call123, %if.end122.cleanup198.thread40_crit_edge ], [ %call119, %if.then116.cleanup198.thread40_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ecc_byte118) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ecc_bit117) #5
  br label %cleanup206

cleanup198:                                       ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ecc_byte118) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ecc_bit117) #5
  br label %cleanup206

cleanup206:                                       ; preds = %cleanup198, %cleanup198.thread40, %cleanup198.thread, %if.end112.cleanup206_crit_edge, %if.then107.cleanup206_crit_edge, %if.else.cleanup206_crit_edge, %cleanup, %cleanup.thread31, %cleanup.thread, %if.end28.cleanup206_crit_edge, %if.then23.cleanup206_crit_edge, %if.end12.cleanup206_crit_edge, %if.then11, %if.end4.cleanup206_crit_edge, %if.then3, %entry.cleanup206_crit_edge
  %retval.2 = phi i32 [ 1, %if.then3 ], [ 1, %if.then11 ], [ 1, %entry.cleanup206_crit_edge ], [ %call5, %if.end4.cleanup206_crit_edge ], [ %call13, %if.end12.cleanup206_crit_edge ], [ 1, %if.then23.cleanup206_crit_edge ], [ 1, %if.then107.cleanup206_crit_edge ], [ %retval.0.ph, %cleanup.thread31 ], [ %retval.1.ph, %cleanup198.thread40 ], [ 0, %cleanup198 ], [ 0, %cleanup198.thread ], [ 0, %cleanup ], [ 0, %cleanup.thread ], [ 0, %if.end112.cleanup206_crit_edge ], [ 0, %if.end28.cleanup206_crit_edge ], [ 1, %if.else.cleanup206_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #5
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switch_ssc_clock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switch_normal_clock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_read_register(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xd_read_data_from_ppb(ptr noundef %chip, i32 noundef %offset, ptr noundef writeonly %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ci, align 4
  %1 = trunc i32 %offset to i16
  %conv = add i16 %1, -1536
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext %conv, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %2 = trunc i32 %offset to i16
  %conv.1 = add i16 %2, -1535
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext %conv.1, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %3 = trunc i32 %offset to i16
  %conv.2 = add i16 %3, -1534
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext %conv.2, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %4 = trunc i32 %offset to i16
  %conv.3 = add i16 %4, -1533
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext %conv.3, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %5 = trunc i32 %offset to i16
  %conv.4 = add i16 %5, -1532
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext %conv.4, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %6 = trunc i32 %offset to i16
  %conv.5 = add i16 %6, -1531
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext %conv.5, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %7 = trunc i32 %offset to i16
  %conv.6 = add i16 %7, -1530
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext %conv.6, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %8 = trunc i32 %offset to i16
  %conv.7 = add i16 %8, -1529
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext %conv.7, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %9 = trunc i32 %offset to i16
  %conv.8 = add i16 %9, -1528
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext %conv.8, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %10 = trunc i32 %offset to i16
  %conv.9 = add i16 %10, -1527
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext %conv.9, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %call = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 250) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 34, i8 noundef zeroext 34) #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %host_cmds_ptr.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 4
  %11 = ptrtoint ptr %host_cmds_ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host_cmds_ptr.i, align 4
  %13 = call ptr @memcpy(ptr %buf, ptr %12, i32 10)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 0, %if.end7 ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xd_init_page(ptr noundef %chip, i32 noundef %phy_blk, i16 noundef zeroext %logoff, i8 noundef zeroext %start_page, i8 noundef zeroext %end_page) unnamed_addr #0 align 64 {
entry:
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #5
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %reg, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_init_page.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_init_page, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_init_page.__UNIQUE_ID_ddebug315, ptr noundef %dev.i, ptr noundef nonnull @.str.28, i32 noundef %phy_blk) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_cmp1(i8 %end_page, i8 %start_page)
  %cmp = icmp ult i8 %end_page, %start_page
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %phy_blk)
  %cmp10 = icmp eq i32 %phy_blk, -1
  %or.cond = or i1 %cmp10, %cmp
  br i1 %or.cond, label %do.end.cleanup_crit_edge, label %if.end13

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %conv = zext i8 %start_page to i32
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %5 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -740, i8 noundef zeroext -1, i8 noundef zeroext -1) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -739, i8 noundef zeroext -1, i8 noundef zeroext -1) #5
  %6 = lshr i16 %logoff, 8
  %conv15 = trunc i16 %6 to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -737, i8 noundef zeroext -1, i8 noundef zeroext %conv15) #5
  %conv16 = trunc i16 %logoff to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -738, i8 noundef zeroext -1, i8 noundef zeroext %conv16) #5
  %block_shift = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 2
  %7 = ptrtoint ptr %block_shift to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %block_shift, align 2
  %conv17 = zext i8 %8 to i32
  %shl = shl i32 %phy_blk, %conv17
  %add = add i32 %shl, %conv
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -747, i8 noundef zeroext -1, i8 noundef zeroext 0) #5
  %conv2.i = trunc i32 %add to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -746, i8 noundef zeroext -1, i8 noundef zeroext %conv2.i) #5
  %shr.i = lshr i32 %add, 8
  %conv3.i = trunc i32 %shr.i to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -745, i8 noundef zeroext -1, i8 noundef zeroext %conv3.i) #5
  %shr4.i = lshr i32 %add, 16
  %conv5.i = trunc i32 %shr4.i to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -744, i8 noundef zeroext -1, i8 noundef zeroext %conv5.i) #5
  %addr_cycle.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 4
  %9 = ptrtoint ptr %addr_cycle.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %addr_cycle.i, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -748, i8 noundef zeroext -1, i8 noundef zeroext %10) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -748, i8 noundef zeroext 64, i8 noundef zeroext 64) #5
  %sub = sub i8 %end_page, %start_page
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -741, i8 noundef zeroext -1, i8 noundef zeroext %sub) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -749, i8 noundef zeroext -1, i8 noundef zeroext -118) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -749, i8 noundef zeroext 64, i8 noundef zeroext 64) #5
  %call22 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 16, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then25:                                        ; preds = %if.end13
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 34, i8 noundef zeroext 34) #5
  %call26 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -742, ptr noundef nonnull %reg) #5
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reg, align 1
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool28.not = icmp eq i8 %13, 0
  br i1 %tobool28.not, label %if.then25.cleanup.sink.split_crit_edge, label %if.then29

if.then25.cleanup.sink.split_crit_edge:           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then29:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @xd_mark_bad_block(ptr noundef %chip, i32 noundef %phy_blk)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then29, %if.then25.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ 64, %if.then29 ], [ 1, %if.then25.cleanup.sink.split_crit_edge ]
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 7
  %14 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink, ptr %err_code2.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end13.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xd_erase_block(ptr noundef %chip, i32 noundef %phy_blk) unnamed_addr #0 align 64 {
entry:
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #5
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %reg, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %phy_blk)
  %cmp = icmp eq i32 %phy_blk, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %block_shift = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 2
  %1 = ptrtoint ptr %block_shift to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %block_shift, align 2
  %conv = zext i8 %2 to i32
  %shl = shl i32 %phy_blk, %conv
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %conv10.i = trunc i32 %shl to i8
  %shr11.i = lshr i32 %shl, 8
  %conv12.i = trunc i32 %shr11.i to i8
  %shr13.i = lshr i32 %shl, 16
  %conv14.i = trunc i32 %shr13.i to i8
  %addr_cycle15.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 4
  %err_code2.i55 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 7
  %host_cmds_ptr.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 4
  br label %for.body

for.cond:                                         ; preds = %land.lhs.true.i
  %inc = add nuw nsw i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.cond.cleanup.sink.split_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.cleanup.sink.split_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end
  %i.061 = phi i32 [ 0, %if.end ], [ %inc, %for.cond.for.body_crit_edge ]
  %3 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ci, align 4
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -747, i8 noundef zeroext -1, i8 noundef zeroext %conv10.i) #5
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -746, i8 noundef zeroext -1, i8 noundef zeroext %conv12.i) #5
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -745, i8 noundef zeroext -1, i8 noundef zeroext %conv14.i) #5
  %4 = ptrtoint ptr %addr_cycle15.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr_cycle15.i, align 4
  %sub.i = add i8 %5, -1
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -748, i8 noundef zeroext -1, i8 noundef zeroext %sub.i) #5
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -749, i8 noundef zeroext -1, i8 noundef zeroext -127) #5
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -749, i8 noundef zeroext 64, i8 noundef zeroext 64) #5
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -742, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %call = call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 16, i32 noundef 250) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.then7, label %if.end18

if.then7:                                         ; preds = %for.body
  %call.i = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 34, i8 noundef zeroext 34) #5
  %call8 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -742, ptr noundef nonnull %reg) #5
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end12, label %if.then7.cleanup.sink.split_crit_edge

if.then7.cleanup.sink.split_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.then7
  %9 = ptrtoint ptr %err_code2.i55 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 8, ptr %err_code2.i55, align 1
  %10 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ci, align 4
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -749, i8 noundef zeroext -1, i8 noundef zeroext -128) #5
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -749, i8 noundef zeroext 64, i8 noundef zeroext 64) #5
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -742, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -750, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %call.i56 = call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 16, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %cmp.i = icmp slt i32 %call.i56, 0
  br i1 %cmp.i, label %if.end12.cleanup_crit_edge, label %if.end.i

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end12
  %11 = ptrtoint ptr %host_cmds_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host_cmds_ptr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 1
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr.i, align 1
  %15 = and i8 %14, 95
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %15)
  %cmp3.i = icmp eq i8 %15, 64
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i
  %arrayidx5.i = getelementptr i8, ptr %12, i32 2
  %16 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx5.i, align 1
  %18 = and i8 %17, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %for.cond

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %for.body
  %19 = ptrtoint ptr %host_cmds_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host_cmds_ptr.i.i, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 1
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr, align 1
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool22.not = icmp eq i8 %23, 0
  br i1 %tobool22.not, label %if.end18.cleanup_crit_edge, label %if.end18.cleanup.sink.split_crit_edge

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end18.cleanup.sink.split_crit_edge, %if.then7.cleanup.sink.split_crit_edge, %for.cond.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ 64, %if.end18.cleanup.sink.split_crit_edge ], [ 64, %if.then7.cleanup.sink.split_crit_edge ], [ 8, %for.cond.cleanup.sink.split_crit_edge ]
  call fastcc void @xd_mark_bad_block(ptr noundef %chip, i32 noundef %phy_blk)
  %24 = ptrtoint ptr %err_code2.i55 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink, ptr %err_code2.i55, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end18.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ 1, %cleanup.sink.split ], [ 1, %if.end12.cleanup_crit_edge ], [ 1, %land.lhs.true.i.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xd_set_unused_block(ptr noundef %chip, i32 noundef %phy_blk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = ashr i32 %phy_blk, 10
  %zone_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 10
  %0 = ptrtoint ptr %zone_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zone_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %1)
  %cmp.not = icmp slt i32 %shr, %1
  br i1 %cmp.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_set_unused_block.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_set_unused_block, %if.then4)) #5
          to label %cleanup [label %if.then4], !srcloc !166

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %zone_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %zone_cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_set_unused_block.__UNIQUE_ID_ddebug303, ptr noundef %dev.i, ptr noundef nonnull @.str.30, i32 noundef %shr, i32 noundef %7) #5
  br label %cleanup

if.end7:                                          ; preds = %entry
  %zone8 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 9
  %8 = ptrtoint ptr %zone8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %zone8, align 4
  %arrayidx = getelementptr %struct.zone_entry, ptr %9, i32 %shr
  %free_table = getelementptr %struct.zone_entry, ptr %9, i32 %shr, i32 1
  %10 = ptrtoint ptr %free_table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %free_table, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %if.then10, label %if.end7.if.end15_crit_edge

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then10:                                        ; preds = %if.end7
  %call11 = tail call fastcc i32 @xd_build_l2p_tbl(ptr noundef %chip, i32 noundef %shr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %if.then10.if.end15_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end15:                                         ; preds = %if.then10.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  %set_index = getelementptr %struct.zone_entry, ptr %9, i32 %shr, i32 3
  %12 = ptrtoint ptr %set_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %set_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1199, i32 %13)
  %14 = icmp ugt i32 %13, 1199
  br i1 %14, label %if.then19, label %do.body38

if.then19:                                        ; preds = %if.end15
  %tobool.not.i = icmp eq ptr %arrayidx, null
  br i1 %tobool.not.i, label %if.then19.free_zone.exit_crit_edge, label %if.end.i

if.then19.free_zone.exit_crit_edge:               ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_zone.exit

if.end.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  %build_flag.i = getelementptr %struct.zone_entry, ptr %9, i32 %shr, i32 7
  %15 = ptrtoint ptr %build_flag.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %build_flag.i, align 4
  %16 = ptrtoint ptr %set_index to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %set_index, align 4
  %get_index.i = getelementptr %struct.zone_entry, ptr %9, i32 %shr, i32 4
  %17 = ptrtoint ptr %get_index.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %get_index.i, align 4
  %unused_blk_cnt.i = getelementptr %struct.zone_entry, ptr %9, i32 %shr, i32 5
  %18 = ptrtoint ptr %unused_blk_cnt.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %unused_blk_cnt.i, align 4
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  tail call void @vfree(ptr noundef %20) #5
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %free_table to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %free_table, align 4
  tail call void @vfree(ptr noundef %23) #5
  %24 = ptrtoint ptr %free_table to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %free_table, align 4
  br label %free_zone.exit

free_zone.exit:                                   ; preds = %if.end.i, %if.then19.free_zone.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_set_unused_block.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_set_unused_block, %if.then32)) #5
          to label %cleanup [label %if.then32], !srcloc !166

if.then32:                                        ; preds = %free_zone.exit
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %dev.i93 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_set_unused_block.__UNIQUE_ID_ddebug304, ptr noundef %dev.i93, ptr noundef nonnull @.str.31) #5
  br label %cleanup

do.body38:                                        ; preds = %if.end15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_set_unused_block.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_set_unused_block, %if.then50)) #5
          to label %do.end55 [label %if.then50], !srcloc !166

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %dev.i94 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %33 = ptrtoint ptr %set_index to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %set_index, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_set_unused_block.__UNIQUE_ID_ddebug305, ptr noundef %dev.i94, ptr noundef nonnull @.str.32, i32 noundef %34) #5
  br label %do.end55

do.end55:                                         ; preds = %if.then50, %do.body38
  %35 = trunc i32 %phy_blk to i16
  %conv = and i16 %35, 1023
  %36 = ptrtoint ptr %free_table to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %free_table, align 4
  %38 = ptrtoint ptr %set_index to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %set_index, align 4
  %inc = add i32 %39, 1
  store i32 %inc, ptr %set_index, align 4
  %arrayidx58 = getelementptr i16, ptr %37, i32 %39
  %40 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv, ptr %arrayidx58, align 2
  %41 = load i32, ptr %set_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1199, i32 %41)
  %cmp60 = icmp sgt i32 %41, 1199
  br i1 %cmp60, label %if.then62, label %do.end55.if.end64_crit_edge

do.end55.if.end64_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then62:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %set_index to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %set_index, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %do.end55.if.end64_crit_edge
  %unused_blk_cnt = getelementptr %struct.zone_entry, ptr %9, i32 %shr, i32 5
  %43 = ptrtoint ptr %unused_blk_cnt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %unused_blk_cnt, align 4
  %inc65 = add i32 %44, 1
  store i32 %inc65, ptr %unused_blk_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.then32, %free_zone.exit, %if.then10.cleanup_crit_edge, %if.then4, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xd_mark_bad_block(ptr noundef %chip, i32 noundef %phy_blk) unnamed_addr #0 align 64 {
entry:
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #5
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %reg, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xd_mark_bad_block.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xd_mark_bad_block, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xd_mark_bad_block.__UNIQUE_ID_ddebug314, ptr noundef %dev.i, ptr noundef nonnull @.str.34, i32 noundef %phy_blk) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %phy_blk)
  %cmp = icmp eq i32 %phy_blk, -1
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %5 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -740, i8 noundef zeroext -1, i8 noundef zeroext -1) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -739, i8 noundef zeroext -1, i8 noundef zeroext -16) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -737, i8 noundef zeroext -1, i8 noundef zeroext -1) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -738, i8 noundef zeroext -1, i8 noundef zeroext -1) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -735, i8 noundef zeroext -1, i8 noundef zeroext -1) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -736, i8 noundef zeroext -1, i8 noundef zeroext -1) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -727, i8 noundef zeroext -1, i8 noundef zeroext -1) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -726, i8 noundef zeroext -1, i8 noundef zeroext -1) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -725, i8 noundef zeroext -1, i8 noundef zeroext -1) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -724, i8 noundef zeroext -1, i8 noundef zeroext -1) #5
  %block_shift = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 2
  %6 = ptrtoint ptr %block_shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %block_shift, align 2
  %conv = zext i8 %7 to i32
  %shl = shl i32 %phy_blk, %conv
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -747, i8 noundef zeroext -1, i8 noundef zeroext 0) #5
  %conv2.i = trunc i32 %shl to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -746, i8 noundef zeroext -1, i8 noundef zeroext %conv2.i) #5
  %shr.i = lshr i32 %shl, 8
  %conv3.i = trunc i32 %shr.i to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -745, i8 noundef zeroext -1, i8 noundef zeroext %conv3.i) #5
  %shr4.i = lshr i32 %shl, 16
  %conv5.i = trunc i32 %shr4.i to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -744, i8 noundef zeroext -1, i8 noundef zeroext %conv5.i) #5
  %addr_cycle.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 4
  %8 = ptrtoint ptr %addr_cycle.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr_cycle.i, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -748, i8 noundef zeroext -1, i8 noundef zeroext %9) #5
  %page_off = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 3
  %10 = ptrtoint ptr %page_off to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %page_off, align 1
  %add = add i8 %11, 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -741, i8 noundef zeroext -1, i8 noundef zeroext %add) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -749, i8 noundef zeroext -1, i8 noundef zeroext -118) #5
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -749, i8 noundef zeroext 64, i8 noundef zeroext 64) #5
  %call10 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 16, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 34, i8 noundef zeroext 34) #5
  %call14 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -742, ptr noundef nonnull %reg) #5
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reg, align 1
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not = icmp eq i8 %14, 0
  %err_code2.i1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 7
  %. = select i1 %tobool16.not, i8 1, i8 64
  %15 = ptrtoint ptr %err_code2.i1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %., ptr %err_code2.i1, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trans_dma_enable(i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_send_cmd_no_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_transfer_data_partial(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !17, !19, !21, !22, !23, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !41, !43, !44, !46, !47, !49, !50, !52, !54, !56, !57, !58, !60, !61, !63, !64, !65, !67, !68, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !115, !117, !118, !120, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !148, !150, !152, !153}
!llvm.named.register.sp = !{!154}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rts5208/xd.c", i32 1845, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @xd_rw.__UNIQUE_ID_ddebug331, !1, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rts5208/xd.c", i32 1956, i32 2}
!8 = !{ptr @xd_rw.__UNIQUE_ID_ddebug332, !7, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/rts5208/xd.c", i32 2094, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @xd_cleanup_work.__UNIQUE_ID_ddebug333, !10, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../drivers/staging/rts5208/xd.c", i32 2118, i32 3}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/staging/rts5208/xd.c", i32 479, i32 3}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/staging/rts5208/xd.c", i32 501, i32 3}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/rts5208/xd.c", i32 503, i32 4}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @reset_xd.__UNIQUE_ID_ddebug295, !20, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../drivers/staging/rts5208/xd.c", i32 531, i32 3}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/rts5208/xd.c", i32 563, i32 3}
!27 = !{ptr @reset_xd.__UNIQUE_ID_ddebug297, !26, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/rts5208/xd.c", i32 574, i32 3}
!30 = !{ptr @reset_xd.__UNIQUE_ID_ddebug298, !29, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/rts5208/xd.c", i32 675, i32 2}
!33 = !{ptr @reset_xd.__UNIQUE_ID_ddebug299, !32, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/rts5208/xd.c", i32 739, i32 2}
!36 = !{ptr @reset_xd.__UNIQUE_ID_ddebug300, !35, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/rts5208/xd.c", i32 257, i32 4}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @xd_read_cis.__UNIQUE_ID_ddebug287, !38, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/rts5208/xd.c", i32 260, i32 5}
!43 = !{ptr @xd_read_cis.__UNIQUE_ID_ddebug288, !42, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/rts5208/xd.c", i32 263, i32 5}
!46 = !{ptr @xd_read_cis.__UNIQUE_ID_ddebug289, !45, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/rts5208/xd.c", i32 285, i32 4}
!49 = !{ptr @xd_read_cis.__UNIQUE_ID_ddebug290, !48, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!50 = !{ptr @xd_read_cis.__UNIQUE_ID_ddebug291, !51, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!51 = !{!"../drivers/staging/rts5208/xd.c", i32 288, i32 5}
!52 = !{ptr @xd_read_cis.__UNIQUE_ID_ddebug292, !53, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!53 = !{!"../drivers/staging/rts5208/xd.c", i32 291, i32 5}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/rts5208/xd.c", i32 791, i32 2}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @xd_init_l2p_tbl.__UNIQUE_ID_ddebug301, !55, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/rts5208/xd.c", i32 798, i32 2}
!60 = !{ptr @xd_init_l2p_tbl.__UNIQUE_ID_ddebug302, !59, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/rts5208/xd.c", i32 1631, i32 2}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @xd_finish_write.__UNIQUE_ID_ddebug326, !62, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/rts5208/xd.c", i32 1632, i32 2}
!67 = !{ptr @xd_finish_write.__UNIQUE_ID_ddebug327, !66, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/rts5208/xd.c", i32 1633, i32 2}
!70 = !{ptr @xd_finish_write.__UNIQUE_ID_ddebug328, !69, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/staging/rts5208/xd.c", i32 1052, i32 2}
!73 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @xd_init_page.__UNIQUE_ID_ddebug315, !72, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/rts5208/xd.c", i32 839, i32 3}
!77 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @xd_set_unused_block.__UNIQUE_ID_ddebug303, !76, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/rts5208/xd.c", i32 853, i32 3}
!81 = !{ptr @xd_set_unused_block.__UNIQUE_ID_ddebug304, !80, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/rts5208/xd.c", i32 857, i32 2}
!84 = !{ptr @xd_set_unused_block.__UNIQUE_ID_ddebug305, !83, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/rts5208/xd.c", i32 1000, i32 2}
!87 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @xd_mark_bad_block.__UNIQUE_ID_ddebug314, !86, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/staging/rts5208/xd.c", i32 1303, i32 2}
!91 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @xd_build_l2p_tbl.__UNIQUE_ID_ddebug318, !90, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/staging/rts5208/xd.c", i32 1312, i32 3}
!95 = !{ptr @xd_build_l2p_tbl.__UNIQUE_ID_ddebug319, !94, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/rts5208/xd.c", i32 1351, i32 2}
!98 = !{ptr @xd_build_l2p_tbl.__UNIQUE_ID_ddebug320, !97, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/staging/rts5208/xd.c", i32 1367, i32 4}
!101 = !{ptr @xd_build_l2p_tbl.__UNIQUE_ID_ddebug321, !100, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/rts5208/xd.c", i32 1372, i32 4}
!104 = !{ptr @xd_build_l2p_tbl.__UNIQUE_ID_ddebug322, !103, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/staging/rts5208/xd.c", i32 1458, i32 2}
!107 = !{ptr @xd_build_l2p_tbl.__UNIQUE_ID_ddebug323, !106, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!108 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/rts5208/xd.c", i32 1460, i32 2}
!110 = !{ptr @xd_build_l2p_tbl.__UNIQUE_ID_ddebug324, !109, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/staging/rts5208/xd.c", i32 1106, i32 2}
!113 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @xd_copy_page.__UNIQUE_ID_ddebug316, !112, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/staging/rts5208/xd.c", i32 1171, i32 6}
!117 = !{ptr @xd_copy_page.__UNIQUE_ID_ddebug317, !116, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!118 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/rts5208/xd.c", i32 928, i32 4}
!120 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @xd_get_l2p_tbl.__UNIQUE_ID_ddebug310, !119, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!122 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/rts5208/xd.c", i32 935, i32 4}
!124 = !{ptr @xd_get_l2p_tbl.__UNIQUE_ID_ddebug311, !123, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!125 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/staging/rts5208/xd.c", i32 942, i32 5}
!127 = !{ptr @xd_get_l2p_tbl.__UNIQUE_ID_ddebug312, !126, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!128 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/staging/rts5208/xd.c", i32 952, i32 4}
!130 = !{ptr @xd_get_l2p_tbl.__UNIQUE_ID_ddebug313, !129, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!131 = !{ptr @.str.51, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/staging/rts5208/xd.c", i32 873, i32 3}
!133 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @xd_get_unused_block.__UNIQUE_ID_ddebug306, !132, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/staging/rts5208/xd.c", i32 882, i32 3}
!137 = !{ptr @xd_get_unused_block.__UNIQUE_ID_ddebug307, !136, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!138 = !{ptr @.str.54, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/staging/rts5208/xd.c", i32 887, i32 3}
!140 = !{ptr @xd_get_unused_block.__UNIQUE_ID_ddebug308, !139, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!141 = !{ptr @.str.55, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/staging/rts5208/xd.c", i32 891, i32 2}
!143 = !{ptr @xd_get_unused_block.__UNIQUE_ID_ddebug309, !142, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!144 = !{ptr @.str.56, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/staging/rts5208/xd.c", i32 1687, i32 2}
!146 = !{ptr @.str.57, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @xd_prepare_write.__UNIQUE_ID_ddebug329, !145, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!148 = distinct !{null, !149, !"__already_done", i1 false, i1 false}
!149 = !{!"../drivers/staging/rts5208/xd.c", i32 1586, i32 3}
!150 = !{ptr @.str.58, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/staging/rts5208/xd.c", i32 1710, i32 2}
!152 = !{ptr @.str.59, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @xd_write_multiple_pages.__UNIQUE_ID_ddebug330, !151, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!154 = !{!"sp"}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{i64 2155223177}
!165 = !{i64 2155228352}
!166 = !{i64 2148325413, i64 2148325418, i64 2148325431, i64 2148325475, i64 2148325509, i64 2148325530}
!167 = !{i64 2155235885}
!168 = !{!"auto-init"}
!169 = !{i64 2155317660}
!170 = !{i64 2155343830}
