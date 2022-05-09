; ModuleID = '/llk/IR_all_yes/drivers/staging/rts5208/ms.c_pt.bc'
source_filename = "../drivers/staging/rts5208/ms.c"
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
%struct.zone_entry = type { ptr, ptr, [10 x i16], i32, i32, i32, i32, i32 }
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

@reset_ms_card.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 2, i8 122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rts5208\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reset_ms_card\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/staging/rts5208/ms.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ms_card->ms_type = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ms_cleanup_work.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 4, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ms_cleanup_work\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MS Pro: stop transmission\0A\00", [37 x i8] zeroinitializer }, align 32
@ms_cleanup_work.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 4, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MS: delay write\0A\00", [47 x i8] zeroinitializer }, align 32
@reset_ms_pro.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 1, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reset_ms_pro\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"power_class_en = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@reset_ms_pro.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.9, i8 1, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"change_power_class = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@reset_ms_pro.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.10, i8 1, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"power_class_mode = 0x%x\00", [40 x i8] zeroinitializer }, align 32
@ms_prepare_reset.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ms_prepare_reset\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Over current, OCPSTAT is 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@ms_identify_media_type.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ms_identify_media_type\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Type register: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@ms_identify_media_type.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 -101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Category register: 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@ms_identify_media_type.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.17, i8 0, i8 -98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Class register: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@ms_identify_media_type.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.18, i8 0, i8 -92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IF Mode register: 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@ms_transfer_tpc.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ms_transfer_tpc\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: tpc = 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@ms_read_attribute_info.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 -7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ms_read_attribute_info\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sys_info_addr = 0x%x, sys_info_size = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@ms_read_attribute_info.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 1, i8 1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"model_name_addr = 0x%x, model_name_size = 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@ms_read_attribute_info.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.24, i8 1, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"xc_total_blk = 0x%x, xc_blk_size = 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@ms_read_attribute_info.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.25, i8 1, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"total_blk = 0x%x, blk_size = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@ms_read_attribute_info.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.26, i8 1, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"class_code = 0x%x, device_type = 0x%x, sub_class = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@ms_read_attribute_info.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.27, i8 1, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"class_code: 0x%x, device_type: 0x%x, sub_class: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@reset_ms.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 1, i8 -28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reset_ms\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No boot block found!\00", [43 x i8] zeroinitializer }, align 32
@reset_ms.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 1, i8 -14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Boot block data:\0A\00", [46 x i8] zeroinitializer }, align 32
@reset_ms.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.31, i8 1, i8 -14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*ph\0A\00", [26 x i8] zeroinitializer }, align 32
@ms_build_l2p_tbl.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 2, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ms_build_l2p_tbl\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %d\0A\00", [24 x i8] zeroinitializer }, align 32
@ms_build_l2p_tbl.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.34, i8 2, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"l2p table of segment %d has been built\0A\00", [56 x i8] zeroinitializer }, align 32
@ms_build_l2p_tbl.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.35, i8 2, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"read extra data fail\0A\00", [42 x i8] zeroinitializer }, align 32
@ms_start_idx = internal constant { [17 x i16], [62 x i8] } { [17 x i16] [i16 0, i16 494, i16 990, i16 1486, i16 1982, i16 2478, i16 2974, i16 3470, i16 3966, i16 4462, i16 4958, i16 5454, i16 5950, i16 6446, i16 6942, i16 7438, i16 7934], [62 x i8] zeroinitializer }, align 32
@ms_build_l2p_tbl.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.36, i8 2, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unused block count: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ms_build_l2p_tbl.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.37, i8 2, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Boot block is not the first normal block.\0A\00", [53 x i8] zeroinitializer }, align 32
@ms_init_l2p_tbl.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 2, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ms_init_l2p_tbl\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ms_card->segment_cnt = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ms_init_l2p_tbl.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.40, i8 2, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"defective block count of segment %d is %d\0A\00", [53 x i8] zeroinitializer }, align 32
@ms_copy_page.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 1, i8 -105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ms_copy_page\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Copy page from 0x%x to 0x%x, logical block is 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@ms_copy_page.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.43, i8 1, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"start_page = %d, end_page = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ms_copy_page.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.44, i8 1, i8 -84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Uncorrectable error\0A\00", [43 x i8] zeroinitializer }, align 32
@ms_copy_page.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.45, i8 1, i8 -78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"page %d : extra[0] = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@mspro_read_format_progress.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 2, i8 -79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mspro_read_format_progress\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s, short_data_len = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@mspro_read_format_progress.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.48, i8 2, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"total_progress = %d, cur_progress = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@mspro_read_format_progress.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.49, i8 2, i8 -65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"progress = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@ms_write_bytes.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ms_write_bytes\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MS_TRANS_CFG: 0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@mspro_rw_multi_sector.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 2, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mspro_rw_multi_sector\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No card exist, exit %s\0A\00", [40 x i8] zeroinitializer }, align 32
@mspro_rw_multi_sector.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.54, i8 2, i8 -86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MSPro CRC error, tune clock!\0A\00", [34 x i8] zeroinitializer }, align 32
@ms_rw_multi_sector.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 3, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ms_rw_multi_sector\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"seg_no = %d, old_blk = 0x%x, new_blk = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@ms_rw_multi_sector.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.57, i8 3, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"start_page = %d, end_page = %d, page_cnt = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@ms_rw_multi_sector.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 3, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ms_read_bytes.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ms_read_bytes\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Read format progress:\0A\00", [41 x i8] zeroinitializer }, align 32
@ms_read_bytes.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.60, i8 0, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rts5208: \00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 16, i64 8, i64 16]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 12]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 16, i64 21000, i64 21128]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 19]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 16, i64 21000, i64 21128]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.70 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 7]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2536, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 4233, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 4245, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1187, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1189, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1200, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 540, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 610, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 622, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 632, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 656, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 46, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 995, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1030, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1071, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1078, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1088, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1123, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1938, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1992, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1993, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2283, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2292, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2345, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant [13 x i8] c"ms_start_idx\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2226, i32 29 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2413, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2461, i32 5 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2104, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2146, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1630, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1632, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1715, i32 6 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1737, i32 6 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2755, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2804, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2815, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 196, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2719, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2728, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 3516, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 3527, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 294, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.257 = private constant [32 x i8] c"../drivers/staging/rts5208/ms.c\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 295, i32 3 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @ms_start_idx, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms_start_idx to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reset_ms_card(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  %total_block = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 3
  %0 = ptrtoint ptr %total_block to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %total_block, align 4
  %2 = lshr i16 %1, 9
  %div = zext i16 %2 to i32
  %sub = add nsw i32 %div, -1
  %3 = call ptr @memset(ptr %ms_card1, i32 0, i32 236)
  %call = tail call i32 @enable_card_clock(ptr noundef %chip, i8 noundef zeroext 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @select_card(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %4 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %ms_card1, align 4
  %call9 = tail call fastcc i32 @reset_ms_pro(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end8.if.end20_crit_edge, label %if.then12

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then12:                                        ; preds = %if.end8
  %check_ms_flow = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 6
  %5 = ptrtoint ptr %check_ms_flow to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %check_ms_flow, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then12.cleanup_crit_edge, label %if.then13

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %if.then12
  %call14 = tail call fastcc i32 @reset_ms(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.then13.if.end20_crit_edge, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end20:                                         ; preds = %if.then13.if.end20_crit_edge, %if.end8.if.end20_crit_edge
  %7 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ms_card1, align 4
  %conv.i = zext i16 %8 to i32
  %9 = and i32 %conv.i, 1791
  call void @__sanitizer_cov_trace_const_cmp4(i32 1537, i32 %9)
  %10 = icmp eq i32 %9, 1537
  br i1 %10, label %if.then.i, label %if.else11.i

if.then.i:                                        ; preds = %if.end20
  %asic_code.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %11 = ptrtoint ptr %asic_code.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %asic_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %asic_ms_hg_clk.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 99
  br label %if.end38.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %fpga_ms_hg_clk.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 91
  br label %if.end38.i

if.else11.i:                                      ; preds = %if.end20
  %and.i = and i32 %conv.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp15.i = icmp ne i32 %and.i, 1
  %and19.i = and i32 %conv.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %or.cond72.i = and i1 %cmp15.i, %tobool20.not.i
  %asic_code30.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %13 = ptrtoint ptr %asic_code30.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %asic_code30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool31.not.i = icmp eq i32 %14, 0
  br i1 %or.cond72.i, label %if.else29.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.else11.i
  br i1 %tobool31.not.i, label %if.else26.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  %asic_ms_4bit_clk.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 100
  br label %if.end38.i

if.else26.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  %fpga_ms_4bit_clk.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 92
  br label %if.end38.i

if.else29.i:                                      ; preds = %if.else11.i
  br i1 %tobool31.not.i, label %if.else34.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #10
  %asic_ms_1bit_clk.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 101
  br label %if.end38.i

if.else34.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #10
  %fpga_ms_1bit_clk.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 93
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else34.i, %if.then32.i, %if.else26.i, %if.then24.i, %if.else.i, %if.then9.i
  %fpga_ms_4bit_clk.sink.i = phi ptr [ %fpga_ms_4bit_clk.i, %if.else26.i ], [ %asic_ms_4bit_clk.i, %if.then24.i ], [ %fpga_ms_1bit_clk.i, %if.else34.i ], [ %asic_ms_1bit_clk.i, %if.then32.i ], [ %asic_ms_hg_clk.i, %if.then9.i ], [ %fpga_ms_hg_clk.i, %if.else.i ]
  %15 = ptrtoint ptr %fpga_ms_4bit_clk.sink.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fpga_ms_4bit_clk.sink.i, align 4
  %ms_clock27.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 24
  %17 = ptrtoint ptr %ms_clock27.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %ms_clock27.i, align 4
  %asic_code.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %18 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %16) #8
  br label %switch_clock.exit.i

if.else.i.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %16) #8
  br label %switch_clock.exit.i

switch_clock.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  %retval1.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i)
  %cmp40.not.i = icmp eq i32 %retval1.0.i.i, 0
  br i1 %cmp40.not.i, label %ms_set_init_para.exit, label %switch_clock.exit.i.cleanup_crit_edge

switch_clock.exit.i.cleanup_crit_edge:            ; preds = %switch_clock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ms_set_init_para.exit:                            ; preds = %switch_clock.exit.i
  %call44.i = tail call i32 @select_card(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %cmp45.not.i.not = icmp eq i32 %call44.i, 0
  br i1 %cmp45.not.i.not, label %if.end25, label %ms_set_init_para.exit.cleanup_crit_edge

ms_set_init_para.exit.cleanup_crit_edge:          ; preds = %ms_set_init_para.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %ms_set_init_para.exit
  %20 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ms_card1, align 4
  %22 = and i16 %21, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %22)
  %cmp28 = icmp eq i16 %22, 1
  br i1 %cmp28, label %if.end25.do.body_crit_edge, label %if.then30

if.end25.do.body_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then30:                                        ; preds = %if.end25
  %call31 = tail call fastcc i32 @ms_build_l2p_tbl(ptr noundef %chip, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32.not = icmp eq i32 %call31, 0
  br i1 %cmp32.not, label %if.then30.do.body_crit_edge, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then30.do.body_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %if.then30.do.body_crit_edge, %if.end25.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reset_ms_card.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_ms_card, %if.then41)) #8
          to label %cleanup [label %if.then41], !srcloc !167

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chip, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %27 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ms_card1, align 4
  %conv44 = zext i16 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reset_ms_card.__UNIQUE_ID_ddebug322, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %conv44) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %do.body, %if.then30.cleanup_crit_edge, %ms_set_init_para.exit.cleanup_crit_edge, %switch_clock.exit.i.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.then13.cleanup_crit_edge ], [ 1, %if.then12.cleanup_crit_edge ], [ 1, %ms_set_init_para.exit.cleanup_crit_edge ], [ 1, %if.then30.cleanup_crit_edge ], [ 0, %if.then41 ], [ 0, %do.body ], [ 1, %switch_clock.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enable_card_clock(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @select_card(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reset_ms_pro(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %buf.i207 = alloca [6 x i8], align 1
  %data.i.i = alloca [2 x i8], align 1
  %buf.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  %ms_power_class_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 79
  %0 = ptrtoint ptr %ms_power_class_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ms_power_class_en, align 4
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %and5 = and i8 %1, 1
  %change_power_class.0 = select i1 %tobool.not, i8 %and5, i8 2
  %switch_8bit_fail = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 7
  %arrayidx = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 14, i32 46
  %3 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 1
  %5 = getelementptr inbounds [2 x i8], ptr %data.i.i, i32 0, i32 1
  br label %retry

retry:                                            ; preds = %cleanup125, %entry
  %change_power_class.1 = phi i8 [ %change_power_class.0, %entry ], [ %dec, %cleanup125 ]
  %call = call fastcc i32 @ms_pro_reset_flow(ptr noundef %chip, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %retry.if.end21_crit_edge, label %if.then11

retry.if.end21_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then11:                                        ; preds = %retry
  %6 = ptrtoint ptr %switch_8bit_fail to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %switch_8bit_fail, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool12.not = icmp eq i8 %7, 0
  br i1 %tobool12.not, label %if.then11.cleanup155_crit_edge, label %if.then13

if.then11.cleanup155_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup155

if.then13:                                        ; preds = %if.then11
  %call14 = call fastcc i32 @ms_pro_reset_flow(ptr noundef %chip, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.then13.if.end21_crit_edge, label %if.then13.cleanup155_crit_edge

if.then13.cleanup155_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup155

if.then13.if.end21_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21:                                         ; preds = %if.then13.if.end21_crit_edge, %retry.if.end21_crit_edge
  %call22 = call fastcc i32 @ms_read_attribute_info(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %if.end26, label %if.end21.cleanup155_crit_edge

if.end21.cleanup155_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup155

if.end26:                                         ; preds = %if.end21
  %8 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ms_card1, align 4
  %conv27 = zext i16 %9 to i32
  %10 = and i32 %conv27, 1791
  call void @__sanitizer_cov_trace_const_cmp4(i32 1537, i32 %10)
  %11 = icmp eq i32 %10, 1537
  %change_power_class.2 = select i1 %11, i8 0, i8 %change_power_class.1
  %conv38 = zext i8 %change_power_class.2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %change_power_class.2)
  %tobool39.not = icmp ne i8 %change_power_class.2, 0
  %12 = and i32 %conv27, 2303
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %12)
  %.not = icmp eq i32 %12, 2049
  %or.cond = select i1 %tobool39.not, i1 %.not, i1 false
  br i1 %or.cond, label %if.then51, label %if.end26.if.end128_crit_edge

if.end26.if.end128_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then51:                                        ; preds = %if.end26
  %13 = ptrtoint ptr %ms_power_class_en to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ms_power_class_en, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reset_ms_pro.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_ms_pro, %if.then57)) #8
          to label %do.body61 [label %if.then57], !srcloc !167

if.then57:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %conv59 = zext i8 %14 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reset_ms_pro.__UNIQUE_ID_ddebug305, ptr noundef %dev.i, ptr noundef nonnull @.str.8, i32 noundef %conv59) #8
  br label %do.body61

do.body61:                                        ; preds = %if.then57, %if.then51
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reset_ms_pro.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_ms_pro, %if.then73)) #8
          to label %if.then80 [label %if.then73], !srcloc !167

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %dev.i204 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reset_ms_pro.__UNIQUE_ID_ddebug306, ptr noundef %dev.i204, ptr noundef nonnull @.str.9, i32 noundef %conv38) #8
  br label %if.then80

if.then80:                                        ; preds = %if.then73, %do.body61
  %sub = add nsw i32 %conv38, -1
  %shl = shl nuw nsw i32 1, %sub
  %23 = trunc i32 %shl to i8
  %conv84 = and i8 %14, %23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv84)
  %tobool87.not = icmp eq i8 %conv84, 0
  br i1 %tobool87.not, label %if.then80.if.end128_crit_edge, label %if.then88

if.then80.if.end128_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then88:                                        ; preds = %if.then80
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 2
  %26 = lshr i8 %25, 3
  %27 = and i8 %26, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reset_ms_pro.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_ms_pro, %if.then104)) #8
          to label %do.end109 [label %if.then104], !srcloc !167

if.then104:                                       ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %dev.i205 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %conv106 = zext i8 %27 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reset_ms_pro.__UNIQUE_ID_ddebug307, ptr noundef %dev.i205, ptr noundef nonnull @.str.10, i32 noundef %conv106) #8
  br label %do.end109

do.end109:                                        ; preds = %if.then104, %if.then88
  %32 = call i8 @llvm.umin.i8(i8 %change_power_class.2, i8 %27)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool116.not = icmp eq i8 %32, 0
  br i1 %tobool116.not, label %do.end109.if.end128_crit_edge, label %if.then117

do.end109.if.end128_crit_edge:                    ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then117:                                       ; preds = %do.end109
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #8
  call void @ms_cleanup_work(ptr noundef %chip) #8
  %call.i = call fastcc i32 @ms_set_rw_reg_addr(ptr noundef %chip, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 17, i8 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then117.msxc_change_power.exit.thread_crit_edge

if.then117.msxc_change_power.exit.thread_crit_edge: ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  br label %msxc_change_power.exit.thread

if.end.i:                                         ; preds = %if.then117
  %33 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %buf.i, align 1
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %32, ptr %4, align 1
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 0, ptr %3, align 1
  %call7.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull %buf.i, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.not.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.not.i, label %if.end10.i, label %if.end.i.msxc_change_power.exit.thread_crit_edge

if.end.i.msxc_change_power.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %msxc_change_power.exit.thread

if.end10.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i) #8
  %36 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 22, ptr %data.i.i, align 1
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %5, align 1
  %call.i.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp12.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp12.not.i, label %if.end14.i, label %if.end10.i.msxc_change_power.exit.thread_crit_edge

if.end10.i.msxc_change_power.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %msxc_change_power.exit.thread

if.end14.i:                                       ; preds = %if.end10.i
  %call16.i = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -702, ptr noundef nonnull %buf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool.not.i, label %msxc_change_power.exit, label %if.end14.i.msxc_change_power.exit.thread_crit_edge

if.end14.i.msxc_change_power.exit.thread_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %msxc_change_power.exit.thread

msxc_change_power.exit.thread:                    ; preds = %if.end14.i.msxc_change_power.exit.thread_crit_edge, %if.end10.i.msxc_change_power.exit.thread_crit_edge, %if.end.i.msxc_change_power.exit.thread_crit_edge, %if.then117.msxc_change_power.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #8
  br label %cleanup125

msxc_change_power.exit:                           ; preds = %if.end14.i
  %38 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %buf.i, align 1
  %40 = and i8 %39, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool20.not.i.not = icmp eq i8 %40, 0
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #8
  br i1 %tobool20.not.i.not, label %msxc_change_power.exit.if.end128_crit_edge, label %msxc_change_power.exit.cleanup125_crit_edge

msxc_change_power.exit.cleanup125_crit_edge:      ; preds = %msxc_change_power.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup125

msxc_change_power.exit.if.end128_crit_edge:       ; preds = %msxc_change_power.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

cleanup125:                                       ; preds = %msxc_change_power.exit.cleanup125_crit_edge, %msxc_change_power.exit.thread
  %dec = add nsw i8 %32, -1
  br label %retry

if.end128:                                        ; preds = %msxc_change_power.exit.if.end128_crit_edge, %do.end109.if.end128_crit_edge, %if.then80.if.end128_crit_edge, %if.end26.if.end128_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i207) #8
  %41 = getelementptr inbounds i8, ptr %buf.i207, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 -1, ptr %41, align 1
  %call.i208 = call fastcc i32 @ms_set_rw_reg_addr(ptr noundef %chip, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 23, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208)
  %cmp3.not.i = icmp eq i32 %call.i208, 0
  br i1 %cmp3.not.i, label %mg_set_tpc_para_sub.exit, label %mg_set_tpc_para_sub.exit.thread

mg_set_tpc_para_sub.exit.thread:                  ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i207) #8
  br label %cleanup155

mg_set_tpc_para_sub.exit:                         ; preds = %if.end128
  %43 = getelementptr inbounds [6 x i8], ptr %buf.i207, i32 0, i32 1
  %44 = ptrtoint ptr %buf.i207 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %buf.i207, align 1
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %43, align 1
  %call15.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %buf.i207, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.not.i.not = icmp eq i32 %call15.i, 0
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i207) #8
  br i1 %cmp16.not.i.not, label %if.end133, label %mg_set_tpc_para_sub.exit.cleanup155_crit_edge

mg_set_tpc_para_sub.exit.cleanup155_crit_edge:    ; preds = %mg_set_tpc_para_sub.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup155

if.end133:                                        ; preds = %mg_set_tpc_para_sub.exit
  %46 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %ms_card1, align 4
  %48 = and i16 %47, 1791
  call void @__sanitizer_cov_trace_const_cmp2(i16 1537, i16 %48)
  %49 = icmp eq i16 %48, 1537
  %arrayidx146 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 8
  %50 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx146, align 4
  %idxprom = zext i8 %51 to i32
  %arrayidx147 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 30, i32 %idxprom
  br i1 %49, label %if.then145, label %if.else148

if.then145:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 8, ptr %arrayidx147, align 1
  br label %cleanup155

if.else148:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 4, ptr %arrayidx147, align 1
  br label %cleanup155

cleanup155:                                       ; preds = %if.else148, %if.then145, %mg_set_tpc_para_sub.exit.cleanup155_crit_edge, %mg_set_tpc_para_sub.exit.thread, %if.end21.cleanup155_crit_edge, %if.then13.cleanup155_crit_edge, %if.then11.cleanup155_crit_edge
  %retval.0 = phi i32 [ 1, %mg_set_tpc_para_sub.exit.cleanup155_crit_edge ], [ 0, %if.else148 ], [ 0, %if.then145 ], [ 1, %mg_set_tpc_para_sub.exit.thread ], [ 1, %if.then13.cleanup155_crit_edge ], [ 1, %if.then11.cleanup155_crit_edge ], [ 1, %if.end21.cleanup155_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reset_ms(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %val.i = alloca [2 x i8], align 1
  %data.i = alloca [2 x i8], align 1
  %val = alloca i8, align 1
  %extra = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !168
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %extra) #8
  %1 = getelementptr inbounds [9 x i8], ptr %extra, i32 0, i32 1
  %2 = call ptr @memset(ptr %extra, i32 255, i32 9)
  %call = tail call fastcc i32 @ms_prepare_reset(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %3 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 60, ptr %data.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %3, align 1
  %call.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %data.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.not = icmp eq i32 %call.i, 0
  br i1 %cmp5.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #8
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %val.i, align 1, !annotation !168
  %7 = getelementptr inbounds [2 x i8], ptr %val.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !168
  %call.i449 = call fastcc i32 @ms_set_rw_reg_addr(ptr noundef %chip, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i449)
  %cmp.not.i = icmp eq i32 %call.i449, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end8.ms_read_status_reg.exit.thread_crit_edge

if.end8.ms_read_status_reg.exit.thread_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_read_status_reg.exit.thread

if.end.i:                                         ; preds = %if.end8
  %call2.i = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 4, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull %val.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %if.end5.i, label %if.end.i.ms_read_status_reg.exit.thread_crit_edge

if.end.i.ms_read_status_reg.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_read_status_reg.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %7, align 1
  %11 = and i8 %10, 21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end13, label %if.then6.i

if.then6.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %err_code2.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 8
  %12 = ptrtoint ptr %err_code2.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 4, ptr %err_code2.i.i, align 2
  br label %ms_read_status_reg.exit.thread

ms_read_status_reg.exit.thread:                   ; preds = %if.then6.i, %if.end.i.ms_read_status_reg.exit.thread_crit_edge, %if.end8.ms_read_status_reg.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end5.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #8
  %call14 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -1536, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %val, align 1
  %card_wp23 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 24
  %15 = ptrtoint ptr %card_wp23 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %card_wp23, align 1
  %17 = and i8 %16, -9
  %18 = shl i8 %14, 3
  %19 = and i8 %18, 8
  %.sink = or i8 %17, %19
  store i8 %.sink, ptr %card_wp23, align 1
  %boot_block = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 4
  %err_code2.i451 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 8
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %host_cmds_ptr.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 4
  %raw_sys_info = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 14
  br label %RE_SEARCH

RE_SEARCH:                                        ; preds = %RE_SEARCH.backedge, %if.end16
  %i.0 = phi i16 [ 0, %if.end16 ], [ %i.0.be, %RE_SEARCH.backedge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %i.0)
  %cmp29464 = icmp ult i16 %i.0, 12
  br i1 %cmp29464, label %RE_SEARCH.while.body_crit_edge, label %while.end

RE_SEARCH.while.body_crit_edge:                   ; preds = %RE_SEARCH
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %RE_SEARCH.while.body_crit_edge
  %i.1465 = phi i16 [ %i.1.be, %while.cond.backedge.while.body_crit_edge ], [ %i.0, %RE_SEARCH.while.body_crit_edge ]
  %call31 = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32.not = icmp eq i32 %call31, 0
  br i1 %cmp32.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %err_code2.i451 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 32, ptr %err_code2.i451, align 2
  br label %cleanup

if.end35:                                         ; preds = %while.body
  %call36 = call fastcc i32 @ms_read_extra_data(ptr noundef %chip, i16 noundef zeroext %i.1465, i8 noundef zeroext 0, ptr noundef nonnull %extra)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37.not = icmp eq i32 %call36, 0
  br i1 %cmp37.not, label %if.end40, label %if.end35.while.cond.backedge_crit_edge

if.end35.while.cond.backedge_crit_edge:           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then44.while.cond.backedge_crit_edge, %if.end40.while.cond.backedge_crit_edge, %if.end35.while.cond.backedge_crit_edge
  %i.1.be = add nuw nsw i16 %i.1465, 1
  %cmp29 = icmp ult i16 %i.1465, 11
  br i1 %cmp29, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.do.body_crit_edge

while.cond.backedge.do.body_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end40:                                         ; preds = %if.end35
  %21 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %extra, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %tobool43.not = icmp sgt i8 %22, -1
  br i1 %tobool43.not, label %if.end40.while.cond.backedge_crit_edge, label %if.then44

if.end40.while.cond.backedge_crit_edge:           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.then44:                                        ; preds = %if.end40
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %1, align 1
  %25 = and i8 %24, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool48.not = icmp eq i8 %25, 0
  br i1 %tobool48.not, label %while.end.thread475, label %if.then44.while.cond.backedge_crit_edge

if.then44.while.cond.backedge_crit_edge:          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.end.thread475:                              ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %boot_block to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %i.1465, ptr %boot_block, align 2
  br label %for.body.preheader

while.end:                                        ; preds = %RE_SEARCH
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %i.0)
  %cmp54 = icmp eq i16 %i.0, 12
  br i1 %cmp54, label %while.end.do.body_crit_edge, label %while.end.for.body.preheader_crit_edge

while.end.for.body.preheader_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body.preheader:                               ; preds = %while.end.for.body.preheader_crit_edge, %while.end.thread475
  %27 = ptrtoint ptr %boot_block to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %boot_block, align 2
  %call69 = call fastcc i32 @ms_read_page(ptr noundef %chip, i16 noundef zeroext %28, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70.not = icmp eq i32 %call69, 0
  br i1 %cmp70.not, label %for.body.preheader.for.inc_crit_edge, label %if.then72

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body:                                          ; preds = %while.end.do.body_crit_edge, %while.cond.backedge.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reset_ms.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_ms, %if.then61)) #8
          to label %cleanup [label %if.then61], !srcloc !167

if.then61:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reset_ms.__UNIQUE_ID_ddebug312, ptr noundef %dev.i, ptr noundef nonnull @.str.29) #8
  br label %cleanup

if.then72:                                        ; preds = %for.body.preheader
  %33 = ptrtoint ptr %err_code2.i451 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %err_code2.i451, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %34)
  %cmp.i.not = icmp eq i8 %34, 2
  br i1 %cmp.i.not, label %if.then72.if.then75_crit_edge, label %if.then72.for.inc_crit_edge

if.then72.for.inc_crit_edge:                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then72.if.then75_crit_edge:                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then75

if.then75:                                        ; preds = %if.then72.2.if.then75_crit_edge, %if.then72.1.if.then75_crit_edge, %if.then72.if.then75_crit_edge
  %35 = ptrtoint ptr %boot_block to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %boot_block, align 2
  %37 = ptrtoint ptr %err_code2.i451 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %err_code2.i451, align 2
  br label %RE_SEARCH.backedge

RE_SEARCH.backedge:                               ; preds = %if.then186, %if.then171, %if.then75
  %i.0.be.in = phi i16 [ %36, %if.then75 ], [ %68, %if.then171 ], [ %74, %if.then186 ]
  %i.0.be = add i16 %i.0.be.in, 1
  br label %RE_SEARCH

for.inc:                                          ; preds = %if.then72.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %38 = ptrtoint ptr %boot_block to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %boot_block, align 2
  %call69.1 = call fastcc i32 @ms_read_page(ptr noundef %chip, i16 noundef zeroext %39, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.1)
  %cmp70.not.1 = icmp eq i32 %call69.1, 0
  br i1 %cmp70.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then72.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then72.1:                                      ; preds = %for.inc
  %40 = ptrtoint ptr %err_code2.i451 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %err_code2.i451, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %cmp.i.not.1 = icmp eq i8 %41, 2
  br i1 %cmp.i.not.1, label %if.then72.1.if.then75_crit_edge, label %if.then72.1.for.inc.1_crit_edge

if.then72.1.for.inc.1_crit_edge:                  ; preds = %if.then72.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then72.1.if.then75_crit_edge:                  ; preds = %if.then72.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then75

for.inc.1:                                        ; preds = %if.then72.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %42 = ptrtoint ptr %boot_block to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %boot_block, align 2
  %call69.2 = call fastcc i32 @ms_read_page(ptr noundef %chip, i16 noundef zeroext %43, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.2)
  %cmp70.not.2 = icmp eq i32 %call69.2, 0
  br i1 %cmp70.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then72.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then72.2:                                      ; preds = %for.inc.1
  %44 = ptrtoint ptr %err_code2.i451 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %err_code2.i451, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %45)
  %cmp.i.not.2 = icmp eq i8 %45, 2
  br i1 %cmp.i.not.2, label %if.then72.2.if.then75_crit_edge, label %if.then72.2.for.inc.2_crit_edge

if.then72.2.for.inc.2_crit_edge:                  ; preds = %if.then72.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then72.2.if.then75_crit_edge:                  ; preds = %if.then72.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then75

for.inc.2:                                        ; preds = %if.then72.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %46 = ptrtoint ptr %boot_block to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %boot_block, align 2
  %call83 = call fastcc i32 @ms_read_page(ptr noundef %chip, i16 noundef zeroext %47, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84.not = icmp eq i32 %call83, 0
  br i1 %cmp84.not, label %if.end87, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end87:                                         ; preds = %for.inc.2
  %48 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %ci, align 4
  br label %for.body92

for.body92:                                       ; preds = %for.body92.for.body92_crit_edge, %if.end87
  %i.2468 = phi i16 [ 0, %if.end87 ], [ %inc97, %for.body92.for.body92_crit_edge ]
  %add94 = add nuw nsw i16 %i.2468, -1120
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext %add94, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %inc97 = add nuw nsw i16 %i.2468, 1
  %cmp90 = icmp ult i16 %i.2468, 95
  br i1 %cmp90, label %for.body92.for.body92_crit_edge, label %for.end98

for.body92.for.body92_crit_edge:                  ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body92

for.end98:                                        ; preds = %for.body92
  %call99 = call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 8, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %for.end98.cleanup_crit_edge, label %if.end103

for.end98.cleanup_crit_edge:                      ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end103:                                        ; preds = %for.end98
  %49 = ptrtoint ptr %host_cmds_ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %host_cmds_ptr.i, align 4
  %51 = call ptr @memcpy(ptr %raw_sys_info, ptr %50, i32 96)
  %52 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %ci, align 4
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1536, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1535, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1164, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1163, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1162, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1161, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1118, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1117, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1116, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1115, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1114, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1113, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1112, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1111, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1064, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -1069, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %call123 = call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 8, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %if.end103.cleanup_crit_edge, label %if.end127

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end127:                                        ; preds = %if.end103
  %53 = ptrtoint ptr %host_cmds_ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %host_cmds_ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reset_ms.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_ms, %if.then141)) #8
          to label %do.body146 [label %if.then141], !srcloc !167

if.then141:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %chip, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %dev.i454 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reset_ms.__UNIQUE_ID_ddebug313, ptr noundef %dev.i454, ptr noundef nonnull @.str.30) #8
  br label %do.body146

do.body146:                                       ; preds = %if.then141, %if.end127
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reset_ms.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_ms, %if.then158)) #8
          to label %do.end162 [label %if.then158], !srcloc !167

if.then158:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chip, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %dev.i455 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reset_ms.__UNIQUE_ID_ddebug314, ptr noundef %dev.i455, ptr noundef nonnull @.str.31, i32 noundef 16, ptr noundef %54) #8
  br label %do.end162

do.end162:                                        ; preds = %if.then158, %do.body146
  %63 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp165.not = icmp eq i8 %64, 0
  br i1 %cmp165.not, label %lor.lhs.false, label %do.end162.if.then171_crit_edge

do.end162.if.then171_crit_edge:                   ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then171

lor.lhs.false:                                    ; preds = %do.end162
  %arrayidx167 = getelementptr i8, ptr %54, i32 1
  %65 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx167, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %66)
  %cmp169.not = icmp eq i8 %66, 1
  br i1 %cmp169.not, label %if.end176, label %lor.lhs.false.if.then171_crit_edge

lor.lhs.false.if.then171_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then171

if.then171:                                       ; preds = %lor.lhs.false.if.then171_crit_edge, %do.end162.if.then171_crit_edge
  %67 = ptrtoint ptr %boot_block to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %boot_block, align 2
  br label %RE_SEARCH.backedge

if.end176:                                        ; preds = %lor.lhs.false
  %arrayidx177 = getelementptr i8, ptr %54, i32 12
  %69 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx177, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %70)
  %cmp179.not = icmp eq i8 %70, 2
  br i1 %cmp179.not, label %lor.lhs.false181, label %if.end176.if.then186_crit_edge

if.end176.if.then186_crit_edge:                   ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then186

lor.lhs.false181:                                 ; preds = %if.end176
  %arrayidx182 = getelementptr i8, ptr %54, i32 13
  %71 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx182, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp184.not = icmp eq i8 %72, 0
  br i1 %cmp184.not, label %if.end191, label %lor.lhs.false181.if.then186_crit_edge

lor.lhs.false181.if.then186_crit_edge:            ; preds = %lor.lhs.false181
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then186

if.then186:                                       ; preds = %lor.lhs.false181.if.then186_crit_edge, %if.end176.if.then186_crit_edge
  %73 = ptrtoint ptr %boot_block to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %boot_block, align 2
  br label %RE_SEARCH.backedge

if.end191:                                        ; preds = %lor.lhs.false181
  %arrayidx192 = getelementptr i8, ptr %54, i32 14
  %75 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx192, align 1
  %77 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values)
  switch i8 %76, label %if.end191.if.end206_crit_edge [
    i8 1, label %if.end191.if.then201_crit_edge
    i8 3, label %if.end191.if.then201_crit_edge491
  ]

if.end191.if.then201_crit_edge491:                ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then201

if.end191.if.then201_crit_edge:                   ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then201

if.end191.if.end206_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end206

if.then201:                                       ; preds = %if.end191.if.then201_crit_edge, %if.end191.if.then201_crit_edge491
  %card_wp202 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 24
  %78 = ptrtoint ptr %card_wp202 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %card_wp202, align 1
  %80 = or i8 %79, 8
  store i8 %80, ptr %card_wp202, align 1
  br label %if.end206

if.end206:                                        ; preds = %if.then201, %if.end191.if.end206_crit_edge
  %arrayidx207 = getelementptr i8, ptr %54, i32 6
  %81 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx207, align 1
  %conv209 = zext i8 %82 to i16
  %shl = shl nuw i16 %conv209, 8
  %arrayidx210 = getelementptr i8, ptr %54, i32 7
  %83 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx210, align 1
  %conv211 = zext i8 %84 to i16
  %or212 = or i16 %shl, %conv211
  %85 = zext i16 %or212 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.62)
  switch i16 %or212, label %if.end206.if.end226_crit_edge [
    i16 16, label %if.end206.if.end226.sink.split_crit_edge
    i16 8, label %if.then222
  ]

if.end206.if.end226.sink.split_crit_edge:         ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end226.sink.split

if.end206.if.end226_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end226

if.then222:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end226.sink.split

if.end226.sink.split:                             ; preds = %if.then222, %if.end206.if.end226.sink.split_crit_edge
  %.sink482 = phi i8 [ 4, %if.then222 ], [ 5, %if.end206.if.end226.sink.split_crit_edge ]
  %.sink481 = phi i8 [ 15, %if.then222 ], [ 31, %if.end206.if.end226.sink.split_crit_edge ]
  %block_shift223 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 1
  %86 = ptrtoint ptr %block_shift223 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %.sink482, ptr %block_shift223, align 2
  %page_off224 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 2
  %87 = ptrtoint ptr %page_off224 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %.sink481, ptr %page_off224, align 1
  br label %if.end226

if.end226:                                        ; preds = %if.end226.sink.split, %if.end206.if.end226_crit_edge
  %arrayidx227 = getelementptr i8, ptr %54, i32 8
  %88 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx227, align 1
  %conv229 = zext i8 %89 to i16
  %shl230 = shl nuw i16 %conv229, 8
  %arrayidx231 = getelementptr i8, ptr %54, i32 9
  %90 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx231, align 1
  %conv232 = zext i8 %91 to i16
  %or233 = or i16 %shl230, %conv232
  %total_block = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 3
  %92 = ptrtoint ptr %total_block to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %or233, ptr %total_block, align 4
  %arrayidx235 = getelementptr i8, ptr %54, i32 10
  %93 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx235, align 1
  %block_shift236 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 1
  %95 = ptrtoint ptr %block_shift236 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %block_shift236, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %96)
  %cmp238 = icmp eq i8 %96, 4
  br i1 %cmp238, label %if.then240, label %if.else248

if.then240:                                       ; preds = %if.end226
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %94)
  %cmp242 = icmp ult i8 %94, 2
  %capacity = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 5
  br i1 %cmp242, label %if.then244, label %if.else245

if.then244:                                       ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 7904, ptr %capacity, align 4
  br label %if.end271

if.else245:                                       ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 15840, ptr %capacity, align 4
  br label %if.end271

if.else248:                                       ; preds = %if.end226
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %94)
  %cmp250 = icmp ult i8 %94, 5
  br i1 %cmp250, label %if.then252, label %if.else254

if.then252:                                       ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #10
  %capacity253 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 5
  %99 = ptrtoint ptr %capacity253 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 31680, ptr %capacity253, align 4
  br label %if.end271

if.else254:                                       ; preds = %if.else248
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %94)
  %cmp256 = icmp ult i8 %94, 10
  br i1 %cmp256, label %if.then258, label %if.else260

if.then258:                                       ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #10
  %capacity259 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 5
  %100 = ptrtoint ptr %capacity259 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 63424, ptr %capacity259, align 4
  br label %if.end271

if.else260:                                       ; preds = %if.else254
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %94)
  %cmp262 = icmp ult i8 %94, 17
  %capacity265 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 5
  br i1 %cmp262, label %if.then264, label %if.else266

if.then264:                                       ; preds = %if.else260
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %capacity265 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 126848, ptr %capacity265, align 4
  br label %if.end271

if.else266:                                       ; preds = %if.else260
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %capacity265 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 253696, ptr %capacity265, align 4
  br label %if.end271

if.end271:                                        ; preds = %if.else266, %if.then264, %if.then258, %if.then252, %if.else245, %if.then244
  %capacity272 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 5
  %103 = ptrtoint ptr %capacity272 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %capacity272, align 4
  %arrayidx274 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 8
  %105 = ptrtoint ptr %arrayidx274 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx274, align 4
  %idxprom = zext i8 %106 to i32
  %arrayidx275 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 31, i32 %idxprom
  %107 = ptrtoint ptr %arrayidx275 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %104, ptr %arrayidx275, align 4
  %arrayidx276 = getelementptr i8, ptr %54, i32 15
  %108 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx276, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool277.not = icmp eq i8 %109, 0
  br i1 %tobool277.not, label %if.end271.if.end305_crit_edge, label %if.then278

if.end271.if.end305_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end305

if.then278:                                       ; preds = %if.end271
  %call279 = call fastcc i32 @ms_set_rw_reg_addr(ptr noundef %chip, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 16, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call279)
  %cmp280.not = icmp eq i32 %call279, 0
  br i1 %cmp280.not, label %if.end283, label %if.then278.cleanup_crit_edge

if.then278.cleanup_crit_edge:                     ; preds = %if.then278
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end283:                                        ; preds = %if.then278
  %call284 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -1536, i8 noundef zeroext -1, i8 noundef zeroext -120) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call284)
  %tobool285.not = icmp eq i32 %call284, 0
  br i1 %tobool285.not, label %if.end287, label %if.end283.cleanup_crit_edge

if.end283.cleanup_crit_edge:                      ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end287:                                        ; preds = %if.end283
  %call288 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -1535, i8 noundef zeroext -1, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call288)
  %tobool289.not = icmp eq i32 %call288, 0
  br i1 %tobool289.not, label %if.end291, label %if.end287.cleanup_crit_edge

if.end287.cleanup_crit_edge:                      ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end291:                                        ; preds = %if.end287
  %call292 = call fastcc i32 @ms_transfer_tpc(ptr noundef %chip, i8 noundef zeroext 4, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call292)
  %cmp293.not = icmp eq i32 %call292, 0
  br i1 %cmp293.not, label %if.end296, label %if.end291.cleanup_crit_edge

if.end291.cleanup_crit_edge:                      ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end296:                                        ; preds = %if.end291
  %call297 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -704, i8 noundef zeroext 90, i8 noundef zeroext 82) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call297)
  %tobool298.not = icmp eq i32 %call297, 0
  br i1 %tobool298.not, label %if.end300, label %if.end296.cleanup_crit_edge

if.end296.cleanup_crit_edge:                      ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end300:                                        ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %ms_card1, align 4
  %112 = or i16 %111, 256
  store i16 %112, ptr %ms_card1, align 4
  br label %if.end305

if.end305:                                        ; preds = %if.end300, %if.end271.if.end305_crit_edge
  %113 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %ms_card1, align 4
  %115 = and i16 %114, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %tobool309.not = icmp eq i16 %115, 0
  %116 = ptrtoint ptr %arrayidx274 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx274, align 4
  %idxprom319 = zext i8 %117 to i32
  %arrayidx320 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 30, i32 %idxprom319
  br i1 %tobool309.not, label %if.else315, label %if.then310

if.then310:                                       ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %arrayidx320 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 4, ptr %arrayidx320, align 1
  br label %cleanup

if.else315:                                       ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %arrayidx320 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %arrayidx320, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else315, %if.then310, %if.end296.cleanup_crit_edge, %if.end291.cleanup_crit_edge, %if.end287.cleanup_crit_edge, %if.end283.cleanup_crit_edge, %if.then278.cleanup_crit_edge, %if.end103.cleanup_crit_edge, %for.end98.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %if.then61, %do.body, %if.then34, %if.end13.cleanup_crit_edge, %ms_read_status_reg.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then34 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ 1, %if.then61 ], [ 1, %if.then278.cleanup_crit_edge ], [ %call284, %if.end283.cleanup_crit_edge ], [ %call288, %if.end287.cleanup_crit_edge ], [ 1, %if.end291.cleanup_crit_edge ], [ %call297, %if.end296.cleanup_crit_edge ], [ 0, %if.else315 ], [ 0, %if.then310 ], [ 1, %ms_read_status_reg.exit.thread ], [ 1, %do.body ], [ 1, %for.inc.2.cleanup_crit_edge ], [ 1, %for.end98.cleanup_crit_edge ], [ 1, %if.end103.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %extra) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_set_init_para(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  %0 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ms_card1, align 4
  %conv = zext i16 %1 to i32
  %2 = and i32 %conv, 1791
  call void @__sanitizer_cov_trace_const_cmp4(i32 1537, i32 %2)
  %3 = icmp eq i32 %2, 1537
  br i1 %3, label %if.then, label %if.else11

if.then:                                          ; preds = %entry
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %4 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %asic_ms_hg_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 99
  br label %if.end38

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %fpga_ms_hg_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 91
  br label %if.end38

if.else11:                                        ; preds = %entry
  %and = and i32 %conv, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp15 = icmp ne i32 %and, 1
  %and19 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %or.cond72 = and i1 %cmp15, %tobool20.not
  %asic_code30 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %6 = ptrtoint ptr %asic_code30 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %asic_code30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool31.not = icmp eq i32 %7, 0
  br i1 %or.cond72, label %if.else29, label %if.then21

if.then21:                                        ; preds = %if.else11
  br i1 %tobool31.not, label %if.else26, label %if.then24

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %asic_ms_4bit_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 100
  br label %if.end38

if.else26:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %fpga_ms_4bit_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 92
  br label %if.end38

if.else29:                                        ; preds = %if.else11
  br i1 %tobool31.not, label %if.else34, label %if.then32

if.then32:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #10
  %asic_ms_1bit_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 101
  br label %if.end38

if.else34:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #10
  %fpga_ms_1bit_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 93
  br label %if.end38

if.end38:                                         ; preds = %if.else34, %if.then32, %if.else26, %if.then24, %if.else, %if.then9
  %fpga_ms_4bit_clk.sink = phi ptr [ %fpga_ms_4bit_clk, %if.else26 ], [ %asic_ms_4bit_clk, %if.then24 ], [ %fpga_ms_1bit_clk, %if.else34 ], [ %asic_ms_1bit_clk, %if.then32 ], [ %asic_ms_hg_clk, %if.then9 ], [ %fpga_ms_hg_clk, %if.else ]
  %8 = ptrtoint ptr %fpga_ms_4bit_clk.sink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fpga_ms_4bit_clk.sink, align 4
  %ms_clock27 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 24
  %10 = ptrtoint ptr %ms_clock27 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ms_clock27, align 4
  %asic_code.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %11 = ptrtoint ptr %asic_code.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %asic_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %9) #8
  br label %switch_clock.exit

if.else.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %9) #8
  br label %switch_clock.exit

switch_clock.exit:                                ; preds = %if.else.i, %if.then.i
  %retval1.0.i = phi i32 [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i)
  %cmp40.not = icmp eq i32 %retval1.0.i, 0
  br i1 %cmp40.not, label %if.end43, label %switch_clock.exit.cleanup_crit_edge

switch_clock.exit.cleanup_crit_edge:              ; preds = %switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43:                                         ; preds = %switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call44 = tail call i32 @select_card(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45.not = icmp ne i32 %call44, 0
  %. = zext i1 %cmp45.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %switch_clock.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %switch_clock.exit.cleanup_crit_edge ], [ %., %if.end43 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_build_l2p_tbl(ptr noundef %chip, i32 noundef %seg_no) unnamed_addr #0 align 64 {
entry:
  %extra.i = alloca [9 x i8], align 1
  %extra = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %extra) #8
  %0 = getelementptr inbounds [9 x i8], ptr %extra, i32 0, i32 1
  %1 = getelementptr inbounds [9 x i8], ptr %extra, i32 0, i32 2
  %2 = getelementptr inbounds [9 x i8], ptr %extra, i32 0, i32 3
  %3 = call ptr @memset(ptr %extra, i32 255, i32 9)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_build_l2p_tbl.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_build_l2p_tbl, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_build_l2p_tbl.__UNIQUE_ID_ddebug317, ptr noundef %dev.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %seg_no) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %segment6 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 9
  %8 = ptrtoint ptr %segment6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %segment6, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.then8, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then8:                                         ; preds = %do.end
  %call9 = tail call fastcc i32 @ms_init_l2p_tbl(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 0
  br i1 %cmp.not, label %if.then8.if.end12_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end12:                                         ; preds = %if.then8.if.end12_crit_edge, %do.end.if.end12_crit_edge
  %10 = ptrtoint ptr %segment6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %segment6, align 4
  %build_flag = getelementptr %struct.zone_entry, ptr %11, i32 %seg_no, i32 7
  %12 = ptrtoint ptr %build_flag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %build_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool14.not = icmp eq i32 %13, 0
  br i1 %tobool14.not, label %if.end33, label %do.body16

do.body16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_build_l2p_tbl.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_build_l2p_tbl, %if.then28)) #8
          to label %cleanup [label %if.then28], !srcloc !167

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %dev.i588 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_build_l2p_tbl.__UNIQUE_ID_ddebug318, ptr noundef %dev.i588, ptr noundef nonnull @.str.34, i32 noundef %seg_no) #8
  br label %cleanup

if.end33:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %seg_no)
  %cmp34 = icmp eq i32 %seg_no, 0
  %. = select i1 %cmp34, i32 988, i32 992
  %arrayidx38 = getelementptr %struct.zone_entry, ptr %11, i32 %seg_no
  %18 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx38, align 4
  %tobool39.not = icmp eq ptr %19, null
  br i1 %tobool39.not, label %if.then40, label %if.end33.if.end48_crit_edge

if.end33.if.end48_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then40:                                        ; preds = %if.end33
  %call42 = tail call noalias ptr @vmalloc(i32 noundef %.) #11
  %20 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call42, ptr %arrayidx38, align 4
  %tobool45.not = icmp eq ptr %call42, null
  br i1 %tobool45.not, label %if.then40.BUILD_FAIL_crit_edge, label %if.then40.if.end48_crit_edge

if.then40.if.end48_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then40.BUILD_FAIL_crit_edge:                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %BUILD_FAIL

if.end48:                                         ; preds = %if.then40.if.end48_crit_edge, %if.end33.if.end48_crit_edge
  %21 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx38, align 4
  %23 = call ptr @memset(ptr %22, i32 255, i32 %.)
  %free_table = getelementptr %struct.zone_entry, ptr %11, i32 %seg_no, i32 1
  %24 = ptrtoint ptr %free_table to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %free_table, align 4
  %tobool51.not = icmp eq ptr %25, null
  br i1 %tobool51.not, label %if.then52, label %if.end48.if.end60_crit_edge

if.end48.if.end60_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then52:                                        ; preds = %if.end48
  %call54 = tail call noalias ptr @vmalloc(i32 noundef 1024) #11
  %26 = ptrtoint ptr %free_table to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call54, ptr %free_table, align 4
  %tobool57.not = icmp eq ptr %call54, null
  br i1 %tobool57.not, label %if.then52.BUILD_FAIL_crit_edge, label %if.then52.if.end60_crit_edge

if.then52.if.end60_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then52.BUILD_FAIL_crit_edge:                   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %BUILD_FAIL

if.end60:                                         ; preds = %if.then52.if.end60_crit_edge, %if.end48.if.end60_crit_edge
  %27 = ptrtoint ptr %free_table to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %free_table, align 4
  %29 = call ptr @memset(ptr %28, i32 255, i32 1024)
  %conv64 = shl i32 %seg_no, 9
  %add = add i32 %seg_no, 1
  %conv68 = shl i32 %add, 9
  %disable_count = getelementptr %struct.zone_entry, ptr %11, i32 %seg_no, i32 6
  %30 = ptrtoint ptr %disable_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %disable_count, align 4
  %get_index = getelementptr %struct.zone_entry, ptr %11, i32 %seg_no, i32 4
  %32 = ptrtoint ptr %get_index to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %get_index, align 4
  %set_index = getelementptr %struct.zone_entry, ptr %11, i32 %seg_no, i32 3
  %33 = ptrtoint ptr %set_index to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %set_index, align 4
  %unused_blk_cnt = getelementptr %struct.zone_entry, ptr %11, i32 %seg_no, i32 5
  %34 = ptrtoint ptr %unused_blk_cnt to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %unused_blk_cnt, align 4
  %conv70 = and i32 %conv68, 65024
  %conv69639 = and i32 %conv64, 65024
  call void @__sanitizer_cov_trace_cmp4(i32 %conv70, i32 %conv69639)
  %cmp71640 = icmp ugt i32 %conv70, %conv69639
  br i1 %cmp71640, label %for.body.lr.ph, label %if.end60.for.end241_crit_edge

if.end60.for.end241_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end241

for.body.lr.ph:                                   ; preds = %if.end60
  %segment_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 10
  %card_wp = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 24
  %arrayidx178 = getelementptr [17 x i16], ptr @ms_start_idx, i32 0, i32 %seg_no
  %arrayidx184 = getelementptr [17 x i16], ptr @ms_start_idx, i32 0, i32 %add
  %35 = trunc i32 %conv68 to i16
  br label %for.body

for.body:                                         ; preds = %for.inc239.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ %conv69639, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc239.for.body_crit_edge ]
  %disable_cnt.0643 = phi i32 [ %31, %for.body.lr.ph ], [ %disable_cnt.1, %for.inc239.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disable_cnt.0643)
  %tobool73.not = icmp eq i32 %disable_cnt.0643, 0
  br i1 %tobool73.not, label %for.body.if.end90_crit_edge, label %for.cond75.preheader

for.body.if.end90_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

for.cond75.preheader:                             ; preds = %for.body
  %36 = ptrtoint ptr %disable_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %disable_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp77637 = icmp sgt i32 %37, 0
  br i1 %cmp77637, label %for.cond75.preheader.for.body79_crit_edge, label %for.cond75.preheader.if.end90_crit_edge

for.cond75.preheader.if.end90_crit_edge:          ; preds = %for.cond75.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

for.cond75.preheader.for.body79_crit_edge:        ; preds = %for.cond75.preheader
  br label %for.body79

for.cond75:                                       ; preds = %for.body79
  %inc = add nuw nsw i32 %i.0638, 1
  %exitcond.not = icmp eq i32 %inc, %37
  br i1 %exitcond.not, label %for.cond75.if.end90_crit_edge, label %for.cond75.for.body79_crit_edge

for.cond75.for.body79_crit_edge:                  ; preds = %for.cond75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body79

for.cond75.if.end90_crit_edge:                    ; preds = %for.cond75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

for.body79:                                       ; preds = %for.cond75.for.body79_crit_edge, %for.cond75.preheader.for.body79_crit_edge
  %i.0638 = phi i32 [ %inc, %for.cond75.for.body79_crit_edge ], [ 0, %for.cond75.preheader.for.body79_crit_edge ]
  %arrayidx81 = getelementptr %struct.zone_entry, ptr %11, i32 %seg_no, i32 2, i32 %i.0638
  %38 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx81, align 2
  %40 = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %40)
  %cmp83 = icmp eq i32 %indvars.iv, %40
  br i1 %cmp83, label %if.then88.critedge, label %for.cond75

if.then88.critedge:                               ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add i32 %disable_cnt.0643, -1
  %.pre = trunc i32 %indvars.iv to i16
  br label %for.inc239

if.end90:                                         ; preds = %for.cond75.if.end90_crit_edge, %for.cond75.preheader.if.end90_crit_edge, %for.body.if.end90_crit_edge
  %41 = trunc i32 %indvars.iv to i16
  %call91 = call fastcc i32 @ms_read_extra_data(ptr noundef %chip, i16 noundef zeroext %41, i8 noundef zeroext 0, ptr noundef nonnull %extra)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92.not = icmp eq i32 %call91, 0
  br i1 %cmp92.not, label %if.end113, label %do.body95

do.body95:                                        ; preds = %if.end90
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_build_l2p_tbl.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_build_l2p_tbl, %if.then107)) #8
          to label %do.end111 [label %if.then107], !srcloc !167

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chip, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %dev.i591 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_build_l2p_tbl.__UNIQUE_ID_ddebug319, ptr noundef %dev.i591, ptr noundef nonnull @.str.35) #8
  br label %do.end111

do.end111:                                        ; preds = %if.then107, %do.body95
  %call112 = call fastcc i32 @ms_set_bad_block(ptr noundef %chip, i16 noundef zeroext %41)
  br label %for.inc239

if.end113:                                        ; preds = %if.end90
  %46 = ptrtoint ptr %segment_cnt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %segment_cnt, align 4
  %sub = add i32 %47, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %seg_no)
  %cmp114 = icmp eq i32 %sub, %seg_no
  br i1 %cmp114, label %if.then116, label %if.end113.if.end134_crit_edge

if.end113.if.end134_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

if.then116:                                       ; preds = %if.end113
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %0, align 1
  %50 = and i8 %49, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool119.not = icmp eq i8 %50, 0
  br i1 %tobool119.not, label %if.then120, label %if.then116.if.end134_crit_edge

if.then116.if.end134_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

if.then120:                                       ; preds = %if.then116
  %51 = ptrtoint ptr %card_wp to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %card_wp, align 1
  %53 = and i8 %52, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool123.not = icmp eq i8 %53, 0
  br i1 %tobool123.not, label %if.then124, label %if.then120.if.end134_crit_edge

if.then120.if.end134_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

if.then124:                                       ; preds = %if.then120
  %call125 = call fastcc i32 @ms_erase_block(ptr noundef %chip, i16 noundef zeroext %41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126.not = icmp eq i32 %call125, 0
  br i1 %cmp126.not, label %if.end129, label %if.then124.for.inc239_crit_edge

if.then124.for.inc239_crit_edge:                  ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc239

if.end129:                                        ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %1, align 1
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -1, ptr %2, align 1
  br label %if.end134

if.end134:                                        ; preds = %if.end129, %if.then120.if.end134_crit_edge, %if.then116.if.end134_crit_edge, %if.end113.if.end134_crit_edge
  %56 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %extra, align 1
  %conv136 = zext i8 %57 to i32
  %and137 = and i32 %conv136, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.end134.for.inc239_crit_edge, label %if.end140

if.end134.for.inc239_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc239

if.end140:                                        ; preds = %if.end134
  %58 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %0, align 1
  %60 = and i8 %59, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool144.not = icmp ne i8 %60, 0
  %and149 = and i32 %conv136, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and149)
  %cmp150.not = icmp eq i32 %and149, 96
  %or.cond = select i1 %tobool144.not, i1 %cmp150.not, i1 false
  br i1 %or.cond, label %if.end153, label %if.end140.for.inc239_crit_edge

if.end140.for.inc239_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc239

if.end153:                                        ; preds = %if.end140
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %1, align 1
  %conv156 = zext i8 %62 to i32
  %shl157 = shl nuw nsw i32 %conv156, 8
  %63 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %2, align 1
  %conv159 = zext i8 %64 to i32
  %or = or i32 %shl157, %conv159
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %or)
  %cmp162 = icmp eq i32 %or, 65535
  br i1 %cmp162, label %if.then164, label %if.end176

if.then164:                                       ; preds = %if.end153
  %65 = ptrtoint ptr %card_wp to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %card_wp, align 1
  %67 = and i8 %66, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool168.not = icmp eq i8 %67, 0
  br i1 %tobool168.not, label %if.then169, label %if.then164.if.end175_crit_edge

if.then164.if.end175_crit_edge:                   ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

if.then169:                                       ; preds = %if.then164
  %call170 = call fastcc i32 @ms_erase_block(ptr noundef %chip, i16 noundef zeroext %41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %cmp171.not = icmp eq i32 %call170, 0
  br i1 %cmp171.not, label %if.then169.if.end175_crit_edge, label %if.then169.for.inc239_crit_edge

if.then169.for.inc239_crit_edge:                  ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc239

if.then169.if.end175_crit_edge:                   ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

if.end175:                                        ; preds = %if.then169.if.end175_crit_edge, %if.then164.if.end175_crit_edge
  %68 = lshr i32 %indvars.iv, 9
  %69 = and i32 %68, 127
  %70 = ptrtoint ptr %segment6 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %segment6, align 4
  %free_table.i = getelementptr %struct.zone_entry, ptr %71, i32 %69, i32 1
  %72 = ptrtoint ptr %free_table.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %free_table.i, align 4
  %set_index.i = getelementptr %struct.zone_entry, ptr %71, i32 %69, i32 3
  %74 = ptrtoint ptr %set_index.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %set_index.i, align 4
  %inc.i = add i32 %75, 1
  store i32 %inc.i, ptr %set_index.i, align 4
  %arrayidx3.i = getelementptr i16, ptr %73, i32 %75
  %76 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %41, ptr %arrayidx3.i, align 2
  %77 = load i32, ptr %set_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %77)
  %cmp.i = icmp sgt i32 %77, 511
  br i1 %cmp.i, label %if.then.i, label %if.end175.ms_set_unused_block.exit_crit_edge

if.end175.ms_set_unused_block.exit_crit_edge:     ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_set_unused_block.exit

if.then.i:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %set_index.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %set_index.i, align 4
  br label %ms_set_unused_block.exit

ms_set_unused_block.exit:                         ; preds = %if.then.i, %if.end175.ms_set_unused_block.exit_crit_edge
  %unused_blk_cnt.i = getelementptr %struct.zone_entry, ptr %71, i32 %69, i32 5
  %79 = ptrtoint ptr %unused_blk_cnt.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %unused_blk_cnt.i, align 4
  %inc7.i = add i32 %80, 1
  store i32 %inc7.i, ptr %unused_blk_cnt.i, align 4
  br label %for.inc239

if.end176:                                        ; preds = %if.end153
  %81 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx178, align 2
  %conv179 = zext i16 %82 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv179)
  %cmp180 = icmp ult i32 %or, %conv179
  br i1 %cmp180, label %if.end176.if.then188_crit_edge, label %lor.lhs.false

if.end176.if.then188_crit_edge:                   ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then188

lor.lhs.false:                                    ; preds = %if.end176
  %83 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx184, align 2
  %conv185 = zext i16 %84 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv185)
  %cmp186.not = icmp ult i32 %or, %conv185
  br i1 %cmp186.not, label %if.end200, label %lor.lhs.false.if.then188_crit_edge

lor.lhs.false.if.then188_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then188

if.then188:                                       ; preds = %lor.lhs.false.if.then188_crit_edge, %if.end176.if.then188_crit_edge
  %85 = ptrtoint ptr %card_wp to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %card_wp, align 1
  %87 = and i8 %86, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool192.not = icmp eq i8 %87, 0
  br i1 %tobool192.not, label %if.then193, label %if.then188.if.end199_crit_edge

if.then188.if.end199_crit_edge:                   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end199

if.then193:                                       ; preds = %if.then188
  %call194 = call fastcc i32 @ms_erase_block(ptr noundef %chip, i16 noundef zeroext %41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %cmp195.not = icmp eq i32 %call194, 0
  br i1 %cmp195.not, label %if.then193.if.end199_crit_edge, label %if.then193.for.inc239_crit_edge

if.then193.for.inc239_crit_edge:                  ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc239

if.then193.if.end199_crit_edge:                   ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end199

if.end199:                                        ; preds = %if.then193.if.end199_crit_edge, %if.then188.if.end199_crit_edge
  %88 = lshr i32 %indvars.iv, 9
  %89 = and i32 %88, 127
  %90 = ptrtoint ptr %segment6 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %segment6, align 4
  %free_table.i593 = getelementptr %struct.zone_entry, ptr %91, i32 %89, i32 1
  %92 = ptrtoint ptr %free_table.i593 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %free_table.i593, align 4
  %set_index.i594 = getelementptr %struct.zone_entry, ptr %91, i32 %89, i32 3
  %94 = ptrtoint ptr %set_index.i594 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %set_index.i594, align 4
  %inc.i595 = add i32 %95, 1
  store i32 %inc.i595, ptr %set_index.i594, align 4
  %arrayidx3.i596 = getelementptr i16, ptr %93, i32 %95
  %96 = ptrtoint ptr %arrayidx3.i596 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %41, ptr %arrayidx3.i596, align 2
  %97 = load i32, ptr %set_index.i594, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %97)
  %cmp.i597 = icmp sgt i32 %97, 511
  br i1 %cmp.i597, label %if.then.i598, label %if.end199.ms_set_unused_block.exit601_crit_edge

if.end199.ms_set_unused_block.exit601_crit_edge:  ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_set_unused_block.exit601

if.then.i598:                                     ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %set_index.i594 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %set_index.i594, align 4
  br label %ms_set_unused_block.exit601

ms_set_unused_block.exit601:                      ; preds = %if.then.i598, %if.end199.ms_set_unused_block.exit601_crit_edge
  %unused_blk_cnt.i599 = getelementptr %struct.zone_entry, ptr %91, i32 %89, i32 5
  %99 = ptrtoint ptr %unused_blk_cnt.i599 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %unused_blk_cnt.i599, align 4
  %inc7.i600 = add i32 %100, 1
  store i32 %inc7.i600, ptr %unused_blk_cnt.i599, align 4
  br label %for.inc239

if.end200:                                        ; preds = %lor.lhs.false
  %101 = trunc i32 %or to i16
  %conv205 = sub i16 %101, %82
  %102 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx38, align 4
  %idxprom = zext i16 %conv205 to i32
  %arrayidx207 = getelementptr i16, ptr %103, i32 %idxprom
  %104 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx207, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %105)
  %cmp209 = icmp eq i16 %105, -1
  br i1 %cmp209, label %if.then211, label %if.end215

if.then211:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #10
  %106 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %41, ptr %arrayidx207, align 2
  br label %for.inc239

if.end215:                                        ; preds = %if.end200
  %call224 = call fastcc i32 @ms_read_extra_data(ptr noundef %chip, i16 noundef zeroext %105, i8 noundef zeroext 0, ptr noundef nonnull %extra)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %cmp225.not = icmp eq i32 %call224, 0
  br i1 %cmp225.not, label %if.end228, label %if.end215.for.inc239_crit_edge

if.end215.for.inc239_crit_edge:                   ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc239

if.end228:                                        ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #10
  %and218 = and i8 %57, 16
  %107 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %extra, align 1
  %109 = and i8 %108, 16
  call fastcc void @ms_arbitrate_l2p(ptr noundef %chip, i16 noundef zeroext %41, i16 noundef zeroext %conv205, i8 noundef zeroext %and218, i8 noundef zeroext %109)
  br label %for.inc239

for.inc239:                                       ; preds = %if.end228, %if.end215.for.inc239_crit_edge, %if.then211, %ms_set_unused_block.exit601, %if.then193.for.inc239_crit_edge, %ms_set_unused_block.exit, %if.then169.for.inc239_crit_edge, %if.end140.for.inc239_crit_edge, %if.end134.for.inc239_crit_edge, %if.then124.for.inc239_crit_edge, %do.end111, %if.then88.critedge
  %.pre-phi = phi i16 [ %41, %if.end215.for.inc239_crit_edge ], [ %41, %if.then193.for.inc239_crit_edge ], [ %41, %if.then169.for.inc239_crit_edge ], [ %41, %if.end140.for.inc239_crit_edge ], [ %41, %if.end134.for.inc239_crit_edge ], [ %41, %if.then124.for.inc239_crit_edge ], [ %41, %if.end228 ], [ %41, %if.then211 ], [ %41, %ms_set_unused_block.exit601 ], [ %41, %ms_set_unused_block.exit ], [ %41, %do.end111 ], [ %.pre, %if.then88.critedge ]
  %disable_cnt.1 = phi i32 [ %disable_cnt.0643, %if.end215.for.inc239_crit_edge ], [ %disable_cnt.0643, %if.then193.for.inc239_crit_edge ], [ %disable_cnt.0643, %if.then169.for.inc239_crit_edge ], [ %disable_cnt.0643, %if.end140.for.inc239_crit_edge ], [ %disable_cnt.0643, %if.end134.for.inc239_crit_edge ], [ %disable_cnt.0643, %if.then124.for.inc239_crit_edge ], [ %disable_cnt.0643, %if.end228 ], [ %disable_cnt.0643, %if.then211 ], [ %disable_cnt.0643, %ms_set_unused_block.exit601 ], [ %disable_cnt.0643, %ms_set_unused_block.exit ], [ %disable_cnt.0643, %do.end111 ], [ %dec, %if.then88.critedge ]
  %inc240 = add i16 %.pre-phi, 1
  %cmp71 = icmp ult i16 %inc240, %35
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  br i1 %cmp71, label %for.inc239.for.body_crit_edge, label %for.inc239.for.end241_crit_edge

for.inc239.for.end241_crit_edge:                  ; preds = %for.inc239
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end241

for.inc239.for.body_crit_edge:                    ; preds = %for.inc239
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end241:                                       ; preds = %for.inc239.for.end241_crit_edge, %if.end60.for.end241_crit_edge
  %110 = ptrtoint ptr %build_flag to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 1, ptr %build_flag, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_build_l2p_tbl.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_build_l2p_tbl, %if.then255)) #8
          to label %do.end260 [label %if.then255], !srcloc !167

if.then255:                                       ; preds = %for.end241
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %chip, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %dev.i602 = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  %115 = ptrtoint ptr %unused_blk_cnt to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %unused_blk_cnt, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_build_l2p_tbl.__UNIQUE_ID_ddebug320, ptr noundef %dev.i602, ptr noundef nonnull @.str.36, i32 noundef %116) #8
  br label %do.end260

do.end260:                                        ; preds = %if.then255, %for.end241
  %segment_cnt261 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 10
  %117 = ptrtoint ptr %segment_cnt261 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %segment_cnt261, align 4
  %sub262 = add i32 %118, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub262, i32 %seg_no)
  %cmp263 = icmp eq i32 %sub262, %seg_no
  %119 = ptrtoint ptr %unused_blk_cnt to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %unused_blk_cnt, align 4
  br i1 %cmp263, label %if.then265, label %if.else275

if.then265:                                       ; preds = %do.end260
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %120)
  %cmp267 = icmp slt i32 %120, 2
  br i1 %cmp267, label %if.then265.if.end285.sink.split_crit_edge, label %if.then265.if.end285_crit_edge

if.then265.if.end285_crit_edge:                   ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end285

if.then265.if.end285.sink.split_crit_edge:        ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end285.sink.split

if.else275:                                       ; preds = %do.end260
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %120)
  %cmp277 = icmp slt i32 %120, 1
  br i1 %cmp277, label %if.else275.if.end285.sink.split_crit_edge, label %if.else275.if.end285_crit_edge

if.else275.if.end285_crit_edge:                   ; preds = %if.else275
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end285

if.else275.if.end285.sink.split_crit_edge:        ; preds = %if.else275
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end285.sink.split

if.end285.sink.split:                             ; preds = %if.else275.if.end285.sink.split_crit_edge, %if.then265.if.end285.sink.split_crit_edge
  %card_wp270 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 24
  %121 = ptrtoint ptr %card_wp270 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %card_wp270, align 1
  %123 = or i8 %122, 8
  store i8 %123, ptr %card_wp270, align 1
  br label %if.end285

if.end285:                                        ; preds = %if.end285.sink.split, %if.else275.if.end285_crit_edge, %if.then265.if.end285_crit_edge
  %card_wp286 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 24
  %124 = ptrtoint ptr %card_wp286 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %card_wp286, align 1
  %126 = and i8 %125, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool289.not = icmp eq i8 %126, 0
  br i1 %tobool289.not, label %if.end291, label %if.end285.cleanup_crit_edge

if.end285.cleanup_crit_edge:                      ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end291:                                        ; preds = %if.end285
  %arrayidx292 = getelementptr [17 x i16], ptr @ms_start_idx, i32 0, i32 %seg_no
  %127 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx292, align 2
  %arrayidx296 = getelementptr [17 x i16], ptr @ms_start_idx, i32 0, i32 %add
  %129 = ptrtoint ptr %arrayidx296 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %arrayidx296, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %128, i16 %130)
  %cmp298648 = icmp ult i16 %128, %130
  br i1 %cmp298648, label %for.body300.lr.ph, label %if.end291.for.end359_crit_edge

if.end291.for.end359_crit_edge:                   ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end359

for.body300.lr.ph:                                ; preds = %if.end291
  %131 = getelementptr inbounds [9 x i8], ptr %extra.i, i32 0, i32 1
  %132 = getelementptr inbounds [9 x i8], ptr %extra.i, i32 0, i32 2
  %133 = getelementptr inbounds [9 x i8], ptr %extra.i, i32 0, i32 3
  %134 = getelementptr inbounds i8, ptr %extra.i, i32 4
  %135 = zext i16 %128 to i32
  br label %for.body300

for.body300:                                      ; preds = %for.inc357.for.body300_crit_edge, %for.body300.lr.ph
  %indvars.iv653 = phi i32 [ %135, %for.body300.lr.ph ], [ %indvars.iv.next654, %for.inc357.for.body300_crit_edge ]
  %136 = sub nuw nsw i32 %indvars.iv653, %135
  %137 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx38, align 4
  %arrayidx308 = getelementptr i16, ptr %138, i32 %136
  %139 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %arrayidx308, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %140)
  %cmp310 = icmp eq i16 %140, -1
  br i1 %cmp310, label %if.then312, label %for.body300.for.inc357_crit_edge

for.body300.for.inc357_crit_edge:                 ; preds = %for.body300
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc357

if.then312:                                       ; preds = %for.body300
  %141 = ptrtoint ptr %segment6 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %segment6, align 4
  %unused_blk_cnt.i604 = getelementptr %struct.zone_entry, ptr %142, i32 %seg_no, i32 5
  %143 = ptrtoint ptr %unused_blk_cnt.i604 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %unused_blk_cnt.i604, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %144)
  %cmp.i605 = icmp slt i32 %144, 1
  br i1 %cmp.i605, label %if.then312.if.then317_crit_edge, label %if.end.i

if.then312.if.then317_crit_edge:                  ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then317

if.end.i:                                         ; preds = %if.then312
  %free_table.i606 = getelementptr %struct.zone_entry, ptr %142, i32 %seg_no, i32 1
  %145 = ptrtoint ptr %free_table.i606 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %free_table.i606, align 4
  %get_index.i = getelementptr %struct.zone_entry, ptr %142, i32 %seg_no, i32 4
  %147 = ptrtoint ptr %get_index.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %get_index.i, align 4
  %arrayidx3.i607 = getelementptr i16, ptr %146, i32 %148
  %149 = ptrtoint ptr %arrayidx3.i607 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %arrayidx3.i607, align 2
  %inc.i608 = add i32 %148, 1
  store i32 %inc.i608, ptr %get_index.i, align 4
  store i16 -1, ptr %arrayidx3.i607, align 2
  %151 = load i32, ptr %get_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %151)
  %cmp8.i = icmp sgt i32 %151, 511
  br i1 %cmp8.i, label %if.then9.i, label %if.end.i.ms_get_unused_block.exit_crit_edge

if.end.i.ms_get_unused_block.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_get_unused_block.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %152 = ptrtoint ptr %get_index.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %get_index.i, align 4
  br label %ms_get_unused_block.exit

ms_get_unused_block.exit:                         ; preds = %if.then9.i, %if.end.i.ms_get_unused_block.exit_crit_edge
  %153 = ptrtoint ptr %unused_blk_cnt.i604 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %unused_blk_cnt.i604, align 4
  %dec.i = add i32 %154, -1
  store i32 %dec.i, ptr %unused_blk_cnt.i604, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %150)
  %cmp315 = icmp eq i16 %150, -1
  br i1 %cmp315, label %ms_get_unused_block.exit.if.then317_crit_edge, label %if.end322

ms_get_unused_block.exit.if.then317_crit_edge:    ; preds = %ms_get_unused_block.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then317

if.then317:                                       ; preds = %ms_get_unused_block.exit.if.then317_crit_edge, %if.then312.if.then317_crit_edge
  %155 = ptrtoint ptr %card_wp286 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %card_wp286, align 1
  %157 = or i8 %156, 8
  store i8 %157, ptr %card_wp286, align 1
  br label %cleanup

if.end322:                                        ; preds = %ms_get_unused_block.exit
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %extra.i) #8
  %158 = call ptr @memset(ptr %134, i32 255, i32 5)
  %159 = ptrtoint ptr %extra.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 -8, ptr %extra.i, align 1
  %160 = ptrtoint ptr %131 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 -1, ptr %131, align 1
  %161 = lshr i32 %indvars.iv653, 8
  %conv3.i = trunc i32 %161 to i8
  %162 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv3.i, ptr %132, align 1
  %conv5.i = trunc i32 %indvars.iv653 to i8
  %163 = ptrtoint ptr %133 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %conv5.i, ptr %133, align 1
  %call.i = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp10.not.i, label %ms_init_page.exit, label %ms_init_page.exit.thread

ms_init_page.exit.thread:                         ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #10
  %err_code2.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 8
  %164 = ptrtoint ptr %err_code2.i.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 32, ptr %err_code2.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %extra.i) #8
  br label %BUILD_FAIL

ms_init_page.exit:                                ; preds = %if.end322
  %call13.i = call fastcc i32 @ms_write_extra_data(ptr noundef %chip, i16 noundef zeroext %150, i8 noundef zeroext 0, ptr noundef nonnull %extra.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.not.i.not = icmp eq i32 %call13.i, 0
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %extra.i) #8
  br i1 %cmp14.not.i.not, label %if.end327, label %ms_init_page.exit.BUILD_FAIL_crit_edge

ms_init_page.exit.BUILD_FAIL_crit_edge:           ; preds = %ms_init_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %BUILD_FAIL

if.end327:                                        ; preds = %ms_init_page.exit
  %165 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx38, align 4
  %arrayidx330 = getelementptr i16, ptr %166, i32 %136
  %167 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %150, ptr %arrayidx330, align 2
  %168 = ptrtoint ptr %segment_cnt261 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %segment_cnt261, align 4
  %sub332 = add i32 %169, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub332, i32 %seg_no)
  %cmp333 = icmp eq i32 %sub332, %seg_no
  %170 = ptrtoint ptr %unused_blk_cnt to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %unused_blk_cnt, align 4
  br i1 %cmp333, label %if.then335, label %if.else345

if.then335:                                       ; preds = %if.end327
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %171)
  %cmp337 = icmp slt i32 %171, 2
  br i1 %cmp337, label %if.then339, label %if.then335.for.inc357_crit_edge

if.then335.for.inc357_crit_edge:                  ; preds = %if.then335
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc357

if.then339:                                       ; preds = %if.then335
  call void @__sanitizer_cov_trace_pc() #10
  %172 = ptrtoint ptr %card_wp286 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %card_wp286, align 1
  %174 = or i8 %173, 8
  store i8 %174, ptr %card_wp286, align 1
  br label %cleanup

if.else345:                                       ; preds = %if.end327
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %171)
  %cmp347 = icmp slt i32 %171, 1
  br i1 %cmp347, label %if.then349, label %if.else345.for.inc357_crit_edge

if.else345.for.inc357_crit_edge:                  ; preds = %if.else345
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc357

if.then349:                                       ; preds = %if.else345
  call void @__sanitizer_cov_trace_pc() #10
  %175 = ptrtoint ptr %card_wp286 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %card_wp286, align 1
  %177 = or i8 %176, 8
  store i8 %177, ptr %card_wp286, align 1
  br label %cleanup

for.inc357:                                       ; preds = %if.else345.for.inc357_crit_edge, %if.then335.for.inc357_crit_edge, %for.body300.for.inc357_crit_edge
  %indvars.iv.next654 = add nuw nsw i32 %indvars.iv653, 1
  %lftr.wideiv = trunc i32 %indvars.iv.next654 to i16
  %exitcond656.not = icmp eq i16 %130, %lftr.wideiv
  br i1 %exitcond656.not, label %for.inc357.for.end359_crit_edge, label %for.inc357.for.body300_crit_edge

for.inc357.for.body300_crit_edge:                 ; preds = %for.inc357
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body300

for.inc357.for.end359_crit_edge:                  ; preds = %for.inc357
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end359

for.end359:                                       ; preds = %for.inc357.for.end359_crit_edge, %if.end291.for.end359_crit_edge
  br i1 %cmp34, label %for.cond363.preheader, label %for.end359.cleanup_crit_edge

for.end359.cleanup_crit_edge:                     ; preds = %for.end359
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond363.preheader:                            ; preds = %for.end359
  %boot_block = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 4
  %page_off = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 2
  br label %for.body367

for.body367:                                      ; preds = %for.inc417.for.body367_crit_edge, %for.cond363.preheader
  %indvars.iv657 = phi i32 [ 0, %for.cond363.preheader ], [ %indvars.iv.next658, %for.inc417.for.body367_crit_edge ]
  %178 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx38, align 4
  %arrayidx370 = getelementptr i16, ptr %179, i32 %indvars.iv657
  %180 = ptrtoint ptr %arrayidx370 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %arrayidx370, align 2
  %182 = ptrtoint ptr %boot_block to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %boot_block, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %181, i16 %183)
  %cmp373 = icmp ult i16 %181, %183
  br i1 %cmp373, label %do.body376, label %for.body367.for.inc417_crit_edge

for.body367.for.inc417_crit_edge:                 ; preds = %for.body367
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc417

do.body376:                                       ; preds = %for.body367
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_build_l2p_tbl.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_build_l2p_tbl, %if.then388)) #8
          to label %do.end392 [label %if.then388], !srcloc !167

if.then388:                                       ; preds = %do.body376
  call void @__sanitizer_cov_trace_pc() #10
  %184 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %chip, align 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %185, align 4
  %dev.i613 = getelementptr inbounds %struct.pci_dev, ptr %187, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_build_l2p_tbl.__UNIQUE_ID_ddebug321, ptr noundef %dev.i613, ptr noundef nonnull @.str.37) #8
  br label %do.end392

do.end392:                                        ; preds = %if.then388, %do.body376
  %188 = ptrtoint ptr %card_wp286 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %card_wp286, align 1
  %190 = and i8 %189, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool396.not = icmp eq i8 %190, 0
  br i1 %tobool396.not, label %if.end398, label %do.end392.cleanup_crit_edge

do.end392.cleanup_crit_edge:                      ; preds = %do.end392
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end398:                                        ; preds = %do.end392
  %191 = ptrtoint ptr %segment6 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %segment6, align 4
  %unused_blk_cnt.i615 = getelementptr %struct.zone_entry, ptr %192, i32 0, i32 5
  %193 = ptrtoint ptr %unused_blk_cnt.i615 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %unused_blk_cnt.i615, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %194)
  %cmp.i616 = icmp slt i32 %194, 1
  br i1 %cmp.i616, label %if.end398.ms_get_unused_block.exit627_crit_edge, label %if.end.i622

if.end398.ms_get_unused_block.exit627_crit_edge:  ; preds = %if.end398
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_get_unused_block.exit627

if.end.i622:                                      ; preds = %if.end398
  %free_table.i617 = getelementptr %struct.zone_entry, ptr %192, i32 0, i32 1
  %195 = ptrtoint ptr %free_table.i617 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %free_table.i617, align 4
  %get_index.i618 = getelementptr %struct.zone_entry, ptr %192, i32 0, i32 4
  %197 = ptrtoint ptr %get_index.i618 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %get_index.i618, align 4
  %arrayidx3.i619 = getelementptr i16, ptr %196, i32 %198
  %199 = ptrtoint ptr %arrayidx3.i619 to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %arrayidx3.i619, align 2
  %inc.i620 = add i32 %198, 1
  store i32 %inc.i620, ptr %get_index.i618, align 4
  store i16 -1, ptr %arrayidx3.i619, align 2
  %201 = load i32, ptr %get_index.i618, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %201)
  %cmp8.i621 = icmp sgt i32 %201, 511
  br i1 %cmp8.i621, label %if.then9.i623, label %if.end.i622.if.end11.i625_crit_edge

if.end.i622.if.end11.i625_crit_edge:              ; preds = %if.end.i622
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i625

if.then9.i623:                                    ; preds = %if.end.i622
  call void @__sanitizer_cov_trace_pc() #10
  %202 = ptrtoint ptr %get_index.i618 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 0, ptr %get_index.i618, align 4
  br label %if.end11.i625

if.end11.i625:                                    ; preds = %if.then9.i623, %if.end.i622.if.end11.i625_crit_edge
  %203 = ptrtoint ptr %unused_blk_cnt.i615 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %unused_blk_cnt.i615, align 4
  %dec.i624 = add i32 %204, -1
  store i32 %dec.i624, ptr %unused_blk_cnt.i615, align 4
  br label %ms_get_unused_block.exit627

ms_get_unused_block.exit627:                      ; preds = %if.end11.i625, %if.end398.ms_get_unused_block.exit627_crit_edge
  %retval.0.i626 = phi i16 [ %200, %if.end11.i625 ], [ -1, %if.end398.ms_get_unused_block.exit627_crit_edge ]
  %205 = ptrtoint ptr %page_off to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %page_off, align 1
  %add401 = add i8 %206, 1
  %207 = trunc i32 %indvars.iv657 to i16
  %call403 = call fastcc i32 @ms_copy_page(ptr noundef %chip, i16 noundef zeroext %181, i16 noundef zeroext %retval.0.i626, i16 noundef zeroext %207, i8 noundef zeroext 0, i8 noundef zeroext %add401)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call403)
  %cmp404.not = icmp eq i32 %call403, 0
  br i1 %cmp404.not, label %if.end407, label %ms_get_unused_block.exit627.cleanup_crit_edge

ms_get_unused_block.exit627.cleanup_crit_edge:    ; preds = %ms_get_unused_block.exit627
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end407:                                        ; preds = %ms_get_unused_block.exit627
  %208 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %arrayidx38, align 4
  %arrayidx410 = getelementptr i16, ptr %209, i32 %indvars.iv657
  %210 = ptrtoint ptr %arrayidx410 to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 %retval.0.i626, ptr %arrayidx410, align 2
  %call411 = call fastcc i32 @ms_set_bad_block(ptr noundef %chip, i16 noundef zeroext %181)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call411)
  %cmp412.not = icmp eq i32 %call411, 0
  br i1 %cmp412.not, label %if.end407.for.inc417_crit_edge, label %if.end407.cleanup_crit_edge

if.end407.cleanup_crit_edge:                      ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end407.for.inc417_crit_edge:                   ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc417

for.inc417:                                       ; preds = %if.end407.for.inc417_crit_edge, %for.body367.for.inc417_crit_edge
  %indvars.iv.next658 = add nuw nsw i32 %indvars.iv657, 1
  %exitcond659.not = icmp eq i32 %indvars.iv.next658, 494
  br i1 %exitcond659.not, label %for.inc417.cleanup_crit_edge, label %for.inc417.for.body367_crit_edge

for.inc417.for.body367_crit_edge:                 ; preds = %for.inc417
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body367

for.inc417.cleanup_crit_edge:                     ; preds = %for.inc417
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

BUILD_FAIL:                                       ; preds = %ms_init_page.exit.BUILD_FAIL_crit_edge, %ms_init_page.exit.thread, %if.then52.BUILD_FAIL_crit_edge, %if.then40.BUILD_FAIL_crit_edge
  %211 = ptrtoint ptr %build_flag to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 0, ptr %build_flag, align 4
  %212 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %arrayidx38, align 4
  call void @vfree(ptr noundef %213) #8
  %214 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr null, ptr %arrayidx38, align 4
  %free_table424 = getelementptr %struct.zone_entry, ptr %11, i32 %seg_no, i32 1
  %215 = ptrtoint ptr %free_table424 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %free_table424, align 4
  call void @vfree(ptr noundef %216) #8
  %217 = ptrtoint ptr %free_table424 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr null, ptr %free_table424, align 4
  br label %cleanup

cleanup:                                          ; preds = %BUILD_FAIL, %for.inc417.cleanup_crit_edge, %if.end407.cleanup_crit_edge, %ms_get_unused_block.exit627.cleanup_crit_edge, %do.end392.cleanup_crit_edge, %for.end359.cleanup_crit_edge, %if.then349, %if.then339, %if.then317, %if.end285.cleanup_crit_edge, %if.then28, %do.body16, %if.then8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then317 ], [ 1, %BUILD_FAIL ], [ 0, %if.then339 ], [ 0, %if.then349 ], [ %call9, %if.then8.cleanup_crit_edge ], [ 0, %if.then28 ], [ 0, %if.end285.cleanup_crit_edge ], [ 0, %for.end359.cleanup_crit_edge ], [ 0, %do.body16 ], [ 0, %do.end392.cleanup_crit_edge ], [ 0, %for.inc417.cleanup_crit_edge ], [ 1, %if.end407.cleanup_crit_edge ], [ 1, %ms_get_unused_block.exit627.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %extra) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mspro_stop_seq_mode(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %seq_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 17
  %0 = ptrtoint ptr %seq_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %seq_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @select_card(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %ms_clock.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 24
  %2 = ptrtoint ptr %ms_clock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ms_clock.i, align 4
  %asic_code.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %4 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %3) #8
  br label %ms_switch_clock.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %3) #8
  br label %ms_switch_clock.exit

ms_switch_clock.exit:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval1.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i)
  %cmp4.not.i.not = icmp eq i32 %retval1.0.i.i, 0
  br i1 %cmp4.not.i.not, label %if.end, label %ms_switch_clock.exit.cleanup_crit_edge

ms_switch_clock.exit.cleanup_crit_edge:           ; preds = %ms_switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ms_switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %seq_mode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %seq_mode, align 1
  %total_sec_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 21
  %7 = ptrtoint ptr %total_sec_cnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %total_sec_cnt, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %8 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 37, ptr %data.i, align 1
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %8, align 1
  %call.i13 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  %call5 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -460, i8 noundef zeroext -128, i8 noundef zeroext -128) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ms_switch_clock.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_write_register(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mspro_polling_format_status(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pro_under_formatting = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 11
  %0 = ptrtoint ptr %pro_under_formatting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pro_under_formatting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %2 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %land.lhs.true.if.end6_crit_edge, label %do.body

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

do.body:                                          ; preds = %land.lhs.true
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %4 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %idle_counter, align 4
  %5 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %rtsx_stat, align 4
  %format_status = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body
  %i.013 = phi i32 [ 0, %do.body ], [ %inc, %for.body.for.body_crit_edge ]
  %call = tail call fastcc i32 @mspro_read_format_progress(ptr noundef %chip, i32 noundef 32)
  %6 = ptrtoint ptr %format_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp4.not = icmp ne i32 %7, 2
  %inc = add nuw nsw i32 %i.013, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 65535
  %or.cond = select i1 %cmp4.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.body.if.end6_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end6:                                          ; preds = %for.body.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mspro_read_format_progress(ptr noundef %chip, i32 noundef %short_data_len) #0 align 64 {
entry:
  %tmp = alloca i8, align 1
  %data = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #8
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !168
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #8
  %1 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 1
  %2 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 2
  %3 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 3
  %4 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 4
  %5 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 5
  %6 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 6
  %7 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 7
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %data, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mspro_read_format_progress.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mspro_read_format_progress, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mspro_read_format_progress.__UNIQUE_ID_ddebug325, ptr noundef %dev.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef 32) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call i32 @select_card(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %do.end.if.then8_crit_edge

do.end.if.then8_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.end.i:                                         ; preds = %do.end
  %ms_clock.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 24
  %13 = ptrtoint ptr %ms_clock.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ms_clock.i, align 4
  %asic_code.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %15 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %14) #8
  br label %ms_switch_clock.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %14) #8
  br label %ms_switch_clock.exit

ms_switch_clock.exit:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval1.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i)
  %cmp4.not.i.not = icmp eq i32 %retval1.0.i.i, 0
  br i1 %cmp4.not.i.not, label %if.end9, label %ms_switch_clock.exit.if.then8_crit_edge

ms_switch_clock.exit.if.then8_crit_edge:          ; preds = %ms_switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.then8:                                         ; preds = %ms_switch_clock.exit.if.then8_crit_edge, %do.end.if.then8_crit_edge
  %format_status = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 12
  %17 = ptrtoint ptr %format_status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %format_status, align 4
  br label %cleanup

if.end9:                                          ; preds = %ms_switch_clock.exit
  %call10 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -702, ptr noundef nonnull %tmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %format_status13 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 12
  %18 = ptrtoint ptr %format_status13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %format_status13, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %19 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tmp, align 1
  %conv = zext i8 %20 to i32
  %and = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.then16, label %if.end30

if.then16:                                        ; preds = %if.end14
  %and18 = and i32 %conv, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and18)
  %cmp19 = icmp eq i32 %and18, 1
  %format_status22 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 12
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %format_status22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %format_status22, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %format_status22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %format_status22, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end14
  %call31 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -704, i8 noundef zeroext 2, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32.not = icmp eq i32 %call31, 0
  br i1 %cmp32.not, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %format_status35 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 12
  %23 = ptrtoint ptr %format_status35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %format_status35, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  %call37 = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 3, i8 noundef zeroext 32, i8 noundef zeroext -128, ptr noundef nonnull %data, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38.not = icmp eq i32 %call37, 0
  br i1 %cmp38.not, label %if.end42, label %if.then40

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %format_status41 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 12
  %24 = ptrtoint ptr %format_status41 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %format_status41, align 4
  br label %cleanup

if.end42:                                         ; preds = %if.end36
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %data, align 8
  %conv43 = zext i8 %26 to i32
  %shl = shl nuw i32 %conv43, 24
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %1, align 1
  %conv45 = zext i8 %28 to i32
  %shl46 = shl nuw nsw i32 %conv45, 16
  %or = or i32 %shl46, %shl
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %2, align 2
  %conv48 = zext i8 %30 to i32
  %shl49 = shl nuw nsw i32 %conv48, 8
  %or50 = or i32 %or, %shl49
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %3, align 1
  %conv52 = zext i8 %32 to i32
  %or53 = or i32 %or50, %conv52
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %4, align 4
  %conv55 = zext i8 %34 to i32
  %shl56 = shl nuw i32 %conv55, 24
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %5, align 1
  %conv58 = zext i8 %36 to i32
  %shl59 = shl nuw nsw i32 %conv58, 16
  %or60 = or i32 %shl59, %shl56
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %6, align 2
  %conv62 = zext i8 %38 to i32
  %shl63 = shl nuw nsw i32 %conv62, 8
  %or64 = or i32 %or60, %shl63
  %39 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %7, align 1
  %conv66 = zext i8 %40 to i32
  %or67 = or i32 %or64, %conv66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mspro_read_format_progress.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mspro_read_format_progress, %if.then80)) #8
          to label %do.end84 [label %if.then80], !srcloc !167

if.then80:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chip, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %dev.i565 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mspro_read_format_progress.__UNIQUE_ID_ddebug326, ptr noundef %dev.i565, ptr noundef nonnull @.str.48, i32 noundef %or53, i32 noundef %or67) #8
  br label %do.end84

do.end84:                                         ; preds = %if.then80, %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or53)
  %cmp85 = icmp eq i32 %or53, 0
  br i1 %cmp85, label %do.end84.do.body289_crit_edge, label %if.else88

do.end84.do.body289_crit_edge:                    ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body289

if.else88:                                        ; preds = %do.end84
  %conv89 = zext i32 %or67 to i64
  %mul = mul nuw nsw i64 %conv89, 65535
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp266 = icmp ult i64 %mul, 4294967296
  br i1 %cmp266, label %if.then274, label %if.else280, !prof !169

if.then274:                                       ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #10
  %conv275 = trunc i64 %mul to i32
  %div278 = udiv i32 %conv275, %or53
  %extract.t582 = trunc i32 %div278 to i16
  br label %do.body289

if.else280:                                       ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #10
  %45 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %or53, i64 %mul) #12, !srcloc !170
  %asmresult1.i = extractvalue { i64, i64 } %45, 1
  %extract.t583 = trunc i64 %asmresult1.i to i16
  br label %do.body289

do.body289:                                       ; preds = %if.else280, %if.then274, %do.end84.do.body289_crit_edge
  %.sink = phi i16 [ 0, %do.end84.do.body289_crit_edge ], [ %extract.t582, %if.then274 ], [ %extract.t583, %if.else280 ]
  %progress = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 13
  %46 = ptrtoint ptr %progress to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %.sink, ptr %progress, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mspro_read_format_progress.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mspro_read_format_progress, %if.then301)) #8
          to label %for.body [label %if.then301], !srcloc !167

if.then301:                                       ; preds = %do.body289
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chip, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %dev.i567 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %progress303 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 13
  %51 = ptrtoint ptr %progress303 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %progress303, align 4
  %conv304 = zext i16 %52 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mspro_read_format_progress.__UNIQUE_ID_ddebug327, ptr noundef %dev.i567, ptr noundef nonnull @.str.49, i32 noundef %conv304) #8
  br label %for.body

for.body:                                         ; preds = %__here.for.body_crit_edge, %if.then301, %do.body289
  %i.0585 = phi i32 [ %inc, %__here.for.body_crit_edge ], [ 0, %do.body289 ], [ 0, %if.then301 ]
  %call310 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -702, ptr noundef nonnull %tmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call310)
  %cmp311.not = icmp eq i32 %call310, 0
  br i1 %cmp311.not, label %if.end315, label %if.then313

if.then313:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %format_status314 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 12
  %53 = ptrtoint ptr %format_status314 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %format_status314, align 4
  br label %cleanup

if.end315:                                        ; preds = %for.body
  %54 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tmp, align 1
  %56 = and i8 %55, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool318.not = icmp eq i8 %56, 0
  br i1 %tobool318.not, label %__here, label %for.end

__here:                                           ; preds = %if.end315
  %57 = call i32 @llvm.read_register.i32(metadata !157) #8
  %and.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 212
  %61 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 ptrtoint (ptr blockaddress(@mspro_read_format_progress, %__here) to i32), ptr %task_state_change, align 4
  %62 = load ptr, ptr %task, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 1, ptr %62, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !171
  %call395 = call i32 @schedule_timeout(i32 noundef 0) #8
  %inc = add nuw nsw i32 %i.0585, 1
  %exitcond.not = icmp eq i32 %inc, 5000
  br i1 %exitcond.not, label %for.end.thread, label %__here.for.body_crit_edge

__here.for.body_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end315
  %call398 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -704, i8 noundef zeroext 2, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call398)
  %cmp399.not = icmp eq i32 %call398, 0
  br i1 %cmp399.not, label %if.end403, label %for.end.if.then401_crit_edge

for.end.if.then401_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then401

for.end.thread:                                   ; preds = %__here
  %call398587 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -704, i8 noundef zeroext 2, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call398587)
  %cmp399.not588 = icmp eq i32 %call398587, 0
  br i1 %cmp399.not588, label %for.end.thread.if.then406_crit_edge, label %for.end.thread.if.then401_crit_edge

for.end.thread.if.then401_crit_edge:              ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then401

for.end.thread.if.then406_crit_edge:              ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then406

if.then401:                                       ; preds = %for.end.thread.if.then401_crit_edge, %for.end.if.then401_crit_edge
  %format_status402 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 12
  %64 = ptrtoint ptr %format_status402 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %format_status402, align 4
  br label %cleanup

if.end403:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %i.0585)
  %cmp404 = icmp eq i32 %i.0585, 5000
  br i1 %cmp404, label %if.end403.if.then406_crit_edge, label %if.end408

if.end403.if.then406_crit_edge:                   ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then406

if.then406:                                       ; preds = %if.end403.if.then406_crit_edge, %for.end.thread.if.then406_crit_edge
  %format_status407 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 12
  %65 = ptrtoint ptr %format_status407 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %format_status407, align 4
  br label %cleanup

if.end408:                                        ; preds = %if.end403
  %66 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %tmp, align 1
  %conv409 = zext i8 %67 to i32
  %and410 = and i32 %conv409, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and410)
  %tobool411.not = icmp eq i32 %and410, 0
  br i1 %tobool411.not, label %if.end414, label %if.then412

if.then412:                                       ; preds = %if.end408
  call void @__sanitizer_cov_trace_pc() #10
  %format_status413 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 12
  %68 = ptrtoint ptr %format_status413 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %format_status413, align 4
  br label %cleanup

if.end414:                                        ; preds = %if.end408
  %and416 = and i32 %conv409, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and416)
  %tobool417.not = icmp eq i32 %and416, 0
  br i1 %tobool417.not, label %if.else420, label %if.then418

if.then418:                                       ; preds = %if.end414
  call void @__sanitizer_cov_trace_pc() #10
  %format_status419 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 12
  %69 = ptrtoint ptr %format_status419 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %format_status419, align 4
  %pro_under_formatting = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 11
  %70 = ptrtoint ptr %pro_under_formatting to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %pro_under_formatting, align 4
  br label %cleanup

if.else420:                                       ; preds = %if.end414
  %and422 = and i32 %conv409, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and422)
  %tobool423.not = icmp eq i32 %and422, 0
  %format_status427 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 12
  br i1 %tobool423.not, label %if.else426, label %if.then424

if.then424:                                       ; preds = %if.else420
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %format_status427 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %format_status427, align 4
  br label %cleanup

if.else426:                                       ; preds = %if.else420
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %format_status427 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %format_status427, align 4
  %pro_under_formatting428 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 11
  %73 = ptrtoint ptr %pro_under_formatting428 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %pro_under_formatting428, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else426, %if.then424, %if.then418, %if.then412, %if.then406, %if.then401, %if.then313, %if.then40, %if.then34, %if.end23, %if.then21, %if.then12, %if.then8
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 1, %if.then12 ], [ 1, %if.then34 ], [ 1, %if.then40 ], [ 1, %if.then313 ], [ 1, %if.then401 ], [ 1, %if.then406 ], [ 1, %if.then412 ], [ 1, %if.else426 ], [ 0, %if.then21 ], [ 1, %if.end23 ], [ 0, %if.then424 ], [ 0, %if.then418 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mspro_format(ptr nocapture noundef readonly %srb, ptr noundef %chip, i32 noundef %short_data_len, i1 noundef zeroext %quick_format) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca [8 x i8], align 1
  %buf = alloca [8 x i8], align 2
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #8
  %0 = getelementptr inbounds i8, ptr %buf, i32 2
  %1 = call ptr @memset(ptr %0, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #8
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tmp, align 1, !annotation !168
  %call.i = tail call i32 @select_card(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %ms_clock.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 24
  %3 = ptrtoint ptr %ms_clock.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ms_clock.i, align 4
  %asic_code.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %5 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %4) #8
  br label %ms_switch_clock.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %4) #8
  br label %ms_switch_clock.exit

ms_switch_clock.exit:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval1.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i)
  %cmp4.not.i.not = icmp eq i32 %retval1.0.i.i, 0
  br i1 %cmp4.not.i.not, label %if.end, label %ms_switch_clock.exit.cleanup_crit_edge

ms_switch_clock.exit.cleanup_crit_edge:           ; preds = %ms_switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ms_switch_clock.exit
  %call3 = tail call fastcc i32 @ms_set_rw_reg_addr(ptr noundef %chip, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 23, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %buf, align 2
  %8 = add i32 %short_data_len, -32
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 27)
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 3, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %buf, align 2
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %buf, align 2
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %buf, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %buf, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb7, %sw.bb
  %call15 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %buf, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %sw.epilog.if.end21_crit_edge, label %for.inc

sw.epilog.if.end21_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

for.inc:                                          ; preds = %sw.epilog
  %call15.1 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %buf, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.1)
  %cmp16.1 = icmp eq i32 %call15.1, 0
  br i1 %cmp16.1, label %for.inc.if.end21_crit_edge, label %for.inc.1

for.inc.if.end21_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

for.inc.1:                                        ; preds = %for.inc
  %call15.2 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %buf, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.2)
  %cmp16.2 = icmp eq i32 %call15.2, 0
  br i1 %cmp16.2, label %for.inc.1.if.end21_crit_edge, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.1.if.end21_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21:                                         ; preds = %for.inc.1.if.end21_crit_edge, %for.inc.if.end21_crit_edge, %sw.epilog.if.end21_crit_edge
  %not.quick_format = xor i1 %quick_format, true
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i) #8
  %15 = getelementptr inbounds [8 x i8], ptr %data.i, i32 0, i32 1
  %16 = getelementptr inbounds [8 x i8], ptr %data.i, i32 0, i32 2
  %17 = getelementptr inbounds [8 x i8], ptr %data.i, i32 0, i32 3
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 16, ptr %data.i, align 1
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %15, align 1
  %conv4.i = zext i1 %not.quick_format to i8
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv4.i, ptr %16, align 1
  %21 = call ptr @memset(ptr %17, i32 0, i32 5)
  %call.i73 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 9, i8 noundef zeroext 7, i8 noundef zeroext -128, ptr noundef nonnull %data.i, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %cmp19.i = icmp eq i32 %call.i73, 0
  br i1 %cmp19.i, label %if.end21.mspro_set_rw_cmd.exit.thread_crit_edge, label %for.inc.i

if.end21.mspro_set_rw_cmd.exit.thread_crit_edge:  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %mspro_set_rw_cmd.exit.thread

for.inc.i:                                        ; preds = %if.end21
  %call.1.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 9, i8 noundef zeroext 7, i8 noundef zeroext -128, ptr noundef nonnull %data.i, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp19.1.i = icmp eq i32 %call.1.i, 0
  br i1 %cmp19.1.i, label %for.inc.i.mspro_set_rw_cmd.exit.thread_crit_edge, label %mspro_set_rw_cmd.exit

for.inc.i.mspro_set_rw_cmd.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mspro_set_rw_cmd.exit.thread

mspro_set_rw_cmd.exit.thread:                     ; preds = %for.inc.i.mspro_set_rw_cmd.exit.thread_crit_edge, %if.end21.mspro_set_rw_cmd.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i) #8
  br label %if.end27

mspro_set_rw_cmd.exit:                            ; preds = %for.inc.i
  %call.2.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 9, i8 noundef zeroext 7, i8 noundef zeroext -128, ptr noundef nonnull %data.i, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp19.2.i.not = icmp eq i32 %call.2.i, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i) #8
  br i1 %cmp19.2.i.not, label %mspro_set_rw_cmd.exit.if.end27_crit_edge, label %mspro_set_rw_cmd.exit.cleanup_crit_edge

mspro_set_rw_cmd.exit.cleanup_crit_edge:          ; preds = %mspro_set_rw_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mspro_set_rw_cmd.exit.if.end27_crit_edge:         ; preds = %mspro_set_rw_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end27:                                         ; preds = %mspro_set_rw_cmd.exit.if.end27_crit_edge, %mspro_set_rw_cmd.exit.thread
  %call28 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -702, ptr noundef nonnull %tmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  %22 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tmp, align 1
  %conv = zext i8 %23 to i32
  %and = and i32 %conv, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.end34, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  %and36 = and i32 %conv, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and36)
  %cmp37 = icmp eq i32 %and36, 4
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %pro_under_formatting = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 11
  %24 = ptrtoint ptr %pro_under_formatting to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %pro_under_formatting, align 4
  %progress = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 13
  %25 = ptrtoint ptr %progress to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %progress, align 4
  %format_status = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 12
  %26 = ptrtoint ptr %format_status to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %format_status, align 4
  br label %cleanup

if.end40:                                         ; preds = %if.end34
  %and42 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end40.cleanup_crit_edge, label %if.then44

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %pro_under_formatting45 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 11
  %27 = ptrtoint ptr %pro_under_formatting45 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %pro_under_formatting45, align 4
  %progress46 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 13
  %28 = ptrtoint ptr %progress46 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %progress46, align 4
  %format_status47 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 12
  %29 = ptrtoint ptr %format_status47 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %format_status47, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %30 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %31, i32 0, i32 18
  %32 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %lun, align 8
  %conv48 = trunc i64 %33 to i32
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv48, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.end40.cleanup_crit_edge, %if.then39, %if.end31.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %mspro_set_rw_cmd.exit.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ms_switch_clock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then39 ], [ 0, %if.then44 ], [ 1, %ms_switch_clock.exit.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %mspro_set_rw_cmd.exit.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ], [ 1, %if.end31.cleanup_crit_edge ], [ 1, %if.end40.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 1, %for.inc.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_set_rw_reg_addr(ptr noundef %chip, i8 noundef zeroext %read_start, i8 noundef zeroext %read_cnt, i8 noundef zeroext %write_start, i8 noundef zeroext %write_cnt) unnamed_addr #0 align 64 {
entry:
  %data = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #8
  %0 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %read_start, ptr %data, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %read_cnt, ptr %0, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %write_start, ptr %1, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %write_cnt, ptr %2, align 1
  %call = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 8, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  %call.1 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 8, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp5.1 = icmp eq i32 %call.1, 0
  br i1 %cmp5.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  %call.i.1 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  %call.2 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 8, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp5.2 = icmp eq i32 %call.2, 0
  br i1 %cmp5.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.2 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.2, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.1.cleanup_crit_edge ], [ 1, %if.end.2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext %tpc, i8 noundef zeroext %cnt, i8 noundef zeroext %cfg, ptr noundef readonly %data, i32 noundef %data_len) unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup59_crit_edge, label %lor.lhs.false

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup59

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i8 %cnt to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %data_len)
  %cmp = icmp sgt i32 %conv, %data_len
  br i1 %cmp, label %lor.lhs.false.cleanup59_crit_edge, label %if.end

lor.lhs.false.cleanup59_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup59

if.end:                                           ; preds = %lor.lhs.false
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ci, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cnt)
  %cmp596.not = icmp eq i8 %cnt, 0
  br i1 %cmp596.not, label %if.end.if.end13_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.097 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %1 = trunc i32 %i.097 to i16
  %conv7 = add i16 %1, -1536
  %arrayidx = getelementptr i8, ptr %data, i32 %i.097
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %conv7, i8 noundef zeroext -1, i8 noundef zeroext %3) #8
  %inc = add nuw nsw i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %rem = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool9.not = icmp eq i32 %rem, 0
  br i1 %tobool9.not, label %for.end.if.end13_crit_edge, label %if.then10

for.end.if.end13_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast = zext i8 %cnt to i16
  %phi.bo = or i16 %phi.cast, -1536
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %phi.bo, i8 noundef zeroext -1, i8 noundef zeroext -1) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %for.end.if.end13_crit_edge, %if.end.if.end13_crit_edge
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -703, i8 noundef zeroext -1, i8 noundef zeroext %tpc) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -699, i8 noundef zeroext -1, i8 noundef zeroext %cnt) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -702, i8 noundef zeroext -1, i8 noundef zeroext %cfg) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -701, i8 noundef zeroext -1, i8 noundef zeroext -124) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -701, i8 noundef zeroext 64, i8 noundef zeroext 64) #8
  %call = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 8, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp14 = icmp slt i32 %call, 0
  br i1 %cmp14, label %if.then16, label %if.end13.cleanup59_crit_edge

if.end13.cleanup59_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup59

if.then16:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %val, align 1
  %call17 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -702, ptr noundef nonnull %val) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_write_bytes.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_write_bytes, %if.then22)) #8
          to label %do.end [label %if.then22], !srcloc !167

if.then22:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val, align 1
  %conv24 = zext i8 %10 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_write_bytes.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.51, i32 noundef %conv24) #8
  br label %do.end

do.end:                                           ; preds = %if.then22, %if.then16
  %call.i = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  %11 = and i8 %tpc, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool27.not = icmp eq i8 %11, 0
  br i1 %tobool27.not, label %if.then28, label %if.else

if.then28:                                        ; preds = %do.end
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val, align 1
  %14 = and i8 %13, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool31.not = icmp eq i8 %14, 0
  br i1 %tobool31.not, label %if.then28.if.end50_crit_edge, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then28.if.end50_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.else:                                          ; preds = %do.end
  %15 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ms_card1, align 4
  %17 = and i16 %16, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %17)
  %cmp37 = icmp eq i16 %17, 1
  br i1 %cmp37, label %land.lhs.true, label %if.else.if.end50_crit_edge

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

land.lhs.true:                                    ; preds = %if.else
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %val, align 1
  %conv39 = zext i8 %19 to i32
  %and40 = and i32 %conv39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp ne i32 %and40, 0
  %and44 = and i32 %conv39, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %or.cond = or i1 %tobool41.not, %tobool45.not
  br i1 %or.cond, label %land.lhs.true.if.end50_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.end50:                                         ; preds = %land.lhs.true.if.end50_crit_edge, %if.else.if.end50_crit_edge, %if.then28.if.end50_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %land.lhs.true.cleanup_crit_edge, %if.then28.cleanup_crit_edge
  %.sink = phi i8 [ 64, %if.end50 ], [ -128, %if.then28.cleanup_crit_edge ], [ 8, %land.lhs.true.cleanup_crit_edge ]
  %err_code2.i94 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 8
  %20 = ptrtoint ptr %err_code2.i94 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink, ptr %err_code2.i94, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  br label %cleanup59

cleanup59:                                        ; preds = %cleanup, %if.end13.cleanup59_crit_edge, %lor.lhs.false.cleanup59_crit_edge, %entry.cleanup59_crit_edge
  %retval.1 = phi i32 [ 1, %cleanup ], [ 10, %lor.lhs.false.cleanup59_crit_edge ], [ 10, %entry.cleanup59_crit_edge ], [ 0, %if.end13.cleanup59_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_read_register(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_sense_type(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ms_delay_write(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %delay_write2 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 22
  %delay_write_flag = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 22, i32 4
  %0 = ptrtoint ptr %delay_write_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %delay_write_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %ms_card1.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  %2 = ptrtoint ptr %ms_card1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ms_card1.i, align 4
  %conv.i = zext i16 %3 to i32
  %4 = and i32 %conv.i, 1791
  call void @__sanitizer_cov_trace_const_cmp4(i32 1537, i32 %4)
  %5 = icmp eq i32 %4, 1537
  br i1 %5, label %if.then.i, label %if.else11.i

if.then.i:                                        ; preds = %if.then
  %asic_code.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %6 = ptrtoint ptr %asic_code.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %asic_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %asic_ms_hg_clk.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 99
  br label %if.end38.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %fpga_ms_hg_clk.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 91
  br label %if.end38.i

if.else11.i:                                      ; preds = %if.then
  %and.i = and i32 %conv.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp15.i = icmp ne i32 %and.i, 1
  %and19.i = and i32 %conv.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %or.cond72.i = and i1 %cmp15.i, %tobool20.not.i
  %asic_code30.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %8 = ptrtoint ptr %asic_code30.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %asic_code30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool31.not.i = icmp eq i32 %9, 0
  br i1 %or.cond72.i, label %if.else29.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.else11.i
  br i1 %tobool31.not.i, label %if.else26.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  %asic_ms_4bit_clk.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 100
  br label %if.end38.i

if.else26.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  %fpga_ms_4bit_clk.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 92
  br label %if.end38.i

if.else29.i:                                      ; preds = %if.else11.i
  br i1 %tobool31.not.i, label %if.else34.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #10
  %asic_ms_1bit_clk.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 101
  br label %if.end38.i

if.else34.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #10
  %fpga_ms_1bit_clk.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 93
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else34.i, %if.then32.i, %if.else26.i, %if.then24.i, %if.else.i, %if.then9.i
  %fpga_ms_4bit_clk.sink.i = phi ptr [ %fpga_ms_4bit_clk.i, %if.else26.i ], [ %asic_ms_4bit_clk.i, %if.then24.i ], [ %fpga_ms_1bit_clk.i, %if.else34.i ], [ %asic_ms_1bit_clk.i, %if.then32.i ], [ %asic_ms_hg_clk.i, %if.then9.i ], [ %fpga_ms_hg_clk.i, %if.else.i ]
  %10 = ptrtoint ptr %fpga_ms_4bit_clk.sink.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fpga_ms_4bit_clk.sink.i, align 4
  %ms_clock27.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 24
  %12 = ptrtoint ptr %ms_clock27.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %ms_clock27.i, align 4
  %asic_code.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %13 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %11) #8
  br label %switch_clock.exit.i

if.else.i.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %11) #8
  br label %switch_clock.exit.i

switch_clock.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  %retval1.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i)
  %cmp40.not.i = icmp eq i32 %retval1.0.i.i, 0
  br i1 %cmp40.not.i, label %ms_set_init_para.exit, label %switch_clock.exit.i.cleanup_crit_edge

switch_clock.exit.i.cleanup_crit_edge:            ; preds = %switch_clock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ms_set_init_para.exit:                            ; preds = %switch_clock.exit.i
  %call44.i = tail call i32 @select_card(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %cmp45.not.i.not = icmp eq i32 %call44.i, 0
  br i1 %cmp45.not.i.not, label %if.end, label %ms_set_init_para.exit.cleanup_crit_edge

ms_set_init_para.exit.cleanup_crit_edge:          ; preds = %ms_set_init_para.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ms_set_init_para.exit
  %15 = ptrtoint ptr %delay_write_flag to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %delay_write_flag, align 1
  %16 = ptrtoint ptr %delay_write2 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %delay_write2, align 2
  %new_phyblock = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 22, i32 1
  %18 = ptrtoint ptr %new_phyblock to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %new_phyblock, align 2
  %logblock = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 22, i32 2
  %20 = ptrtoint ptr %logblock to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %logblock, align 2
  %pageoff = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 22, i32 3
  %22 = ptrtoint ptr %pageoff to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pageoff, align 2
  %page_off3.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 2
  %24 = ptrtoint ptr %page_off3.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %page_off3.i, align 1
  %add.i = add i8 %25, 1
  %call.i = tail call fastcc i32 @ms_copy_page(ptr noundef %chip, i16 noundef zeroext %17, i16 noundef zeroext %19, i16 noundef zeroext %21, i8 noundef zeroext %23, i8 noundef zeroext %add.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %26 = lshr i16 %17, 9
  %27 = zext i16 %26 to i32
  %multi_flag.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 16
  %28 = ptrtoint ptr %multi_flag.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %multi_flag.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %29)
  %tobool.not.i21 = icmp sgt i8 %29, -1
  br i1 %tobool.not.i21, label %if.else.i23, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %and11.i = and i8 %29, 127
  %30 = ptrtoint ptr %multi_flag.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %and11.i, ptr %multi_flag.i, align 2
  %call13.i = tail call fastcc i32 @ms_set_bad_block(ptr noundef %chip, i16 noundef zeroext %17) #8
  br label %if.end19.i

if.else.i23:                                      ; preds = %if.end.i
  %call14.i = tail call fastcc i32 @ms_erase_block(ptr noundef %chip, i16 noundef zeroext %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i22 = icmp eq i32 %call14.i, 0
  br i1 %cmp15.i22, label %if.then17.i, label %if.else.i23.if.end19.i_crit_edge

if.else.i23.if.end19.i_crit_edge:                 ; preds = %if.else.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.else.i23
  %segment2.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 9
  %31 = ptrtoint ptr %segment2.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %segment2.i.i, align 4
  %free_table.i.i = getelementptr %struct.zone_entry, ptr %32, i32 %27, i32 1
  %33 = ptrtoint ptr %free_table.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %free_table.i.i, align 4
  %set_index.i.i = getelementptr %struct.zone_entry, ptr %32, i32 %27, i32 3
  %35 = ptrtoint ptr %set_index.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %set_index.i.i, align 4
  %inc.i.i = add i32 %36, 1
  store i32 %inc.i.i, ptr %set_index.i.i, align 4
  %arrayidx3.i.i = getelementptr i16, ptr %34, i32 %36
  %37 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %17, ptr %arrayidx3.i.i, align 2
  %38 = load i32, ptr %set_index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %38)
  %cmp.i.i = icmp sgt i32 %38, 511
  br i1 %cmp.i.i, label %if.then.i.i24, label %if.then17.i.ms_set_unused_block.exit.i_crit_edge

if.then17.i.ms_set_unused_block.exit.i_crit_edge: ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_set_unused_block.exit.i

if.then.i.i24:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %set_index.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %set_index.i.i, align 4
  br label %ms_set_unused_block.exit.i

ms_set_unused_block.exit.i:                       ; preds = %if.then.i.i24, %if.then17.i.ms_set_unused_block.exit.i_crit_edge
  %unused_blk_cnt.i.i = getelementptr %struct.zone_entry, ptr %32, i32 %27, i32 5
  %40 = ptrtoint ptr %unused_blk_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %unused_blk_cnt.i.i, align 4
  %inc7.i.i = add i32 %41, 1
  store i32 %inc7.i.i, ptr %unused_blk_cnt.i.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %ms_set_unused_block.exit.i, %if.else.i23.if.end19.i_crit_edge, %if.then8.i
  %arrayidx.i = getelementptr [17 x i16], ptr @ms_start_idx, i32 0, i32 %27
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.i, align 2
  %sub.i = sub i16 %21, %43
  %segment2.i40.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 9
  %44 = ptrtoint ptr %segment2.i40.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %segment2.i40.i, align 4
  %tobool.not.i.i25 = icmp eq ptr %45, null
  br i1 %tobool.not.i.i25, label %if.end19.i.cleanup_crit_edge, label %if.end.i.i

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end19.i
  %arrayidx.i.i = getelementptr %struct.zone_entry, ptr %45, i32 %27
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %47, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then5.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %idxprom.i.i = zext i16 %sub.i to i32
  %arrayidx7.i.i = getelementptr i16, ptr %47, i32 %idxprom.i.i
  %48 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %19, ptr %arrayidx7.i.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then5.i.i, %if.end.i.i.cleanup_crit_edge, %if.end19.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ms_set_init_para.exit.cleanup_crit_edge, %switch_clock.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %ms_set_init_para.exit.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 1, %switch_clock.exit.i.cleanup_crit_edge ], [ 0, %if.end19.i.cleanup_crit_edge ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ 0, %if.then5.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ms_rw(ptr nocapture noundef %srb, ptr noundef %chip, i32 noundef %start_sector, i16 noundef zeroext %sector_cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  %0 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ms_card1, align 4
  %2 = and i16 %1, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %2)
  %cmp = icmp eq i16 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @mspro_rw_multi_sector(ptr noundef %srb, ptr noundef %chip, i32 noundef %start_sector, i16 noundef zeroext %sector_cnt)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call fastcc i32 @ms_rw_multi_sector(ptr noundef %srb, ptr noundef %chip, i32 noundef %start_sector, i16 noundef zeroext %sector_cnt)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %retval2.0 = phi i32 [ %call, %if.then ], [ %call4, %if.else ]
  ret i32 %retval2.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mspro_rw_multi_sector(ptr nocapture noundef readonly %srb, ptr noundef %chip, i32 noundef %start_sector, i16 noundef zeroext %sector_cnt) unnamed_addr #0 align 64 {
entry:
  %data.i288 = alloca [2 x i8], align 1
  %data.i285 = alloca [8 x i8], align 1
  %data.i = alloca [2 x i8], align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !168
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 8
  %1 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %err_code2.i, align 2
  %cleanup_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 23
  %2 = ptrtoint ptr %cleanup_counter to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cleanup_counter, align 4
  %3 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ms_card1, align 4
  %5 = and i16 %4, 1279
  call void @__sanitizer_cov_trace_const_cmp2(i16 1025, i16 %5)
  %.not = icmp eq i16 %5, 1025
  br i1 %.not, label %if.then, label %if.else23

if.then:                                          ; preds = %entry
  %rem = and i32 %start_sector, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool7.not = icmp eq i32 %rem, 0
  %6 = and i16 %sector_cnt, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool10.not = icmp eq i16 %6, 0
  %or.cond272 = and i1 %tobool7.not, %tobool10.not
  %sc_data_direction16 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 15
  %7 = ptrtoint ptr %sc_data_direction16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sc_data_direction16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp17 = icmp eq i32 %8, 2
  br i1 %or.cond272, label %if.else15, label %if.then11

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %. = select i1 %cmp17, i8 2, i8 13
  %.273 = select i1 %cmp17, i8 32, i8 33
  br label %if.end30

if.else15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %.274 = select i1 %cmp17, i8 5, i8 10
  %.275 = select i1 %cmp17, i8 39, i8 40
  br label %if.end30

if.else23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sc_data_direction24 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 15
  %9 = ptrtoint ptr %sc_data_direction24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sc_data_direction24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp25 = icmp eq i32 %10, 2
  %.276 = select i1 %cmp25, i8 2, i8 13
  %.277 = select i1 %cmp25, i8 32, i8 33
  br label %if.end30

if.end30:                                         ; preds = %if.else23, %if.else15, %if.then11
  %rw_tpc.1 = phi i8 [ %.274, %if.else15 ], [ %., %if.then11 ], [ %.276, %if.else23 ]
  %rw_cmd.1 = phi i8 [ %.275, %if.else15 ], [ %.273, %if.then11 ], [ %.277, %if.else23 ]
  %mode_2k.0.off0 = phi i1 [ true, %if.else15 ], [ false, %if.then11 ], [ false, %if.else23 ]
  %call.i = tail call i32 @select_card(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end30
  %ms_clock.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 24
  %11 = ptrtoint ptr %ms_clock.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ms_clock.i, align 4
  %asic_code.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %13 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %12) #8
  br label %ms_switch_clock.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %12) #8
  br label %ms_switch_clock.exit

ms_switch_clock.exit:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval1.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i)
  %cmp4.not.i.not = icmp eq i32 %retval1.0.i.i, 0
  br i1 %cmp4.not.i.not, label %if.end34, label %ms_switch_clock.exit.cleanup_crit_edge

ms_switch_clock.exit.cleanup_crit_edge:           ; preds = %ms_switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %ms_switch_clock.exit
  %sc_data_direction35 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 15
  %15 = ptrtoint ptr %sc_data_direction35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sc_data_direction35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp36 = icmp eq i32 %16, 2
  %.278 = select i1 %cmp36, i8 8, i8 12
  %call41 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -702, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44:                                         ; preds = %if.end34
  %seq_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 17
  %17 = ptrtoint ptr %seq_mode to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %seq_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool45.not = icmp eq i8 %18, 0
  br i1 %tobool45.not, label %if.end44.if.then96_crit_edge, label %if.then46

if.end44.if.then96_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then96

if.then46:                                        ; preds = %if.end44
  %pre_dir = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 18
  %19 = ptrtoint ptr %pre_dir to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pre_dir, align 4
  %21 = ptrtoint ptr %sc_data_direction35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sc_data_direction35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp48.not = icmp eq i32 %20, %22
  br i1 %cmp48.not, label %lor.lhs.false50, label %if.then46.if.then78_crit_edge

if.then46.if.then78_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then78

lor.lhs.false50:                                  ; preds = %if.then46
  %pre_sec_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 19
  %23 = ptrtoint ptr %pre_sec_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pre_sec_addr, align 4
  %pre_sec_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 20
  %25 = ptrtoint ptr %pre_sec_cnt to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %pre_sec_cnt, align 4
  %conv51 = zext i16 %26 to i32
  %add = add i32 %24, %conv51
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %start_sector)
  %cmp52.not = icmp eq i32 %add, %start_sector
  br i1 %cmp52.not, label %lor.lhs.false54, label %lor.lhs.false50.if.then78_crit_edge

lor.lhs.false50.if.then78_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then78

lor.lhs.false54:                                  ; preds = %lor.lhs.false50
  %mode_2k.0.off0.not = xor i1 %mode_2k.0.off0, true
  %27 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool61.not = icmp eq i8 %27, 0
  %or.cond279 = select i1 %mode_2k.0.off0.not, i1 true, i1 %tobool61.not
  br i1 %or.cond279, label %lor.lhs.false62, label %lor.lhs.false54.if.then78_crit_edge

lor.lhs.false54.if.then78_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then78

lor.lhs.false62:                                  ; preds = %lor.lhs.false54
  %28 = and i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool68.not = icmp eq i8 %28, 0
  %or.cond298 = select i1 %mode_2k.0.off0, i1 true, i1 %tobool68.not
  br i1 %or.cond298, label %lor.lhs.false69, label %lor.lhs.false62.if.then78_crit_edge

lor.lhs.false62.if.then78_crit_edge:              ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then78

lor.lhs.false69:                                  ; preds = %lor.lhs.false62
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %val, align 1
  %31 = and i8 %30, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool72.not = icmp eq i8 %31, 0
  br i1 %tobool72.not, label %lor.lhs.false69.if.then78_crit_edge, label %lor.lhs.false73

lor.lhs.false69.if.then78_crit_edge:              ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then78

lor.lhs.false73:                                  ; preds = %lor.lhs.false69
  %total_sec_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 21
  %32 = ptrtoint ptr %total_sec_cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %total_sec_cnt, align 4
  %conv74 = zext i16 %sector_cnt to i32
  %add75 = add i32 %33, %conv74
  call void @__sanitizer_cov_trace_const_cmp4(i32 65024, i32 %add75)
  %cmp76 = icmp ugt i32 %add75, 65024
  br i1 %cmp76, label %lor.lhs.false73.if.then78_crit_edge, label %lor.lhs.false73.if.end93_crit_edge

lor.lhs.false73.if.end93_crit_edge:               ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

lor.lhs.false73.if.then78_crit_edge:              ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then78

if.then78:                                        ; preds = %lor.lhs.false73.if.then78_crit_edge, %lor.lhs.false69.if.then78_crit_edge, %lor.lhs.false62.if.then78_crit_edge, %lor.lhs.false54.if.then78_crit_edge, %lor.lhs.false50.if.then78_crit_edge, %if.then46.if.then78_crit_edge
  %34 = ptrtoint ptr %seq_mode to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %seq_mode, align 1
  %total_sec_cnt80 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 21
  %35 = ptrtoint ptr %total_sec_cnt80 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %total_sec_cnt80, align 4
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %val, align 1
  %38 = and i8 %37, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool83.not = icmp eq i8 %38, 0
  br i1 %tobool83.not, label %if.then78.if.end93_crit_edge, label %if.then84

if.then78.if.end93_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then84:                                        ; preds = %if.then78
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %39 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 37, ptr %data.i, align 1
  %41 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %39, align 1
  %call.i284 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i284)
  %cmp86.not = icmp eq i32 %call.i284, 0
  br i1 %cmp86.not, label %if.end89, label %if.then84.cleanup_crit_edge

if.then84.cleanup_crit_edge:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end89:                                         ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  %call90 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -460, i8 noundef zeroext -128, i8 noundef zeroext -128) #8
  br label %if.end93

if.end93:                                         ; preds = %if.end89, %if.then78.if.end93_crit_edge, %lor.lhs.false73.if.end93_crit_edge
  %42 = ptrtoint ptr %seq_mode to i32
  call void @__asan_load1_noabort(i32 %42)
  %.pr = load i8, ptr %seq_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool95.not = icmp eq i8 %.pr, 0
  br i1 %tobool95.not, label %if.end93.if.then96_crit_edge, label %if.end93.if.end130_crit_edge

if.end93.if.end130_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.end93.if.then96_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then96

if.then96:                                        ; preds = %if.end93.if.then96_crit_edge, %if.end44.if.then96_crit_edge
  %total_sec_cnt97 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 21
  %43 = ptrtoint ptr %total_sec_cnt97 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %total_sec_cnt97, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %sector_cnt)
  %cmp99 = icmp ugt i16 %sector_cnt, 31
  %extract.t301 = trunc i16 %sector_cnt to i8
  %extract307 = lshr i16 %sector_cnt, 8
  %extract.t308 = trunc i16 %extract307 to i8
  br i1 %cmp99, label %if.then101, label %if.then96.if.end123_crit_edge

if.then96.if.end123_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

if.then101:                                       ; preds = %if.then96
  %capacity = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 5
  %44 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %capacity, align 4
  %sub = sub i32 %45, %start_sector
  %46 = call i32 @llvm.umin.i32(i32 %sub, i32 65024)
  %47 = trunc i32 %46 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %sector_cnt)
  %cmp112 = icmp ugt i16 %47, %sector_cnt
  %extract.t300 = trunc i32 %46 to i8
  %extract305310 = lshr i32 %46, 8
  %extract.t306 = trunc i32 %extract305310 to i8
  br i1 %cmp112, label %if.then114, label %if.then101.if.end123_crit_edge

if.then101.if.end123_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

if.then114:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  %.313 = select i1 %mode_2k.0.off0, i8 2, i8 1
  %48 = ptrtoint ptr %seq_mode to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %.313, ptr %seq_mode, align 1
  br label %if.end123

if.end123:                                        ; preds = %if.then114, %if.then101.if.end123_crit_edge, %if.then96.if.end123_crit_edge
  %count.1.off0 = phi i8 [ %extract.t300, %if.then101.if.end123_crit_edge ], [ %extract.t301, %if.then96.if.end123_crit_edge ], [ %extract.t300, %if.then114 ]
  %count.1.off8 = phi i8 [ %extract.t306, %if.then101.if.end123_crit_edge ], [ %extract.t308, %if.then96.if.end123_crit_edge ], [ %extract.t306, %if.then114 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i285) #8
  %49 = getelementptr inbounds [8 x i8], ptr %data.i285, i32 0, i32 1
  %50 = getelementptr inbounds [8 x i8], ptr %data.i285, i32 0, i32 2
  %51 = getelementptr inbounds [8 x i8], ptr %data.i285, i32 0, i32 3
  %52 = getelementptr inbounds [8 x i8], ptr %data.i285, i32 0, i32 4
  %53 = getelementptr inbounds [8 x i8], ptr %data.i285, i32 0, i32 5
  %54 = getelementptr inbounds [8 x i8], ptr %data.i285, i32 0, i32 6
  %55 = getelementptr inbounds [8 x i8], ptr %data.i285, i32 0, i32 7
  %56 = ptrtoint ptr %data.i285 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %rw_cmd.1, ptr %data.i285, align 1
  %57 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %count.1.off8, ptr %49, align 1
  %58 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %count.1.off0, ptr %50, align 1
  %shr6.i = lshr i32 %start_sector, 24
  %conv7.i = trunc i32 %shr6.i to i8
  %59 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv7.i, ptr %51, align 1
  %shr9.i = lshr i32 %start_sector, 16
  %conv10.i = trunc i32 %shr9.i to i8
  %60 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv10.i, ptr %52, align 1
  %shr12.i = lshr i32 %start_sector, 8
  %conv13.i = trunc i32 %shr12.i to i8
  %61 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv13.i, ptr %53, align 1
  %conv15.i = trunc i32 %start_sector to i8
  %62 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv15.i, ptr %54, align 1
  %63 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %55, align 1
  %call.i286 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 9, i8 noundef zeroext 7, i8 noundef zeroext -128, ptr noundef nonnull %data.i285, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i286)
  %cmp19.i = icmp eq i32 %call.i286, 0
  br i1 %cmp19.i, label %if.end123.mspro_set_rw_cmd.exit.thread_crit_edge, label %for.inc.i

if.end123.mspro_set_rw_cmd.exit.thread_crit_edge: ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %mspro_set_rw_cmd.exit.thread

for.inc.i:                                        ; preds = %if.end123
  %call.1.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 9, i8 noundef zeroext 7, i8 noundef zeroext -128, ptr noundef nonnull %data.i285, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp19.1.i = icmp eq i32 %call.1.i, 0
  br i1 %cmp19.1.i, label %for.inc.i.mspro_set_rw_cmd.exit.thread_crit_edge, label %mspro_set_rw_cmd.exit

for.inc.i.mspro_set_rw_cmd.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mspro_set_rw_cmd.exit.thread

mspro_set_rw_cmd.exit.thread:                     ; preds = %for.inc.i.mspro_set_rw_cmd.exit.thread_crit_edge, %if.end123.mspro_set_rw_cmd.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i285) #8
  br label %if.end130

mspro_set_rw_cmd.exit:                            ; preds = %for.inc.i
  %call.2.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 9, i8 noundef zeroext 7, i8 noundef zeroext -128, ptr noundef nonnull %data.i285, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp19.2.i.not = icmp eq i32 %call.2.i, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i285) #8
  br i1 %cmp19.2.i.not, label %mspro_set_rw_cmd.exit.if.end130_crit_edge, label %if.then127

mspro_set_rw_cmd.exit.if.end130_crit_edge:        ; preds = %mspro_set_rw_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.then127:                                       ; preds = %mspro_set_rw_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %seq_mode to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %seq_mode, align 1
  br label %cleanup

if.end130:                                        ; preds = %mspro_set_rw_cmd.exit.if.end130_crit_edge, %mspro_set_rw_cmd.exit.thread, %if.end93.if.end130_crit_edge
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 0, i32 1
  %65 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nents.i, align 4
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17
  %67 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sdb.i, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %69 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %length.i, align 4
  %call135 = call fastcc i32 @ms_transfer_data(ptr noundef %chip, i8 noundef zeroext %.278, i8 noundef zeroext %rw_tpc.1, i16 noundef zeroext %sector_cnt, i1 noundef zeroext %mode_2k.0.off0, i32 noundef %66, ptr noundef %68, i32 noundef %70)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %cmp136.not = icmp eq i32 %call135, 0
  br i1 %cmp136.not, label %if.end183, label %if.then138

if.then138:                                       ; preds = %if.end130
  %71 = ptrtoint ptr %seq_mode to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %seq_mode, align 1
  %call140 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -702, ptr noundef nonnull %val) #8
  %call.i287 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  %call141 = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %cmp142.not = icmp eq i32 %call141, 0
  br i1 %cmp142.not, label %if.end152, label %if.then144

if.then144:                                       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #10
  %rw_need_retry = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 17
  %72 = ptrtoint ptr %rw_need_retry to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %rw_need_retry, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mspro_rw_multi_sector.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mspro_rw_multi_sector, %if.then149)) #8
          to label %cleanup [label %if.then149], !srcloc !167

if.then149:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chip, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mspro_rw_multi_sector.__UNIQUE_ID_ddebug323, ptr noundef %dev.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52) #8
  br label %cleanup

if.end152:                                        ; preds = %if.then138
  %77 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %val, align 1
  %79 = and i8 %78, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool155.not = icmp eq i8 %79, 0
  br i1 %tobool155.not, label %if.end152.if.end158_crit_edge, label %if.then156

if.end152.if.end158_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

if.then156:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i288) #8
  %80 = getelementptr inbounds [2 x i8], ptr %data.i288, i32 0, i32 1
  %81 = ptrtoint ptr %data.i288 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 37, ptr %data.i288, align 1
  %82 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %80, align 1
  %call.i289 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i288, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i288) #8
  br label %if.end158

if.end158:                                        ; preds = %if.then156, %if.end152.if.end158_crit_edge
  %83 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %val, align 1
  %85 = and i8 %84, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool161.not = icmp eq i8 %85, 0
  br i1 %tobool161.not, label %if.end158.cleanup_crit_edge, label %do.body163

if.end158.cleanup_crit_edge:                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body163:                                       ; preds = %if.end158
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mspro_rw_multi_sector.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mspro_rw_multi_sector, %if.then175)) #8
          to label %do.end179 [label %if.then175], !srcloc !167

if.then175:                                       ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %chip, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %dev.i290 = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mspro_rw_multi_sector.__UNIQUE_ID_ddebug324, ptr noundef %dev.i290, ptr noundef nonnull @.str.54) #8
  br label %do.end179

do.end179:                                        ; preds = %if.then175, %do.body163
  %rw_need_retry180 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 17
  %90 = ptrtoint ptr %rw_need_retry180 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %rw_need_retry180, align 4
  call fastcc void @ms_auto_tune_clock(ptr noundef %chip)
  br label %cleanup

if.end183:                                        ; preds = %if.end130
  %91 = ptrtoint ptr %seq_mode to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %seq_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool185.not = icmp eq i8 %92, 0
  br i1 %tobool185.not, label %if.end183.cleanup_crit_edge, label %if.then186

if.end183.cleanup_crit_edge:                      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then186:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  %pre_sec_addr187 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 19
  %93 = ptrtoint ptr %pre_sec_addr187 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %start_sector, ptr %pre_sec_addr187, align 4
  %pre_sec_cnt188 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 20
  %94 = ptrtoint ptr %pre_sec_cnt188 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %sector_cnt, ptr %pre_sec_cnt188, align 4
  %95 = ptrtoint ptr %sc_data_direction35 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %sc_data_direction35, align 4
  %pre_dir190 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 18
  %97 = ptrtoint ptr %pre_dir190 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %pre_dir190, align 4
  %conv191 = zext i16 %sector_cnt to i32
  %total_sec_cnt192 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 21
  %98 = ptrtoint ptr %total_sec_cnt192 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %total_sec_cnt192, align 4
  %add193 = add i32 %99, %conv191
  store i32 %add193, ptr %total_sec_cnt192, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then186, %if.end183.cleanup_crit_edge, %do.end179, %if.end158.cleanup_crit_edge, %if.then149, %if.then144, %if.then127, %if.then84.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %ms_switch_clock.exit.cleanup_crit_edge, %if.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then127 ], [ 1, %ms_switch_clock.exit.cleanup_crit_edge ], [ %call41, %if.end34.cleanup_crit_edge ], [ 1, %if.then84.cleanup_crit_edge ], [ 1, %if.then149 ], [ %call135, %do.end179 ], [ %call135, %if.end158.cleanup_crit_edge ], [ 0, %if.then186 ], [ 0, %if.end183.cleanup_crit_edge ], [ 1, %if.then144 ], [ 1, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_rw_multi_sector(ptr nocapture noundef %srb, ptr noundef %chip, i32 noundef %start_sector, i16 noundef zeroext %sector_cnt) unnamed_addr #0 align 64 {
entry:
  %data.i309.i = alloca [2 x i8], align 1
  %data.i299.i = alloca [2 x i8], align 1
  %data.i.i557 = alloca [2 x i8], align 1
  %val.i558 = alloca i8, align 1
  %data.i559 = alloca [16 x i8], align 1
  %data.i230.i = alloca [2 x i8], align 1
  %val.i.i = alloca [2 x i8], align 1
  %data.i.i = alloca [2 x i8], align 1
  %extra.i = alloca [9 x i8], align 1
  %val.i = alloca i8, align 1
  %data.i = alloca [6 x i8], align 1
  %index = alloca i32, align 4
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #8
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #8
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %offset, align 4
  %delay_write4 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 22
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 8
  %6 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %err_code2.i, align 2
  %cleanup_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 23
  %7 = ptrtoint ptr %cleanup_counter to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %cleanup_counter, align 4
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17
  %8 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdb.i, align 4
  %call.i = tail call i32 @select_card(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end.i:                                         ; preds = %entry
  %ms_clock.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 24
  %10 = ptrtoint ptr %ms_clock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ms_clock.i, align 4
  %asic_code.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %12 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %11) #8
  br label %ms_switch_clock.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %11) #8
  br label %ms_switch_clock.exit

ms_switch_clock.exit:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval1.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i)
  %cmp4.not.i.not = icmp eq i32 %retval1.0.i.i, 0
  br i1 %cmp4.not.i.not, label %if.end, label %ms_switch_clock.exit.if.then_crit_edge

ms_switch_clock.exit.if.then_crit_edge:           ; preds = %ms_switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %ms_switch_clock.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %sc_data_direction.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 15
  %14 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sc_data_direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.i = icmp eq i32 %15, 2
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %17, i32 0, i32 18
  %18 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %lun.i, align 8
  %conv.i = trunc i64 %19 to i32
  %..i524 = select i1 %cmp.i, i32 7, i32 8
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv.i, i32 noundef %..i524) #8
  br label %cleanup

if.end:                                           ; preds = %ms_switch_clock.exit
  %block_shift = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 1
  %20 = ptrtoint ptr %block_shift to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %block_shift, align 2
  %conv7 = zext i8 %21 to i32
  %shr = lshr i32 %start_sector, %conv7
  %conv8 = trunc i32 %shr to i16
  %page_off = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 2
  %22 = ptrtoint ptr %page_off to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %page_off, align 1
  %24 = trunc i32 %start_sector to i8
  %conv10 = and i8 %23, %24
  %25 = trunc i32 %shr to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 494, i16 %25)
  %cmp15 = icmp ult i16 %25, 494
  br i1 %cmp15, label %if.end.for.end_crit_edge, label %for.cond.1

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.1:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 990, i16 %25)
  %cmp15.1 = icmp ult i16 %25, 990
  br i1 %cmp15.1, label %for.cond.1.for.end_crit_edge, label %for.cond.2

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1486, i16 %25)
  %cmp15.2 = icmp ult i16 %25, 1486
  br i1 %cmp15.2, label %for.cond.2.for.end_crit_edge, label %for.cond.3

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1982, i16 %25)
  %cmp15.3 = icmp ult i16 %25, 1982
  br i1 %cmp15.3, label %for.cond.3.for.end_crit_edge, label %for.cond.4

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_const_cmp2(i16 2478, i16 %25)
  %cmp15.4 = icmp ult i16 %25, 2478
  br i1 %cmp15.4, label %for.cond.4.for.end_crit_edge, label %for.cond.5

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2974, i16 %25)
  %cmp15.5 = icmp ult i16 %25, 2974
  br i1 %cmp15.5, label %for.cond.5.for.end_crit_edge, label %for.cond.6

for.cond.5.for.end_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.6:                                       ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_const_cmp2(i16 3470, i16 %25)
  %cmp15.6 = icmp ult i16 %25, 3470
  br i1 %cmp15.6, label %for.cond.6.for.end_crit_edge, label %for.cond.7

for.cond.6.for.end_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.7:                                       ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_const_cmp2(i16 3966, i16 %25)
  %cmp15.7 = icmp ult i16 %25, 3966
  br i1 %cmp15.7, label %for.cond.7.for.end_crit_edge, label %for.cond.8

for.cond.7.for.end_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_const_cmp2(i16 4462, i16 %25)
  %cmp15.8 = icmp ult i16 %25, 4462
  br i1 %cmp15.8, label %for.cond.8.for.end_crit_edge, label %for.cond.9

for.cond.8.for.end_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.9:                                       ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4958, i16 %25)
  %cmp15.9 = icmp ult i16 %25, 4958
  br i1 %cmp15.9, label %for.cond.9.for.end_crit_edge, label %for.cond.10

for.cond.9.for.end_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.10:                                      ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_const_cmp2(i16 5454, i16 %25)
  %cmp15.10 = icmp ult i16 %25, 5454
  br i1 %cmp15.10, label %for.cond.10.for.end_crit_edge, label %for.cond.11

for.cond.10.for.end_crit_edge:                    ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.11:                                      ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_const_cmp2(i16 5950, i16 %25)
  %cmp15.11 = icmp ult i16 %25, 5950
  br i1 %cmp15.11, label %for.cond.11.for.end_crit_edge, label %for.cond.12

for.cond.11.for.end_crit_edge:                    ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.12:                                      ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_const_cmp2(i16 6446, i16 %25)
  %cmp15.12 = icmp ult i16 %25, 6446
  br i1 %cmp15.12, label %for.cond.12.for.end_crit_edge, label %for.cond.13

for.cond.12.for.end_crit_edge:                    ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.13:                                      ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_const_cmp2(i16 6942, i16 %25)
  %cmp15.13 = icmp ult i16 %25, 6942
  br i1 %cmp15.13, label %for.cond.13.for.end_crit_edge, label %for.cond.14

for.cond.13.for.end_crit_edge:                    ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.14:                                      ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_const_cmp2(i16 7438, i16 %25)
  %cmp15.14 = icmp ult i16 %25, 7438
  br i1 %cmp15.14, label %for.cond.14.for.end_crit_edge, label %for.cond.15

for.cond.14.for.end_crit_edge:                    ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.15:                                      ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 7934, i16 %25)
  %cmp15.15 = icmp ult i16 %25, 7934
  %spec.select = select i1 %cmp15.15, i32 15, i32 16
  br label %for.end

for.end:                                          ; preds = %for.cond.15, %for.cond.14.for.end_crit_edge, %for.cond.13.for.end_crit_edge, %for.cond.12.for.end_crit_edge, %for.cond.11.for.end_crit_edge, %for.cond.10.for.end_crit_edge, %for.cond.9.for.end_crit_edge, %for.cond.8.for.end_crit_edge, %for.cond.7.for.end_crit_edge, %for.cond.6.for.end_crit_edge, %for.cond.5.for.end_crit_edge, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %if.end.for.end_crit_edge
  %seg_no.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ 1, %for.cond.1.for.end_crit_edge ], [ 2, %for.cond.2.for.end_crit_edge ], [ 3, %for.cond.3.for.end_crit_edge ], [ 4, %for.cond.4.for.end_crit_edge ], [ 5, %for.cond.5.for.end_crit_edge ], [ 6, %for.cond.6.for.end_crit_edge ], [ 7, %for.cond.7.for.end_crit_edge ], [ 8, %for.cond.8.for.end_crit_edge ], [ 9, %for.cond.9.for.end_crit_edge ], [ 10, %for.cond.10.for.end_crit_edge ], [ 11, %for.cond.11.for.end_crit_edge ], [ 12, %for.cond.12.for.end_crit_edge ], [ 13, %for.cond.13.for.end_crit_edge ], [ 14, %for.cond.14.for.end_crit_edge ], [ %spec.select, %for.cond.15 ]
  %segment = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 9
  %26 = ptrtoint ptr %segment to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %segment, align 4
  %build_flag = getelementptr %struct.zone_entry, ptr %27, i32 %seg_no.0.lcssa, i32 7
  %28 = ptrtoint ptr %build_flag to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %build_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp20 = icmp eq i32 %29, 0
  br i1 %cmp20, label %if.then22, label %for.end.if.end30_crit_edge

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then22:                                        ; preds = %for.end
  %call23 = tail call fastcc i32 @ms_build_l2p_tbl(ptr noundef %chip, i32 noundef %seg_no.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24.not = icmp eq i32 %call23, 0
  br i1 %cmp24.not, label %if.then22.if.end30_crit_edge, label %if.then26

if.then22.if.end30_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %card_fail = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 22
  %30 = ptrtoint ptr %card_fail to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %card_fail, align 1
  %32 = or i8 %31, 8
  store i8 %32, ptr %card_fail, align 1
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 2) #8
  br label %cleanup

if.end30:                                         ; preds = %if.then22.if.end30_crit_edge, %for.end.if.end30_crit_edge
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 15
  %33 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp31 = icmp eq i32 %34, 1
  br i1 %cmp31, label %if.then33, label %if.else105

if.then33:                                        ; preds = %if.end30
  %delay_write_flag = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 22, i32 4
  %35 = ptrtoint ptr %delay_write_flag to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %delay_write_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not = icmp eq i8 %36, 0
  br i1 %tobool.not, label %if.then33.if.else73_crit_edge, label %land.lhs.true

if.then33.if.else73_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else73

land.lhs.true:                                    ; preds = %if.then33
  %logblock = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 22, i32 2
  %37 = ptrtoint ptr %logblock to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %logblock, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %conv8)
  %cmp37 = icmp eq i16 %38, %conv8
  br i1 %cmp37, label %land.lhs.true39, label %land.lhs.true.land.lhs.true57_crit_edge

land.lhs.true.land.lhs.true57_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true57

land.lhs.true39:                                  ; preds = %land.lhs.true
  %pageoff = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 22, i32 3
  %39 = ptrtoint ptr %pageoff to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pageoff, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %conv10, i8 %40)
  %cmp42 = icmp ugt i8 %conv10, %40
  br i1 %cmp42, label %if.then44, label %land.lhs.true39.land.lhs.true57_crit_edge

land.lhs.true39.land.lhs.true57_crit_edge:        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true57

if.then44:                                        ; preds = %land.lhs.true39
  %41 = ptrtoint ptr %delay_write_flag to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %delay_write_flag, align 1
  %42 = ptrtoint ptr %delay_write4 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %delay_write4, align 2
  %new_phyblock = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 22, i32 1
  %44 = ptrtoint ptr %new_phyblock to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %new_phyblock, align 2
  %call47 = tail call fastcc i32 @ms_copy_page(ptr noundef %chip, i16 noundef zeroext %43, i16 noundef zeroext %45, i16 noundef zeroext %conv8, i8 noundef zeroext %40, i8 noundef zeroext %conv10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48.not = icmp eq i32 %call47, 0
  br i1 %cmp48.not, label %if.then44.do.body.sink.split_crit_edge, label %if.then50

if.then44.do.body.sink.split_crit_edge:           ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.sink.split

if.then50:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 8) #8
  br label %cleanup

land.lhs.true57:                                  ; preds = %land.lhs.true39.land.lhs.true57_crit_edge, %land.lhs.true.land.lhs.true57_crit_edge
  %46 = ptrtoint ptr %logblock to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %logblock, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %conv8)
  %cmp61 = icmp eq i16 %47, %conv8
  br i1 %cmp61, label %land.lhs.true63, label %land.lhs.true57.if.else73_crit_edge

land.lhs.true57.if.else73_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else73

land.lhs.true63:                                  ; preds = %land.lhs.true57
  %pageoff65 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 22, i32 3
  %48 = ptrtoint ptr %pageoff65 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %pageoff65, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %conv10, i8 %49)
  %cmp67 = icmp eq i8 %conv10, %49
  br i1 %cmp67, label %if.then69, label %land.lhs.true63.if.else73_crit_edge

land.lhs.true63.if.else73_crit_edge:              ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else73

if.then69:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %delay_write_flag to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %delay_write_flag, align 1
  %new_phyblock72 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 22, i32 1
  br label %do.body.sink.split

if.else73:                                        ; preds = %land.lhs.true63.if.else73_crit_edge, %land.lhs.true57.if.else73_crit_edge, %if.then33.if.else73_crit_edge
  %call74 = tail call i32 @ms_delay_write(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75.not = icmp eq i32 %call74, 0
  br i1 %cmp75.not, label %if.end78, label %if.then77

if.then77:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 8) #8
  br label %cleanup

if.end78:                                         ; preds = %if.else73
  %arrayidx80 = getelementptr [17 x i16], ptr @ms_start_idx, i32 0, i32 %seg_no.0.lcssa
  %51 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx80, align 2
  %conv82 = sub i16 %conv8, %52
  %53 = ptrtoint ptr %segment to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %segment, align 4
  %tobool.not.i = icmp eq ptr %54, null
  br i1 %tobool.not.i, label %if.end78.ms_get_l2p_tbl.exit_crit_edge, label %if.end.i525

if.end78.ms_get_l2p_tbl.exit_crit_edge:           ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_get_l2p_tbl.exit

if.end.i525:                                      ; preds = %if.end78
  %arrayidx.i = getelementptr %struct.zone_entry, ptr %54, i32 %seg_no.0.lcssa
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not.i = icmp eq ptr %56, null
  br i1 %tobool4.not.i, label %if.end.i525.ms_get_l2p_tbl.exit_crit_edge, label %if.then5.i

if.end.i525.ms_get_l2p_tbl.exit_crit_edge:        ; preds = %if.end.i525
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_get_l2p_tbl.exit

if.then5.i:                                       ; preds = %if.end.i525
  call void @__sanitizer_cov_trace_pc() #10
  %idxprom.i = zext i16 %conv82 to i32
  %arrayidx7.i = getelementptr i16, ptr %56, i32 %idxprom.i
  %57 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx7.i, align 2
  br label %ms_get_l2p_tbl.exit

ms_get_l2p_tbl.exit:                              ; preds = %if.then5.i, %if.end.i525.ms_get_l2p_tbl.exit_crit_edge, %if.end78.ms_get_l2p_tbl.exit_crit_edge
  %retval.0.i526 = phi i16 [ %58, %if.then5.i ], [ -1, %if.end78.ms_get_l2p_tbl.exit_crit_edge ], [ -1, %if.end.i525.ms_get_l2p_tbl.exit_crit_edge ]
  %unused_blk_cnt.i = getelementptr %struct.zone_entry, ptr %54, i32 %seg_no.0.lcssa, i32 5
  %59 = ptrtoint ptr %unused_blk_cnt.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %unused_blk_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp.i528 = icmp slt i32 %60, 1
  br i1 %cmp.i528, label %ms_get_l2p_tbl.exit.if.then91_crit_edge, label %if.end.i529

ms_get_l2p_tbl.exit.if.then91_crit_edge:          ; preds = %ms_get_l2p_tbl.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then91

if.end.i529:                                      ; preds = %ms_get_l2p_tbl.exit
  %free_table.i = getelementptr %struct.zone_entry, ptr %54, i32 %seg_no.0.lcssa, i32 1
  %61 = ptrtoint ptr %free_table.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %free_table.i, align 4
  %get_index.i = getelementptr %struct.zone_entry, ptr %54, i32 %seg_no.0.lcssa, i32 4
  %63 = ptrtoint ptr %get_index.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %get_index.i, align 4
  %arrayidx3.i = getelementptr i16, ptr %62, i32 %64
  %65 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx3.i, align 2
  %inc.i = add i32 %64, 1
  store i32 %inc.i, ptr %get_index.i, align 4
  store i16 -1, ptr %arrayidx3.i, align 2
  %67 = load i32, ptr %get_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %67)
  %cmp8.i = icmp sgt i32 %67, 511
  br i1 %cmp8.i, label %if.then9.i, label %if.end.i529.ms_get_unused_block.exit_crit_edge

if.end.i529.ms_get_unused_block.exit_crit_edge:   ; preds = %if.end.i529
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_get_unused_block.exit

if.then9.i:                                       ; preds = %if.end.i529
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %get_index.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %get_index.i, align 4
  br label %ms_get_unused_block.exit

ms_get_unused_block.exit:                         ; preds = %if.then9.i, %if.end.i529.ms_get_unused_block.exit_crit_edge
  %69 = ptrtoint ptr %unused_blk_cnt.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %unused_blk_cnt.i, align 4
  %dec.i = add i32 %70, -1
  store i32 %dec.i, ptr %unused_blk_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %retval.0.i526)
  %cmp86 = icmp eq i16 %retval.0.i526, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %66)
  %cmp89 = icmp eq i16 %66, -1
  %or.cond = select i1 %cmp86, i1 true, i1 %cmp89
  br i1 %or.cond, label %ms_get_unused_block.exit.if.then91_crit_edge, label %if.end92

ms_get_unused_block.exit.if.then91_crit_edge:     ; preds = %ms_get_unused_block.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then91

if.then91:                                        ; preds = %ms_get_unused_block.exit.if.then91_crit_edge, %ms_get_l2p_tbl.exit.if.then91_crit_edge
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 8) #8
  br label %cleanup

if.end92:                                         ; preds = %ms_get_unused_block.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv10)
  %tobool.not.i531 = icmp eq i8 %conv10, 0
  br i1 %tobool.not.i531, label %if.end92.do.body_crit_edge, label %if.then.i

if.end92.do.body_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then.i:                                        ; preds = %if.end92
  %call.i532 = tail call fastcc i32 @ms_copy_page(ptr noundef %chip, i16 noundef zeroext %retval.0.i526, i16 noundef zeroext %66, i16 noundef zeroext %conv8, i8 noundef zeroext 0, i8 noundef zeroext %conv10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i532)
  %cmp.not.i533 = icmp eq i32 %call.i532, 0
  br i1 %cmp.not.i533, label %if.then.i.do.body_crit_edge, label %if.then96

if.then.i.do.body_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then96:                                        ; preds = %if.then.i
  %call97 = tail call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98.not = icmp eq i32 %call97, 0
  br i1 %cmp98.not, label %if.end101, label %if.then100

if.then100:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 2) #8
  br label %cleanup

if.end101:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 8) #8
  br label %cleanup

if.else105:                                       ; preds = %if.end30
  %call106 = tail call i32 @ms_delay_write(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp107.not = icmp eq i32 %call106, 0
  br i1 %cmp107.not, label %if.end115, label %if.then109

if.then109:                                       ; preds = %if.else105
  %call110 = tail call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111.not = icmp eq i32 %call110, 0
  br i1 %cmp111.not, label %if.end114, label %if.then113

if.then113:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 2) #8
  br label %cleanup

if.end114:                                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 7) #8
  br label %cleanup

if.end115:                                        ; preds = %if.else105
  %arrayidx117 = getelementptr [17 x i16], ptr @ms_start_idx, i32 0, i32 %seg_no.0.lcssa
  %71 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx117, align 2
  %conv120 = sub i16 %conv8, %72
  %73 = ptrtoint ptr %segment to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %segment, align 4
  %tobool.not.i536 = icmp eq ptr %74, null
  br i1 %tobool.not.i536, label %if.end115.if.then125_crit_edge, label %if.end.i539

if.end115.if.then125_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then125

if.end.i539:                                      ; preds = %if.end115
  %arrayidx.i537 = getelementptr %struct.zone_entry, ptr %74, i32 %seg_no.0.lcssa
  %75 = ptrtoint ptr %arrayidx.i537 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i537, align 4
  %tobool4.not.i538 = icmp eq ptr %76, null
  br i1 %tobool4.not.i538, label %if.end.i539.if.then125_crit_edge, label %ms_get_l2p_tbl.exit544

if.end.i539.if.then125_crit_edge:                 ; preds = %if.end.i539
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then125

ms_get_l2p_tbl.exit544:                           ; preds = %if.end.i539
  %idxprom.i540 = zext i16 %conv120 to i32
  %arrayidx7.i541 = getelementptr i16, ptr %76, i32 %idxprom.i540
  %77 = ptrtoint ptr %arrayidx7.i541 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx7.i541, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %78)
  %cmp123 = icmp eq i16 %78, -1
  br i1 %cmp123, label %ms_get_l2p_tbl.exit544.if.then125_crit_edge, label %ms_get_l2p_tbl.exit544.do.body_crit_edge

ms_get_l2p_tbl.exit544.do.body_crit_edge:         ; preds = %ms_get_l2p_tbl.exit544
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

ms_get_l2p_tbl.exit544.if.then125_crit_edge:      ; preds = %ms_get_l2p_tbl.exit544
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then125

if.then125:                                       ; preds = %ms_get_l2p_tbl.exit544.if.then125_crit_edge, %if.end.i539.if.then125_crit_edge, %if.end115.if.then125_crit_edge
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 7) #8
  br label %cleanup

do.body.sink.split:                               ; preds = %if.then69, %if.then44.do.body.sink.split_crit_edge
  %new_phyblock72.sink = phi ptr [ %new_phyblock72, %if.then69 ], [ %new_phyblock, %if.then44.do.body.sink.split_crit_edge ]
  %79 = ptrtoint ptr %delay_write4 to i32
  call void @__asan_load2_noabort(i32 %79)
  %old_blk.0.ph = load i16, ptr %delay_write4, align 2
  %80 = ptrtoint ptr %new_phyblock72.sink to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %new_phyblock72.sink, align 2
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %ms_get_l2p_tbl.exit544.do.body_crit_edge, %if.then.i.do.body_crit_edge, %if.end92.do.body_crit_edge
  %new_blk.0 = phi i16 [ 0, %ms_get_l2p_tbl.exit544.do.body_crit_edge ], [ %66, %if.end92.do.body_crit_edge ], [ %66, %if.then.i.do.body_crit_edge ], [ %81, %do.body.sink.split ]
  %old_blk.0 = phi i16 [ %78, %ms_get_l2p_tbl.exit544.do.body_crit_edge ], [ %retval.0.i526, %if.end92.do.body_crit_edge ], [ %retval.0.i526, %if.then.i.do.body_crit_edge ], [ %old_blk.0.ph, %do.body.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_rw_multi_sector.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_rw_multi_sector, %if.then132)) #8
          to label %do.end [label %if.then132], !srcloc !167

if.then132:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %chip, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44
  %conv134 = zext i16 %old_blk.0 to i32
  %conv135 = zext i16 %new_blk.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_rw_multi_sector.__UNIQUE_ID_ddebug329, ptr noundef %dev.i, ptr noundef nonnull @.str.56, i32 noundef %seg_no.0.lcssa, i32 noundef %conv134, i32 noundef %conv135) #8
  br label %do.end

do.end:                                           ; preds = %if.then132, %do.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sector_cnt)
  %tobool137.not685 = icmp eq i16 %sector_cnt, 0
  br i1 %tobool137.not685, label %do.end.while.end_crit_edge, label %while.body.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %ms_card1.i560 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  %86 = getelementptr inbounds [16 x i8], ptr %data.i559, i32 0, i32 1
  %87 = getelementptr inbounds [16 x i8], ptr %data.i559, i32 0, i32 2
  %88 = getelementptr inbounds [16 x i8], ptr %data.i559, i32 0, i32 3
  %89 = getelementptr inbounds [16 x i8], ptr %data.i559, i32 0, i32 4
  %90 = getelementptr inbounds [16 x i8], ptr %data.i559, i32 0, i32 5
  %91 = getelementptr inbounds [16 x i8], ptr %data.i559, i32 0, i32 6
  %92 = getelementptr inbounds [16 x i8], ptr %data.i559, i32 0, i32 7
  %93 = getelementptr inbounds [16 x i8], ptr %data.i559, i32 0, i32 8
  %94 = getelementptr inbounds [16 x i8], ptr %data.i559, i32 0, i32 9
  %95 = getelementptr inbounds [16 x i8], ptr %data.i559, i32 0, i32 10
  %96 = getelementptr inbounds [2 x i8], ptr %data.i.i557, i32 0, i32 1
  %97 = getelementptr inbounds [2 x i8], ptr %data.i299.i, i32 0, i32 1
  %ci.i571 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %srb.i572 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 10
  %ms_timeout.i573 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 120
  %98 = getelementptr inbounds [2 x i8], ptr %data.i309.i, i32 0, i32 1
  %99 = getelementptr inbounds [9 x i8], ptr %extra.i, i32 0, i32 1
  %100 = getelementptr inbounds [9 x i8], ptr %extra.i, i32 0, i32 2
  %101 = getelementptr inbounds [9 x i8], ptr %extra.i, i32 0, i32 3
  %102 = getelementptr inbounds [6 x i8], ptr %data.i, i32 0, i32 1
  %103 = getelementptr inbounds [6 x i8], ptr %data.i, i32 0, i32 2
  %104 = getelementptr inbounds [6 x i8], ptr %data.i, i32 0, i32 3
  %105 = getelementptr inbounds [6 x i8], ptr %data.i, i32 0, i32 4
  %106 = getelementptr inbounds [6 x i8], ptr %data.i, i32 0, i32 5
  %107 = getelementptr inbounds [2 x i8], ptr %data.i.i, i32 0, i32 1
  %108 = getelementptr inbounds [2 x i8], ptr %val.i.i, i32 0, i32 1
  %109 = getelementptr inbounds [2 x i8], ptr %data.i230.i, i32 0, i32 1
  %card_wp.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 24
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.then303, %do.body291, %while.body.lr.ph
  %seg_no.1692 = phi i32 [ %seg_no.0.lcssa, %while.body.lr.ph ], [ %seg_no.2.lcssa, %do.body291 ], [ %seg_no.2.lcssa, %if.then303 ]
  %old_blk.1691 = phi i16 [ %old_blk.0, %while.body.lr.ph ], [ %305, %do.body291 ], [ %305, %if.then303 ]
  %ptr.0690 = phi ptr [ %9, %while.body.lr.ph ], [ %ptr.1, %do.body291 ], [ %ptr.1, %if.then303 ]
  %start_page.0689 = phi i8 [ %conv10, %while.body.lr.ph ], [ 0, %do.body291 ], [ 0, %if.then303 ]
  %total_sec_cnt.0688 = phi i16 [ %sector_cnt, %while.body.lr.ph ], [ %conv225, %do.body291 ], [ %conv225, %if.then303 ]
  %log_blk.0687 = phi i16 [ %conv8, %while.body.lr.ph ], [ %inc237, %do.body291 ], [ %inc237, %if.then303 ]
  %new_blk.1686 = phi i16 [ %new_blk.0, %while.body.lr.ph ], [ %new_blk.2, %do.body291 ], [ %new_blk.2, %if.then303 ]
  %conv138 = zext i8 %start_page.0689 to i32
  %conv139 = zext i16 %total_sec_cnt.0688 to i32
  %add140 = add nuw nsw i32 %conv138, %conv139
  %110 = ptrtoint ptr %page_off to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %page_off, align 1
  %conv142 = zext i8 %111 to i32
  %add143 = add nuw nsw i32 %conv142, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add140, i32 %add143)
  %cmp144 = icmp ugt i32 %add140, %add143
  %conv150 = trunc i32 %add143 to i8
  %conv154 = trunc i16 %total_sec_cnt.0688 to i8
  %add155 = add i8 %start_page.0689, %conv154
  %end_page.1 = select i1 %cmp144, i8 %conv150, i8 %add155
  %conv158 = zext i8 %end_page.1 to i32
  %sub160 = sub i8 %end_page.1, %start_page.0689
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_rw_multi_sector.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_rw_multi_sector, %if.then174)) #8
          to label %do.end181 [label %if.then174], !srcloc !167

if.then174:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %chip, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  %dev.i545 = getelementptr inbounds %struct.pci_dev, ptr %115, i32 0, i32 44
  %conv178 = zext i8 %sub160 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_rw_multi_sector.__UNIQUE_ID_ddebug330, ptr noundef %dev.i545, ptr noundef nonnull @.str.57, i32 noundef %conv138, i32 noundef %conv158, i32 noundef %conv178) #8
  br label %do.end181

do.end181:                                        ; preds = %if.then174, %while.body
  %116 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %117)
  %cmp183 = icmp eq i32 %117, 2
  br i1 %cmp183, label %if.then185, label %if.else187

if.then185:                                       ; preds = %do.end181
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %extra.i) #8
  %118 = call ptr @memset(ptr %extra.i, i32 255, i32 9)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %119 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -1, ptr %val.i, align 1, !annotation !168
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i) #8
  %call.i546 = call fastcc i32 @ms_read_extra_data(ptr noundef %chip, i16 noundef zeroext %old_blk.1691, i8 noundef zeroext %start_page.0689, ptr noundef nonnull %extra.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i546)
  %cmp.i547 = icmp eq i32 %call.i546, 0
  br i1 %cmp.i547, label %if.then.i548, label %if.then185.if.end6.i_crit_edge

if.then185.if.end6.i_crit_edge:                   ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then.i548:                                     ; preds = %if.then185
  %120 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %99, align 1
  %122 = and i8 %121, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %122)
  %cmp3.not.i = icmp eq i8 %122, 48
  br i1 %cmp3.not.i, label %if.then.i548.if.end6.i_crit_edge, label %if.then5.i549

if.then.i548.if.end6.i_crit_edge:                 ; preds = %if.then.i548
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then5.i549:                                    ; preds = %if.then.i548
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 4, ptr %err_code2.i, align 2
  br label %ms_read_multiple_pages.exit

if.end6.i:                                        ; preds = %if.then.i548.if.end6.i_crit_edge, %if.then185.if.end6.i_crit_edge
  %call7.i = call fastcc i32 @ms_set_rw_reg_addr(ptr noundef %chip, i8 noundef zeroext 22, i8 noundef zeroext 9, i8 noundef zeroext 16, i8 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.not.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.not.i, label %if.end11.i552, label %if.end6.i.ms_read_multiple_pages.exit_crit_edge

if.end6.i.ms_read_multiple_pages.exit_crit_edge:  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_read_multiple_pages.exit

if.end11.i552:                                    ; preds = %if.end6.i
  %124 = ptrtoint ptr %ms_card1.i560 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %ms_card1.i560, align 4
  %126 = and i16 %125, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %126)
  %tobool.not.i550 = icmp eq i16 %126, 0
  %..i551 = select i1 %tobool.not.i550, i8 -128, i8 -120
  %127 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %..i551, ptr %data.i, align 1
  %128 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %102, align 1
  %129 = lshr i16 %old_blk.1691, 8
  %conv20.i = trunc i16 %129 to i8
  %130 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv20.i, ptr %103, align 1
  %conv22.i = trunc i16 %old_blk.1691 to i8
  %131 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv22.i, ptr %104, align 1
  %132 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %105, align 1
  %133 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %start_page.0689, ptr %106, align 1
  %call29.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull %data.i, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp eq i32 %call29.i, 0
  br i1 %cmp30.i, label %if.end11.i552.if.end37.i_crit_edge, label %for.inc.i

if.end11.i552.if.end37.i_crit_edge:               ; preds = %if.end11.i552
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

for.inc.i:                                        ; preds = %if.end11.i552
  %call29.1.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull %data.i, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.1.i)
  %cmp30.1.i = icmp eq i32 %call29.1.i, 0
  br i1 %cmp30.1.i, label %for.inc.i.if.end37.i_crit_edge, label %for.inc.1.i

for.inc.i.if.end37.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %call29.2.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull %data.i, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.2.i)
  %cmp30.2.i = icmp eq i32 %call29.2.i, 0
  br i1 %cmp30.2.i, label %for.inc.1.i.if.end37.i_crit_edge, label %for.inc.1.i.ms_read_multiple_pages.exit_crit_edge

for.inc.1.i.ms_read_multiple_pages.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_read_multiple_pages.exit

for.inc.1.i.if.end37.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

if.end37.i:                                       ; preds = %for.inc.1.i.if.end37.i_crit_edge, %for.inc.i.if.end37.i_crit_edge, %if.end11.i552.if.end37.i_crit_edge
  %134 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %err_code2.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i) #8
  %135 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 -86, ptr %data.i.i, align 1
  %136 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %107, align 1
  %call.i.i553 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i553)
  %cmp39.not.i = icmp eq i32 %call.i.i553, 0
  br i1 %cmp39.not.i, label %for.cond43.preheader.i, label %if.end37.i.ms_read_multiple_pages.exit_crit_edge

if.end37.i.ms_read_multiple_pages.exit_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_read_multiple_pages.exit

for.cond43.preheader.i:                           ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_cmp1(i8 %end_page.1, i8 %start_page.0689)
  %cmp46257.i = icmp ugt i8 %end_page.1, %start_page.0689
  br i1 %cmp46257.i, label %for.body48.lr.ph.i, label %for.cond43.preheader.i.ms_read_multiple_pages.exit_crit_edge

for.cond43.preheader.i.ms_read_multiple_pages.exit_crit_edge: ; preds = %for.cond43.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_read_multiple_pages.exit

for.body48.lr.ph.i:                               ; preds = %for.cond43.preheader.i
  %sub.i = add nsw i32 %conv158, -1
  br label %for.body48.i

for.body48.i:                                     ; preds = %if.end141.i.for.body48.i_crit_edge, %for.body48.lr.ph.i
  %indvars.iv.i = phi i32 [ %conv138, %for.body48.lr.ph.i ], [ %indvars.iv.next.i, %if.end141.i.for.body48.i_crit_edge ]
  %ptr.0260.i = phi ptr [ %ptr.0690, %for.body48.lr.ph.i ], [ %spec.select.i, %if.end141.i.for.body48.i_crit_edge ]
  %137 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %err_code2.i, align 2
  %call49.i = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %cmp50.not.i = icmp eq i32 %call49.i, 0
  br i1 %cmp50.not.i, label %if.end53.i, label %if.then52.i

if.then52.i:                                      ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #10
  %138 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 32, ptr %err_code2.i, align 2
  br label %ms_read_multiple_pages.exit

if.end53.i:                                       ; preds = %for.body48.i
  %call54.i = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %val.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %cmp55.not.i = icmp eq i32 %call54.i, 0
  br i1 %cmp55.not.i, label %if.end58.i, label %if.end53.i.ms_read_multiple_pages.exit_crit_edge

if.end53.i.ms_read_multiple_pages.exit_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_read_multiple_pages.exit

if.end58.i:                                       ; preds = %if.end53.i
  %139 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %val.i, align 1
  %conv59.i = zext i8 %140 to i32
  %and60.i = and i32 %conv59.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  br i1 %tobool61.not.i, label %if.end63.i, label %if.then62.i

if.then62.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  %141 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 8, ptr %err_code2.i, align 2
  br label %ms_read_multiple_pages.exit

if.end63.i:                                       ; preds = %if.end58.i
  %and65.i = and i32 %conv59.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  %and90.i = and i32 %conv59.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90.i)
  %tobool91.not.i = icmp eq i32 %and90.i, 0
  br i1 %tobool66.not.i, label %if.else88.i, label %if.then67.i

if.then67.i:                                      ; preds = %if.end63.i
  br i1 %tobool91.not.i, label %if.else86.i, label %if.then71.i

if.then71.i:                                      ; preds = %if.then67.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #8
  %142 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 -1, ptr %val.i.i, align 1, !annotation !168
  %143 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 -1, ptr %108, align 1, !annotation !168
  %call.i225.i = call fastcc i32 @ms_set_rw_reg_addr(ptr noundef %chip, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225.i)
  %cmp.not.i.i = icmp eq i32 %call.i225.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then71.i.if.then75.i_crit_edge

if.then71.i.if.then75.i_crit_edge:                ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then75.i

if.end.i.i:                                       ; preds = %if.then71.i
  %call2.i.i554 = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 4, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull %val.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i554)
  %cmp3.not.i.i = icmp eq i32 %call2.i.i554, 0
  br i1 %cmp3.not.i.i, label %if.end5.i.i, label %if.end.i.i.if.then75.i_crit_edge

if.end.i.i.if.then75.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then75.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %144 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %108, align 1
  %146 = and i8 %145, 21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool.not.i.i555 = icmp eq i8 %146, 0
  br i1 %tobool.not.i.i555, label %ms_read_status_reg.exit.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %147 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 4, ptr %err_code2.i, align 2
  br label %if.then75.i

ms_read_status_reg.exit.i:                        ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #8
  br label %if.end94.i

if.then75.i:                                      ; preds = %if.then6.i.i, %if.end.i.i.if.then75.i_crit_edge, %if.then71.i.if.then75.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #8
  %148 = ptrtoint ptr %card_wp.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %card_wp.i, align 1
  %150 = and i8 %149, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool78.not.i = icmp eq i8 %150, 0
  br i1 %tobool78.not.i, label %if.then79.i, label %if.then75.i.if.end84.i_crit_edge

if.then75.i.if.end84.i_crit_edge:                 ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84.i

if.then79.i:                                      ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #10
  %151 = trunc i32 %indvars.iv.i to i8
  %call80.i = call fastcc i32 @reset_ms(ptr noundef %chip) #8
  %152 = ptrtoint ptr %99 to i32
  call void @__asan_storeN_noabort(i32 %152, i32 8)
  store i64 -1, ptr %99, align 1
  %153 = ptrtoint ptr %extra.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 -72, ptr %extra.i, align 1
  %154 = lshr i16 %log_blk.0687, 8
  %conv7.i.i = trunc i16 %154 to i8
  %155 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %conv7.i.i, ptr %100, align 1
  %conv9.i.i = trunc i16 %log_blk.0687 to i8
  %156 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv9.i.i, ptr %101, align 1
  %157 = call fastcc i32 @ms_write_extra_data(ptr noundef %chip, i16 noundef zeroext %old_blk.1691, i8 noundef zeroext %151, ptr noundef nonnull %extra.i) #8
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.then79.i, %if.then75.i.if.end84.i_crit_edge
  %158 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 4, ptr %err_code2.i, align 2
  br label %ms_read_multiple_pages.exit

if.else86.i:                                      ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #10
  %159 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 4, ptr %err_code2.i, align 2
  br label %ms_read_multiple_pages.exit

if.else88.i:                                      ; preds = %if.end63.i
  br i1 %tobool91.not.i, label %if.then92.i, label %if.else88.i.if.end94.i_crit_edge

if.else88.i.if.end94.i_crit_edge:                 ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94.i

if.then92.i:                                      ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #10
  %160 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 1, ptr %err_code2.i, align 2
  br label %ms_read_multiple_pages.exit

if.end94.i:                                       ; preds = %if.else88.i.if.end94.i_crit_edge, %ms_read_status_reg.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %indvars.iv.i)
  %cmp97.i = icmp eq i32 %sub.i, %indvars.iv.i
  br i1 %cmp97.i, label %if.then99.i, label %if.end94.i.if.end121.i_crit_edge

if.end94.i.if.end121.i_crit_edge:                 ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121.i

if.then99.i:                                      ; preds = %if.end94.i
  %161 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %162)
  %tobool102.not.i = icmp sgt i8 %162, -1
  br i1 %tobool102.not.i, label %if.then103.i, label %if.then99.i.if.end109.i_crit_edge

if.then99.i.if.end109.i_crit_edge:                ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109.i

if.then103.i:                                     ; preds = %if.then99.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i230.i) #8
  %163 = ptrtoint ptr %data.i230.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 51, ptr %data.i230.i, align 1
  %164 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %109, align 1
  %call.i231.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i230.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i230.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i231.i)
  %cmp105.not.i = icmp eq i32 %call.i231.i, 0
  br i1 %cmp105.not.i, label %if.then103.i.if.end109.i_crit_edge, label %if.then103.i.ms_read_multiple_pages.exit_crit_edge

if.then103.i.ms_read_multiple_pages.exit_crit_edge: ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_read_multiple_pages.exit

if.then103.i.if.end109.i_crit_edge:               ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then103.i.if.end109.i_crit_edge, %if.then99.i.if.end109.i_crit_edge
  %call110.i = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %val.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %cmp111.not.i = icmp eq i32 %call110.i, 0
  br i1 %cmp111.not.i, label %if.end114.i, label %if.end109.i.ms_read_multiple_pages.exit_crit_edge

if.end109.i.ms_read_multiple_pages.exit_crit_edge: ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_read_multiple_pages.exit

if.end114.i:                                      ; preds = %if.end109.i
  %165 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %166)
  %tobool117.not.i = icmp sgt i8 %166, -1
  br i1 %tobool117.not.i, label %if.then118.i, label %if.end114.i.if.end121.i_crit_edge

if.end114.i.if.end121.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121.i

if.then118.i:                                     ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #10
  %167 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 4, ptr %err_code2.i, align 2
  br label %ms_read_multiple_pages.exit

if.end121.i:                                      ; preds = %if.end114.i.if.end121.i_crit_edge, %if.end94.i.if.end121.i_crit_edge
  %trans_cfg.0.i = phi i8 [ 0, %if.end114.i.if.end121.i_crit_edge ], [ -128, %if.end94.i.if.end121.i_crit_edge ]
  %168 = ptrtoint ptr %ci.i571 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %ci.i571, align 4
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -703, i8 noundef zeroext -1, i8 noundef zeroext 2) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -702, i8 noundef zeroext -1, i8 noundef zeroext %trans_cfg.0.i) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  call void @trans_dma_enable(i32 noundef 2, ptr noundef %chip, i32 noundef 512, i8 noundef zeroext 32) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -701, i8 noundef zeroext -1, i8 noundef zeroext -127) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -701, i8 noundef zeroext 64, i8 noundef zeroext 64) #8
  call void @rtsx_send_cmd_no_wait(ptr noundef %chip) #8
  %169 = ptrtoint ptr %srb.i572 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %srb.i572, align 4
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %170, i32 0, i32 17, i32 0, i32 1
  %171 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %nents.i.i, align 4
  %173 = ptrtoint ptr %ms_timeout.i573 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %ms_timeout.i573, align 4
  %call123.i = call i32 @rtsx_transfer_data_partial(ptr noundef %chip, i8 noundef zeroext 8, ptr noundef %ptr.0260.i, i32 noundef 512, i32 noundef %172, ptr noundef nonnull %index, ptr noundef nonnull %offset, i32 noundef 2, i32 noundef %174) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123.i)
  %cmp124.i = icmp slt i32 %call123.i, 0
  br i1 %cmp124.i, label %if.then126.i, label %if.end121.i.if.end141.i_crit_edge

if.end121.i.if.end141.i_crit_edge:                ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141.i

if.then126.i:                                     ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call123.i)
  %cmp127.i = icmp eq i32 %call123.i, -110
  br i1 %cmp127.i, label %if.then129.i, label %if.end130.i

if.then129.i:                                     ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #10
  %175 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 64, ptr %err_code2.i, align 2
  %call.i234.i = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  br label %ms_read_multiple_pages.exit

if.end130.i:                                      ; preds = %if.then126.i
  %call131.i = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -702, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131.i)
  %cmp132.not.i = icmp eq i32 %call131.i, 0
  br i1 %cmp132.not.i, label %if.end135.i, label %if.then134.i

if.then134.i:                                     ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #10
  %176 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 64, ptr %err_code2.i, align 2
  %call.i236.i = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  br label %ms_read_multiple_pages.exit

if.end135.i:                                      ; preds = %if.end130.i
  %177 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %val.i, align 1
  %179 = and i8 %178, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool138.not.i = icmp eq i8 %179, 0
  br i1 %tobool138.not.i, label %if.end135.i.if.end141.i_crit_edge, label %if.then139.i

if.end135.i.if.end141.i_crit_edge:                ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141.i

if.then139.i:                                     ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #10
  %180 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 -128, ptr %err_code2.i, align 2
  %call.i238.i = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  br label %ms_read_multiple_pages.exit

if.end141.i:                                      ; preds = %if.end135.i.if.end141.i_crit_edge, %if.end121.i.if.end141.i_crit_edge
  %181 = ptrtoint ptr %srb.i572 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %srb.i572, align 4
  %nents.i239.i = getelementptr inbounds %struct.scsi_cmnd, ptr %182, i32 0, i32 17, i32 0, i32 1
  %183 = ptrtoint ptr %nents.i239.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %nents.i239.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp144.i = icmp eq i32 %184, 0
  %spec.select.idx.i = select i1 %cmp144.i, i32 512, i32 0
  %spec.select.i = getelementptr i8, ptr %ptr.0260.i, i32 %spec.select.idx.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %lftr.wideiv.i = trunc i32 %indvars.iv.next.i to i8
  %exitcond.not.i = icmp eq i8 %end_page.1, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %if.end141.i.ms_read_multiple_pages.exit_crit_edge, label %if.end141.i.for.body48.i_crit_edge

if.end141.i.for.body48.i_crit_edge:               ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body48.i

if.end141.i.ms_read_multiple_pages.exit_crit_edge: ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_read_multiple_pages.exit

ms_read_multiple_pages.exit:                      ; preds = %if.end141.i.ms_read_multiple_pages.exit_crit_edge, %if.then139.i, %if.then134.i, %if.then129.i, %if.then118.i, %if.end109.i.ms_read_multiple_pages.exit_crit_edge, %if.then103.i.ms_read_multiple_pages.exit_crit_edge, %if.then92.i, %if.else86.i, %if.end84.i, %if.then62.i, %if.end53.i.ms_read_multiple_pages.exit_crit_edge, %if.then52.i, %for.cond43.preheader.i.ms_read_multiple_pages.exit_crit_edge, %if.end37.i.ms_read_multiple_pages.exit_crit_edge, %for.inc.1.i.ms_read_multiple_pages.exit_crit_edge, %if.end6.i.ms_read_multiple_pages.exit_crit_edge, %if.then5.i549
  %retval.0.i556 = phi i32 [ 1, %if.then5.i549 ], [ 1, %if.then52.i ], [ 1, %if.then62.i ], [ 1, %if.end84.i ], [ 2, %if.then129.i ], [ 2, %if.then134.i ], [ 1, %if.then139.i ], [ 1, %if.then118.i ], [ 1, %if.else86.i ], [ 1, %if.then92.i ], [ 1, %if.end6.i.ms_read_multiple_pages.exit_crit_edge ], [ 1, %if.end37.i.ms_read_multiple_pages.exit_crit_edge ], [ 0, %for.cond43.preheader.i.ms_read_multiple_pages.exit_crit_edge ], [ 1, %for.inc.1.i.ms_read_multiple_pages.exit_crit_edge ], [ 0, %if.end141.i.ms_read_multiple_pages.exit_crit_edge ], [ 1, %if.end109.i.ms_read_multiple_pages.exit_crit_edge ], [ 1, %if.then103.i.ms_read_multiple_pages.exit_crit_edge ], [ 1, %if.end53.i.ms_read_multiple_pages.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %extra.i) #8
  br label %if.end189

if.else187:                                       ; preds = %do.end181
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i558) #8
  %185 = ptrtoint ptr %val.i558 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 -1, ptr %val.i558, align 1, !annotation !168
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data.i559) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %start_page.0689)
  %tobool.not.i561 = icmp eq i8 %start_page.0689, 0
  %186 = call ptr @memset(ptr %data.i559, i32 255, i32 16)
  br i1 %tobool.not.i561, label %if.then.i564, label %if.else187.if.end33.i_crit_edge

if.else187.if.end33.i_crit_edge:                  ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then.i564:                                     ; preds = %if.else187
  %call.i562 = call fastcc i32 @ms_set_rw_reg_addr(ptr noundef %chip, i8 noundef zeroext 22, i8 noundef zeroext 9, i8 noundef zeroext 16, i8 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i562)
  %cmp.not.i563 = icmp eq i32 %call.i562, 0
  br i1 %cmp.not.i563, label %if.end.i567, label %if.then.i564.ms_write_multiple_pages.exit_crit_edge

if.then.i564.ms_write_multiple_pages.exit_crit_edge: ; preds = %if.then.i564
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_write_multiple_pages.exit

if.end.i567:                                      ; preds = %if.then.i564
  %187 = ptrtoint ptr %ms_card1.i560 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %ms_card1.i560, align 4
  %189 = and i16 %188, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %189)
  %tobool4.not.i565 = icmp eq i16 %189, 0
  %..i566 = select i1 %tobool4.not.i565, i8 -128, i8 -120
  %190 = ptrtoint ptr %data.i559 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %..i566, ptr %data.i559, align 1
  %191 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 0, ptr %86, align 1
  %192 = lshr i16 %old_blk.1691, 8
  %conv10.i = trunc i16 %192 to i8
  %193 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %conv10.i, ptr %87, align 1
  %conv12.i = trunc i16 %old_blk.1691 to i8
  %194 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %conv12.i, ptr %88, align 1
  %195 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 -128, ptr %89, align 1
  %196 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 0, ptr %90, align 1
  %197 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 -17, ptr %91, align 1
  %198 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 -1, ptr %92, align 1
  %call18.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef nonnull %data.i559, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.not.i = icmp eq i32 %call18.i, 0
  br i1 %cmp19.not.i, label %if.end22.i, label %if.end.i567.ms_write_multiple_pages.exit_crit_edge

if.end.i567.ms_write_multiple_pages.exit_crit_edge: ; preds = %if.end.i567
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_write_multiple_pages.exit

if.end22.i:                                       ; preds = %if.end.i567
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i557) #8
  %199 = ptrtoint ptr %data.i.i557 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 85, ptr %data.i.i557, align 1
  %200 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 0, ptr %96, align 1
  %call.i.i568 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i.i557, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i557) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i568)
  %cmp24.not.i = icmp eq i32 %call.i.i568, 0
  br i1 %cmp24.not.i, label %if.end27.i, label %if.end22.i.ms_write_multiple_pages.exit_crit_edge

if.end22.i.ms_write_multiple_pages.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_write_multiple_pages.exit

if.end27.i:                                       ; preds = %if.end22.i
  %201 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 0, ptr %err_code2.i, align 2
  %call28.i = call fastcc i32 @ms_transfer_tpc(ptr noundef %chip, i8 noundef zeroext 0, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.not.i = icmp eq i32 %call28.i, 0
  br i1 %cmp29.not.i, label %if.end27.i.if.end33.i_crit_edge, label %if.end27.i.ms_write_multiple_pages.exit_crit_edge

if.end27.i.ms_write_multiple_pages.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_write_multiple_pages.exit

if.end27.i.if.end33.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end27.i.if.end33.i_crit_edge, %if.else187.if.end33.i_crit_edge
  %call34.i = call fastcc i32 @ms_set_rw_reg_addr(ptr noundef %chip, i8 noundef zeroext 22, i8 noundef zeroext 9, i8 noundef zeroext 16, i8 noundef zeroext 15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp35.not.i = icmp eq i32 %call34.i, 0
  br i1 %cmp35.not.i, label %if.end38.i, label %if.end33.i.ms_write_multiple_pages.exit_crit_edge

if.end33.i.ms_write_multiple_pages.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_write_multiple_pages.exit

if.end38.i:                                       ; preds = %if.end33.i
  %202 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 0, ptr %err_code2.i, align 2
  %203 = ptrtoint ptr %ms_card1.i560 to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %ms_card1.i560, align 4
  %205 = and i16 %204, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %205)
  %tobool42.not.i = icmp eq i16 %205, 0
  %.296.i = select i1 %tobool42.not.i, i8 -128, i8 -120
  %206 = ptrtoint ptr %data.i559 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %.296.i, ptr %data.i559, align 1
  %207 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 0, ptr %86, align 1
  %208 = lshr i16 %new_blk.1686, 8
  %conv51.i = trunc i16 %208 to i8
  %209 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %conv51.i, ptr %87, align 1
  %conv53.i = trunc i16 %new_blk.1686 to i8
  %210 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %conv53.i, ptr %88, align 1
  %sub.i570 = sub nsw i32 %conv158, %conv138
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i570)
  %cmp57.i = icmp eq i32 %sub.i570, 1
  %storemerge295.i = select i1 %cmp57.i, i8 32, i8 0
  %211 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %storemerge295.i, ptr %89, align 1
  %212 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %start_page.0689, ptr %90, align 1
  %213 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 -8, ptr %91, align 1
  %214 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 -1, ptr %92, align 1
  %215 = lshr i16 %log_blk.0687, 8
  %conv69.i = trunc i16 %215 to i8
  %216 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %conv69.i, ptr %93, align 1
  %conv71.i = trunc i16 %log_blk.0687 to i8
  %217 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %conv71.i, ptr %94, align 1
  %218 = call ptr @memset(ptr %95, i32 255, i32 6)
  %call81.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef nonnull %data.i559, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %cmp82.i = icmp eq i32 %call81.i, 0
  br i1 %cmp82.i, label %if.end38.i.for.cond93.preheader.i_crit_edge, label %for.inc86.i

if.end38.i.for.cond93.preheader.i_crit_edge:      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond93.preheader.i

for.inc86.i:                                      ; preds = %if.end38.i
  %call81.1.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef nonnull %data.i559, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.1.i)
  %cmp82.1.i = icmp eq i32 %call81.1.i, 0
  br i1 %cmp82.1.i, label %for.inc86.i.for.cond93.preheader.i_crit_edge, label %for.inc86.1.i

for.inc86.i.for.cond93.preheader.i_crit_edge:     ; preds = %for.inc86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond93.preheader.i

for.inc86.1.i:                                    ; preds = %for.inc86.i
  %call81.2.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef nonnull %data.i559, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.2.i)
  %cmp82.2.i = icmp eq i32 %call81.2.i, 0
  br i1 %cmp82.2.i, label %for.inc86.1.i.for.cond93.preheader.i_crit_edge, label %for.inc86.1.i.ms_write_multiple_pages.exit_crit_edge

for.inc86.1.i.ms_write_multiple_pages.exit_crit_edge: ; preds = %for.inc86.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_write_multiple_pages.exit

for.inc86.1.i.for.cond93.preheader.i_crit_edge:   ; preds = %for.inc86.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond93.preheader.i

for.cond93.preheader.i:                           ; preds = %for.inc86.1.i.for.cond93.preheader.i_crit_edge, %for.inc86.i.for.cond93.preheader.i_crit_edge, %if.end38.i.for.cond93.preheader.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i299.i) #8
  %219 = ptrtoint ptr %data.i299.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 85, ptr %data.i299.i, align 1
  %220 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 0, ptr %97, align 1
  %call.i300.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i299.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i299.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i300.i)
  %cmp98.i = icmp eq i32 %call.i300.i, 0
  br i1 %cmp98.i, label %for.cond93.preheader.i.if.end108.i_crit_edge, label %for.inc102.i

for.cond93.preheader.i.if.end108.i_crit_edge:     ; preds = %for.cond93.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108.i

for.inc102.i:                                     ; preds = %for.cond93.preheader.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i299.i) #8
  %221 = ptrtoint ptr %data.i299.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 85, ptr %data.i299.i, align 1
  %222 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 0, ptr %97, align 1
  %call.i300.1.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i299.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i299.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i300.1.i)
  %cmp98.1.i = icmp eq i32 %call.i300.1.i, 0
  br i1 %cmp98.1.i, label %for.inc102.i.if.end108.i_crit_edge, label %for.inc102.1.i

for.inc102.i.if.end108.i_crit_edge:               ; preds = %for.inc102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108.i

for.inc102.1.i:                                   ; preds = %for.inc102.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i299.i) #8
  %223 = ptrtoint ptr %data.i299.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 85, ptr %data.i299.i, align 1
  %224 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 0, ptr %97, align 1
  %call.i300.2.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i299.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i299.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i300.2.i)
  %cmp98.2.i = icmp eq i32 %call.i300.2.i, 0
  br i1 %cmp98.2.i, label %for.inc102.1.i.if.end108.i_crit_edge, label %for.inc102.1.i.ms_write_multiple_pages.exit_crit_edge

for.inc102.1.i.ms_write_multiple_pages.exit_crit_edge: ; preds = %for.inc102.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_write_multiple_pages.exit

for.inc102.1.i.if.end108.i_crit_edge:             ; preds = %for.inc102.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108.i

if.end108.i:                                      ; preds = %for.inc102.1.i.if.end108.i_crit_edge, %for.inc102.i.if.end108.i_crit_edge, %for.cond93.preheader.i.if.end108.i_crit_edge
  %call109.i = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %val.i558, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109.i)
  %cmp110.not.i = icmp eq i32 %call109.i, 0
  br i1 %cmp110.not.i, label %for.cond114.preheader.i, label %if.end108.i.ms_write_multiple_pages.exit_crit_edge

if.end108.i.ms_write_multiple_pages.exit_crit_edge: ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_write_multiple_pages.exit

for.cond114.preheader.i:                          ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_cmp1(i8 %end_page.1, i8 %start_page.0689)
  %cmp117321.i = icmp ugt i8 %end_page.1, %start_page.0689
  br i1 %cmp117321.i, label %for.body119.lr.ph.i, label %for.cond114.preheader.i.ms_write_multiple_pages.exit_crit_edge

for.cond114.preheader.i.ms_write_multiple_pages.exit_crit_edge: ; preds = %for.cond114.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_write_multiple_pages.exit

for.body119.lr.ph.i:                              ; preds = %for.cond114.preheader.i
  %sub169.i = add nsw i32 %conv158, -1
  br label %for.body119.i

for.body119.i:                                    ; preds = %if.end205.i.for.body119.i_crit_edge, %for.body119.lr.ph.i
  %indvars.iv.i574 = phi i32 [ %conv138, %for.body119.lr.ph.i ], [ %indvars.iv.next.i578, %if.end205.i.for.body119.i_crit_edge ]
  %ptr.0325.i = phi ptr [ %ptr.0690, %for.body119.lr.ph.i ], [ %spec.select.i577, %if.end205.i.for.body119.i_crit_edge ]
  %225 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 0, ptr %err_code2.i, align 2
  %call120.i = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120.i)
  %cmp121.not.i = icmp eq i32 %call120.i, 0
  br i1 %cmp121.not.i, label %if.end124.i, label %if.then123.i

if.then123.i:                                     ; preds = %for.body119.i
  call void @__sanitizer_cov_trace_pc() #10
  %226 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 32, ptr %err_code2.i, align 2
  br label %ms_write_multiple_pages.exit

if.end124.i:                                      ; preds = %for.body119.i
  %227 = ptrtoint ptr %val.i558 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %val.i558, align 1
  %conv125.i = zext i8 %228 to i32
  %and126.i = and i32 %conv125.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126.i)
  %tobool127.not.i = icmp eq i32 %and126.i, 0
  br i1 %tobool127.not.i, label %if.end129.i, label %if.then128.i

if.then128.i:                                     ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #10
  %229 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 8, ptr %err_code2.i, align 2
  br label %ms_write_multiple_pages.exit

if.end129.i:                                      ; preds = %if.end124.i
  %and131.i = and i32 %conv125.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131.i)
  %tobool132.not.i = icmp eq i32 %and131.i, 0
  br i1 %tobool132.not.i, label %if.end134.i, label %if.then133.i

if.then133.i:                                     ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #10
  %230 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 2, ptr %err_code2.i, align 2
  br label %ms_write_multiple_pages.exit

if.end134.i:                                      ; preds = %if.end129.i
  %and136.i = and i32 %conv125.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136.i)
  %tobool137.not.i = icmp eq i32 %and136.i, 0
  br i1 %tobool137.not.i, label %if.then138.i, label %if.end139.i

if.then138.i:                                     ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #10
  %231 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 1, ptr %err_code2.i, align 2
  br label %ms_write_multiple_pages.exit

if.end139.i:                                      ; preds = %if.end134.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %232 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %232(i32 noundef 6442440) #8
  %233 = ptrtoint ptr %ci.i571 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 0, ptr %ci.i571, align 4
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -703, i8 noundef zeroext -1, i8 noundef zeroext 13) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -702, i8 noundef zeroext -1, i8 noundef zeroext -128) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  call void @trans_dma_enable(i32 noundef 1, ptr noundef %chip, i32 noundef 512, i8 noundef zeroext 32) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -701, i8 noundef zeroext -1, i8 noundef zeroext -123) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -701, i8 noundef zeroext 64, i8 noundef zeroext 64) #8
  call void @rtsx_send_cmd_no_wait(ptr noundef %chip) #8
  %234 = ptrtoint ptr %srb.i572 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %srb.i572, align 4
  %nents.i.i575 = getelementptr inbounds %struct.scsi_cmnd, ptr %235, i32 0, i32 17, i32 0, i32 1
  %236 = ptrtoint ptr %nents.i.i575 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %nents.i.i575, align 4
  %238 = ptrtoint ptr %ms_timeout.i573 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %ms_timeout.i573, align 4
  %call141.i = call i32 @rtsx_transfer_data_partial(ptr noundef %chip, i8 noundef zeroext 8, ptr noundef %ptr.0325.i, i32 noundef 512, i32 noundef %237, ptr noundef nonnull %index, ptr noundef nonnull %offset, i32 noundef 1, i32 noundef %239) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141.i)
  %cmp142.i = icmp slt i32 %call141.i, 0
  br i1 %cmp142.i, label %if.then144.i, label %if.end149.i

if.then144.i:                                     ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #10
  %240 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 64, ptr %err_code2.i, align 2
  %call.i307.i = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call141.i)
  %cmp145.i = icmp eq i32 %call141.i, -110
  %.297.i = select i1 %cmp145.i, i32 2, i32 1
  br label %ms_write_multiple_pages.exit

if.end149.i:                                      ; preds = %if.end139.i
  %call150.i = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %val.i558, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150.i)
  %cmp151.not.i = icmp eq i32 %call150.i, 0
  br i1 %cmp151.not.i, label %if.end154.i, label %if.end149.i.ms_write_multiple_pages.exit_crit_edge

if.end149.i.ms_write_multiple_pages.exit_crit_edge: ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_write_multiple_pages.exit

if.end154.i:                                      ; preds = %if.end149.i
  br i1 %cmp57.i, label %if.then160.i, label %if.else166.i

if.then160.i:                                     ; preds = %if.end154.i
  %241 = ptrtoint ptr %val.i558 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %val.i558, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %242)
  %tobool163.not.i = icmp sgt i8 %242, -1
  br i1 %tobool163.not.i, label %if.then164.i, label %if.then160.i.if.end205.i_crit_edge

if.then160.i.if.end205.i_crit_edge:               ; preds = %if.then160.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205.i

if.then164.i:                                     ; preds = %if.then160.i
  call void @__sanitizer_cov_trace_pc() #10
  %243 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 2, ptr %err_code2.i, align 2
  br label %ms_write_multiple_pages.exit

if.else166.i:                                     ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub169.i, i32 %indvars.iv.i574)
  %cmp170.i = icmp eq i32 %sub169.i, %indvars.iv.i574
  br i1 %cmp170.i, label %if.then172.i, label %lor.lhs.false.critedge.i

if.then172.i:                                     ; preds = %if.else166.i
  %244 = ptrtoint ptr %val.i558 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %val.i558, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %245)
  %tobool175.not.i = icmp sgt i8 %245, -1
  br i1 %tobool175.not.i, label %if.then176.i, label %if.then172.i.if.end182.i_crit_edge

if.then172.i.if.end182.i_crit_edge:               ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end182.i

if.then176.i:                                     ; preds = %if.then172.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i309.i) #8
  %246 = ptrtoint ptr %data.i309.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 51, ptr %data.i309.i, align 1
  %247 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 0, ptr %98, align 1
  %call.i310.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i309.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i309.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i310.i)
  %cmp178.not.i = icmp eq i32 %call.i310.i, 0
  br i1 %cmp178.not.i, label %if.then176.i.if.end182.i_crit_edge, label %if.then176.i.ms_write_multiple_pages.exit_crit_edge

if.then176.i.ms_write_multiple_pages.exit_crit_edge: ; preds = %if.then176.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_write_multiple_pages.exit

if.then176.i.if.end182.i_crit_edge:               ; preds = %if.then176.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end182.i

if.end182.i:                                      ; preds = %if.then176.i.if.end182.i_crit_edge, %if.then172.i.if.end182.i_crit_edge
  %call183.i = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %val.i558, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183.i)
  %cmp184.not.i = icmp eq i32 %call183.i, 0
  br i1 %cmp184.not.i, label %if.end182.i.if.then198.i_crit_edge, label %if.end182.i.ms_write_multiple_pages.exit_crit_edge

if.end182.i.ms_write_multiple_pages.exit_crit_edge: ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_write_multiple_pages.exit

if.end182.i.if.then198.i_crit_edge:               ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then198.i

lor.lhs.false.critedge.i:                         ; preds = %if.else166.i
  %248 = ptrtoint ptr %page_off to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %page_off, align 1
  %250 = zext i8 %249 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.i574, i32 %250)
  %cmp196.i = icmp eq i32 %indvars.iv.i574, %250
  br i1 %cmp196.i, label %lor.lhs.false.critedge.i.if.then198.i_crit_edge, label %lor.lhs.false.critedge.i.if.end205.i_crit_edge

lor.lhs.false.critedge.i.if.end205.i_crit_edge:   ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205.i

lor.lhs.false.critedge.i.if.then198.i_crit_edge:  ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then198.i

if.then198.i:                                     ; preds = %lor.lhs.false.critedge.i.if.then198.i_crit_edge, %if.end182.i.if.then198.i_crit_edge
  %251 = ptrtoint ptr %val.i558 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %val.i558, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %252)
  %tobool201.not.i = icmp sgt i8 %252, -1
  br i1 %tobool201.not.i, label %if.then202.i, label %if.then198.i.if.end205.i_crit_edge

if.then198.i.if.end205.i_crit_edge:               ; preds = %if.then198.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205.i

if.then202.i:                                     ; preds = %if.then198.i
  call void @__sanitizer_cov_trace_pc() #10
  %253 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 2, ptr %err_code2.i, align 2
  br label %ms_write_multiple_pages.exit

if.end205.i:                                      ; preds = %if.then198.i.if.end205.i_crit_edge, %lor.lhs.false.critedge.i.if.end205.i_crit_edge, %if.then160.i.if.end205.i_crit_edge
  %254 = ptrtoint ptr %srb.i572 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %srb.i572, align 4
  %nents.i312.i = getelementptr inbounds %struct.scsi_cmnd, ptr %255, i32 0, i32 17, i32 0, i32 1
  %256 = ptrtoint ptr %nents.i312.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %nents.i312.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %cmp208.i = icmp eq i32 %257, 0
  %spec.select.idx.i576 = select i1 %cmp208.i, i32 512, i32 0
  %spec.select.i577 = getelementptr i8, ptr %ptr.0325.i, i32 %spec.select.idx.i576
  %indvars.iv.next.i578 = add nuw nsw i32 %indvars.iv.i574, 1
  %lftr.wideiv.i579 = trunc i32 %indvars.iv.next.i578 to i8
  %exitcond.not.i580 = icmp eq i8 %end_page.1, %lftr.wideiv.i579
  br i1 %exitcond.not.i580, label %if.end205.i.ms_write_multiple_pages.exit_crit_edge, label %if.end205.i.for.body119.i_crit_edge

if.end205.i.for.body119.i_crit_edge:              ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body119.i

if.end205.i.ms_write_multiple_pages.exit_crit_edge: ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_write_multiple_pages.exit

ms_write_multiple_pages.exit:                     ; preds = %if.end205.i.ms_write_multiple_pages.exit_crit_edge, %if.then202.i, %if.end182.i.ms_write_multiple_pages.exit_crit_edge, %if.then176.i.ms_write_multiple_pages.exit_crit_edge, %if.then164.i, %if.end149.i.ms_write_multiple_pages.exit_crit_edge, %if.then144.i, %if.then138.i, %if.then133.i, %if.then128.i, %if.then123.i, %for.cond114.preheader.i.ms_write_multiple_pages.exit_crit_edge, %if.end108.i.ms_write_multiple_pages.exit_crit_edge, %for.inc102.1.i.ms_write_multiple_pages.exit_crit_edge, %for.inc86.1.i.ms_write_multiple_pages.exit_crit_edge, %if.end33.i.ms_write_multiple_pages.exit_crit_edge, %if.end27.i.ms_write_multiple_pages.exit_crit_edge, %if.end22.i.ms_write_multiple_pages.exit_crit_edge, %if.end.i567.ms_write_multiple_pages.exit_crit_edge, %if.then.i564.ms_write_multiple_pages.exit_crit_edge
  %retval.0.i581 = phi i32 [ 1, %if.then123.i ], [ 1, %if.then128.i ], [ 1, %if.then133.i ], [ 1, %if.then164.i ], [ 1, %if.then202.i ], [ 1, %if.then138.i ], [ 1, %if.then.i564.ms_write_multiple_pages.exit_crit_edge ], [ 1, %if.end.i567.ms_write_multiple_pages.exit_crit_edge ], [ 1, %if.end22.i.ms_write_multiple_pages.exit_crit_edge ], [ 1, %if.end27.i.ms_write_multiple_pages.exit_crit_edge ], [ 1, %if.end33.i.ms_write_multiple_pages.exit_crit_edge ], [ 1, %if.end108.i.ms_write_multiple_pages.exit_crit_edge ], [ %.297.i, %if.then144.i ], [ 0, %for.cond114.preheader.i.ms_write_multiple_pages.exit_crit_edge ], [ 1, %for.inc86.1.i.ms_write_multiple_pages.exit_crit_edge ], [ 1, %for.inc102.1.i.ms_write_multiple_pages.exit_crit_edge ], [ 0, %if.end205.i.ms_write_multiple_pages.exit_crit_edge ], [ 1, %if.end182.i.ms_write_multiple_pages.exit_crit_edge ], [ 1, %if.then176.i.ms_write_multiple_pages.exit_crit_edge ], [ 1, %if.end149.i.ms_write_multiple_pages.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data.i559) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i558) #8
  br label %if.end189

if.end189:                                        ; preds = %ms_write_multiple_pages.exit, %ms_read_multiple_pages.exit
  %retval3.0 = phi i32 [ %retval.0.i556, %ms_read_multiple_pages.exit ], [ %retval.0.i581, %ms_write_multiple_pages.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval3.0)
  %cmp190.not = icmp eq i32 %retval3.0, 0
  br i1 %cmp190.not, label %if.end198, label %if.then192

if.then192:                                       ; preds = %if.end189
  call void @toggle_gpio(ptr noundef %chip, i8 noundef zeroext 1) #8
  %call193 = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %cmp194.not = icmp eq i32 %call193, 0
  br i1 %cmp194.not, label %if.end197, label %if.then196

if.then196:                                       ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #10
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 2) #8
  br label %cleanup

if.end197:                                        ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #10
  %258 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %259)
  %cmp.i583 = icmp eq i32 %259, 2
  %260 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %device, align 4
  %lun.i585 = getelementptr inbounds %struct.scsi_device, ptr %261, i32 0, i32 18
  %262 = ptrtoint ptr %lun.i585 to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %lun.i585, align 8
  %conv.i586 = trunc i64 %263 to i32
  %..i587 = select i1 %cmp.i583, i32 7, i32 8
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv.i586, i32 noundef %..i587) #8
  br label %cleanup

if.end198:                                        ; preds = %if.end189
  %264 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %265)
  %cmp200 = icmp eq i32 %265, 1
  br i1 %cmp200, label %if.then202, label %if.end198.if.end221_crit_edge

if.end198.if.end221_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end221

if.then202:                                       ; preds = %if.end198
  %266 = ptrtoint ptr %page_off to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %page_off, align 1
  %conv205 = zext i8 %267 to i32
  %add206 = add nuw nsw i32 %conv205, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add206, i32 %conv158)
  %cmp207 = icmp eq i32 %add206, %conv158
  br i1 %cmp207, label %if.then209, label %if.then202.if.end221_crit_edge

if.then202.if.end221_crit_edge:                   ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end221

if.then209:                                       ; preds = %if.then202
  %call210 = call fastcc i32 @ms_erase_block(ptr noundef %chip, i16 noundef zeroext %old_blk.1691)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %cmp211 = icmp eq i32 %call210, 0
  br i1 %cmp211, label %if.then213, label %if.then209.if.end214_crit_edge

if.then209.if.end214_crit_edge:                   ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end214

if.then213:                                       ; preds = %if.then209
  %268 = lshr i16 %old_blk.1691, 9
  %269 = zext i16 %268 to i32
  %270 = ptrtoint ptr %segment to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %segment, align 4
  %free_table.i589 = getelementptr %struct.zone_entry, ptr %271, i32 %269, i32 1
  %272 = ptrtoint ptr %free_table.i589 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %free_table.i589, align 4
  %set_index.i = getelementptr %struct.zone_entry, ptr %271, i32 %269, i32 3
  %274 = ptrtoint ptr %set_index.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %set_index.i, align 4
  %inc.i590 = add i32 %275, 1
  store i32 %inc.i590, ptr %set_index.i, align 4
  %arrayidx3.i591 = getelementptr i16, ptr %273, i32 %275
  %276 = ptrtoint ptr %arrayidx3.i591 to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 %old_blk.1691, ptr %arrayidx3.i591, align 2
  %277 = load i32, ptr %set_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %277)
  %cmp.i592 = icmp sgt i32 %277, 511
  br i1 %cmp.i592, label %if.then.i593, label %if.then213.ms_set_unused_block.exit_crit_edge

if.then213.ms_set_unused_block.exit_crit_edge:    ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_set_unused_block.exit

if.then.i593:                                     ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #10
  %278 = ptrtoint ptr %set_index.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 0, ptr %set_index.i, align 4
  br label %ms_set_unused_block.exit

ms_set_unused_block.exit:                         ; preds = %if.then.i593, %if.then213.ms_set_unused_block.exit_crit_edge
  %unused_blk_cnt.i594 = getelementptr %struct.zone_entry, ptr %271, i32 %269, i32 5
  %279 = ptrtoint ptr %unused_blk_cnt.i594 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %unused_blk_cnt.i594, align 4
  %inc7.i = add i32 %280, 1
  store i32 %inc7.i, ptr %unused_blk_cnt.i594, align 4
  br label %if.end214

if.end214:                                        ; preds = %ms_set_unused_block.exit, %if.then209.if.end214_crit_edge
  %arrayidx216 = getelementptr [17 x i16], ptr @ms_start_idx, i32 0, i32 %seg_no.1692
  %281 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %arrayidx216, align 2
  %sub218 = sub i16 %log_blk.0687, %282
  %283 = ptrtoint ptr %segment to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %segment, align 4
  %tobool.not.i597 = icmp eq ptr %284, null
  br i1 %tobool.not.i597, label %if.end214.if.end221_crit_edge, label %if.end.i600

if.end214.if.end221_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end221

if.end.i600:                                      ; preds = %if.end214
  %arrayidx.i598 = getelementptr %struct.zone_entry, ptr %284, i32 %seg_no.1692
  %285 = ptrtoint ptr %arrayidx.i598 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %arrayidx.i598, align 4
  %tobool4.not.i599 = icmp eq ptr %286, null
  br i1 %tobool4.not.i599, label %if.end.i600.if.end221_crit_edge, label %if.then5.i603

if.end.i600.if.end221_crit_edge:                  ; preds = %if.end.i600
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end221

if.then5.i603:                                    ; preds = %if.end.i600
  call void @__sanitizer_cov_trace_pc() #10
  %idxprom.i601 = zext i16 %sub218 to i32
  %arrayidx7.i602 = getelementptr i16, ptr %286, i32 %idxprom.i601
  %287 = ptrtoint ptr %arrayidx7.i602 to i32
  call void @__asan_store2_noabort(i32 %287)
  store i16 %new_blk.1686, ptr %arrayidx7.i602, align 2
  br label %if.end221

if.end221:                                        ; preds = %if.then5.i603, %if.end.i600.if.end221_crit_edge, %if.end214.if.end221_crit_edge, %if.then202.if.end221_crit_edge, %if.end198.if.end221_crit_edge
  %288 = zext i8 %sub160 to i16
  %conv225 = sub i16 %total_sec_cnt.0688, %288
  %289 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %290)
  %cmp227 = icmp eq i32 %290, 0
  %conv222 = zext i8 %sub160 to i32
  %mul = shl nuw nsw i32 %conv222, 9
  %ptr.1.idx = select i1 %cmp227, i32 %mul, i32 0
  %ptr.1 = getelementptr i8, ptr %ptr.0690, i32 %ptr.1.idx
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv225)
  %cmp233 = icmp eq i16 %conv225, 0
  br i1 %cmp233, label %if.end221.while.end_crit_edge, label %if.end236

if.end221.while.end_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end236:                                        ; preds = %if.end221
  %inc237 = add i16 %log_blk.0687, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 494, i16 %inc237)
  %cmp246 = icmp ult i16 %inc237, 494
  br i1 %cmp246, label %if.end236.for.end252_crit_edge, label %for.cond238.1

if.end236.for.end252_crit_edge:                   ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end252

for.cond238.1:                                    ; preds = %if.end236
  call void @__sanitizer_cov_trace_const_cmp2(i16 990, i16 %inc237)
  %cmp246.1 = icmp ult i16 %inc237, 990
  br i1 %cmp246.1, label %for.cond238.1.for.end252_crit_edge, label %for.cond238.2

for.cond238.1.for.end252_crit_edge:               ; preds = %for.cond238.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end252

for.cond238.2:                                    ; preds = %for.cond238.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1486, i16 %inc237)
  %cmp246.2 = icmp ult i16 %inc237, 1486
  br i1 %cmp246.2, label %for.cond238.2.for.end252_crit_edge, label %for.cond238.3

for.cond238.2.for.end252_crit_edge:               ; preds = %for.cond238.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end252

for.cond238.3:                                    ; preds = %for.cond238.2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1982, i16 %inc237)
  %cmp246.3 = icmp ult i16 %inc237, 1982
  br i1 %cmp246.3, label %for.cond238.3.for.end252_crit_edge, label %for.cond238.4

for.cond238.3.for.end252_crit_edge:               ; preds = %for.cond238.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end252

for.cond238.4:                                    ; preds = %for.cond238.3
  call void @__sanitizer_cov_trace_const_cmp2(i16 2478, i16 %inc237)
  %cmp246.4 = icmp ult i16 %inc237, 2478
  br i1 %cmp246.4, label %for.cond238.4.for.end252_crit_edge, label %for.cond238.5

for.cond238.4.for.end252_crit_edge:               ; preds = %for.cond238.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end252

for.cond238.5:                                    ; preds = %for.cond238.4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2974, i16 %inc237)
  %cmp246.5 = icmp ult i16 %inc237, 2974
  br i1 %cmp246.5, label %for.cond238.5.for.end252_crit_edge, label %for.cond238.6

for.cond238.5.for.end252_crit_edge:               ; preds = %for.cond238.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end252

for.cond238.6:                                    ; preds = %for.cond238.5
  call void @__sanitizer_cov_trace_const_cmp2(i16 3470, i16 %inc237)
  %cmp246.6 = icmp ult i16 %inc237, 3470
  br i1 %cmp246.6, label %for.cond238.6.for.end252_crit_edge, label %for.cond238.7

for.cond238.6.for.end252_crit_edge:               ; preds = %for.cond238.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end252

for.cond238.7:                                    ; preds = %for.cond238.6
  call void @__sanitizer_cov_trace_const_cmp2(i16 3966, i16 %inc237)
  %cmp246.7 = icmp ult i16 %inc237, 3966
  br i1 %cmp246.7, label %for.cond238.7.for.end252_crit_edge, label %for.cond238.8

for.cond238.7.for.end252_crit_edge:               ; preds = %for.cond238.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end252

for.cond238.8:                                    ; preds = %for.cond238.7
  call void @__sanitizer_cov_trace_const_cmp2(i16 4462, i16 %inc237)
  %cmp246.8 = icmp ult i16 %inc237, 4462
  br i1 %cmp246.8, label %for.cond238.8.for.end252_crit_edge, label %for.cond238.9

for.cond238.8.for.end252_crit_edge:               ; preds = %for.cond238.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end252

for.cond238.9:                                    ; preds = %for.cond238.8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4958, i16 %inc237)
  %cmp246.9 = icmp ult i16 %inc237, 4958
  br i1 %cmp246.9, label %for.cond238.9.for.end252_crit_edge, label %for.cond238.10

for.cond238.9.for.end252_crit_edge:               ; preds = %for.cond238.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end252

for.cond238.10:                                   ; preds = %for.cond238.9
  call void @__sanitizer_cov_trace_const_cmp2(i16 5454, i16 %inc237)
  %cmp246.10 = icmp ult i16 %inc237, 5454
  br i1 %cmp246.10, label %for.cond238.10.for.end252_crit_edge, label %for.cond238.11

for.cond238.10.for.end252_crit_edge:              ; preds = %for.cond238.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end252

for.cond238.11:                                   ; preds = %for.cond238.10
  call void @__sanitizer_cov_trace_const_cmp2(i16 5950, i16 %inc237)
  %cmp246.11 = icmp ult i16 %inc237, 5950
  br i1 %cmp246.11, label %for.cond238.11.for.end252_crit_edge, label %for.cond238.12

for.cond238.11.for.end252_crit_edge:              ; preds = %for.cond238.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end252

for.cond238.12:                                   ; preds = %for.cond238.11
  call void @__sanitizer_cov_trace_const_cmp2(i16 6446, i16 %inc237)
  %cmp246.12 = icmp ult i16 %inc237, 6446
  br i1 %cmp246.12, label %for.cond238.12.for.end252_crit_edge, label %for.cond238.13

for.cond238.12.for.end252_crit_edge:              ; preds = %for.cond238.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end252

for.cond238.13:                                   ; preds = %for.cond238.12
  call void @__sanitizer_cov_trace_const_cmp2(i16 6942, i16 %inc237)
  %cmp246.13 = icmp ult i16 %inc237, 6942
  br i1 %cmp246.13, label %for.cond238.13.for.end252_crit_edge, label %for.cond238.14

for.cond238.13.for.end252_crit_edge:              ; preds = %for.cond238.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end252

for.cond238.14:                                   ; preds = %for.cond238.13
  call void @__sanitizer_cov_trace_const_cmp2(i16 7438, i16 %inc237)
  %cmp246.14 = icmp ult i16 %inc237, 7438
  br i1 %cmp246.14, label %for.cond238.14.for.end252_crit_edge, label %for.cond238.15

for.cond238.14.for.end252_crit_edge:              ; preds = %for.cond238.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end252

for.cond238.15:                                   ; preds = %for.cond238.14
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 7934, i16 %inc237)
  %cmp246.15 = icmp ult i16 %inc237, 7934
  %spec.select748 = select i1 %cmp246.15, i32 15, i32 16
  br label %for.end252

for.end252:                                       ; preds = %for.cond238.15, %for.cond238.14.for.end252_crit_edge, %for.cond238.13.for.end252_crit_edge, %for.cond238.12.for.end252_crit_edge, %for.cond238.11.for.end252_crit_edge, %for.cond238.10.for.end252_crit_edge, %for.cond238.9.for.end252_crit_edge, %for.cond238.8.for.end252_crit_edge, %for.cond238.7.for.end252_crit_edge, %for.cond238.6.for.end252_crit_edge, %for.cond238.5.for.end252_crit_edge, %for.cond238.4.for.end252_crit_edge, %for.cond238.3.for.end252_crit_edge, %for.cond238.2.for.end252_crit_edge, %for.cond238.1.for.end252_crit_edge, %if.end236.for.end252_crit_edge
  %seg_no.2.lcssa = phi i32 [ 0, %if.end236.for.end252_crit_edge ], [ 1, %for.cond238.1.for.end252_crit_edge ], [ 2, %for.cond238.2.for.end252_crit_edge ], [ 3, %for.cond238.3.for.end252_crit_edge ], [ 4, %for.cond238.4.for.end252_crit_edge ], [ 5, %for.cond238.5.for.end252_crit_edge ], [ 6, %for.cond238.6.for.end252_crit_edge ], [ 7, %for.cond238.7.for.end252_crit_edge ], [ 8, %for.cond238.8.for.end252_crit_edge ], [ 9, %for.cond238.9.for.end252_crit_edge ], [ 10, %for.cond238.10.for.end252_crit_edge ], [ 11, %for.cond238.11.for.end252_crit_edge ], [ 12, %for.cond238.12.for.end252_crit_edge ], [ 13, %for.cond238.13.for.end252_crit_edge ], [ 14, %for.cond238.14.for.end252_crit_edge ], [ %spec.select748, %for.cond238.15 ]
  %291 = ptrtoint ptr %segment to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %segment, align 4
  %build_flag255 = getelementptr %struct.zone_entry, ptr %292, i32 %seg_no.2.lcssa, i32 7
  %293 = ptrtoint ptr %build_flag255 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %build_flag255, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %294)
  %cmp256 = icmp eq i32 %294, 0
  br i1 %cmp256, label %if.then258, label %for.end252.if.end268_crit_edge

for.end252.if.end268_crit_edge:                   ; preds = %for.end252
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end268

if.then258:                                       ; preds = %for.end252
  %call259 = call fastcc i32 @ms_build_l2p_tbl(ptr noundef %chip, i32 noundef %seg_no.2.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call259)
  %cmp260.not = icmp eq i32 %call259, 0
  br i1 %cmp260.not, label %if.end268thread-pre-split, label %if.then262

if.then262:                                       ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #10
  %card_fail263 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 22
  %295 = ptrtoint ptr %card_fail263 to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %card_fail263, align 1
  %297 = or i8 %296, 8
  store i8 %297, ptr %card_fail263, align 1
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 2) #8
  br label %cleanup

if.end268thread-pre-split:                        ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #10
  %298 = ptrtoint ptr %segment to i32
  call void @__asan_load4_noabort(i32 %298)
  %.pr = load ptr, ptr %segment, align 4
  br label %if.end268

if.end268:                                        ; preds = %if.end268thread-pre-split, %for.end252.if.end268_crit_edge
  %299 = phi ptr [ %.pr, %if.end268thread-pre-split ], [ %292, %for.end252.if.end268_crit_edge ]
  %arrayidx270 = getelementptr [17 x i16], ptr @ms_start_idx, i32 0, i32 %seg_no.2.lcssa
  %300 = ptrtoint ptr %arrayidx270 to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %arrayidx270, align 2
  %sub272 = sub i16 %inc237, %301
  %tobool.not.i605 = icmp eq ptr %299, null
  br i1 %tobool.not.i605, label %if.end268.if.then278_crit_edge, label %if.end.i608

if.end268.if.then278_crit_edge:                   ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then278

if.end.i608:                                      ; preds = %if.end268
  %arrayidx.i606 = getelementptr %struct.zone_entry, ptr %299, i32 %seg_no.2.lcssa
  %302 = ptrtoint ptr %arrayidx.i606 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %arrayidx.i606, align 4
  %tobool4.not.i607 = icmp eq ptr %303, null
  br i1 %tobool4.not.i607, label %if.end.i608.if.then278_crit_edge, label %ms_get_l2p_tbl.exit613

if.end.i608.if.then278_crit_edge:                 ; preds = %if.end.i608
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then278

ms_get_l2p_tbl.exit613:                           ; preds = %if.end.i608
  %idxprom.i609 = zext i16 %sub272 to i32
  %arrayidx7.i610 = getelementptr i16, ptr %303, i32 %idxprom.i609
  %304 = ptrtoint ptr %arrayidx7.i610 to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %arrayidx7.i610, align 2
  %conv275 = zext i16 %305 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %305)
  %cmp276 = icmp eq i16 %305, -1
  br i1 %cmp276, label %ms_get_l2p_tbl.exit613.if.then278_crit_edge, label %if.end279

ms_get_l2p_tbl.exit613.if.then278_crit_edge:      ; preds = %ms_get_l2p_tbl.exit613
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then278

if.then278:                                       ; preds = %ms_get_l2p_tbl.exit613.if.then278_crit_edge, %if.end.i608.if.then278_crit_edge, %if.end268.if.then278_crit_edge
  %306 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %307)
  %cmp.i615 = icmp eq i32 %307, 2
  %308 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %device, align 4
  %lun.i617 = getelementptr inbounds %struct.scsi_device, ptr %309, i32 0, i32 18
  %310 = ptrtoint ptr %lun.i617 to i32
  call void @__asan_load8_noabort(i32 %310)
  %311 = load i64, ptr %lun.i617, align 8
  %conv.i618 = trunc i64 %311 to i32
  %..i619 = select i1 %cmp.i615, i32 7, i32 8
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv.i618, i32 noundef %..i619) #8
  br label %cleanup

if.end279:                                        ; preds = %ms_get_l2p_tbl.exit613
  %312 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %313)
  %cmp281 = icmp eq i32 %313, 1
  br i1 %cmp281, label %if.then283, label %if.end279.do.body291_crit_edge

if.end279.do.body291_crit_edge:                   ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body291

if.then283:                                       ; preds = %if.end279
  %unused_blk_cnt.i621 = getelementptr %struct.zone_entry, ptr %299, i32 %seg_no.2.lcssa, i32 5
  %314 = ptrtoint ptr %unused_blk_cnt.i621 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %unused_blk_cnt.i621, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %315)
  %cmp.i622 = icmp slt i32 %315, 1
  br i1 %cmp.i622, label %if.then283.if.then288_crit_edge, label %if.end.i628

if.then283.if.then288_crit_edge:                  ; preds = %if.then283
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then288

if.end.i628:                                      ; preds = %if.then283
  %free_table.i623 = getelementptr %struct.zone_entry, ptr %299, i32 %seg_no.2.lcssa, i32 1
  %316 = ptrtoint ptr %free_table.i623 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %free_table.i623, align 4
  %get_index.i624 = getelementptr %struct.zone_entry, ptr %299, i32 %seg_no.2.lcssa, i32 4
  %318 = ptrtoint ptr %get_index.i624 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %get_index.i624, align 4
  %arrayidx3.i625 = getelementptr i16, ptr %317, i32 %319
  %320 = ptrtoint ptr %arrayidx3.i625 to i32
  call void @__asan_load2_noabort(i32 %320)
  %321 = load i16, ptr %arrayidx3.i625, align 2
  %inc.i626 = add i32 %319, 1
  store i32 %inc.i626, ptr %get_index.i624, align 4
  store i16 -1, ptr %arrayidx3.i625, align 2
  %322 = load i32, ptr %get_index.i624, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %322)
  %cmp8.i627 = icmp sgt i32 %322, 511
  br i1 %cmp8.i627, label %if.then9.i629, label %if.end.i628.ms_get_unused_block.exit633_crit_edge

if.end.i628.ms_get_unused_block.exit633_crit_edge: ; preds = %if.end.i628
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_get_unused_block.exit633

if.then9.i629:                                    ; preds = %if.end.i628
  call void @__sanitizer_cov_trace_pc() #10
  %323 = ptrtoint ptr %get_index.i624 to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 0, ptr %get_index.i624, align 4
  br label %ms_get_unused_block.exit633

ms_get_unused_block.exit633:                      ; preds = %if.then9.i629, %if.end.i628.ms_get_unused_block.exit633_crit_edge
  %324 = ptrtoint ptr %unused_blk_cnt.i621 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %unused_blk_cnt.i621, align 4
  %dec.i630 = add i32 %325, -1
  store i32 %dec.i630, ptr %unused_blk_cnt.i621, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %321)
  %cmp286 = icmp eq i16 %321, -1
  br i1 %cmp286, label %ms_get_unused_block.exit633.if.then288_crit_edge, label %ms_get_unused_block.exit633.do.body291_crit_edge

ms_get_unused_block.exit633.do.body291_crit_edge: ; preds = %ms_get_unused_block.exit633
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body291

ms_get_unused_block.exit633.if.then288_crit_edge: ; preds = %ms_get_unused_block.exit633
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then288

if.then288:                                       ; preds = %ms_get_unused_block.exit633.if.then288_crit_edge, %if.then283.if.then288_crit_edge
  %326 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %327)
  %cmp.i635 = icmp eq i32 %327, 2
  %328 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %device, align 4
  %lun.i637 = getelementptr inbounds %struct.scsi_device, ptr %329, i32 0, i32 18
  %330 = ptrtoint ptr %lun.i637 to i32
  call void @__asan_load8_noabort(i32 %330)
  %331 = load i64, ptr %lun.i637, align 8
  %conv.i638 = trunc i64 %331 to i32
  %..i639 = select i1 %cmp.i635, i32 7, i32 8
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv.i638, i32 noundef %..i639) #8
  br label %cleanup

do.body291:                                       ; preds = %ms_get_unused_block.exit633.do.body291_crit_edge, %if.end279.do.body291_crit_edge
  %new_blk.2 = phi i16 [ %321, %ms_get_unused_block.exit633.do.body291_crit_edge ], [ %new_blk.1686, %if.end279.do.body291_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_rw_multi_sector.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_rw_multi_sector, %if.then303)) #8
          to label %while.body [label %if.then303], !srcloc !167

if.then303:                                       ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #10
  %332 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %chip, align 4
  %334 = ptrtoint ptr %333 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %333, align 4
  %dev.i640 = getelementptr inbounds %struct.pci_dev, ptr %335, i32 0, i32 44
  %conv306 = zext i16 %new_blk.2 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_rw_multi_sector.__UNIQUE_ID_ddebug331, ptr noundef %dev.i640, ptr noundef nonnull @.str.56, i32 noundef %seg_no.2.lcssa, i32 noundef %conv275, i32 noundef %conv306) #8
  br label %while.body

while.end:                                        ; preds = %if.end221.while.end_crit_edge, %do.end.while.end_crit_edge
  %new_blk.1.lcssa = phi i16 [ %new_blk.0, %do.end.while.end_crit_edge ], [ %new_blk.1686, %if.end221.while.end_crit_edge ]
  %log_blk.0.lcssa = phi i16 [ %conv8, %do.end.while.end_crit_edge ], [ %log_blk.0687, %if.end221.while.end_crit_edge ]
  %old_blk.1.lcssa = phi i16 [ %old_blk.0, %do.end.while.end_crit_edge ], [ %old_blk.1691, %if.end221.while.end_crit_edge ]
  %end_page.2 = phi i8 [ 0, %do.end.while.end_crit_edge ], [ %end_page.1, %if.end221.while.end_crit_edge ]
  %336 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %337)
  %cmp311 = icmp eq i32 %337, 1
  br i1 %cmp311, label %if.then313, label %while.end.if.end327_crit_edge

while.end.if.end327_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end327

if.then313:                                       ; preds = %while.end
  %338 = ptrtoint ptr %page_off to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %page_off, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %339, i8 %end_page.2)
  %cmp318.not = icmp ult i8 %339, %end_page.2
  br i1 %cmp318.not, label %if.then313.if.end327_crit_edge, label %if.then320

if.then313.if.end327_crit_edge:                   ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end327

if.then320:                                       ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #10
  %delay_write_flag321 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 22, i32 4
  %340 = ptrtoint ptr %delay_write_flag321 to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 1, ptr %delay_write_flag321, align 1
  %341 = ptrtoint ptr %delay_write4 to i32
  call void @__asan_store2_noabort(i32 %341)
  store i16 %old_blk.1.lcssa, ptr %delay_write4, align 2
  %new_phyblock323 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 22, i32 1
  %342 = ptrtoint ptr %new_phyblock323 to i32
  call void @__asan_store2_noabort(i32 %342)
  store i16 %new_blk.1.lcssa, ptr %new_phyblock323, align 2
  %logblock324 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 22, i32 2
  %343 = ptrtoint ptr %logblock324 to i32
  call void @__asan_store2_noabort(i32 %343)
  store i16 %log_blk.0.lcssa, ptr %logblock324, align 2
  %pageoff325 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 22, i32 3
  %344 = ptrtoint ptr %pageoff325 to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 %end_page.2, ptr %pageoff325, align 2
  br label %if.end327

if.end327:                                        ; preds = %if.then320, %if.then313.if.end327_crit_edge, %while.end.if.end327_crit_edge
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %345 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 0, ptr %resid_len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end327, %if.then288, %if.then278, %if.then262, %if.end197, %if.then196, %if.then125, %if.end114, %if.then113, %if.end101, %if.then100, %if.then91, %if.then77, %if.then50, %if.then26, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then26 ], [ 1, %if.then50 ], [ 1, %if.then196 ], [ 1, %if.end197 ], [ 0, %if.end327 ], [ 1, %if.then262 ], [ 1, %if.then278 ], [ 1, %if.then288 ], [ 1, %if.then77 ], [ 1, %if.then91 ], [ 1, %if.then100 ], [ 1, %if.end101 ], [ 1, %if.then113 ], [ 1, %if.end114 ], [ 1, %if.then125 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ms_free_l2p_tbl(ptr nocapture noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %segment = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 9
  %0 = ptrtoint ptr %segment to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %segment, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %segment_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 10
  %2 = ptrtoint ptr %segment_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %segment_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25 = icmp sgt i32 %3, 0
  br i1 %cmp25, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %segment to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %segment, align 4
  %arrayidx = getelementptr %struct.zone_entry, ptr %5, i32 %i.026
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @vfree(ptr noundef %7) #8
  %8 = ptrtoint ptr %segment to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %segment, align 4
  %arrayidx4 = getelementptr %struct.zone_entry, ptr %9, i32 %i.026
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx4, align 4
  %11 = load ptr, ptr %segment, align 4
  %free_table = getelementptr %struct.zone_entry, ptr %11, i32 %i.026, i32 1
  %12 = ptrtoint ptr %free_table to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %free_table, align 4
  tail call void @vfree(ptr noundef %13) #8
  %14 = ptrtoint ptr %segment to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %segment, align 4
  %free_table10 = getelementptr %struct.zone_entry, ptr %15, i32 %i.026, i32 1
  %16 = ptrtoint ptr %free_table10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %free_table10, align 4
  %inc = add nuw nsw i32 %i.026, 1
  %17 = ptrtoint ptr %segment_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %segment_cnt, align 4
  %cmp = icmp slt i32 %inc, %18
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %19 = ptrtoint ptr %segment to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %segment, align 4
  tail call void @vfree(ptr noundef %20) #8
  %21 = ptrtoint ptr %segment to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %segment, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mg_set_leaf_id(ptr noundef %srb, ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  %buf1 = alloca [32 x i8], align 1
  %buf2 = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf1) #8
  %4 = getelementptr inbounds [32 x i8], ptr %buf1, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf2) #8
  %5 = getelementptr inbounds [12 x i8], ptr %buf2, i32 0, i32 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %6 = call ptr @memset(ptr %buf2, i32 255, i32 12)
  %7 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %8)
  %cmp = icmp ult i32 %8, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 6) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @ms_cleanup_work(ptr noundef %chip)
  %call.i = tail call i32 @select_card(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %ms_clock.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 24
  %9 = ptrtoint ptr %ms_clock.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ms_clock.i, align 4
  %asic_code.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %11 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %10) #8
  br label %ms_switch_clock.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %10) #8
  br label %ms_switch_clock.exit

ms_switch_clock.exit:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval1.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i)
  %cmp4.not.i.not = icmp eq i32 %retval1.0.i.i, 0
  br i1 %cmp4.not.i.not, label %if.end8, label %ms_switch_clock.exit.cleanup_crit_edge

ms_switch_clock.exit.cleanup_crit_edge:           ; preds = %ms_switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %ms_switch_clock.exit
  %call9 = tail call fastcc i32 @mg_send_ex_cmd(ptr noundef %chip, i8 noundef zeroext 65, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 11) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %13 = call ptr @memset(ptr %buf1, i32 0, i32 32)
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 4
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 12)
  call void @rtsx_stor_get_xfer_buf(ptr noundef nonnull %buf2, i32 noundef %16, ptr noundef %srb) #8
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %5, align 1
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %4, align 1
  %call23 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 12, i8 noundef zeroext 32, i8 noundef zeroext -128, ptr noundef nonnull %buf1, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24.not = icmp eq i32 %call23, 0
  br i1 %cmp24.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 11) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %val.i, align 1, !annotation !168
  %call.i58 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -701, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %cmp.not.i59 = icmp eq i32 %call.i58, 0
  br i1 %cmp.not.i59, label %if.end.i60, label %if.end27.check_ms_err.exit.thread_crit_edge

if.end27.check_ms_err.exit.thread_crit_edge:      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

if.end.i60:                                       ; preds = %if.end27
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %val.i, align 1
  %23 = and i8 %22, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i60.check_ms_err.exit.thread_crit_edge

if.end.i60.check_ms_err.exit.thread_crit_edge:    ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

if.end3.i:                                        ; preds = %if.end.i60
  %call4.i = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -702, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp5.not.i, label %check_ms_err.exit, label %if.end3.i.check_ms_err.exit.thread_crit_edge

if.end3.i.check_ms_err.exit.thread_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

check_ms_err.exit.thread:                         ; preds = %if.end3.i.check_ms_err.exit.thread_crit_edge, %if.end.i60.check_ms_err.exit.thread_crit_edge, %if.end27.check_ms_err.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  br label %if.then29

check_ms_err.exit:                                ; preds = %if.end3.i
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %val.i, align 1
  %26 = and i8 %25, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool11.not.i.not = icmp eq i8 %26, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  br i1 %tobool11.not.i.not, label %check_ms_err.exit.cleanup_crit_edge, label %check_ms_err.exit.if.then29_crit_edge

check_ms_err.exit.if.then29_crit_edge:            ; preds = %check_ms_err.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

check_ms_err.exit.cleanup_crit_edge:              ; preds = %check_ms_err.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then29:                                        ; preds = %check_ms_err.exit.if.then29_crit_edge, %check_ms_err.exit.thread
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 11) #8
  %call.i63 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %check_ms_err.exit.cleanup_crit_edge, %if.then26, %if.then12, %ms_switch_clock.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then12 ], [ 1, %if.then26 ], [ 1, %if.then29 ], [ 1, %ms_switch_clock.exit.cleanup_crit_edge ], [ 0, %check_ms_err.exit.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf1) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ms_cleanup_work(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  %0 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ms_card1, align 4
  %2 = and i16 %1, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %2)
  %cmp = icmp eq i16 %2, 1
  br i1 %cmp, label %if.then, label %land.lhs.true27

if.then:                                          ; preds = %entry
  %seq_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 17
  %3 = ptrtoint ptr %seq_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %seq_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then.if.end9_crit_edge, label %do.body

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_cleanup_work.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_cleanup_work, %if.then7)) #8
          to label %do.end [label %if.then7], !srcloc !167

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_cleanup_work.__UNIQUE_ID_ddebug346, ptr noundef %dev.i, ptr noundef nonnull @.str.5) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  tail call void @mspro_stop_seq_mode(ptr noundef %chip)
  %cleanup_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 23
  %9 = ptrtoint ptr %cleanup_counter to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cleanup_counter, align 4
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.then.if.end9_crit_edge
  %10 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ms_card1, align 4
  %12 = and i16 %11, 1279
  call void @__sanitizer_cov_trace_const_cmp2(i16 1025, i16 %12)
  %.not = icmp eq i16 %12, 1025
  br i1 %.not, label %if.then19, label %if.end9.if.end51_crit_edge

if.end9.if.end51_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then19:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -704, i8 noundef zeroext 4, i8 noundef zeroext 0) #8
  br label %if.end51

land.lhs.true27:                                  ; preds = %entry
  %delay_write_flag = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 22, i32 4
  %13 = ptrtoint ptr %delay_write_flag to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %delay_write_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool29.not = icmp eq i8 %14, 0
  br i1 %tobool29.not, label %land.lhs.true27.if.end51_crit_edge, label %do.body31

land.lhs.true27.if.end51_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.body31:                                        ; preds = %land.lhs.true27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_cleanup_work.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_cleanup_work, %if.then43)) #8
          to label %do.end47 [label %if.then43], !srcloc !167

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %dev.i67 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_cleanup_work.__UNIQUE_ID_ddebug347, ptr noundef %dev.i67, ptr noundef nonnull @.str.6) #8
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %do.body31
  %call48 = tail call i32 @ms_delay_write(ptr noundef %chip)
  %cleanup_counter49 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 23
  %19 = ptrtoint ptr %cleanup_counter49 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %cleanup_counter49, align 4
  br label %if.end51

if.end51:                                         ; preds = %do.end47, %land.lhs.true27.if.end51_crit_edge, %if.then19, %if.end9.if.end51_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mg_send_ex_cmd(ptr noundef %chip, i8 noundef zeroext %cmd, i8 noundef zeroext %entry_num) unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  %data = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #8
  %0 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 6
  %2 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 7
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %cmd, ptr %data, align 1
  %4 = call ptr @memset(ptr %0, i32 0, i32 5)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %entry_num, ptr %1, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %2, align 1
  %call = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 9, i8 noundef zeroext 7, i8 noundef zeroext -128, ptr noundef nonnull %data, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp eq i32 %call, 0
  br i1 %cmp9, label %entry.if.end12_crit_edge, label %for.inc

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc:                                          ; preds = %entry
  %call.1 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 9, i8 noundef zeroext 7, i8 noundef zeroext -128, ptr noundef nonnull %data, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp9.1 = icmp eq i32 %call.1, 0
  br i1 %cmp9.1, label %for.inc.if.end12_crit_edge, label %for.inc.1

for.inc.if.end12_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc.1:                                        ; preds = %for.inc
  %call.2 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 9, i8 noundef zeroext 7, i8 noundef zeroext -128, ptr noundef nonnull %data, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp9.2 = icmp eq i32 %call.2, 0
  br i1 %cmp9.2, label %for.inc.1.if.end12_crit_edge, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.1.if.end12_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end12:                                         ; preds = %for.inc.1.if.end12_crit_edge, %for.inc.if.end12_crit_edge, %entry.if.end12_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %val.i, align 1, !annotation !168
  %call.i = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -701, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end12.check_ms_err.exit.thread_crit_edge

if.end12.check_ms_err.exit.thread_crit_edge:      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

if.end.i:                                         ; preds = %if.end12
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val.i, align 1
  %10 = and i8 %9, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.check_ms_err.exit.thread_crit_edge

if.end.i.check_ms_err.exit.thread_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -702, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp5.not.i, label %check_ms_err.exit, label %if.end3.i.check_ms_err.exit.thread_crit_edge

if.end3.i.check_ms_err.exit.thread_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

check_ms_err.exit.thread:                         ; preds = %if.end3.i.check_ms_err.exit.thread_crit_edge, %if.end.i.check_ms_err.exit.thread_crit_edge, %if.end12.check_ms_err.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  br label %if.then14

check_ms_err.exit:                                ; preds = %if.end3.i
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val.i, align 1
  %13 = and i8 %12, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not.i.not = icmp eq i8 %13, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  br i1 %tobool11.not.i.not, label %check_ms_err.exit.cleanup_crit_edge, label %check_ms_err.exit.if.then14_crit_edge

check_ms_err.exit.if.then14_crit_edge:            ; preds = %check_ms_err.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

check_ms_err.exit.cleanup_crit_edge:              ; preds = %check_ms_err.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then14:                                        ; preds = %check_ms_err.exit.if.then14_crit_edge, %check_ms_err.exit.thread
  %call.i22 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %check_ms_err.exit.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then14 ], [ 0, %check_ms_err.exit.cleanup_crit_edge ], [ 1, %for.inc.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_stor_get_xfer_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_ms_err(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !168
  %call = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -701, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  %3 = and i8 %2, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -702, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val, align 1
  %6 = and i8 %5, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool11.not = icmp ne i8 %6, 0
  %. = zext i1 %tobool11.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end3.cleanup_crit_edge ], [ %., %if.end8 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mg_get_local_EKB(ptr noundef %srb, ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void @ms_cleanup_work(ptr noundef %chip)
  %call.i = tail call i32 @select_card(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %ms_clock.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 24
  %4 = ptrtoint ptr %ms_clock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ms_clock.i, align 4
  %asic_code.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %6 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %5) #8
  br label %ms_switch_clock.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %5) #8
  br label %ms_switch_clock.exit

ms_switch_clock.exit:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval1.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i)
  %cmp4.not.i.not = icmp eq i32 %retval1.0.i.i, 0
  br i1 %cmp4.not.i.not, label %if.end, label %ms_switch_clock.exit.cleanup_crit_edge

ms_switch_clock.exit.cleanup_crit_edge:           ; preds = %ms_switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ms_switch_clock.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 1540) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %call7.i, align 8
  %arrayidx7 = getelementptr i8, ptr %call7.i, i32 1
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 26, ptr %arrayidx7, align 1
  %arrayidx8 = getelementptr i8, ptr %call7.i, i32 2
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx8, align 2
  %arrayidx9 = getelementptr i8, ptr %call7.i, i32 3
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx9, align 1
  %call10 = tail call fastcc i32 @mg_send_ex_cmd(ptr noundef %chip, i8 noundef zeroext 66, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 12) #8
  br label %free_buffer

if.end14:                                         ; preds = %if.end6
  %add.ptr = getelementptr i8, ptr %call7.i, i32 4
  %call15 = tail call fastcc i32 @ms_transfer_data(ptr noundef %chip, i8 noundef zeroext 8, i8 noundef zeroext 2, i16 noundef zeroext 3, i1 noundef zeroext false, i32 noundef 0, ptr noundef %add.ptr, i32 noundef 1536)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 12) #8
  %call.i55 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  br label %free_buffer

if.end19:                                         ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %val.i, align 1, !annotation !168
  %call.i56 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -701, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %cmp.not.i57 = icmp eq i32 %call.i56, 0
  br i1 %cmp.not.i57, label %if.end.i58, label %if.end19.check_ms_err.exit.thread_crit_edge

if.end19.check_ms_err.exit.thread_crit_edge:      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

if.end.i58:                                       ; preds = %if.end19
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val.i, align 1
  %16 = and i8 %15, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i58.check_ms_err.exit.thread_crit_edge

if.end.i58.check_ms_err.exit.thread_crit_edge:    ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

if.end3.i:                                        ; preds = %if.end.i58
  %call4.i = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -702, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp5.not.i, label %check_ms_err.exit, label %if.end3.i.check_ms_err.exit.thread_crit_edge

if.end3.i.check_ms_err.exit.thread_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

check_ms_err.exit.thread:                         ; preds = %if.end3.i.check_ms_err.exit.thread_crit_edge, %if.end.i58.check_ms_err.exit.thread_crit_edge, %if.end19.check_ms_err.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  br label %if.then22

check_ms_err.exit:                                ; preds = %if.end3.i
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %val.i, align 1
  %19 = and i8 %18, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool11.not.i.not = icmp eq i8 %19, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  br i1 %tobool11.not.i.not, label %if.end23, label %check_ms_err.exit.if.then22_crit_edge

check_ms_err.exit.if.then22_crit_edge:            ; preds = %check_ms_err.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

if.then22:                                        ; preds = %check_ms_err.exit.if.then22_crit_edge, %check_ms_err.exit.thread
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 12) #8
  %call.i61 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  br label %free_buffer

if.end23:                                         ; preds = %check_ms_err.exit
  call void @__sanitizer_cov_trace_pc() #10
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %20 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i, align 4
  %22 = call i32 @llvm.smin.i32(i32 %21, i32 1052)
  call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %call7.i, i32 noundef %22, ptr noundef %srb) #8
  br label %free_buffer

free_buffer:                                      ; preds = %if.end23, %if.then22, %if.then18, %if.then13
  %retval1.0 = phi i32 [ %call10, %if.then13 ], [ %call15, %if.then18 ], [ 1, %if.then22 ], [ 0, %if.end23 ]
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %free_buffer, %if.end.cleanup_crit_edge, %ms_switch_clock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %free_buffer ], [ 1, %ms_switch_clock.exit.cleanup_crit_edge ], [ 10, %if.end.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_transfer_data(ptr noundef %chip, i8 noundef zeroext %trans_mode, i8 noundef zeroext %tpc, i16 noundef zeroext %sec_cnt, i1 noundef zeroext %mode_2k, i32 noundef %use_sg, ptr noundef %buf, i32 noundef %buf_len) unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !168
  %tobool.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %tobool2.not = icmp eq i32 %buf_len, 0
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = zext i8 %trans_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %trans_mode, label %if.end.cleanup_crit_edge [
    i8 8, label %if.end.if.end11_crit_edge
    i8 12, label %if.then8
  ]

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %err_code.0 = phi i8 [ 2, %if.then8 ], [ 4, %if.end.if.end11_crit_edge ]
  %dir.0 = phi i32 [ 1, %if.then8 ], [ 2, %if.end.if.end11_crit_edge ]
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -703, i8 noundef zeroext -1, i8 noundef zeroext %tpc) #8
  %conv12 = zext i16 %sec_cnt to i32
  %3 = lshr i16 %sec_cnt, 8
  %conv13 = trunc i16 %3 to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -697, i8 noundef zeroext -1, i8 noundef zeroext %conv13) #8
  %conv14 = trunc i16 %sec_cnt to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -698, i8 noundef zeroext -1, i8 noundef zeroext %conv14) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -702, i8 noundef zeroext -1, i8 noundef zeroext -128) #8
  %.2 = select i1 %mode_2k, i8 4, i8 0
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -704, i8 noundef zeroext 4, i8 noundef zeroext %.2) #8
  %mul = shl nuw nsw i32 %conv12, 9
  tail call void @trans_dma_enable(i32 noundef %dir.0, ptr noundef %chip, i32 noundef %mul, i8 noundef zeroext 32) #8
  %4 = or i8 %trans_mode, -128
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -701, i8 noundef zeroext -1, i8 noundef zeroext %4) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -701, i8 noundef zeroext 64, i8 noundef zeroext 64) #8
  tail call void @rtsx_send_cmd_no_wait(ptr noundef %chip) #8
  %mspro_timeout = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 121
  %5 = ptrtoint ptr %mspro_timeout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mspro_timeout, align 4
  %call = tail call i32 @rtsx_transfer_data(ptr noundef %chip, i8 noundef zeroext 8, ptr noundef nonnull %buf, i32 noundef %buf_len, i32 noundef %use_sg, i32 noundef %dir.0, i32 noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp22 = icmp slt i32 %call, 0
  br i1 %cmp22, label %if.then24, label %if.end30

if.then24:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 8
  %7 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %err_code.0, ptr %err_code2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call)
  %cmp25 = icmp eq i32 %call, -110
  %. = select i1 %cmp25, i32 2, i32 1
  br label %cleanup

if.end30:                                         ; preds = %if.end11
  %call31 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -702, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val, align 1
  %10 = and i8 %9, 58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool36.not = icmp ne i8 %10, 0
  %.1 = zext i1 %tobool36.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end30.cleanup_crit_edge, %if.then24, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.then24 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ], [ %.1, %if.end34 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_stor_set_xfer_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mg_chg(ptr noundef %srb, ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  %buf = alloca [32 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %4 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 4
  %5 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 8
  %6 = call ptr @memset(ptr %buf, i32 255, i32 32)
  tail call void @ms_cleanup_work(ptr noundef %chip)
  %call.i = tail call i32 @select_card(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %ms_clock.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 24
  %7 = ptrtoint ptr %ms_clock.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ms_clock.i, align 4
  %asic_code.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %9 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %8) #8
  br label %ms_switch_clock.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %8) #8
  br label %ms_switch_clock.exit

ms_switch_clock.exit:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval1.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i)
  %cmp4.not.i.not = icmp eq i32 %retval1.0.i.i, 0
  br i1 %cmp4.not.i.not, label %if.end, label %ms_switch_clock.exit.cleanup_crit_edge

ms_switch_clock.exit.cleanup_crit_edge:           ; preds = %ms_switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ms_switch_clock.exit
  %call5 = tail call fastcc i32 @mg_send_ex_cmd(ptr noundef %chip, i8 noundef zeroext 64, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 13) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 3, i8 noundef zeroext 32, i8 noundef zeroext -128, ptr noundef nonnull %buf, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 13) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %val.i, align 1, !annotation !168
  %call.i101 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -701, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %cmp.not.i102 = icmp eq i32 %call.i101, 0
  br i1 %cmp.not.i102, label %if.end.i103, label %if.end14.check_ms_err.exit.thread_crit_edge

if.end14.check_ms_err.exit.thread_crit_edge:      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

if.end.i103:                                      ; preds = %if.end14
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val.i, align 1
  %14 = and i8 %13, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i103.check_ms_err.exit.thread_crit_edge

if.end.i103.check_ms_err.exit.thread_crit_edge:   ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

if.end3.i:                                        ; preds = %if.end.i103
  %call4.i = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -702, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp5.not.i, label %check_ms_err.exit, label %if.end3.i.check_ms_err.exit.thread_crit_edge

if.end3.i.check_ms_err.exit.thread_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

check_ms_err.exit.thread:                         ; preds = %if.end3.i.check_ms_err.exit.thread_crit_edge, %if.end.i103.check_ms_err.exit.thread_crit_edge, %if.end14.check_ms_err.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  br label %if.then16

check_ms_err.exit:                                ; preds = %if.end3.i
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %val.i, align 1
  %17 = and i8 %16, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool11.not.i.not = icmp eq i8 %17, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  br i1 %tobool11.not.i.not, label %if.end17, label %check_ms_err.exit.if.then16_crit_edge

check_ms_err.exit.if.then16_crit_edge:            ; preds = %check_ms_err.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.then16:                                        ; preds = %check_ms_err.exit.if.then16_crit_edge, %check_ms_err.exit.thread
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 13) #8
  %call.i106 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  br label %cleanup

if.end17:                                         ; preds = %check_ms_err.exit
  %magic_gate_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 25
  %18 = call ptr @memcpy(ptr %magic_gate_id, ptr %buf, i32 16)
  %call20 = call fastcc i32 @ms_poll_int(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 13) #8
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %call25 = call fastcc i32 @mg_send_ex_cmd(ptr noundef %chip, i8 noundef zeroext 67, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26.not = icmp eq i32 %call25, 0
  br i1 %cmp26.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 13) #8
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.i, align 4
  %21 = call i32 @llvm.smin.i32(i32 %20, i32 12)
  call void @rtsx_stor_get_xfer_buf(ptr noundef nonnull %buf, i32 noundef %21, ptr noundef %srb) #8
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %4, align 4
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %buf, align 8
  %25 = call ptr @memset(ptr %5, i32 0, i32 24)
  %call47 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 12, i8 noundef zeroext 32, i8 noundef zeroext -128, ptr noundef nonnull %buf, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48.not = icmp eq i32 %call47, 0
  br i1 %cmp48.not, label %if.end51, label %if.then50

if.then50:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 13) #8
  br label %cleanup

if.end51:                                         ; preds = %if.end29
  %call52 = call fastcc i32 @check_ms_err(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 13) #8
  %call.i107 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  br label %cleanup

if.end55:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %mg_auth = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 27
  %26 = ptrtoint ptr %mg_auth to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %mg_auth, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then54, %if.then50, %if.then28, %if.then23, %if.then16, %if.then13, %if.then8, %ms_switch_clock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 1, %if.then13 ], [ 1, %if.then16 ], [ 1, %if.then23 ], [ 1, %if.then28 ], [ 1, %if.then50 ], [ 1, %if.then54 ], [ 0, %if.end55 ], [ 1, %ms_switch_clock.exit.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext %tpc, i8 noundef zeroext %cnt, i8 noundef zeroext %cfg, ptr noundef writeonly %data, i32 noundef %data_len) unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup90_crit_edge, label %if.end

entry.cleanup90_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup90

if.end:                                           ; preds = %entry
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -703, i8 noundef zeroext -1, i8 noundef zeroext %tpc) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -699, i8 noundef zeroext -1, i8 noundef zeroext %cnt) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -702, i8 noundef zeroext -1, i8 noundef zeroext %cfg) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -701, i8 noundef zeroext -1, i8 noundef zeroext -128) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -701, i8 noundef zeroext 64, i8 noundef zeroext 64) #8
  %sub = add i32 %data_len, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp142 = icmp sgt i32 %sub, 0
  br i1 %cmp142, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0143 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %1 = trunc i32 %i.0143 to i16
  %conv = add i16 %1, -1536
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext %conv, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %inc = add nuw nsw i32 %i.0143, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %2 = and i32 %data_len, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3.not = icmp eq i32 %2, 0
  %3 = trunc i32 %data_len to i16
  %. = select i1 %tobool3.not, i16 -1537, i16 -1536
  %conv9 = add i16 %., %3
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext %conv9, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %call = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 8, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp11 = icmp slt i32 %call, 0
  br i1 %cmp11, label %if.then13, label %if.end48

if.then13:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %val, align 1
  %call14 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -702, ptr noundef nonnull %val) #8
  %call.i = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  %5 = and i8 %tpc, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool16.not = icmp eq i8 %5, 0
  br i1 %tobool16.not, label %if.then17, label %if.else24

if.then17:                                        ; preds = %if.then13
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val, align 1
  %8 = and i8 %7, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool20.not = icmp eq i8 %8, 0
  br i1 %tobool20.not, label %if.then17.if.end40_crit_edge, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17.if.end40_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.else24:                                        ; preds = %if.then13
  %9 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ms_card1, align 4
  %11 = and i16 %10, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %11)
  %cmp27 = icmp eq i16 %11, 1
  br i1 %cmp27, label %land.lhs.true, label %if.else24.if.end40_crit_edge

if.else24.if.end40_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

land.lhs.true:                                    ; preds = %if.else24
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val, align 1
  %conv29 = zext i8 %13 to i32
  %and30 = and i32 %conv29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp ne i32 %and30, 0
  %and34 = and i32 %conv29, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %or.cond = or i1 %tobool31.not, %tobool35.not
  br i1 %or.cond, label %land.lhs.true.if.end40_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.end40:                                         ; preds = %land.lhs.true.if.end40_crit_edge, %if.else24.if.end40_crit_edge, %if.then17.if.end40_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %land.lhs.true.cleanup_crit_edge, %if.then17.cleanup_crit_edge
  %.sink150 = phi i8 [ 64, %if.end40 ], [ -128, %if.then17.cleanup_crit_edge ], [ 8, %land.lhs.true.cleanup_crit_edge ]
  %err_code2.i139 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 8
  %14 = ptrtoint ptr %err_code2.i139 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink150, ptr %err_code2.i139, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  br label %cleanup90

if.end48:                                         ; preds = %for.end
  %host_cmds_ptr.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 4
  %15 = ptrtoint ptr %host_cmds_ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host_cmds_ptr.i, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len)
  %cmp51144 = icmp sgt i32 %data_len, 0
  br i1 %cmp51144, label %if.end48.for.body53_crit_edge, label %if.end48.cleanup90_crit_edge

if.end48.cleanup90_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup90

if.end48.for.body53_crit_edge:                    ; preds = %if.end48
  br label %for.body53

for.body53:                                       ; preds = %for.body53.for.body53_crit_edge, %if.end48.for.body53_crit_edge
  %i.1145 = phi i32 [ %inc56, %for.body53.for.body53_crit_edge ], [ 0, %if.end48.for.body53_crit_edge ]
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 %i.1145
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %arrayidx54 = getelementptr i8, ptr %data, i32 %i.1145
  %19 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx54, align 1
  %inc56 = add nuw nsw i32 %i.1145, 1
  %exitcond146.not = icmp eq i32 %inc56, %data_len
  br i1 %exitcond146.not, label %for.end57, label %for.body53.for.body53_crit_edge

for.body53.for.body53_crit_edge:                  ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body53

for.end57:                                        ; preds = %for.body53
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %tpc)
  %cmp59 = icmp eq i8 %tpc, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %data_len)
  %cmp62 = icmp eq i32 %data_len, 8
  %or.cond133 = and i1 %cmp59, %cmp62
  br i1 %or.cond133, label %do.body, label %for.end57.cleanup90_crit_edge

for.end57.cleanup90_crit_edge:                    ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup90

do.body:                                          ; preds = %for.end57
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_read_bytes.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_read_bytes, %if.then69)) #8
          to label %do.body72 [label %if.then69], !srcloc !167

if.then69:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_read_bytes.__UNIQUE_ID_ddebug289, ptr noundef %dev.i, ptr noundef nonnull @.str.59) #8
  br label %do.body72

do.body72:                                        ; preds = %if.then69, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_read_bytes.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_read_bytes, %if.then84)) #8
          to label %cleanup90 [label %if.then84], !srcloc !167

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  %conv85 = zext i8 %cnt to i32
  tail call void @print_hex_dump(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.60, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr, i32 noundef %conv85, i1 noundef zeroext true) #8
  br label %cleanup90

cleanup90:                                        ; preds = %if.then84, %do.body72, %for.end57.cleanup90_crit_edge, %if.end48.cleanup90_crit_edge, %cleanup, %entry.cleanup90_crit_edge
  %retval.1 = phi i32 [ 1, %cleanup ], [ 10, %entry.cleanup90_crit_edge ], [ 0, %if.then84 ], [ 0, %for.end57.cleanup90_crit_edge ], [ 0, %do.body72 ], [ 0, %if.end48.cleanup90_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_poll_int(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -702, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  %call = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 8, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %host_cmds_ptr.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 4
  %1 = ptrtoint ptr %host_cmds_ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %host_cmds_ptr.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %5 = lshr i8 %4, 1
  %.lobit = and i8 %5, 1
  %6 = zext i8 %.lobit to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mg_get_rsp_chg(ptr noundef %srb, ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  %buf1 = alloca [32 x i8], align 1
  %buf2 = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf1) #8
  %4 = call ptr @memset(ptr %buf1, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %buf2) #8
  tail call void @ms_cleanup_work(ptr noundef %chip)
  %call.i = tail call i32 @select_card(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %ms_clock.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 24
  %5 = ptrtoint ptr %ms_clock.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ms_clock.i, align 4
  %asic_code.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %7 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %6) #8
  br label %ms_switch_clock.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %6) #8
  br label %ms_switch_clock.exit

ms_switch_clock.exit:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval1.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i)
  %cmp4.not.i.not = icmp eq i32 %retval1.0.i.i, 0
  br i1 %cmp4.not.i.not, label %if.end, label %ms_switch_clock.exit.cleanup_crit_edge

ms_switch_clock.exit.cleanup_crit_edge:           ; preds = %ms_switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ms_switch_clock.exit
  %call5 = tail call fastcc i32 @mg_send_ex_cmd(ptr noundef %chip, i8 noundef zeroext 68, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 12) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 3, i8 noundef zeroext 32, i8 noundef zeroext -128, ptr noundef nonnull %buf1, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 12) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %val.i, align 1, !annotation !168
  %call.i61 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -701, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp.not.i62 = icmp eq i32 %call.i61, 0
  br i1 %cmp.not.i62, label %if.end.i63, label %if.end14.check_ms_err.exit.thread_crit_edge

if.end14.check_ms_err.exit.thread_crit_edge:      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

if.end.i63:                                       ; preds = %if.end14
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val.i, align 1
  %12 = and i8 %11, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i63.check_ms_err.exit.thread_crit_edge

if.end.i63.check_ms_err.exit.thread_crit_edge:    ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

if.end3.i:                                        ; preds = %if.end.i63
  %call4.i = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -702, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp5.not.i, label %check_ms_err.exit, label %if.end3.i.check_ms_err.exit.thread_crit_edge

if.end3.i.check_ms_err.exit.thread_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

check_ms_err.exit.thread:                         ; preds = %if.end3.i.check_ms_err.exit.thread_crit_edge, %if.end.i63.check_ms_err.exit.thread_crit_edge, %if.end14.check_ms_err.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  br label %if.then16

check_ms_err.exit:                                ; preds = %if.end3.i
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %val.i, align 1
  %15 = and i8 %14, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not.i.not = icmp eq i8 %15, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  br i1 %tobool11.not.i.not, label %if.end17, label %check_ms_err.exit.if.then16_crit_edge

check_ms_err.exit.if.then16_crit_edge:            ; preds = %check_ms_err.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.then16:                                        ; preds = %check_ms_err.exit.if.then16_crit_edge, %check_ms_err.exit.thread
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 12) #8
  %call.i66 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  br label %cleanup

if.end17:                                         ; preds = %check_ms_err.exit
  %16 = ptrtoint ptr %buf2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %buf2, align 1
  %arrayidx18 = getelementptr inbounds [36 x i8], ptr %buf2, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 34, ptr %arrayidx18, align 1
  %arrayidx19 = getelementptr inbounds [36 x i8], ptr %buf2, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx19, align 1
  %arrayidx20 = getelementptr inbounds [36 x i8], ptr %buf2, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx20, align 1
  %add.ptr = getelementptr inbounds i8, ptr %buf2, i32 4
  %magic_gate_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 25
  %20 = call ptr @memcpy(ptr %add.ptr, ptr %magic_gate_id, i32 16)
  %add.ptr24 = getelementptr inbounds i8, ptr %buf2, i32 20
  %21 = call ptr @memcpy(ptr %add.ptr24, ptr %buf1, i32 16)
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %22 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length.i, align 4
  %24 = call i32 @llvm.smin.i32(i32 %23, i32 36)
  call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %buf2, i32 noundef %24, ptr noundef %srb) #8
  %ci.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %25 = ptrtoint ptr %ci.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %ci.i, align 4
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -702, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  %call.i67 = call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 8, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp.not.i68 = icmp eq i32 %call.i67, 0
  br i1 %cmp.not.i68, label %ms_poll_int.exit, label %if.end17.if.then33_crit_edge

if.end17.if.then33_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

ms_poll_int.exit:                                 ; preds = %if.end17
  %host_cmds_ptr.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 4
  %26 = ptrtoint ptr %host_cmds_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host_cmds_ptr.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  %30 = and i8 %29, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp31.not = icmp eq i8 %30, 0
  br i1 %cmp31.not, label %ms_poll_int.exit.cleanup_crit_edge, label %ms_poll_int.exit.if.then33_crit_edge

ms_poll_int.exit.if.then33_crit_edge:             ; preds = %ms_poll_int.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

ms_poll_int.exit.cleanup_crit_edge:               ; preds = %ms_poll_int.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then33:                                        ; preds = %ms_poll_int.exit.if.then33_crit_edge, %if.end17.if.then33_crit_edge
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 12) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %ms_poll_int.exit.cleanup_crit_edge, %if.then16, %if.then13, %if.then8, %ms_switch_clock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 1, %if.then13 ], [ 1, %if.then16 ], [ 1, %if.then33 ], [ 1, %ms_switch_clock.exit.cleanup_crit_edge ], [ 0, %ms_poll_int.exit.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %buf2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf1) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mg_rsp(ptr noundef %srb, ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  %buf = alloca [32 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %4 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 4
  %5 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 8
  %6 = call ptr @memset(ptr %buf, i32 255, i32 32)
  tail call void @ms_cleanup_work(ptr noundef %chip)
  %call.i = tail call i32 @select_card(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %ms_clock.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 24
  %7 = ptrtoint ptr %ms_clock.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ms_clock.i, align 4
  %asic_code.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %9 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %8) #8
  br label %ms_switch_clock.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %8) #8
  br label %ms_switch_clock.exit

ms_switch_clock.exit:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval1.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i)
  %cmp4.not.i.not = icmp eq i32 %retval1.0.i.i, 0
  br i1 %cmp4.not.i.not, label %if.end, label %ms_switch_clock.exit.cleanup_crit_edge

ms_switch_clock.exit.cleanup_crit_edge:           ; preds = %ms_switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ms_switch_clock.exit
  %call5 = tail call fastcc i32 @mg_send_ex_cmd(ptr noundef %chip, i8 noundef zeroext 69, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 12) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length.i, align 4
  %13 = tail call i32 @llvm.smin.i32(i32 %12, i32 12)
  call void @rtsx_stor_get_xfer_buf(ptr noundef nonnull %buf, i32 noundef %13, ptr noundef %srb) #8
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %4, align 4
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %buf, align 8
  %17 = call ptr @memset(ptr %5, i32 0, i32 24)
  %call26 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 12, i8 noundef zeroext 32, i8 noundef zeroext -128, ptr noundef nonnull %buf, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27.not = icmp eq i32 %call26, 0
  br i1 %cmp27.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 12) #8
  br label %cleanup

if.end30:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %val.i, align 1, !annotation !168
  %call.i62 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -701, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp.not.i63 = icmp eq i32 %call.i62, 0
  br i1 %cmp.not.i63, label %if.end.i64, label %if.end30.check_ms_err.exit.thread_crit_edge

if.end30.check_ms_err.exit.thread_crit_edge:      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

if.end.i64:                                       ; preds = %if.end30
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %val.i, align 1
  %21 = and i8 %20, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i64.check_ms_err.exit.thread_crit_edge

if.end.i64.check_ms_err.exit.thread_crit_edge:    ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

if.end3.i:                                        ; preds = %if.end.i64
  %call4.i = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -702, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp5.not.i, label %check_ms_err.exit, label %if.end3.i.check_ms_err.exit.thread_crit_edge

if.end3.i.check_ms_err.exit.thread_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

check_ms_err.exit.thread:                         ; preds = %if.end3.i.check_ms_err.exit.thread_crit_edge, %if.end.i64.check_ms_err.exit.thread_crit_edge, %if.end30.check_ms_err.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  br label %if.then32

check_ms_err.exit:                                ; preds = %if.end3.i
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %val.i, align 1
  %24 = and i8 %23, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool11.not.i.not = icmp eq i8 %24, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  br i1 %tobool11.not.i.not, label %if.end33, label %check_ms_err.exit.if.then32_crit_edge

check_ms_err.exit.if.then32_crit_edge:            ; preds = %check_ms_err.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.then32:                                        ; preds = %check_ms_err.exit.if.then32_crit_edge, %check_ms_err.exit.thread
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 12) #8
  %call.i67 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  br label %cleanup

if.end33:                                         ; preds = %check_ms_err.exit
  call void @__sanitizer_cov_trace_pc() #10
  %mg_auth = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 27
  %25 = ptrtoint ptr %mg_auth to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %mg_auth, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then32, %if.then29, %if.then8, %ms_switch_clock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 1, %if.then29 ], [ 1, %if.then32 ], [ 0, %if.end33 ], [ 1, %ms_switch_clock.exit.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mg_get_ICV(ptr noundef %srb, ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void @ms_cleanup_work(ptr noundef %chip)
  %call.i = tail call i32 @select_card(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %ms_clock.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 24
  %4 = ptrtoint ptr %ms_clock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ms_clock.i, align 4
  %asic_code.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %6 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %5) #8
  br label %ms_switch_clock.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %5) #8
  br label %ms_switch_clock.exit

ms_switch_clock.exit:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval1.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i)
  %cmp4.not.i.not = icmp eq i32 %retval1.0.i.i, 0
  br i1 %cmp4.not.i.not, label %if.end, label %ms_switch_clock.exit.cleanup_crit_edge

ms_switch_clock.exit.cleanup_crit_edge:           ; preds = %ms_switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ms_switch_clock.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 1028) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %call7.i, align 8
  %arrayidx8 = getelementptr i8, ptr %call7.i, i32 1
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr i8, ptr %call7.i, i32 2
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx9, align 2
  %arrayidx10 = getelementptr i8, ptr %call7.i, i32 3
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx10, align 1
  %mg_entry_num = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 26
  %13 = ptrtoint ptr %mg_entry_num to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mg_entry_num, align 4
  %call11 = tail call fastcc i32 @mg_send_ex_cmd(ptr noundef %chip, i8 noundef zeroext 71, i8 noundef zeroext %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 7) #8
  br label %free_buffer

if.end15:                                         ; preds = %if.end7
  %add.ptr = getelementptr i8, ptr %call7.i, i32 4
  %call16 = tail call fastcc i32 @ms_transfer_data(ptr noundef %chip, i8 noundef zeroext 8, i8 noundef zeroext 2, i16 noundef zeroext 2, i1 noundef zeroext false, i32 noundef 0, ptr noundef %add.ptr, i32 noundef 1024)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 7) #8
  %call.i58 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  br label %free_buffer

if.end20:                                         ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %val.i, align 1, !annotation !168
  %call.i59 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -701, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %cmp.not.i60 = icmp eq i32 %call.i59, 0
  br i1 %cmp.not.i60, label %if.end.i61, label %if.end20.check_ms_err.exit.thread_crit_edge

if.end20.check_ms_err.exit.thread_crit_edge:      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

if.end.i61:                                       ; preds = %if.end20
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val.i, align 1
  %18 = and i8 %17, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i61.check_ms_err.exit.thread_crit_edge

if.end.i61.check_ms_err.exit.thread_crit_edge:    ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

if.end3.i:                                        ; preds = %if.end.i61
  %call4.i = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -702, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp5.not.i, label %check_ms_err.exit, label %if.end3.i.check_ms_err.exit.thread_crit_edge

if.end3.i.check_ms_err.exit.thread_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

check_ms_err.exit.thread:                         ; preds = %if.end3.i.check_ms_err.exit.thread_crit_edge, %if.end.i61.check_ms_err.exit.thread_crit_edge, %if.end20.check_ms_err.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  br label %if.then23

check_ms_err.exit:                                ; preds = %if.end3.i
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %val.i, align 1
  %21 = and i8 %20, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool11.not.i.not = icmp eq i8 %21, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  br i1 %tobool11.not.i.not, label %if.end24, label %check_ms_err.exit.if.then23_crit_edge

check_ms_err.exit.if.then23_crit_edge:            ; preds = %check_ms_err.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

if.then23:                                        ; preds = %check_ms_err.exit.if.then23_crit_edge, %check_ms_err.exit.thread
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 7) #8
  %call.i64 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  br label %free_buffer

if.end24:                                         ; preds = %check_ms_err.exit
  call void @__sanitizer_cov_trace_pc() #10
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %22 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length.i, align 4
  %24 = call i32 @llvm.smin.i32(i32 %23, i32 1028)
  call void @rtsx_stor_set_xfer_buf(ptr noundef nonnull %call7.i, i32 noundef %24, ptr noundef %srb) #8
  br label %free_buffer

free_buffer:                                      ; preds = %if.end24, %if.then23, %if.then19, %if.then14
  %retval2.0 = phi i32 [ %call11, %if.then14 ], [ %call16, %if.then19 ], [ 1, %if.then23 ], [ 0, %if.end24 ]
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %free_buffer, %if.end.cleanup_crit_edge, %ms_switch_clock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval2.0, %free_buffer ], [ 1, %ms_switch_clock.exit.cleanup_crit_edge ], [ 10, %if.end.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mg_set_ICV(ptr noundef %srb, ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void @ms_cleanup_work(ptr noundef %chip)
  %call.i = tail call i32 @select_card(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %ms_clock.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 24
  %4 = ptrtoint ptr %ms_clock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ms_clock.i, align 4
  %asic_code.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %6 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %5) #8
  br label %ms_switch_clock.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %5) #8
  br label %ms_switch_clock.exit

ms_switch_clock.exit:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval1.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i)
  %cmp4.not.i.not = icmp eq i32 %retval1.0.i.i, 0
  br i1 %cmp4.not.i.not, label %if.end, label %ms_switch_clock.exit.cleanup_crit_edge

ms_switch_clock.exit.cleanup_crit_edge:           ; preds = %ms_switch_clock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ms_switch_clock.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 1028) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length.i, align 4
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 1028)
  tail call void @rtsx_stor_get_xfer_buf(ptr noundef nonnull %call7.i, i32 noundef %11, ptr noundef %srb) #8
  %mg_entry_num = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 26
  %12 = ptrtoint ptr %mg_entry_num to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mg_entry_num, align 4
  %call11 = tail call fastcc i32 @mg_send_ex_cmd(ptr noundef %chip, i8 noundef zeroext 70, i8 noundef zeroext %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %for.cond.preheader, label %if.then14

for.cond.preheader:                               ; preds = %if.end7
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %add.ptr = getelementptr i8, ptr %call7.i, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 10737400) #8
  %15 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ci, align 4
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -703, i8 noundef zeroext -1, i8 noundef zeroext 13) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -702, i8 noundef zeroext -1, i8 noundef zeroext -128) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  call void @trans_dma_enable(i32 noundef 1, ptr noundef %chip, i32 noundef 512, i8 noundef zeroext 32) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -701, i8 noundef zeroext -1, i8 noundef zeroext -123) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -701, i8 noundef zeroext 64, i8 noundef zeroext 64) #8
  call void @rtsx_send_cmd_no_wait(ptr noundef %chip) #8
  %call29 = call i32 @rtsx_transfer_data(ptr noundef %chip, i8 noundef zeroext 8, ptr noundef %add.ptr, i32 noundef 512, i32 noundef 0, i32 noundef 1, i32 noundef 3000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %for.cond.preheader.if.then34_crit_edge, label %lor.lhs.false

for.cond.preheader.if.then34_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.then14:                                        ; preds = %if.end7
  %mg_auth = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 27
  %16 = ptrtoint ptr %mg_auth to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mg_auth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp15 = icmp eq i32 %17, 0
  br i1 %cmp15, label %if.then17, label %if.else23

if.then17:                                        ; preds = %if.then14
  %arrayidx = getelementptr i8, ptr %call7.i, i32 5
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %19)
  %cmp19.not = icmp ult i8 %19, 64
  br i1 %cmp19.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 11) #8
  br label %set_ICV_finish

if.else:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 14) #8
  br label %set_ICV_finish

if.else23:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 14) #8
  br label %set_ICV_finish

for.cond:                                         ; preds = %check_ms_err.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 10737400) #8
  %21 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %ci, align 4
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -703, i8 noundef zeroext -1, i8 noundef zeroext 13) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -702, i8 noundef zeroext -1, i8 noundef zeroext -128) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  call void @trans_dma_enable(i32 noundef 1, ptr noundef %chip, i32 noundef 512, i8 noundef zeroext 32) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -701, i8 noundef zeroext -1, i8 noundef zeroext -123) #8
  call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -701, i8 noundef zeroext 64, i8 noundef zeroext 64) #8
  call void @rtsx_send_cmd_no_wait(ptr noundef %chip) #8
  %add.ptr28.1 = getelementptr i8, ptr %call7.i, i32 516
  %call29.1 = call i32 @rtsx_transfer_data(ptr noundef %chip, i8 noundef zeroext 8, ptr noundef %add.ptr28.1, i32 noundef 512, i32 noundef 0, i32 noundef 1, i32 noundef 3000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.1)
  %cmp30.1 = icmp slt i32 %call29.1, 0
  br i1 %cmp30.1, label %for.cond.if.then34_crit_edge, label %lor.lhs.false.1

for.cond.if.then34_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

lor.lhs.false.1:                                  ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %val.i, align 1, !annotation !168
  %call.i96.1 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -701, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96.1)
  %cmp.not.i97.1 = icmp eq i32 %call.i96.1, 0
  br i1 %cmp.not.i97.1, label %if.end.i98.1, label %lor.lhs.false.1.check_ms_err.exit.thread_crit_edge

lor.lhs.false.1.check_ms_err.exit.thread_crit_edge: ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

if.end.i98.1:                                     ; preds = %lor.lhs.false.1
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %val.i, align 1
  %25 = and i8 %24, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.1 = icmp eq i8 %25, 0
  br i1 %tobool.not.i.1, label %if.end3.i.1, label %if.end.i98.1.check_ms_err.exit.thread_crit_edge

if.end.i98.1.check_ms_err.exit.thread_crit_edge:  ; preds = %if.end.i98.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

if.end3.i.1:                                      ; preds = %if.end.i98.1
  %call4.i.1 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -702, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.1)
  %cmp5.not.i.1 = icmp eq i32 %call4.i.1, 0
  br i1 %cmp5.not.i.1, label %check_ms_err.exit.1, label %if.end3.i.1.check_ms_err.exit.thread_crit_edge

if.end3.i.1.check_ms_err.exit.thread_crit_edge:   ; preds = %if.end3.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

check_ms_err.exit.1:                              ; preds = %if.end3.i.1
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %val.i, align 1
  %28 = and i8 %27, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool11.not.i.not.1 = icmp eq i8 %28, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  br i1 %tobool11.not.i.not.1, label %check_ms_err.exit.1.set_ICV_finish_crit_edge, label %check_ms_err.exit.1.if.then34_crit_edge

check_ms_err.exit.1.if.then34_crit_edge:          ; preds = %check_ms_err.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

check_ms_err.exit.1.set_ICV_finish_crit_edge:     ; preds = %check_ms_err.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_ICV_finish

lor.lhs.false:                                    ; preds = %for.cond.preheader
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %29 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %val.i, align 1, !annotation !168
  %call.i96 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -701, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %cmp.not.i97 = icmp eq i32 %call.i96, 0
  br i1 %cmp.not.i97, label %if.end.i98, label %lor.lhs.false.check_ms_err.exit.thread_crit_edge

lor.lhs.false.check_ms_err.exit.thread_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

if.end.i98:                                       ; preds = %lor.lhs.false
  %30 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %val.i, align 1
  %32 = and i8 %31, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i98.check_ms_err.exit.thread_crit_edge

if.end.i98.check_ms_err.exit.thread_crit_edge:    ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

if.end3.i:                                        ; preds = %if.end.i98
  %call4.i = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -702, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp5.not.i, label %check_ms_err.exit, label %if.end3.i.check_ms_err.exit.thread_crit_edge

if.end3.i.check_ms_err.exit.thread_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_ms_err.exit.thread

check_ms_err.exit.thread:                         ; preds = %if.end3.i.check_ms_err.exit.thread_crit_edge, %if.end.i98.check_ms_err.exit.thread_crit_edge, %lor.lhs.false.check_ms_err.exit.thread_crit_edge, %if.end3.i.1.check_ms_err.exit.thread_crit_edge, %if.end.i98.1.check_ms_err.exit.thread_crit_edge, %lor.lhs.false.1.check_ms_err.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  br label %if.then34

check_ms_err.exit:                                ; preds = %if.end3.i
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %val.i, align 1
  %35 = and i8 %34, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool11.not.i.not = icmp eq i8 %35, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  br i1 %tobool11.not.i.not, label %for.cond, label %check_ms_err.exit.if.then34_crit_edge

check_ms_err.exit.if.then34_crit_edge:            ; preds = %check_ms_err.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.then34:                                        ; preds = %check_ms_err.exit.if.then34_crit_edge, %check_ms_err.exit.thread, %check_ms_err.exit.1.if.then34_crit_edge, %for.cond.if.then34_crit_edge, %for.cond.preheader.if.then34_crit_edge
  %call.i101 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  %mg_auth35 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 27
  %36 = ptrtoint ptr %mg_auth35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mg_auth35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp36 = icmp eq i32 %37, 0
  br i1 %cmp36, label %if.then38, label %if.else47

if.then38:                                        ; preds = %if.then34
  %arrayidx39 = getelementptr i8, ptr %call7.i, i32 5
  %38 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %39)
  %cmp42.not = icmp ult i8 %39, 64
  br i1 %cmp42.not, label %if.else45, label %if.then44

if.then44:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 11) #8
  br label %set_ICV_finish

if.else45:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 14) #8
  br label %set_ICV_finish

if.else47:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  call void @set_sense_type(ptr noundef %chip, i32 noundef %conv, i32 noundef 14) #8
  br label %set_ICV_finish

set_ICV_finish:                                   ; preds = %if.else47, %if.else45, %if.then44, %check_ms_err.exit.1.set_ICV_finish_crit_edge, %if.else23, %if.else, %if.then21
  %retval2.1 = phi i32 [ %call11, %if.then21 ], [ %call11, %if.else ], [ %call11, %if.else23 ], [ 1, %if.then44 ], [ 1, %if.else45 ], [ 1, %if.else47 ], [ %call29.1, %check_ms_err.exit.1.set_ICV_finish_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %set_ICV_finish, %if.end.cleanup_crit_edge, %ms_switch_clock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval2.1, %set_ICV_finish ], [ 1, %ms_switch_clock.exit.cleanup_crit_edge ], [ 10, %if.end.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_add_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trans_dma_enable(i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_send_cmd_no_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_transfer_data(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ms_power_off_card3v3(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @disable_card_clock(ptr noundef %chip, i8 noundef zeroext 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %0 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %product_id.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %2 = ptrtoint ptr %product_id.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %product_id.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %3, label %if.then2.if.end11_crit_edge [
    i16 21000, label %if.then.i
    i16 21128, label %if.then28.i
  ]

if.then2.if.end11_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then.i:                                        ; preds = %if.then2
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -672, i8 noundef zeroext -1, i8 noundef zeroext 85) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %call4.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -671, i8 noundef zeroext -1, i8 noundef zeroext 85) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -670, i8 noundef zeroext -1, i8 noundef zeroext 75) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11.i:                                       ; preds = %if.end7.i
  %call12.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -669, i8 noundef zeroext -1, i8 noundef zeroext 85) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end11.i.cleanup_crit_edge

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.i:                                       ; preds = %if.end11.i
  %call16.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -668, i8 noundef zeroext -1, i8 noundef zeroext -76) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end15.i.cleanup_crit_edge

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19.i:                                       ; preds = %if.end15.i
  %call20.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -667, i8 noundef zeroext -1, i8 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.if.end11_crit_edge, label %if.end19.i.cleanup_crit_edge

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19.i.if.end11_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then28.i:                                      ; preds = %if.then2
  %baro_pkg.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 73
  %5 = ptrtoint ptr %baro_pkg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %baro_pkg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp29.i = icmp eq i32 %6, 0
  br i1 %cmp29.i, label %if.then31.i, label %if.then28.i.if.end11_crit_edge

if.then28.i.if.end11_crit_edge:                   ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then31.i:                                      ; preds = %if.then28.i
  %call32.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -672, i8 noundef zeroext -1, i8 noundef zeroext 85) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.then31.i.cleanup_crit_edge

if.then31.i.cleanup_crit_edge:                    ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35.i:                                       ; preds = %if.then31.i
  %call36.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -671, i8 noundef zeroext -1, i8 noundef zeroext 85) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %if.end35.i.cleanup_crit_edge

if.end35.i.cleanup_crit_edge:                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39.i:                                       ; preds = %if.end35.i
  %call40.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -670, i8 noundef zeroext -1, i8 noundef zeroext 75) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end43.i, label %if.end39.i.cleanup_crit_edge

if.end39.i.cleanup_crit_edge:                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43.i:                                       ; preds = %if.end39.i
  %call44.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -669, i8 noundef zeroext -1, i8 noundef zeroext 105) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end43.i.if.end11_crit_edge, label %if.end43.i.cleanup_crit_edge

if.end43.i.cleanup_crit_edge:                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43.i.if.end11_crit_edge:                    ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.else:                                          ; preds = %if.end
  %call7 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -995, i8 noundef zeroext 48, i8 noundef zeroext 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.else.if.end11_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %if.end43.i.if.end11_crit_edge, %if.then28.i.if.end11_crit_edge, %if.end19.i.if.end11_crit_edge, %if.then2.if.end11_crit_edge
  %call12 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -683, i8 noundef zeroext 8, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %ft2_fast_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 131
  %7 = ptrtoint ptr %ft2_fast_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ft2_fast_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool16.not = icmp eq i32 %8, 0
  br i1 %tobool16.not, label %if.then17, label %if.end15.if.end22_crit_edge

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then17:                                        ; preds = %if.end15
  %call18 = tail call i32 @card_power_off(ptr noundef %chip, i8 noundef zeroext 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.then17.if.end22_crit_edge, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22:                                         ; preds = %if.then17.if.end22_crit_edge, %if.end15.if.end22_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then17.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end43.i.cleanup_crit_edge, %if.end39.i.cleanup_crit_edge, %if.end35.i.cleanup_crit_edge, %if.then31.i.cleanup_crit_edge, %if.end19.i.cleanup_crit_edge, %if.end15.i.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ 1, %entry.cleanup_crit_edge ], [ %call7, %if.else.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ 1, %if.then17.cleanup_crit_edge ], [ 1, %if.then.i.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ], [ 1, %if.end7.i.cleanup_crit_edge ], [ 1, %if.end11.i.cleanup_crit_edge ], [ 1, %if.end15.i.cleanup_crit_edge ], [ 1, %if.end19.i.cleanup_crit_edge ], [ 1, %if.then31.i.cleanup_crit_edge ], [ 1, %if.end35.i.cleanup_crit_edge ], [ 1, %if.end39.i.cleanup_crit_edge ], [ 1, %if.end43.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @disable_card_clock(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @card_power_off(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @release_ms_card(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %delay_write_flag = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 22, i32 4
  %0 = ptrtoint ptr %delay_write_flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %delay_write_flag, align 1
  %pro_under_formatting = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 11
  %1 = ptrtoint ptr %pro_under_formatting to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %pro_under_formatting, align 4
  %card_ready = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 21
  %2 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %card_ready, align 2
  %4 = and i8 %3, -9
  store i8 %4, ptr %card_ready, align 2
  %card_fail = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 22
  %5 = ptrtoint ptr %card_fail to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %card_fail, align 1
  %7 = and i8 %6, -9
  store i8 %7, ptr %card_fail, align 1
  %card_wp = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 24
  %8 = ptrtoint ptr %card_wp to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %card_wp, align 1
  %10 = and i8 %9, -9
  store i8 %10, ptr %card_wp, align 1
  %segment.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 9
  %11 = ptrtoint ptr %segment.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %segment.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %entry.ms_free_l2p_tbl.exit_crit_edge, label %for.cond.preheader.i

entry.ms_free_l2p_tbl.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_free_l2p_tbl.exit

for.cond.preheader.i:                             ; preds = %entry
  %segment_cnt.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 10
  %13 = ptrtoint ptr %segment_cnt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %segment_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp25.i = icmp sgt i32 %14, 0
  br i1 %cmp25.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %segment.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %segment.i, align 4
  %arrayidx.i = getelementptr %struct.zone_entry, ptr %16, i32 %i.026.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  tail call void @vfree(ptr noundef %18) #8
  %19 = ptrtoint ptr %segment.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %segment.i, align 4
  %arrayidx4.i = getelementptr %struct.zone_entry, ptr %20, i32 %i.026.i
  %21 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx4.i, align 4
  %22 = load ptr, ptr %segment.i, align 4
  %free_table.i = getelementptr %struct.zone_entry, ptr %22, i32 %i.026.i, i32 1
  %23 = ptrtoint ptr %free_table.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %free_table.i, align 4
  tail call void @vfree(ptr noundef %24) #8
  %25 = ptrtoint ptr %segment.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %segment.i, align 4
  %free_table10.i = getelementptr %struct.zone_entry, ptr %26, i32 %i.026.i, i32 1
  %27 = ptrtoint ptr %free_table10.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %free_table10.i, align 4
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %28 = ptrtoint ptr %segment_cnt.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %segment_cnt.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %29
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %30 = ptrtoint ptr %segment.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %segment.i, align 4
  tail call void @vfree(ptr noundef %31) #8
  %32 = ptrtoint ptr %segment.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %segment.i, align 4
  br label %ms_free_l2p_tbl.exit

ms_free_l2p_tbl.exit:                             ; preds = %for.end.i, %entry.ms_free_l2p_tbl.exit_crit_edge
  %raw_sys_info = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 14
  %33 = call ptr @memset(ptr %raw_sys_info, i32 0, i32 144)
  %call = tail call i32 @ms_power_off_card3v3(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp ne i32 %call, 0
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_pro_reset_flow(ptr noundef %chip, i32 noundef %switch_8bit_bus) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  %0 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %call = call fastcc i32 @ms_prepare_reset(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3.not = icmp eq i32 %call, 0
  br i1 %cmp3.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %if.then14
  %call.1 = call fastcc i32 @ms_prepare_reset(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp3.not.1 = icmp eq i32 %call.1, 0
  br i1 %cmp3.not.1, label %if.end.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.1:                                         ; preds = %for.cond
  %call4.1 = call fastcc i32 @ms_identify_media_type(ptr noundef %chip, i32 noundef %switch_8bit_bus)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1)
  %cmp5.not.1 = icmp eq i32 %call4.1, 0
  br i1 %cmp5.not.1, label %if.end7.1, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.1:                                        ; preds = %if.end.1
  %call8.1 = call fastcc i32 @ms_confirm_cpu_startup(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1)
  %cmp9.not.1 = icmp eq i32 %call8.1, 0
  br i1 %cmp9.not.1, label %if.end11.1, label %if.end7.1.cleanup_crit_edge

if.end7.1.cleanup_crit_edge:                      ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11.1:                                       ; preds = %if.end7.1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %data.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %0, align 1
  %call.i.1 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %data.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp3.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %cmp3.i.1, label %if.end11.1.ms_switch_parallel_bus.exit.thread_crit_edge, label %for.cond.i.1

if.end11.1.ms_switch_parallel_bus.exit.thread_crit_edge: ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_switch_parallel_bus.exit.thread

for.cond.i.1:                                     ; preds = %if.end11.1
  %call.1.i.1 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %data.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.1)
  %cmp3.1.i.1 = icmp eq i32 %call.1.i.1, 0
  br i1 %cmp3.1.i.1, label %for.cond.i.1.ms_switch_parallel_bus.exit.thread_crit_edge, label %ms_switch_parallel_bus.exit.1

for.cond.i.1.ms_switch_parallel_bus.exit.thread_crit_edge: ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_switch_parallel_bus.exit.thread

ms_switch_parallel_bus.exit.1:                    ; preds = %for.cond.i.1
  %call.2.i.1 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %data.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.1)
  %cmp3.2.i.not.1 = icmp eq i32 %call.2.i.1, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  br i1 %cmp3.2.i.not.1, label %ms_switch_parallel_bus.exit.1.if.end21_crit_edge, label %if.then14.1

ms_switch_parallel_bus.exit.1.if.end21_crit_edge: ; preds = %ms_switch_parallel_bus.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then14.1:                                      ; preds = %ms_switch_parallel_bus.exit.1
  %call15.1 = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.1)
  %cmp16.not.1 = icmp eq i32 %call15.1, 0
  br i1 %cmp16.not.1, label %for.cond.1, label %if.then14.1.if.then17_crit_edge

if.then14.1.if.then17_crit_edge:                  ; preds = %if.then14.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

for.cond.1:                                       ; preds = %if.then14.1
  %call.2 = call fastcc i32 @ms_prepare_reset(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp3.not.2 = icmp eq i32 %call.2, 0
  br i1 %cmp3.not.2, label %if.end.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.2:                                         ; preds = %for.cond.1
  %call4.2 = call fastcc i32 @ms_identify_media_type(ptr noundef %chip, i32 noundef %switch_8bit_bus)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2)
  %cmp5.not.2 = icmp eq i32 %call4.2, 0
  br i1 %cmp5.not.2, label %if.end7.2, label %if.end.2.cleanup_crit_edge

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.2:                                        ; preds = %if.end.2
  %call8.2 = call fastcc i32 @ms_confirm_cpu_startup(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2)
  %cmp9.not.2 = icmp eq i32 %call8.2, 0
  br i1 %cmp9.not.2, label %if.end11.2, label %if.end7.2.cleanup_crit_edge

if.end7.2.cleanup_crit_edge:                      ; preds = %if.end7.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11.2:                                       ; preds = %if.end7.2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %data.i, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 1
  %call.i.2 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %data.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp3.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %cmp3.i.2, label %if.end11.2.ms_switch_parallel_bus.exit.thread_crit_edge, label %for.cond.i.2

if.end11.2.ms_switch_parallel_bus.exit.thread_crit_edge: ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_switch_parallel_bus.exit.thread

for.cond.i.2:                                     ; preds = %if.end11.2
  %call.1.i.2 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %data.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.2)
  %cmp3.1.i.2 = icmp eq i32 %call.1.i.2, 0
  br i1 %cmp3.1.i.2, label %for.cond.i.2.ms_switch_parallel_bus.exit.thread_crit_edge, label %ms_switch_parallel_bus.exit.2

for.cond.i.2.ms_switch_parallel_bus.exit.thread_crit_edge: ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_switch_parallel_bus.exit.thread

ms_switch_parallel_bus.exit.2:                    ; preds = %for.cond.i.2
  %call.2.i.2 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %data.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.2)
  %cmp3.2.i.not.2 = icmp eq i32 %call.2.i.2, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  br i1 %cmp3.2.i.not.2, label %ms_switch_parallel_bus.exit.2.if.end21_crit_edge, label %if.then14.2

ms_switch_parallel_bus.exit.2.if.end21_crit_edge: ; preds = %ms_switch_parallel_bus.exit.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then14.2:                                      ; preds = %ms_switch_parallel_bus.exit.2
  %call15.2 = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.2)
  %cmp16.not.2 = icmp eq i32 %call15.2, 0
  br i1 %cmp16.not.2, label %if.then14.2.cleanup_crit_edge, label %if.then14.2.if.then17_crit_edge

if.then14.2.if.then17_crit_edge:                  ; preds = %if.then14.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then14.2.cleanup_crit_edge:                    ; preds = %if.then14.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call fastcc i32 @ms_identify_media_type(ptr noundef %chip, i32 noundef %switch_8bit_bus)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call fastcc i32 @ms_confirm_cpu_startup(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %data.i, align 1
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %0, align 1
  %call.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %data.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp eq i32 %call.i, 0
  br i1 %cmp3.i, label %if.end11.ms_switch_parallel_bus.exit.thread_crit_edge, label %for.cond.i

if.end11.ms_switch_parallel_bus.exit.thread_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_switch_parallel_bus.exit.thread

for.cond.i:                                       ; preds = %if.end11
  %call.1.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %data.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp3.1.i = icmp eq i32 %call.1.i, 0
  br i1 %cmp3.1.i, label %for.cond.i.ms_switch_parallel_bus.exit.thread_crit_edge, label %ms_switch_parallel_bus.exit

for.cond.i.ms_switch_parallel_bus.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_switch_parallel_bus.exit.thread

ms_switch_parallel_bus.exit.thread:               ; preds = %for.cond.i.ms_switch_parallel_bus.exit.thread_crit_edge, %if.end11.ms_switch_parallel_bus.exit.thread_crit_edge, %for.cond.i.2.ms_switch_parallel_bus.exit.thread_crit_edge, %if.end11.2.ms_switch_parallel_bus.exit.thread_crit_edge, %for.cond.i.1.ms_switch_parallel_bus.exit.thread_crit_edge, %if.end11.1.ms_switch_parallel_bus.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  br label %if.end21

ms_switch_parallel_bus.exit:                      ; preds = %for.cond.i
  %call.2.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %data.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp3.2.i.not = icmp eq i32 %call.2.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  br i1 %cmp3.2.i.not, label %ms_switch_parallel_bus.exit.if.end21_crit_edge, label %if.then14

ms_switch_parallel_bus.exit.if.end21_crit_edge:   ; preds = %ms_switch_parallel_bus.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then14:                                        ; preds = %ms_switch_parallel_bus.exit
  %call15 = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %for.cond, label %if.then14.if.then17_crit_edge

if.then14.if.then17_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then17:                                        ; preds = %if.then14.if.then17_crit_edge, %if.then14.2.if.then17_crit_edge, %if.then14.1.if.then17_crit_edge
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 8
  %7 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 32, ptr %err_code2.i, align 2
  br label %cleanup

if.end21:                                         ; preds = %ms_switch_parallel_bus.exit.if.end21_crit_edge, %ms_switch_parallel_bus.exit.thread, %ms_switch_parallel_bus.exit.2.if.end21_crit_edge, %ms_switch_parallel_bus.exit.1.if.end21_crit_edge
  %call22 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -704, i8 noundef zeroext 24, i8 noundef zeroext 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %if.end24, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %call25 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -704, i8 noundef zeroext 64, i8 noundef zeroext 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %8 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ms_card1, align 4
  %conv.i = zext i16 %9 to i32
  %10 = and i32 %conv.i, 1791
  call void @__sanitizer_cov_trace_const_cmp4(i32 1537, i32 %10)
  %11 = icmp eq i32 %10, 1537
  br i1 %11, label %if.then.i, label %if.else11.i

if.then.i:                                        ; preds = %if.end28
  %asic_code.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %12 = ptrtoint ptr %asic_code.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %asic_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %asic_ms_hg_clk.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 99
  br label %if.end38.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %fpga_ms_hg_clk.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 91
  br label %if.end38.i

if.else11.i:                                      ; preds = %if.end28
  %and.i = and i32 %conv.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp15.i = icmp ne i32 %and.i, 1
  %and19.i = and i32 %conv.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %or.cond72.i = and i1 %cmp15.i, %tobool20.not.i
  %asic_code30.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %14 = ptrtoint ptr %asic_code30.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %asic_code30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool31.not.i = icmp eq i32 %15, 0
  br i1 %or.cond72.i, label %if.else29.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.else11.i
  br i1 %tobool31.not.i, label %if.else26.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  %asic_ms_4bit_clk.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 100
  br label %if.end38.i

if.else26.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  %fpga_ms_4bit_clk.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 92
  br label %if.end38.i

if.else29.i:                                      ; preds = %if.else11.i
  br i1 %tobool31.not.i, label %if.else34.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #10
  %asic_ms_1bit_clk.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 101
  br label %if.end38.i

if.else34.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #10
  %fpga_ms_1bit_clk.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 93
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else34.i, %if.then32.i, %if.else26.i, %if.then24.i, %if.else.i, %if.then9.i
  %fpga_ms_4bit_clk.sink.i = phi ptr [ %fpga_ms_4bit_clk.i, %if.else26.i ], [ %asic_ms_4bit_clk.i, %if.then24.i ], [ %fpga_ms_1bit_clk.i, %if.else34.i ], [ %asic_ms_1bit_clk.i, %if.then32.i ], [ %asic_ms_hg_clk.i, %if.then9.i ], [ %fpga_ms_hg_clk.i, %if.else.i ]
  %16 = ptrtoint ptr %fpga_ms_4bit_clk.sink.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fpga_ms_4bit_clk.sink.i, align 4
  %ms_clock27.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 24
  %18 = ptrtoint ptr %ms_clock27.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %ms_clock27.i, align 4
  %asic_code.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %19 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %17) #8
  br label %switch_clock.exit.i

if.else.i.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %17) #8
  br label %switch_clock.exit.i

switch_clock.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  %retval1.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i)
  %cmp40.not.i = icmp eq i32 %retval1.0.i.i, 0
  br i1 %cmp40.not.i, label %ms_set_init_para.exit, label %switch_clock.exit.i.cleanup_crit_edge

switch_clock.exit.i.cleanup_crit_edge:            ; preds = %switch_clock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ms_set_init_para.exit:                            ; preds = %switch_clock.exit.i
  %call44.i = call i32 @select_card(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %cmp45.not.i.not = icmp eq i32 %call44.i, 0
  br i1 %cmp45.not.i.not, label %if.end32, label %ms_set_init_para.exit.cleanup_crit_edge

ms_set_init_para.exit.cleanup_crit_edge:          ; preds = %ms_set_init_para.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end32:                                         ; preds = %ms_set_init_para.exit
  %21 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ms_card1, align 4
  %23 = and i16 %22, 1279
  call void @__sanitizer_cov_trace_const_cmp2(i16 1025, i16 %23)
  %.not = icmp eq i16 %23, 1025
  br i1 %.not, label %land.lhs.true39, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true39:                                  ; preds = %if.end32
  %support_ms_8bit = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 140
  %24 = ptrtoint ptr %support_ms_8bit to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %support_ms_8bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool40.not = icmp eq i32 %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch_8bit_bus)
  %tobool42.not = icmp eq i32 %switch_8bit_bus, 0
  %or.cond77 = or i1 %tobool42.not, %tobool40.not
  br i1 %or.cond77, label %land.lhs.true39.cleanup_crit_edge, label %if.then43

land.lhs.true39.cleanup_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then43:                                        ; preds = %land.lhs.true39
  %call44 = call fastcc i32 @ms_switch_8bit_bus(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45.not = icmp eq i32 %call44, 0
  br i1 %cmp45.not, label %if.then43.cleanup_crit_edge, label %if.then47

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then47:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %switch_8bit_fail = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 7
  %26 = ptrtoint ptr %switch_8bit_fail to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %switch_8bit_fail, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.then43.cleanup_crit_edge, %land.lhs.true39.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %ms_set_init_para.exit.cleanup_crit_edge, %switch_clock.exit.i.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then17, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then14.2.cleanup_crit_edge, %if.end7.2.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %if.end7.1.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then17 ], [ 1, %if.then47 ], [ %call22, %if.end21.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ 1, %ms_set_init_para.exit.cleanup_crit_edge ], [ 0, %if.then43.cleanup_crit_edge ], [ 0, %land.lhs.true39.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ], [ 1, %switch_clock.exit.i.cleanup_crit_edge ], [ 1, %if.then14.2.cleanup_crit_edge ], [ 1, %if.end7.2.cleanup_crit_edge ], [ 1, %if.end.2.cleanup_crit_edge ], [ 1, %for.cond.1.cleanup_crit_edge ], [ 1, %if.end7.1.cleanup_crit_edge ], [ 1, %if.end.1.cleanup_crit_edge ], [ 1, %for.cond.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_read_attribute_info(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca [2 x i8], align 1
  %val = alloca i8, align 1
  %data = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !168
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #8
  %1 = getelementptr inbounds i8, ptr %data, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 -1, ptr %1, align 1
  %call = tail call fastcc i32 @ms_set_rw_reg_addr(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext 2, i8 noundef zeroext 16, i8 noundef zeroext 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup505_crit_edge

entry.cleanup505_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup505

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 3
  %4 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 2
  %5 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ms_card1, align 4
  %8 = lshr i16 %7, 3
  %9 = trunc i16 %8 to i8
  %10 = and i8 %9, 64
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %data, align 1
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %5, align 1
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 64, ptr %4, align 1
  %14 = call ptr @memset(ptr %3, i32 0, i32 5)
  %call15 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.end.if.end23_crit_edge, label %for.cond

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

for.cond:                                         ; preds = %if.end
  %call15.1 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.1)
  %cmp16.1 = icmp eq i32 %call15.1, 0
  br i1 %cmp16.1, label %for.cond.if.end23_crit_edge, label %for.cond.1

for.cond.if.end23_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

for.cond.1:                                       ; preds = %for.cond
  %call15.2 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.2)
  %cmp16.2 = icmp eq i32 %call15.2, 0
  br i1 %cmp16.2, label %for.cond.1.if.end23_crit_edge, label %for.cond.1.cleanup505_crit_edge

for.cond.1.cleanup505_crit_edge:                  ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup505

for.cond.1.if.end23_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.end23:                                         ; preds = %for.cond.1.if.end23_crit_edge, %for.cond.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %call1.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 3264, i32 noundef 3) #11
  %tobool25.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool25.not, label %if.end23.cleanup505_crit_edge, label %for.cond28.preheader

if.end23.cleanup505_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup505

for.cond28.preheader:                             ; preds = %if.end23
  %15 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 36, ptr %data.i, align 1
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %15, align 1
  %call.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp33.not = icmp eq i32 %call.i, 0
  br i1 %cmp33.not, label %if.end36, label %for.cond28.preheader.for.inc52_crit_edge

for.cond28.preheader.for.inc52_crit_edge:         ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc52

if.end36:                                         ; preds = %for.cond28.preheader
  %call37 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -702, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38.not = icmp eq i32 %call37, 0
  br i1 %cmp38.not, label %if.end41, label %if.end36.if.then40_crit_edge

if.end36.if.then40_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

if.then40:                                        ; preds = %if.end36.2.if.then40_crit_edge, %if.end36.1.if.then40_crit_edge, %if.end36.if.then40_crit_edge
  call void @kfree(ptr noundef nonnull %call1.i.i) #8
  br label %cleanup505

if.end41:                                         ; preds = %if.end36
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %val, align 1
  %20 = and i8 %19, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool44.not = icmp eq i8 %20, 0
  br i1 %tobool44.not, label %if.end41.if.then45_crit_edge, label %if.end46

if.end41.if.then45_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

if.then45:                                        ; preds = %if.end41.2.if.then45_crit_edge, %if.end41.1.if.then45_crit_edge, %if.end41.if.then45_crit_edge
  call void @kfree(ptr noundef nonnull %call1.i.i) #8
  br label %cleanup505

if.end46:                                         ; preds = %if.end41
  %call47 = call fastcc i32 @ms_transfer_data(ptr noundef %chip, i8 noundef zeroext 8, i8 noundef zeroext 2, i16 noundef zeroext 64, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull %call1.i.i, i32 noundef 32768)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.end46.do.body.preheader_crit_edge, label %if.end51

if.end46.do.body.preheader_crit_edge:             ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.preheader

if.end51:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %call.i708 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  br label %for.inc52

for.inc52:                                        ; preds = %if.end51, %for.cond28.preheader.for.inc52_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 36, ptr %data.i, align 1
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %15, align 1
  %call.i.1 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp33.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %cmp33.not.1, label %if.end36.1, label %for.inc52.for.inc52.1_crit_edge

for.inc52.for.inc52.1_crit_edge:                  ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc52.1

if.end36.1:                                       ; preds = %for.inc52
  %call37.1 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -702, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.1)
  %cmp38.not.1 = icmp eq i32 %call37.1, 0
  br i1 %cmp38.not.1, label %if.end41.1, label %if.end36.1.if.then40_crit_edge

if.end36.1.if.then40_crit_edge:                   ; preds = %if.end36.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

if.end41.1:                                       ; preds = %if.end36.1
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %val, align 1
  %25 = and i8 %24, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool44.not.1 = icmp eq i8 %25, 0
  br i1 %tobool44.not.1, label %if.end41.1.if.then45_crit_edge, label %if.end46.1

if.end41.1.if.then45_crit_edge:                   ; preds = %if.end41.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

if.end46.1:                                       ; preds = %if.end41.1
  %call47.1 = call fastcc i32 @ms_transfer_data(ptr noundef %chip, i8 noundef zeroext 8, i8 noundef zeroext 2, i16 noundef zeroext 64, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull %call1.i.i, i32 noundef 32768)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.1)
  %cmp48.1 = icmp eq i32 %call47.1, 0
  br i1 %cmp48.1, label %if.end46.1.do.body.preheader_crit_edge, label %if.end51.1

if.end46.1.do.body.preheader_crit_edge:           ; preds = %if.end46.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.preheader

if.end51.1:                                       ; preds = %if.end46.1
  call void @__sanitizer_cov_trace_pc() #10
  %call.i708.1 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  br label %for.inc52.1

for.inc52.1:                                      ; preds = %if.end51.1, %for.inc52.for.inc52.1_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 36, ptr %data.i, align 1
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %15, align 1
  %call.i.2 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp33.not.2 = icmp eq i32 %call.i.2, 0
  br i1 %cmp33.not.2, label %if.end36.2, label %for.inc52.1.if.then57_crit_edge

for.inc52.1.if.then57_crit_edge:                  ; preds = %for.inc52.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

if.end36.2:                                       ; preds = %for.inc52.1
  %call37.2 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -702, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.2)
  %cmp38.not.2 = icmp eq i32 %call37.2, 0
  br i1 %cmp38.not.2, label %if.end41.2, label %if.end36.2.if.then40_crit_edge

if.end36.2.if.then40_crit_edge:                   ; preds = %if.end36.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

if.end41.2:                                       ; preds = %if.end36.2
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %val, align 1
  %30 = and i8 %29, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool44.not.2 = icmp eq i8 %30, 0
  br i1 %tobool44.not.2, label %if.end41.2.if.then45_crit_edge, label %if.end46.2

if.end41.2.if.then45_crit_edge:                   ; preds = %if.end41.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

if.end46.2:                                       ; preds = %if.end41.2
  %call47.2 = call fastcc i32 @ms_transfer_data(ptr noundef %chip, i8 noundef zeroext 8, i8 noundef zeroext 2, i16 noundef zeroext 64, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull %call1.i.i, i32 noundef 32768)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.2)
  %cmp48.2 = icmp eq i32 %call47.2, 0
  br i1 %cmp48.2, label %if.end46.2.do.body.preheader_crit_edge, label %if.end51.2

if.end46.2.do.body.preheader_crit_edge:           ; preds = %if.end46.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.end46.2.do.body.preheader_crit_edge, %if.end46.1.do.body.preheader_crit_edge, %if.end46.do.body.preheader_crit_edge
  br label %do.body

if.end51.2:                                       ; preds = %if.end46.2
  call void @__sanitizer_cov_trace_pc() #10
  %call.i708.2 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  br label %if.then57

if.then57:                                        ; preds = %if.end51.2, %for.inc52.1.if.then57_crit_edge
  call void @kfree(ptr noundef nonnull %call1.i.i) #8
  br label %cleanup505

do.body:                                          ; preds = %if.end76.do.body_crit_edge, %do.body.preheader
  %i.2 = phi i32 [ %inc77, %if.end76.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %call59 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -702, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60.not = icmp eq i32 %call59, 0
  br i1 %cmp60.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call1.i.i) #8
  br label %cleanup505

if.end63:                                         ; preds = %do.body
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %val, align 1
  %33 = and i8 %32, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %33)
  %.not = icmp eq i8 %33, 4
  br i1 %.not, label %if.end71, label %if.end63.do.end_crit_edge

if.end63.do.end_crit_edge:                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end71:                                         ; preds = %if.end63
  %call72 = call fastcc i32 @ms_transfer_tpc(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext -128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73.not = icmp eq i32 %call72, 0
  br i1 %cmp73.not, label %if.end76, label %if.then75

if.then75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call1.i.i) #8
  br label %cleanup505

if.end76:                                         ; preds = %if.end71
  %inc77 = add nuw nsw i32 %i.2, 1
  %exitcond.not = icmp eq i32 %inc77, 1024
  br i1 %exitcond.not, label %if.end76.do.end_crit_edge, label %if.end76.do.body_crit_edge

if.end76.do.body_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end76.do.end_crit_edge:                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end76.do.end_crit_edge, %if.end63.do.end_crit_edge
  %34 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %call1.i.i, align 4096
  call void @__sanitizer_cov_trace_const_cmp1(i8 -91, i8 %35)
  %cmp82.not = icmp eq i8 %35, -91
  br i1 %cmp82.not, label %do.end.if.end89_crit_edge, label %land.lhs.true

do.end.if.end89_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

land.lhs.true:                                    ; preds = %do.end
  %arrayidx84 = getelementptr i8, ptr %call1.i.i, i32 1
  %36 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx84, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -61, i8 %37)
  %cmp86.not = icmp eq i8 %37, -61
  br i1 %cmp86.not, label %land.lhs.true.if.end89_crit_edge, label %if.then88

land.lhs.true.if.end89_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then88:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call1.i.i) #8
  br label %cleanup505

if.end89:                                         ; preds = %land.lhs.true.if.end89_crit_edge, %do.end.if.end89_crit_edge
  %arrayidx90 = getelementptr i8, ptr %call1.i.i, i32 4
  %38 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx90, align 4
  %40 = add i8 %39, -13
  call void @__sanitizer_cov_trace_const_cmp1(i8 -12, i8 %40)
  %41 = icmp ult i8 %40, -12
  br i1 %41, label %if.then99, label %for.cond101.preheader

for.cond101.preheader:                            ; preds = %if.end89
  %42 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx90, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp104750.not = icmp eq i8 %43, 0
  br i1 %cmp104750.not, label %for.cond101.preheader.for.end268_crit_edge, label %for.cond101.preheader.for.body106_crit_edge

for.cond101.preheader.for.body106_crit_edge:      ; preds = %for.cond101.preheader
  br label %for.body106

for.cond101.preheader.for.end268_crit_edge:       ; preds = %for.cond101.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end268

if.then99:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call1.i.i) #8
  br label %cleanup505

for.body106:                                      ; preds = %for.inc266.for.body106_crit_edge, %for.cond101.preheader.for.body106_crit_edge
  %i.3755 = phi i32 [ %inc267, %for.inc266.for.body106_crit_edge ], [ 0, %for.cond101.preheader.for.body106_crit_edge ]
  %found_model_name.0754 = phi i32 [ %found_model_name.1, %for.inc266.for.body106_crit_edge ], [ 0, %for.cond101.preheader.for.body106_crit_edge ]
  %found_sys_info.0753 = phi i32 [ %found_sys_info.1, %for.inc266.for.body106_crit_edge ], [ 0, %for.cond101.preheader.for.body106_crit_edge ]
  %model_name_addr.0752 = phi i32 [ %model_name_addr.1, %for.inc266.for.body106_crit_edge ], [ 0, %for.cond101.preheader.for.body106_crit_edge ]
  %sys_info_addr.0751 = phi i32 [ %sys_info_addr.1, %for.inc266.for.body106_crit_edge ], [ 0, %for.cond101.preheader.for.body106_crit_edge ]
  %mul = mul nuw nsw i32 %i.3755, 12
  %add = add nuw nsw i32 %mul, 16
  %add107 = add nuw nsw i32 %mul, 24
  %arrayidx108 = getelementptr i8, ptr %call1.i.i, i32 %add107
  %44 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx108, align 4
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %45, label %for.body106.if.end187_crit_edge [
    i8 16, label %for.body106.if.then118_crit_edge
    i8 19, label %for.body106.if.then118_crit_edge778
  ]

for.body106.if.then118_crit_edge778:              ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then118

for.body106.if.then118_crit_edge:                 ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then118

for.body106.if.end187_crit_edge:                  ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187

if.then118:                                       ; preds = %for.body106.if.then118_crit_edge, %for.body106.if.then118_crit_edge778
  %arrayidx120 = getelementptr i8, ptr %call1.i.i, i32 %add
  %47 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx120, align 4
  %conv121 = zext i8 %48 to i32
  %shl = shl nuw i32 %conv121, 24
  %add122 = add nuw nsw i32 %mul, 17
  %arrayidx123 = getelementptr i8, ptr %call1.i.i, i32 %add122
  %49 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %50 to i32
  %shl125 = shl nuw nsw i32 %conv124, 16
  %or = or i32 %shl125, %shl
  %add126 = add nuw nsw i32 %mul, 18
  %arrayidx127 = getelementptr i8, ptr %call1.i.i, i32 %add126
  %51 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx127, align 2
  %conv128 = zext i8 %52 to i32
  %shl129 = shl nuw nsw i32 %conv128, 8
  %or130 = or i32 %or, %shl129
  %add131 = add nuw nsw i32 %mul, 19
  %arrayidx132 = getelementptr i8, ptr %call1.i.i, i32 %add131
  %53 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx132, align 1
  %conv133 = zext i8 %54 to i32
  %or134 = or i32 %or130, %conv133
  %add135 = add nuw nsw i32 %mul, 20
  %arrayidx136 = getelementptr i8, ptr %call1.i.i, i32 %add135
  %55 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx136, align 4
  %conv137 = zext i8 %56 to i32
  %shl138 = shl nuw i32 %conv137, 24
  %add139 = add nuw nsw i32 %mul, 21
  %arrayidx140 = getelementptr i8, ptr %call1.i.i, i32 %add139
  %57 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx140, align 1
  %conv141 = zext i8 %58 to i32
  %shl142 = shl nuw nsw i32 %conv141, 16
  %or143 = or i32 %shl142, %shl138
  %add144 = add nuw nsw i32 %mul, 22
  %arrayidx145 = getelementptr i8, ptr %call1.i.i, i32 %add144
  %59 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx145, align 2
  %conv146 = zext i8 %60 to i32
  %shl147 = shl nuw nsw i32 %conv146, 8
  %or148 = or i32 %or143, %shl147
  %add149 = add nuw nsw i32 %mul, 23
  %arrayidx150 = getelementptr i8, ptr %call1.i.i, i32 %add149
  %61 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx150, align 1
  %conv151 = zext i8 %62 to i32
  %or152 = or i32 %or148, %conv151
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_read_attribute_info.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_read_attribute_info, %if.then158)) #8
          to label %do.end162 [label %if.then158], !srcloc !167

if.then158:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chip, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_read_attribute_info.__UNIQUE_ID_ddebug299, ptr noundef %dev.i, ptr noundef nonnull @.str.22, i32 noundef %or134, i32 noundef %or152) #8
  br label %do.end162

do.end162:                                        ; preds = %if.then158, %if.then118
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %or152)
  %cmp163.not = icmp eq i32 %or152, 96
  br i1 %cmp163.not, label %if.end166, label %if.then165

if.then165:                                       ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call1.i.i) #8
  br label %cleanup505

if.end166:                                        ; preds = %do.end162
  call void @__sanitizer_cov_trace_const_cmp4(i32 416, i32 %or134)
  %cmp167 = icmp ult i32 %or134, 416
  br i1 %cmp167, label %if.then169, label %if.end170

if.then169:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call1.i.i) #8
  br label %cleanup505

if.end170:                                        ; preds = %if.end166
  %67 = add i32 %or134, -32673
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32769, i32 %67)
  %cmp172 = icmp ult i32 %67, -32769
  br i1 %cmp172, label %if.then174, label %if.end175

if.then174:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call1.i.i) #8
  br label %cleanup505

if.end175:                                        ; preds = %if.end170
  %68 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx108, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %69)
  %cmp179 = icmp eq i8 %69, 19
  br i1 %cmp179, label %if.then181, label %if.end175.if.end187_crit_edge

if.end175.if.end187_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187

if.then181:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %ms_card1, align 4
  %72 = or i16 %71, 2048
  store i16 %72, ptr %ms_card1, align 4
  %73 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %73)
  %.pr = load i8, ptr %arrayidx108, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.then181, %if.end175.if.end187_crit_edge, %for.body106.if.end187_crit_edge
  %74 = phi i8 [ %69, %if.end175.if.end187_crit_edge ], [ %.pr, %if.then181 ], [ %45, %for.body106.if.end187_crit_edge ]
  %sys_info_addr.1 = phi i32 [ %or134, %if.end175.if.end187_crit_edge ], [ %or134, %if.then181 ], [ %sys_info_addr.0751, %for.body106.if.end187_crit_edge ]
  %found_sys_info.1 = phi i32 [ 1, %if.end175.if.end187_crit_edge ], [ 1, %if.then181 ], [ %found_sys_info.0753, %for.body106.if.end187_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %74)
  %cmp191 = icmp eq i8 %74, 21
  br i1 %cmp191, label %if.then193, label %if.end187.if.end260_crit_edge

if.end187.if.end260_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end260

if.then193:                                       ; preds = %if.end187
  %arrayidx195 = getelementptr i8, ptr %call1.i.i, i32 %add
  %75 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx195, align 4
  %conv196 = zext i8 %76 to i32
  %shl197 = shl nuw i32 %conv196, 24
  %add198 = add nuw nsw i32 %mul, 17
  %arrayidx199 = getelementptr i8, ptr %call1.i.i, i32 %add198
  %77 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx199, align 1
  %conv200 = zext i8 %78 to i32
  %shl201 = shl nuw nsw i32 %conv200, 16
  %or202 = or i32 %shl201, %shl197
  %add203 = add nuw nsw i32 %mul, 18
  %arrayidx204 = getelementptr i8, ptr %call1.i.i, i32 %add203
  %79 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx204, align 2
  %conv205 = zext i8 %80 to i32
  %shl206 = shl nuw nsw i32 %conv205, 8
  %or207 = or i32 %or202, %shl206
  %add208 = add nuw nsw i32 %mul, 19
  %arrayidx209 = getelementptr i8, ptr %call1.i.i, i32 %add208
  %81 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx209, align 1
  %conv210 = zext i8 %82 to i32
  %or211 = or i32 %or207, %conv210
  %add212 = add nuw nsw i32 %mul, 20
  %arrayidx213 = getelementptr i8, ptr %call1.i.i, i32 %add212
  %83 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx213, align 4
  %conv214 = zext i8 %84 to i32
  %shl215 = shl nuw i32 %conv214, 24
  %add216 = add nuw nsw i32 %mul, 21
  %arrayidx217 = getelementptr i8, ptr %call1.i.i, i32 %add216
  %85 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx217, align 1
  %conv218 = zext i8 %86 to i32
  %shl219 = shl nuw nsw i32 %conv218, 16
  %or220 = or i32 %shl219, %shl215
  %add221 = add nuw nsw i32 %mul, 22
  %arrayidx222 = getelementptr i8, ptr %call1.i.i, i32 %add221
  %87 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx222, align 2
  %conv223 = zext i8 %88 to i32
  %shl224 = shl nuw nsw i32 %conv223, 8
  %or225 = or i32 %or220, %shl224
  %add226 = add nuw nsw i32 %mul, 23
  %arrayidx227 = getelementptr i8, ptr %call1.i.i, i32 %add226
  %89 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx227, align 1
  %conv228 = zext i8 %90 to i32
  %or229 = or i32 %or225, %conv228
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_read_attribute_info.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_read_attribute_info, %if.then242)) #8
          to label %do.end246 [label %if.then242], !srcloc !167

if.then242:                                       ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %chip, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %dev.i709 = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_read_attribute_info.__UNIQUE_ID_ddebug300, ptr noundef %dev.i709, ptr noundef nonnull @.str.23, i32 noundef %or211, i32 noundef %or229) #8
  br label %do.end246

do.end246:                                        ; preds = %if.then242, %if.then193
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %or229)
  %cmp247.not = icmp eq i32 %or229, 48
  br i1 %cmp247.not, label %if.end250, label %if.then249

if.then249:                                       ; preds = %do.end246
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call1.i.i) #8
  br label %cleanup505

if.end250:                                        ; preds = %do.end246
  call void @__sanitizer_cov_trace_const_cmp4(i32 416, i32 %or211)
  %cmp251 = icmp ult i32 %or211, 416
  br i1 %cmp251, label %if.then253, label %if.end254

if.then253:                                       ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call1.i.i) #8
  br label %cleanup505

if.end254:                                        ; preds = %if.end250
  %95 = add i32 %or211, -32721
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32769, i32 %95)
  %cmp256 = icmp ult i32 %95, -32769
  br i1 %cmp256, label %if.then258, label %if.end254.if.end260_crit_edge

if.end254.if.end260_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end260

if.then258:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call1.i.i) #8
  br label %cleanup505

if.end260:                                        ; preds = %if.end254.if.end260_crit_edge, %if.end187.if.end260_crit_edge
  %model_name_addr.1 = phi i32 [ %model_name_addr.0752, %if.end187.if.end260_crit_edge ], [ %or211, %if.end254.if.end260_crit_edge ]
  %found_model_name.1 = phi i32 [ %found_model_name.0754, %if.end187.if.end260_crit_edge ], [ 1, %if.end254.if.end260_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found_sys_info.1)
  %tobool261.not = icmp eq i32 %found_sys_info.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found_model_name.1)
  %tobool263.not = icmp eq i32 %found_model_name.1, 0
  %or.cond689 = select i1 %tobool261.not, i1 true, i1 %tobool263.not
  br i1 %or.cond689, label %for.inc266, label %if.end260.for.end268_crit_edge

if.end260.for.end268_crit_edge:                   ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end268

for.inc266:                                       ; preds = %if.end260
  %inc267 = add nuw nsw i32 %i.3755, 1
  %96 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx90, align 4
  %conv103 = zext i8 %97 to i32
  %cmp104 = icmp ult i32 %inc267, %conv103
  br i1 %cmp104, label %for.inc266.for.body106_crit_edge, label %for.inc266.for.end268_crit_edge

for.inc266.for.end268_crit_edge:                  ; preds = %for.inc266
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end268

for.inc266.for.body106_crit_edge:                 ; preds = %for.inc266
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body106

for.end268:                                       ; preds = %for.inc266.for.end268_crit_edge, %if.end260.for.end268_crit_edge, %for.cond101.preheader.for.end268_crit_edge
  %i.3.lcssa = phi i32 [ 0, %for.cond101.preheader.for.end268_crit_edge ], [ %i.3755, %if.end260.for.end268_crit_edge ], [ %inc267, %for.inc266.for.end268_crit_edge ]
  %sys_info_addr.3 = phi i32 [ 0, %for.cond101.preheader.for.end268_crit_edge ], [ %sys_info_addr.1, %if.end260.for.end268_crit_edge ], [ %sys_info_addr.1, %for.inc266.for.end268_crit_edge ]
  %model_name_addr.3 = phi i32 [ 0, %for.cond101.preheader.for.end268_crit_edge ], [ %model_name_addr.1, %if.end260.for.end268_crit_edge ], [ %model_name_addr.1, %for.inc266.for.end268_crit_edge ]
  %98 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx90, align 4
  %conv270 = zext i8 %99 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3.lcssa, i32 %conv270)
  %cmp271 = icmp eq i32 %i.3.lcssa, %conv270
  br i1 %cmp271, label %if.then273, label %if.end274

if.then273:                                       ; preds = %for.end268
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call1.i.i) #8
  br label %cleanup505

if.end274:                                        ; preds = %for.end268
  %arrayidx276 = getelementptr i8, ptr %call1.i.i, i32 %sys_info_addr.3
  %100 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx276, align 1
  %add277 = add i32 %sys_info_addr.3, 56
  %arrayidx278 = getelementptr i8, ptr %call1.i.i, i32 %add277
  %102 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx278, align 1
  %add279 = add i32 %sys_info_addr.3, 46
  %arrayidx280 = getelementptr i8, ptr %call1.i.i, i32 %add279
  %104 = ptrtoint ptr %arrayidx280 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx280, align 1
  %106 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %ms_card1, align 4
  %108 = and i16 %107, 2303
  call void @__sanitizer_cov_trace_const_cmp2(i16 2049, i16 %108)
  %.not737 = icmp eq i16 %108, 2049
  %add292 = add i32 %sys_info_addr.3, 6
  %arrayidx293 = getelementptr i8, ptr %call1.i.i, i32 %add292
  %109 = ptrtoint ptr %arrayidx293 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx293, align 1
  br i1 %.not737, label %if.then291, label %if.else345

if.then291:                                       ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #10
  %conv294 = zext i8 %110 to i32
  %shl295 = shl nuw i32 %conv294, 24
  %add296 = add i32 %sys_info_addr.3, 7
  %arrayidx297 = getelementptr i8, ptr %call1.i.i, i32 %add296
  %111 = ptrtoint ptr %arrayidx297 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx297, align 1
  %conv298 = zext i8 %112 to i32
  %shl299 = shl nuw nsw i32 %conv298, 16
  %or300 = or i32 %shl299, %shl295
  %add301 = add i32 %sys_info_addr.3, 8
  %arrayidx302 = getelementptr i8, ptr %call1.i.i, i32 %add301
  %113 = ptrtoint ptr %arrayidx302 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx302, align 1
  %conv303 = zext i8 %114 to i32
  %shl304 = shl nuw nsw i32 %conv303, 8
  %or305 = or i32 %or300, %shl304
  %add306 = add i32 %sys_info_addr.3, 9
  %arrayidx307 = getelementptr i8, ptr %call1.i.i, i32 %add306
  %115 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx307, align 1
  %conv308 = zext i8 %116 to i32
  %or309 = or i32 %or305, %conv308
  %add310 = add i32 %sys_info_addr.3, 32
  %arrayidx311 = getelementptr i8, ptr %call1.i.i, i32 %add310
  %117 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx311, align 1
  %conv312 = zext i8 %118 to i32
  %shl313 = shl nuw i32 %conv312, 24
  %add314 = add i32 %sys_info_addr.3, 33
  %arrayidx315 = getelementptr i8, ptr %call1.i.i, i32 %add314
  %119 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx315, align 1
  %conv316 = zext i8 %120 to i32
  %shl317 = shl nuw nsw i32 %conv316, 16
  %or318 = or i32 %shl317, %shl313
  %add319 = add i32 %sys_info_addr.3, 34
  %arrayidx320 = getelementptr i8, ptr %call1.i.i, i32 %add319
  %121 = ptrtoint ptr %arrayidx320 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx320, align 1
  %conv321 = zext i8 %122 to i32
  %shl322 = shl nuw nsw i32 %conv321, 8
  %or323 = or i32 %or318, %shl322
  %add324 = add i32 %sys_info_addr.3, 35
  %arrayidx325 = getelementptr i8, ptr %call1.i.i, i32 %add324
  %123 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx325, align 1
  %conv326 = zext i8 %124 to i32
  %or327 = or i32 %or323, %conv326
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_read_attribute_info.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_read_attribute_info, %if.then340)) #8
          to label %do.body386 [label %if.then340], !srcloc !167

if.then340:                                       ; preds = %if.then291
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %chip, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  %dev.i710 = getelementptr inbounds %struct.pci_dev, ptr %128, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_read_attribute_info.__UNIQUE_ID_ddebug301, ptr noundef %dev.i710, ptr noundef nonnull @.str.24, i32 noundef %or309, i32 noundef %or327) #8
  br label %do.body386

if.else345:                                       ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #10
  %conv349 = zext i8 %110 to i16
  %shl350 = shl nuw i16 %conv349, 8
  %add351 = add i32 %sys_info_addr.3, 7
  %arrayidx352 = getelementptr i8, ptr %call1.i.i, i32 %add351
  %129 = ptrtoint ptr %arrayidx352 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx352, align 1
  %conv353 = zext i8 %130 to i16
  %or354 = or i16 %shl350, %conv353
  %add356 = add i32 %sys_info_addr.3, 2
  %arrayidx357 = getelementptr i8, ptr %call1.i.i, i32 %add356
  %131 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx357, align 1
  %conv359 = zext i8 %132 to i16
  %shl360 = shl nuw i16 %conv359, 8
  %add361 = add i32 %sys_info_addr.3, 3
  %arrayidx362 = getelementptr i8, ptr %call1.i.i, i32 %add361
  %133 = ptrtoint ptr %arrayidx362 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx362, align 1
  %conv363 = zext i8 %134 to i16
  %or364 = or i16 %shl360, %conv363
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_read_attribute_info.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_read_attribute_info, %if.then378)) #8
          to label %do.body386 [label %if.then378], !srcloc !167

if.then378:                                       ; preds = %if.else345
  call void @__sanitizer_cov_trace_pc() #10
  %135 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %chip, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 4
  %dev.i711 = getelementptr inbounds %struct.pci_dev, ptr %138, i32 0, i32 44
  %conv380 = zext i16 %or354 to i32
  %conv381 = zext i16 %or364 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_read_attribute_info.__UNIQUE_ID_ddebug302, ptr noundef %dev.i711, ptr noundef nonnull @.str.25, i32 noundef %conv380, i32 noundef %conv381) #8
  br label %do.body386

do.body386:                                       ; preds = %if.then378, %if.else345, %if.then340, %if.then291
  %xc_blk_size.0 = phi i32 [ %or327, %if.then340 ], [ 0, %if.then378 ], [ %or327, %if.then291 ], [ 0, %if.else345 ]
  %xc_total_blk.0 = phi i32 [ %or309, %if.then340 ], [ 0, %if.then378 ], [ %or309, %if.then291 ], [ 0, %if.else345 ]
  %blk_size.0 = phi i16 [ 0, %if.then340 ], [ %or364, %if.then378 ], [ 0, %if.then291 ], [ %or364, %if.else345 ]
  %total_blk.0 = phi i16 [ 0, %if.then340 ], [ %or354, %if.then378 ], [ 0, %if.then291 ], [ %or354, %if.else345 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_read_attribute_info.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_read_attribute_info, %if.then398)) #8
          to label %do.end405 [label %if.then398], !srcloc !167

if.then398:                                       ; preds = %do.body386
  call void @__sanitizer_cov_trace_pc() #10
  %139 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %chip, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %dev.i712 = getelementptr inbounds %struct.pci_dev, ptr %142, i32 0, i32 44
  %conv400 = zext i8 %101 to i32
  %conv401 = zext i8 %103 to i32
  %conv402 = zext i8 %105 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_read_attribute_info.__UNIQUE_ID_ddebug303, ptr noundef %dev.i712, ptr noundef nonnull @.str.26, i32 noundef %conv400, i32 noundef %conv401, i32 noundef %conv402) #8
  br label %do.end405

do.end405:                                        ; preds = %if.then398, %do.body386
  %raw_sys_info = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 14
  %143 = call ptr @memcpy(ptr %raw_sys_info, ptr %arrayidx276, i32 96)
  %raw_model_name = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 15
  %add.ptr408 = getelementptr i8, ptr %call1.i.i, i32 %model_name_addr.3
  %144 = call ptr @memcpy(ptr %raw_model_name, ptr %add.ptr408, i32 48)
  call void @kfree(ptr noundef nonnull %call1.i.i) #8
  %145 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %ms_card1, align 4
  %147 = and i16 %146, 2303
  call void @__sanitizer_cov_trace_const_cmp2(i16 2049, i16 %147)
  %.not738 = icmp eq i16 %147, 2049
  br i1 %.not738, label %if.then419, label %if.else425

if.then419:                                       ; preds = %do.end405
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %101)
  %cmp421.not = icmp eq i8 %101, 3
  br i1 %cmp421.not, label %if.then419.if.end431_crit_edge, label %if.then419.cleanup505_crit_edge

if.then419.cleanup505_crit_edge:                  ; preds = %if.then419
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup505

if.then419.if.end431_crit_edge:                   ; preds = %if.then419
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end431

if.else425:                                       ; preds = %do.end405
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %101)
  %cmp427.not = icmp eq i8 %101, 2
  br i1 %cmp427.not, label %if.else425.if.end431_crit_edge, label %if.else425.cleanup505_crit_edge

if.else425.cleanup505_crit_edge:                  ; preds = %if.else425
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup505

if.else425.if.end431_crit_edge:                   ; preds = %if.else425
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end431

if.end431:                                        ; preds = %if.else425.if.end431_crit_edge, %if.then419.if.end431_crit_edge
  %conv432 = zext i8 %103 to i32
  %148 = zext i8 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %148, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %103, label %if.end431.cleanup505_crit_edge [
    i8 0, label %if.end431.if.end453_crit_edge
    i8 1, label %if.end431.if.then447_crit_edge
    i8 2, label %if.end431.if.then447_crit_edge779
    i8 3, label %if.end431.if.then447_crit_edge780
  ]

if.end431.if.then447_crit_edge780:                ; preds = %if.end431
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then447

if.end431.if.then447_crit_edge779:                ; preds = %if.end431
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then447

if.end431.if.then447_crit_edge:                   ; preds = %if.end431
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then447

if.end431.if.end453_crit_edge:                    ; preds = %if.end431
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end453

if.end431.cleanup505_crit_edge:                   ; preds = %if.end431
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup505

if.then447:                                       ; preds = %if.end431.if.then447_crit_edge, %if.end431.if.then447_crit_edge779, %if.end431.if.then447_crit_edge780
  %card_wp = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 24
  %149 = ptrtoint ptr %card_wp to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %card_wp, align 1
  %151 = or i8 %150, 8
  store i8 %151, ptr %card_wp, align 1
  br label %if.end453

if.end453:                                        ; preds = %if.then447, %if.end431.if.end453_crit_edge
  %conv454 = zext i8 %105 to i32
  %and455 = and i32 %conv454, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and455)
  %tobool456.not = icmp eq i32 %and455, 0
  br i1 %tobool456.not, label %do.body459, label %if.end453.cleanup505_crit_edge

if.end453.cleanup505_crit_edge:                   ; preds = %if.end453
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup505

do.body459:                                       ; preds = %if.end453
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_read_attribute_info.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_read_attribute_info, %if.then471)) #8
          to label %do.end478 [label %if.then471], !srcloc !167

if.then471:                                       ; preds = %do.body459
  call void @__sanitizer_cov_trace_pc() #10
  %152 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %chip, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  %dev.i713 = getelementptr inbounds %struct.pci_dev, ptr %155, i32 0, i32 44
  %conv473 = zext i8 %101 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_read_attribute_info.__UNIQUE_ID_ddebug304, ptr noundef %dev.i713, ptr noundef nonnull @.str.27, i32 noundef %conv473, i32 noundef %conv432, i32 noundef %conv454) #8
  br label %do.end478

do.end478:                                        ; preds = %if.then471, %do.body459
  %156 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %ms_card1, align 4
  %158 = and i16 %157, 2303
  call void @__sanitizer_cov_trace_const_cmp2(i16 2049, i16 %158)
  %.not739 = icmp eq i16 %158, 2049
  br i1 %.not739, label %if.then489, label %if.else494

if.then489:                                       ; preds = %do.end478
  call void @__sanitizer_cov_trace_pc() #10
  %mul490 = mul i32 %xc_total_blk.0, %xc_blk_size.0
  %capacity = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 5
  %159 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %mul490, ptr %capacity, align 4
  %arrayidx492 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 8
  %160 = ptrtoint ptr %arrayidx492 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx492, align 4
  %idxprom = zext i8 %161 to i32
  %arrayidx493 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 31, i32 %idxprom
  %162 = ptrtoint ptr %arrayidx493 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %mul490, ptr %arrayidx493, align 4
  br label %cleanup505

if.else494:                                       ; preds = %do.end478
  call void @__sanitizer_cov_trace_pc() #10
  %conv495 = zext i16 %total_blk.0 to i32
  %conv496 = zext i16 %blk_size.0 to i32
  %mul497 = mul nuw i32 %conv495, %conv496
  %capacity498 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 5
  %163 = ptrtoint ptr %capacity498 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %mul497, ptr %capacity498, align 4
  %arrayidx501 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 8
  %164 = ptrtoint ptr %arrayidx501 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx501, align 4
  %idxprom502 = zext i8 %165 to i32
  %arrayidx503 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 31, i32 %idxprom502
  %166 = ptrtoint ptr %arrayidx503 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %mul497, ptr %arrayidx503, align 4
  br label %cleanup505

cleanup505:                                       ; preds = %if.else494, %if.then489, %if.end453.cleanup505_crit_edge, %if.end431.cleanup505_crit_edge, %if.else425.cleanup505_crit_edge, %if.then419.cleanup505_crit_edge, %if.then273, %if.then258, %if.then253, %if.then249, %if.then174, %if.then169, %if.then165, %if.then99, %if.then88, %if.then75, %if.then62, %if.then57, %if.then45, %if.then40, %if.end23.cleanup505_crit_edge, %for.cond.1.cleanup505_crit_edge, %entry.cleanup505_crit_edge
  %retval.2 = phi i32 [ 1, %if.then40 ], [ 1, %if.then57 ], [ 1, %if.then62 ], [ 1, %if.then88 ], [ 1, %if.then99 ], [ 1, %if.then273 ], [ 1, %if.then75 ], [ 1, %if.then45 ], [ 1, %entry.cleanup505_crit_edge ], [ 10, %if.end23.cleanup505_crit_edge ], [ 1, %if.then419.cleanup505_crit_edge ], [ 1, %if.else425.cleanup505_crit_edge ], [ 1, %if.end431.cleanup505_crit_edge ], [ 1, %if.end453.cleanup505_crit_edge ], [ 0, %if.else494 ], [ 0, %if.then489 ], [ 1, %if.then165 ], [ 1, %if.then169 ], [ 1, %if.then174 ], [ 1, %if.then249 ], [ 1, %if.then253 ], [ 1, %if.then258 ], [ 1, %for.cond.1.cleanup505_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_prepare_reset(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  %0 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %ms_card1, align 4
  %check_ms_flow = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 6
  %1 = ptrtoint ptr %check_ms_flow to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %check_ms_flow, align 4
  %switch_8bit_fail = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 7
  %2 = ptrtoint ptr %switch_8bit_fail to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %switch_8bit_fail, align 1
  %delay_write_flag = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 22, i32 4
  %3 = ptrtoint ptr %delay_write_flag to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %delay_write_flag, align 1
  %pro_under_formatting = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 11
  %4 = ptrtoint ptr %pro_under_formatting to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %pro_under_formatting, align 4
  %call = tail call i32 @ms_power_off_card3v3(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ft2_fast_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 131
  %5 = ptrtoint ptr %ft2_fast_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ft2_fast_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %__here, label %if.end.if.end71_crit_edge

if.end.if.end71_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

__here:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = tail call i32 @llvm.read_register.i32(metadata !157) #8
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 212
  %11 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 ptrtoint (ptr blockaddress(@ms_prepare_reset, %__here) to i32), ptr %task_state_change, align 4
  %12 = load ptr, ptr %task, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 1, ptr %12, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !172
  %call68 = tail call i32 @schedule_timeout(i32 noundef 25) #8
  br label %if.end71

if.end71:                                         ; preds = %__here, %if.end.if.end71_crit_edge
  %call72 = tail call i32 @enable_card_clock(ptr noundef %chip, i8 noundef zeroext 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73.not = icmp eq i32 %call72, 0
  br i1 %cmp73.not, label %if.end75, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end75:                                         ; preds = %if.end71
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %14 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool76.not = icmp eq i32 %15, 0
  br i1 %tobool76.not, label %if.else, label %if.then77

if.then77:                                        ; preds = %if.end75
  %ci.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %16 = ptrtoint ptr %ci.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ci.i, align 4
  %product_id.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %17 = ptrtoint ptr %product_id.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %product_id.i, align 2
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.68)
  switch i16 %18, label %if.then77.ms_pull_ctl_enable.exit_crit_edge [
    i16 21000, label %if.then.i
    i16 21128, label %if.then7.i
  ]

if.then77.ms_pull_ctl_enable.exit_crit_edge:      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_pull_ctl_enable.exit

if.then.i:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -672, i8 noundef zeroext -1, i8 noundef zeroext 81) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -671, i8 noundef zeroext -1, i8 noundef zeroext 81) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -670, i8 noundef zeroext -1, i8 noundef zeroext 75) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -669, i8 noundef zeroext -1, i8 noundef zeroext 85) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -668, i8 noundef zeroext -1, i8 noundef zeroext -76) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -667, i8 noundef zeroext -1, i8 noundef zeroext 5) #8
  br label %ms_pull_ctl_enable.exit

if.then7.i:                                       ; preds = %if.then77
  %baro_pkg.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 73
  %20 = ptrtoint ptr %baro_pkg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %baro_pkg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp8.i = icmp eq i32 %21, 0
  br i1 %cmp8.i, label %if.then10.i, label %if.then7.i.ms_pull_ctl_enable.exit_crit_edge

if.then7.i.ms_pull_ctl_enable.exit_crit_edge:     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_pull_ctl_enable.exit

if.then10.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -672, i8 noundef zeroext -1, i8 noundef zeroext 85) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -671, i8 noundef zeroext -1, i8 noundef zeroext 69) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -670, i8 noundef zeroext -1, i8 noundef zeroext 75) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -669, i8 noundef zeroext -1, i8 noundef zeroext 41) #8
  br label %ms_pull_ctl_enable.exit

ms_pull_ctl_enable.exit:                          ; preds = %if.then10.i, %if.then7.i.ms_pull_ctl_enable.exit_crit_edge, %if.then.i, %if.then77.ms_pull_ctl_enable.exit_crit_edge
  %call.i = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 8, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp79.not = icmp sgt i32 %call.i, -1
  br i1 %cmp79.not, label %ms_pull_ctl_enable.exit.if.end86_crit_edge, label %ms_pull_ctl_enable.exit.cleanup_crit_edge

ms_pull_ctl_enable.exit.cleanup_crit_edge:        ; preds = %ms_pull_ctl_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ms_pull_ctl_enable.exit.if.end86_crit_edge:       ; preds = %ms_pull_ctl_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.else:                                          ; preds = %if.end75
  %call82 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -995, i8 noundef zeroext 48, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.else.if.end86_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.if.end86_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.end86:                                         ; preds = %if.else.if.end86_crit_edge, %ms_pull_ctl_enable.exit.if.end86_crit_edge
  %22 = ptrtoint ptr %ft2_fast_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ft2_fast_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool88.not = icmp eq i32 %23, 0
  br i1 %tobool88.not, label %if.then89, label %if.end86.if.end205_crit_edge

if.end86.if.end205_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

if.then89:                                        ; preds = %if.end86
  %call90 = tail call i32 @card_power_on(ptr noundef %chip, i8 noundef zeroext 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91.not = icmp eq i32 %call90, 0
  br i1 %cmp91.not, label %__here145, label %if.then89.cleanup_crit_edge

if.then89.cleanup_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

__here145:                                        ; preds = %if.then89
  %24 = tail call i32 @llvm.read_register.i32(metadata !157) #8
  %and.i282 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i282 to ptr
  %task148 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task148 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task148, align 8
  %task_state_change149 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 212
  %28 = ptrtoint ptr %task_state_change149 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 ptrtoint (ptr blockaddress(@ms_prepare_reset, %__here145) to i32), ptr %task_state_change149, align 4
  %29 = load ptr, ptr %task148, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 1, ptr %29, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !173
  %call175 = tail call i32 @schedule_timeout(i32 noundef 15) #8
  %lun_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 67
  %31 = ptrtoint ptr %lun_mode to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %lun_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp178 = icmp eq i8 %32, 1
  %. = select i1 %cmp178, i32 96, i32 6
  %ocp_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 19
  %33 = ptrtoint ptr %ocp_stat to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ocp_stat, align 4
  %conv183 = zext i8 %34 to i32
  %and = and i32 %., %conv183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool185.not = icmp eq i32 %and, 0
  br i1 %tobool185.not, label %__here145.if.end205_crit_edge, label %do.body187

__here145.if.end205_crit_edge:                    ; preds = %__here145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

do.body187:                                       ; preds = %__here145
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_prepare_reset.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_prepare_reset, %if.then197)) #8
          to label %cleanup [label %if.then197], !srcloc !167

if.then197:                                       ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %39 = ptrtoint ptr %ocp_stat to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ocp_stat, align 4
  %conv200 = zext i8 %40 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_prepare_reset.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.13, i32 noundef %conv200) #8
  br label %cleanup

if.end205:                                        ; preds = %__here145.if.end205_crit_edge, %if.end86.if.end205_crit_edge
  %call206 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -683, i8 noundef zeroext 8, i8 noundef zeroext 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %if.end209, label %if.end205.cleanup_crit_edge

if.end205.cleanup_crit_edge:                      ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end209:                                        ; preds = %if.end205
  %41 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool211.not = icmp eq i32 %42, 0
  br i1 %tobool211.not, label %if.else217, label %if.then212

if.then212:                                       ; preds = %if.end209
  %call213 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -704, i8 noundef zeroext -1, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %if.then212.if.end222_crit_edge, label %if.then212.cleanup_crit_edge

if.then212.cleanup_crit_edge:                     ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then212.if.end222_crit_edge:                   ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end222

if.else217:                                       ; preds = %if.end209
  %call218 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -704, i8 noundef zeroext -1, i8 noundef zeroext -128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %if.else217.if.end222_crit_edge, label %if.else217.cleanup_crit_edge

if.else217.cleanup_crit_edge:                     ; preds = %if.else217
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else217.if.end222_crit_edge:                   ; preds = %if.else217
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end222

if.end222:                                        ; preds = %if.else217.if.end222_crit_edge, %if.then212.if.end222_crit_edge
  %call223 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -702, i8 noundef zeroext -1, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %if.end226, label %if.end222.cleanup_crit_edge

if.end222.cleanup_crit_edge:                      ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end226:                                        ; preds = %if.end222
  %call227 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %if.end230, label %if.end226.cleanup_crit_edge

if.end226.cleanup_crit_edge:                      ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end230:                                        ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #10
  %call231 = tail call fastcc i32 @ms_set_init_para(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %cmp232.not = icmp ne i32 %call231, 0
  %.281 = zext i1 %cmp232.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end230, %if.end226.cleanup_crit_edge, %if.end222.cleanup_crit_edge, %if.else217.cleanup_crit_edge, %if.then212.cleanup_crit_edge, %if.end205.cleanup_crit_edge, %if.then197, %do.body187, %if.then89.cleanup_crit_edge, %if.else.cleanup_crit_edge, %ms_pull_ctl_enable.exit.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end71.cleanup_crit_edge ], [ 1, %ms_pull_ctl_enable.exit.cleanup_crit_edge ], [ %call82, %if.else.cleanup_crit_edge ], [ 1, %if.then89.cleanup_crit_edge ], [ 1, %if.then197 ], [ %call206, %if.end205.cleanup_crit_edge ], [ %call213, %if.then212.cleanup_crit_edge ], [ %call218, %if.else217.cleanup_crit_edge ], [ %call223, %if.end222.cleanup_crit_edge ], [ %call227, %if.end226.cleanup_crit_edge ], [ %.281, %if.end230 ], [ 1, %do.body187 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_identify_media_type(ptr noundef %chip, i32 noundef %switch_8bit_bus) unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !168
  %call = tail call fastcc i32 @ms_set_rw_reg_addr(ptr noundef %chip, i8 noundef zeroext 2, i8 noundef zeroext 6, i8 noundef zeroext 16, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %call4 = tail call fastcc i32 @ms_transfer_tpc(ptr noundef %chip, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 6, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %for.body.preheader.if.end10_crit_edge, label %for.inc

for.body.preheader.if.end10_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

for.inc:                                          ; preds = %for.body.preheader
  %call4.1 = tail call fastcc i32 @ms_transfer_tpc(ptr noundef %chip, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 6, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1)
  %cmp5.1 = icmp eq i32 %call4.1, 0
  br i1 %cmp5.1, label %for.inc.if.end10_crit_edge, label %for.inc.1

for.inc.if.end10_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

for.inc.1:                                        ; preds = %for.inc
  %call4.2 = tail call fastcc i32 @ms_transfer_tpc(ptr noundef %chip, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 6, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2)
  %cmp5.2 = icmp eq i32 %call4.2, 0
  br i1 %cmp5.2, label %for.inc.1.if.end10_crit_edge, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.1.if.end10_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end10:                                         ; preds = %for.inc.1.if.end10_crit_edge, %for.inc.if.end10_crit_edge, %for.body.preheader.if.end10_crit_edge
  %call11 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -1534, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %do.body, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_identify_media_type.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_identify_media_type, %if.then18)) #8
          to label %do.end [label %if.then18], !srcloc !167

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %conv = zext i8 %6 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_identify_media_type.__UNIQUE_ID_ddebug294, ptr noundef %dev.i, ptr noundef nonnull @.str.15, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %8, label %if.then28 [
    i8 1, label %if.end30
    i8 2, label %do.end.cleanup_crit_edge
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then28:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %check_ms_flow = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 6
  %10 = ptrtoint ptr %check_ms_flow to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %check_ms_flow, align 4
  br label %cleanup

if.end30:                                         ; preds = %do.end
  %call31 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -1532, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.body35, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body35:                                        ; preds = %if.end30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_identify_media_type.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_identify_media_type, %if.then47)) #8
          to label %do.end52 [label %if.then47], !srcloc !167

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev.i217 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %val, align 1
  %conv49 = zext i8 %16 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_identify_media_type.__UNIQUE_ID_ddebug295, ptr noundef %dev.i217, ptr noundef nonnull @.str.16, i32 noundef %conv49) #8
  br label %do.end52

do.end52:                                         ; preds = %if.then47, %do.body35
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp54.not = icmp eq i8 %18, 0
  br i1 %cmp54.not, label %if.end58, label %if.then56

if.then56:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #10
  %check_ms_flow57 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 6
  %19 = ptrtoint ptr %check_ms_flow57 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %check_ms_flow57, align 4
  br label %cleanup

if.end58:                                         ; preds = %do.end52
  %call59 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -1531, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %do.body63, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body63:                                        ; preds = %if.end58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_identify_media_type.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_identify_media_type, %if.then75)) #8
          to label %do.end80 [label %if.then75], !srcloc !167

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %dev.i218 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %val, align 1
  %conv77 = zext i8 %25 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_identify_media_type.__UNIQUE_ID_ddebug296, ptr noundef %dev.i218, ptr noundef nonnull @.str.17, i32 noundef %conv77) #8
  br label %do.end80

do.end80:                                         ; preds = %if.then75, %do.body63
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %val, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %27, label %if.else115 [
    i8 0, label %if.then84
    i8 1, label %do.end80.if.then110_crit_edge
    i8 2, label %do.end80.if.then110_crit_edge227
    i8 3, label %do.end80.if.then110_crit_edge228
  ]

do.end80.if.then110_crit_edge228:                 ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then110

do.end80.if.then110_crit_edge227:                 ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then110

do.end80.if.then110_crit_edge:                    ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then110

if.then84:                                        ; preds = %do.end80
  %call85 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -1536, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.then84.cleanup_crit_edge

if.then84.cleanup_crit_edge:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end88:                                         ; preds = %if.then84
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %val, align 1
  %31 = and i8 %30, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool90.not = icmp eq i8 %31, 0
  %card_wp94 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 24
  %32 = ptrtoint ptr %card_wp94 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %card_wp94, align 1
  br i1 %tobool90.not, label %if.else, label %if.then91

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  %34 = or i8 %33, 8
  %35 = ptrtoint ptr %card_wp94 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %card_wp94, align 1
  br label %if.end118

if.else:                                          ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  %36 = and i8 %33, -9
  %37 = ptrtoint ptr %card_wp94 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %card_wp94, align 1
  br label %if.end118

if.then110:                                       ; preds = %do.end80.if.then110_crit_edge, %do.end80.if.then110_crit_edge227, %do.end80.if.then110_crit_edge228
  %card_wp111 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 24
  %38 = ptrtoint ptr %card_wp111 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %card_wp111, align 1
  %40 = or i8 %39, 8
  store i8 %40, ptr %card_wp111, align 1
  br label %if.end118

if.else115:                                       ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #10
  %check_ms_flow116 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 6
  %41 = ptrtoint ptr %check_ms_flow116 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %check_ms_flow116, align 4
  br label %cleanup

if.end118:                                        ; preds = %if.then110, %if.else, %if.then91
  %42 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %ms_card1, align 4
  %44 = or i16 %43, 1
  store i16 %44, ptr %ms_card1, align 4
  %call122 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -1533, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %do.body126, label %if.end118.cleanup_crit_edge

if.end118.cleanup_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body126:                                       ; preds = %if.end118
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_identify_media_type.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_identify_media_type, %if.then138)) #8
          to label %do.end143 [label %if.then138], !srcloc !167

if.then138:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chip, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %dev.i219 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %49 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %val, align 1
  %conv140 = zext i8 %50 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_identify_media_type.__UNIQUE_ID_ddebug297, ptr noundef %dev.i219, ptr noundef nonnull @.str.18, i32 noundef %conv140) #8
  br label %do.end143

do.end143:                                        ; preds = %if.then138, %do.body126
  %51 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %val, align 1
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %52, label %do.end143.cleanup_crit_edge [
    i8 0, label %if.then147
    i8 7, label %if.then156
  ]

do.end143.cleanup_crit_edge:                      ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then147:                                       ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %ms_card1, align 4
  %56 = and i16 %55, 15
  store i16 %56, ptr %ms_card1, align 4
  br label %cleanup

if.then156:                                       ; preds = %do.end143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch_8bit_bus)
  %tobool157.not = icmp eq i32 %switch_8bit_bus, 0
  %57 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %ms_card1, align 4
  br i1 %tobool157.not, label %if.else163, label %if.then158

if.then158:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #10
  %59 = or i16 %58, 1024
  %60 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %ms_card1, align 4
  br label %cleanup

if.else163:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #10
  %61 = and i16 %58, 15
  %62 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %ms_card1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else163, %if.then158, %if.then147, %do.end143.cleanup_crit_edge, %if.end118.cleanup_crit_edge, %if.else115, %if.then84.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %if.then56, %if.end30.cleanup_crit_edge, %if.then28, %do.end.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then56 ], [ 1, %if.else115 ], [ 1, %entry.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ 1, %do.end.cleanup_crit_edge ], [ 1, %if.then28 ], [ %call31, %if.end30.cleanup_crit_edge ], [ %call59, %if.end58.cleanup_crit_edge ], [ %call85, %if.then84.cleanup_crit_edge ], [ %call122, %if.end118.cleanup_crit_edge ], [ 1, %do.end143.cleanup_crit_edge ], [ 0, %if.else163 ], [ 0, %if.then158 ], [ 0, %if.then147 ], [ 1, %for.inc.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_confirm_cpu_startup(ptr noundef %chip) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !168
  br label %do.body

do.body:                                          ; preds = %__here.do.body_crit_edge, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc13, %__here.do.body_crit_edge ]
  %call = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.preheader, label %if.then

for.body.preheader:                               ; preds = %do.body
  %call3 = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %val, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %for.body.preheader.for.end_crit_edge, label %for.inc

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 8
  %1 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 32, ptr %err_code2.i, align 2
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %call3.1 = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %val, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %cmp4.1 = icmp eq i32 %call3.1, 0
  br i1 %cmp4.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %call3.2 = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %val, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2)
  %cmp4.2 = icmp ne i32 %call3.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %k.0)
  %cmp10 = icmp ugt i32 %k.0, 100
  %or.cond137 = select i1 %cmp4.2, i1 true, i1 %cmp10
  br i1 %or.cond137, label %for.inc.1.cleanup_crit_edge, label %for.inc.1.__here_crit_edge

for.inc.1.__here_crit_edge:                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.preheader.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %k.0)
  %cmp10.old = icmp ugt i32 %k.0, 100
  br i1 %cmp10.old, label %for.end.cleanup_crit_edge, label %for.end.__here_crit_edge

for.end.__here_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

__here:                                           ; preds = %for.end.__here_crit_edge, %for.inc.1.__here_crit_edge
  %inc13 = add nuw nsw i32 %k.0, 1
  %2 = call i32 @llvm.read_register.i32(metadata !157) #8
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 212
  %6 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 ptrtoint (ptr blockaddress(@ms_confirm_cpu_startup, %__here) to i32), ptr %task_state_change, align 4
  %7 = load ptr, ptr %task, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %7, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !174
  %call78 = call i32 @schedule_timeout(i32 noundef 10) #8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val, align 1
  %tobool82.not = icmp sgt i8 %10, -1
  br i1 %tobool82.not, label %__here.do.body_crit_edge, label %for.body89.preheader

__here.do.body_crit_edge:                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body89.preheader:                             ; preds = %__here
  %call90 = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %val, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %for.body89.preheader.if.end101_crit_edge, label %for.inc95

for.body89.preheader.if.end101_crit_edge:         ; preds = %for.body89.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

for.inc95:                                        ; preds = %for.body89.preheader
  %call90.1 = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %val, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.1)
  %cmp91.1 = icmp eq i32 %call90.1, 0
  br i1 %cmp91.1, label %for.inc95.if.end101_crit_edge, label %for.inc95.1

for.inc95.if.end101_crit_edge:                    ; preds = %for.inc95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

for.inc95.1:                                      ; preds = %for.inc95
  %call90.2 = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %val, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.2)
  %cmp91.2 = icmp eq i32 %call90.2, 0
  br i1 %cmp91.2, label %for.inc95.1.if.end101_crit_edge, label %for.inc95.1.cleanup_crit_edge

for.inc95.1.cleanup_crit_edge:                    ; preds = %for.inc95.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc95.1.if.end101_crit_edge:                  ; preds = %for.inc95.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.end101:                                        ; preds = %for.inc95.1.if.end101_crit_edge, %for.inc95.if.end101_crit_edge, %for.body89.preheader.if.end101_crit_edge
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val, align 1
  %conv102 = zext i8 %12 to i32
  %and103 = and i32 %conv102, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end101.cleanup_crit_edge, label %if.then105

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then105:                                       ; preds = %if.end101
  %and107 = and i32 %conv102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.then105.cleanup_crit_edge, label %if.then109

if.then105.cleanup_crit_edge:                     ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then109:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #10
  %card_wp = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 24
  %13 = ptrtoint ptr %card_wp to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %card_wp, align 1
  %15 = or i8 %14, 8
  store i8 %15, ptr %card_wp, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then109, %if.then105.cleanup_crit_edge, %if.end101.cleanup_crit_edge, %for.inc95.1.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then105.cleanup_crit_edge ], [ 0, %if.then109 ], [ 0, %if.end101.cleanup_crit_edge ], [ 1, %for.inc95.1.cleanup_crit_edge ], [ 1, %for.end.cleanup_crit_edge ], [ 1, %for.inc.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @detect_card_cd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_switch_8bit_bus(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #8
  %0 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 64, ptr %data, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %0, align 1
  %call = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %entry.if.end7_crit_edge, label %for.cond

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

for.cond:                                         ; preds = %entry
  %call.1 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp4.1 = icmp eq i32 %call.1, 0
  br i1 %cmp4.1, label %for.cond.if.end7_crit_edge, label %for.cond.1

for.cond.if.end7_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

for.cond.1:                                       ; preds = %for.cond
  %call.2 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp4.2 = icmp eq i32 %call.2, 0
  br i1 %cmp4.2, label %for.cond.1.if.end7_crit_edge, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1.if.end7_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end7:                                          ; preds = %for.cond.1.if.end7_crit_edge, %for.cond.if.end7_crit_edge, %entry.if.end7_crit_edge
  %call8 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -704, i8 noundef zeroext -104, i8 noundef zeroext -104) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %3 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ms_card1, align 4
  %5 = or i16 %4, 512
  store i16 %5, ptr %ms_card1, align 4
  %conv.i = zext i16 %5 to i32
  %6 = and i32 %conv.i, 1791
  call void @__sanitizer_cov_trace_const_cmp4(i32 1537, i32 %6)
  %7 = icmp eq i32 %6, 1537
  br i1 %7, label %if.then.i, label %if.else11.i

if.then.i:                                        ; preds = %if.end10
  %asic_code.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %8 = ptrtoint ptr %asic_code.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %asic_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %asic_ms_hg_clk.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 99
  br label %if.end38.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %fpga_ms_hg_clk.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 91
  br label %if.end38.i

if.else11.i:                                      ; preds = %if.end10
  %and.i = and i32 %conv.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp15.i = icmp ne i32 %and.i, 1
  %and19.i = and i32 %conv.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %or.cond72.i = and i1 %cmp15.i, %tobool20.not.i
  %asic_code30.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %10 = ptrtoint ptr %asic_code30.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %asic_code30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool31.not.i = icmp eq i32 %11, 0
  br i1 %or.cond72.i, label %if.else29.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.else11.i
  br i1 %tobool31.not.i, label %if.else26.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  %asic_ms_4bit_clk.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 100
  br label %if.end38.i

if.else26.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  %fpga_ms_4bit_clk.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 92
  br label %if.end38.i

if.else29.i:                                      ; preds = %if.else11.i
  br i1 %tobool31.not.i, label %if.else34.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #10
  %asic_ms_1bit_clk.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 101
  br label %if.end38.i

if.else34.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #10
  %fpga_ms_1bit_clk.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 93
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else34.i, %if.then32.i, %if.else26.i, %if.then24.i, %if.else.i, %if.then9.i
  %fpga_ms_4bit_clk.sink.i = phi ptr [ %fpga_ms_4bit_clk.i, %if.else26.i ], [ %asic_ms_4bit_clk.i, %if.then24.i ], [ %fpga_ms_1bit_clk.i, %if.else34.i ], [ %asic_ms_1bit_clk.i, %if.then32.i ], [ %asic_ms_hg_clk.i, %if.then9.i ], [ %fpga_ms_hg_clk.i, %if.else.i ]
  %12 = ptrtoint ptr %fpga_ms_4bit_clk.sink.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fpga_ms_4bit_clk.sink.i, align 4
  %ms_clock27.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 24
  %14 = ptrtoint ptr %ms_clock27.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ms_clock27.i, align 4
  %asic_code.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %15 = ptrtoint ptr %asic_code.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %asic_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %13) #8
  br label %switch_clock.exit.i

if.else.i.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %13) #8
  br label %switch_clock.exit.i

switch_clock.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  %retval1.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i)
  %cmp40.not.i = icmp eq i32 %retval1.0.i.i, 0
  br i1 %cmp40.not.i, label %ms_set_init_para.exit, label %switch_clock.exit.i.cleanup_crit_edge

switch_clock.exit.i.cleanup_crit_edge:            ; preds = %switch_clock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ms_set_init_para.exit:                            ; preds = %switch_clock.exit.i
  %call44.i = call i32 @select_card(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %cmp45.not.i.not = icmp eq i32 %call44.i, 0
  br i1 %cmp45.not.i.not, label %for.body20.preheader, label %ms_set_init_para.exit.cleanup_crit_edge

ms_set_init_para.exit.cleanup_crit_edge:          ; preds = %ms_set_init_para.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body20.preheader:                             ; preds = %ms_set_init_para.exit
  %call21 = call fastcc i32 @ms_transfer_tpc(ptr noundef %chip, i8 noundef zeroext 0, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %for.cond17, label %for.body20.preheader.cleanup_crit_edge

for.body20.preheader.cleanup_crit_edge:           ; preds = %for.body20.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond17:                                       ; preds = %for.body20.preheader
  %call21.1 = call fastcc i32 @ms_transfer_tpc(ptr noundef %chip, i8 noundef zeroext 0, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.1)
  %cmp22.not.1 = icmp eq i32 %call21.1, 0
  br i1 %cmp22.not.1, label %for.cond17.1, label %for.cond17.cleanup_crit_edge

for.cond17.cleanup_crit_edge:                     ; preds = %for.cond17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond17.1:                                     ; preds = %for.cond17
  call void @__sanitizer_cov_trace_pc() #10
  %call21.2 = call fastcc i32 @ms_transfer_tpc(ptr noundef %chip, i8 noundef zeroext 0, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.2)
  %cmp22.not.2 = icmp ne i32 %call21.2, 0
  %spec.select = zext i1 %cmp22.not.2 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.cond17.1, %for.cond17.cleanup_crit_edge, %for.body20.preheader.cleanup_crit_edge, %ms_set_init_para.exit.cleanup_crit_edge, %switch_clock.exit.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7.cleanup_crit_edge ], [ 1, %ms_set_init_para.exit.cleanup_crit_edge ], [ 1, %switch_clock.exit.i.cleanup_crit_edge ], [ 1, %for.cond.1.cleanup_crit_edge ], [ 1, %for.body20.preheader.cleanup_crit_edge ], [ 1, %for.cond17.cleanup_crit_edge ], [ %spec.select, %for.cond17.1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @card_power_on(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_send_cmd(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_transfer_tpc(ptr noundef %chip, i8 noundef zeroext %trans_mode, i8 noundef zeroext %tpc, i8 noundef zeroext %cnt, i8 noundef zeroext %cfg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_transfer_tpc.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_transfer_tpc, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %conv = zext i8 %tpc to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_transfer_tpc.__UNIQUE_ID_ddebug287, ptr noundef %dev.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %4 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -703, i8 noundef zeroext -1, i8 noundef zeroext %tpc) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -699, i8 noundef zeroext -1, i8 noundef zeroext %cnt) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -702, i8 noundef zeroext -1, i8 noundef zeroext %cfg) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  %5 = or i8 %trans_mode, -128
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -701, i8 noundef zeroext -1, i8 noundef zeroext %5) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext -701, i8 noundef zeroext 64, i8 noundef zeroext 64) #8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext -702, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %call8 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 8, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end.cleanup.sink.split.sink.split_crit_edge, label %if.end12

do.end.cleanup.sink.split.sink.split_crit_edge:   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split

if.end12:                                         ; preds = %do.end
  %host_cmds_ptr.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 4
  %6 = ptrtoint ptr %host_cmds_ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_cmds_ptr.i, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 1
  %8 = and i8 %tpc, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool15.not = icmp eq i8 %8, 0
  br i1 %tobool15.not, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end12
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr, align 1
  %11 = and i8 %10, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool19.not = icmp eq i8 %11, 0
  br i1 %tobool19.not, label %if.then16.if.end38_crit_edge, label %if.then16.cleanup.sink.split_crit_edge

if.then16.cleanup.sink.split_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then16.if.end38_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.else:                                          ; preds = %if.end12
  %12 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ms_card1, align 4
  %14 = and i16 %13, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %14)
  %cmp25 = icmp eq i16 %14, 1
  br i1 %cmp25, label %land.lhs.true, label %if.else.if.end38_crit_edge

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

land.lhs.true:                                    ; preds = %if.else
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr, align 1
  %conv27 = zext i8 %16 to i32
  %and28 = and i32 %conv27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp ne i32 %and28, 0
  %and32 = and i32 %conv27, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %or.cond = or i1 %tobool29.not, %tobool33.not
  br i1 %or.cond, label %land.lhs.true.if.end38_crit_edge, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.end38:                                         ; preds = %land.lhs.true.if.end38_crit_edge, %if.else.if.end38_crit_edge, %if.then16.if.end38_crit_edge
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr, align 1
  %19 = and i8 %18, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool41.not = icmp eq i8 %19, 0
  br i1 %tobool41.not, label %if.end38.cleanup_crit_edge, label %if.end38.cleanup.sink.split.sink.split_crit_edge

if.end38.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split.sink.split:                    ; preds = %if.end38.cleanup.sink.split.sink.split_crit_edge, %do.end.cleanup.sink.split.sink.split_crit_edge
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %land.lhs.true.cleanup.sink.split_crit_edge, %if.then16.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ -128, %if.then16.cleanup.sink.split_crit_edge ], [ 8, %land.lhs.true.cleanup.sink.split_crit_edge ], [ 64, %cleanup.sink.split.sink.split ]
  %err_code2.i76 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 8
  %20 = ptrtoint ptr %err_code2.i76 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink, ptr %err_code2.i76, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end38.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end38.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_read_status_reg(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %val = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !168
  %1 = getelementptr inbounds [2 x i8], ptr %val, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !168
  %call = tail call fastcc i32 @ms_set_rw_reg_addr(ptr noundef %chip, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 4, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull %val, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 1
  %5 = and i8 %4, 21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.then6

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 8
  %6 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %err_code2.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_read_extra_data(ptr noundef %chip, i16 noundef zeroext %block_addr, i8 noundef zeroext %page_num, ptr noundef writeonly %buf) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca [2 x i8], align 1
  %val = alloca i8, align 1
  %data = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !168
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %data) #8
  %1 = getelementptr inbounds i8, ptr %data, i32 6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 -1, ptr %1, align 1
  %call = tail call fastcc i32 @ms_set_rw_reg_addr(ptr noundef %chip, i8 noundef zeroext 22, i8 noundef zeroext 9, i8 noundef zeroext 16, i8 noundef zeroext 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 5
  %4 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 4
  %5 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 3
  %6 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 2
  %7 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 1
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  %8 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ms_card1, align 4
  %10 = and i16 %9, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  %. = select i1 %tobool.not, i8 -128, i8 -120
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %., ptr %data, align 1
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %7, align 1
  %13 = lshr i16 %block_addr, 8
  %conv8 = trunc i16 %13 to i8
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv8, ptr %6, align 1
  %conv10 = trunc i16 %block_addr to i8
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv10, ptr %5, align 1
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 64, ptr %4, align 1
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %page_num, ptr %3, align 1
  %call16 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.end.if.end24_crit_edge, label %for.inc

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

for.inc:                                          ; preds = %if.end
  %call16.1 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.1)
  %cmp17.1 = icmp eq i32 %call16.1, 0
  br i1 %cmp17.1, label %for.inc.if.end24_crit_edge, label %for.inc.1

for.inc.if.end24_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

for.inc.1:                                        ; preds = %for.inc
  %call16.2 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.2)
  %cmp17.2 = icmp eq i32 %call16.2, 0
  br i1 %cmp17.2, label %for.inc.1.if.end24_crit_edge, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.1.if.end24_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.end24:                                         ; preds = %for.inc.1.if.end24_crit_edge, %for.inc.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 8
  %18 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %err_code2.i, align 2
  %19 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -86, ptr %data.i, align 1
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %19, align 1
  %call.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp30 = icmp eq i32 %call.i, 0
  br i1 %cmp30, label %if.end24.if.end40_crit_edge, label %for.inc34

if.end24.if.end40_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.inc34:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -86, ptr %data.i, align 1
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %19, align 1
  %call.i.1 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp30.1 = icmp eq i32 %call.i.1, 0
  br i1 %cmp30.1, label %for.inc34.if.end40_crit_edge, label %for.inc34.1

for.inc34.if.end40_crit_edge:                     ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.inc34.1:                                      ; preds = %for.inc34
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -86, ptr %data.i, align 1
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %19, align 1
  %call.i.2 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp30.2 = icmp eq i32 %call.i.2, 0
  br i1 %cmp30.2, label %for.inc34.1.if.end40_crit_edge, label %for.inc34.1.cleanup_crit_edge

for.inc34.1.cleanup_crit_edge:                    ; preds = %for.inc34.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc34.1.if.end40_crit_edge:                   ; preds = %for.inc34.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.end40:                                         ; preds = %for.inc34.1.if.end40_crit_edge, %for.inc34.if.end40_crit_edge, %if.end24.if.end40_crit_edge
  %26 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %err_code2.i, align 2
  %call41 = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %val, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42.not = icmp eq i32 %call41, 0
  br i1 %cmp42.not, label %if.end45, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %val, align 1
  %conv46 = zext i8 %28 to i32
  %and47 = and i32 %conv46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 8, ptr %err_code2.i, align 2
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  %30 = and i32 %conv46, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %30)
  %.not = icmp eq i32 %30, 192
  br i1 %.not, label %if.then58, label %if.end50.if.end70_crit_edge

if.end50.if.end70_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then58:                                        ; preds = %if.end50
  %call59 = call fastcc i32 @ms_read_status_reg(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60.not = icmp eq i32 %call59, 0
  br i1 %cmp60.not, label %if.end63, label %if.then58.cleanup_crit_edge

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end63:                                         ; preds = %if.then58
  %call64 = call fastcc i32 @ms_set_rw_reg_addr(ptr noundef %chip, i8 noundef zeroext 22, i8 noundef zeroext 9, i8 noundef zeroext 16, i8 noundef zeroext 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65.not = icmp eq i32 %call64, 0
  br i1 %cmp65.not, label %if.end63.if.end70_crit_edge, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end63.if.end70_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.end70:                                         ; preds = %if.end63.if.end70_crit_edge, %if.end50.if.end70_crit_edge
  %call72 = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 4, i8 noundef zeroext 9, i8 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73.not = icmp eq i32 %call72, 0
  br i1 %cmp73.not, label %if.end76, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end76:                                         ; preds = %if.end70
  %tobool77.not = icmp eq ptr %buf, null
  br i1 %tobool77.not, label %if.end76.cleanup_crit_edge, label %if.then79

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %31 = call ptr @memcpy(ptr %buf, ptr %data, i32 9)
  br label %cleanup

cleanup:                                          ; preds = %if.then79, %if.end76.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.then58.cleanup_crit_edge, %if.then49, %if.end40.cleanup_crit_edge, %for.inc34.1.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then49 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end40.cleanup_crit_edge ], [ 1, %if.then58.cleanup_crit_edge ], [ 1, %if.end63.cleanup_crit_edge ], [ 1, %if.end70.cleanup_crit_edge ], [ 0, %if.then79 ], [ 0, %if.end76.cleanup_crit_edge ], [ 1, %for.inc.1.cleanup_crit_edge ], [ 1, %for.inc34.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %data) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_read_page(ptr noundef %chip, i16 noundef zeroext %block_addr, i8 noundef zeroext %page_num) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca [2 x i8], align 1
  %val = alloca i8, align 1
  %data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !168
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data) #8
  %call = tail call fastcc i32 @ms_set_rw_reg_addr(ptr noundef %chip, i8 noundef zeroext 22, i8 noundef zeroext 9, i8 noundef zeroext 16, i8 noundef zeroext 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 5
  %2 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 4
  %3 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 3
  %4 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 2
  %5 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 1
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  %6 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ms_card1, align 4
  %8 = and i16 %7, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  %. = select i1 %tobool.not, i8 -128, i8 -120
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %., ptr %data, align 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %5, align 1
  %11 = lshr i16 %block_addr, 8
  %conv8 = trunc i16 %11 to i8
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv8, ptr %4, align 1
  %conv10 = trunc i16 %block_addr to i8
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv10, ptr %3, align 1
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 32, ptr %2, align 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %page_num, ptr %1, align 1
  %call14 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end18, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %16 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -86, ptr %data.i, align 1
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %16, align 1
  %call.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp20.not = icmp eq i32 %call.i, 0
  br i1 %cmp20.not, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 8
  %19 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %err_code2.i, align 2
  %call24 = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %val, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %if.end28, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val, align 1
  %conv29 = zext i8 %21 to i32
  %and30 = and i32 %conv29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 8, ptr %err_code2.i, align 2
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %and35 = and i32 %conv29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end33.if.end59_crit_edge, label %if.then37

if.end33.if.end59_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then37:                                        ; preds = %if.end33
  %and39 = and i32 %conv29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %and54 = and i32 %conv29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool40.not, label %if.else52, label %if.then41

if.then41:                                        ; preds = %if.then37
  br i1 %tobool55.not, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 4, ptr %err_code2.i, align 2
  br label %cleanup

if.end46:                                         ; preds = %if.then41
  %call47 = call fastcc i32 @ms_read_status_reg(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48.not = icmp eq i32 %call47, 0
  br i1 %cmp48.not, label %if.end46.if.end59_crit_edge, label %if.then50

if.end46.if.end59_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %err_code2.i, align 2
  br label %if.end59

if.else52:                                        ; preds = %if.then37
  br i1 %tobool55.not, label %if.then56, label %if.else52.if.end59_crit_edge

if.else52.if.end59_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then56:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %err_code2.i, align 2
  br label %cleanup

if.end59:                                         ; preds = %if.else52.if.end59_crit_edge, %if.then50, %if.end46.if.end59_crit_edge, %if.end33.if.end59_crit_edge
  %call60 = call fastcc i32 @ms_transfer_tpc(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61.not = icmp eq i32 %call60, 0
  br i1 %cmp61.not, label %if.end64, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end64:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %err_code2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp.i.not = icmp eq i8 %27, 2
  %.90 = zext i1 %cmp.i.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end59.cleanup_crit_edge, %if.then56, %if.then45, %if.then32, %if.end23.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then32 ], [ 1, %if.then45 ], [ 1, %if.then56 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end18.cleanup_crit_edge ], [ 1, %if.end23.cleanup_crit_edge ], [ 1, %if.end59.cleanup_crit_edge ], [ %.90, %if.end64 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switch_ssc_clock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switch_normal_clock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_init_l2p_tbl(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %val1 = alloca i8, align 1
  %val2 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val1) #8
  %0 = ptrtoint ptr %val1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val1, align 1, !annotation !168
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val2) #8
  %1 = ptrtoint ptr %val2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val2, align 1, !annotation !168
  %total_block = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 3
  %2 = ptrtoint ptr %total_block to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %total_block, align 4
  %4 = lshr i16 %3, 9
  %5 = zext i16 %4 to i32
  %segment_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 10
  %6 = ptrtoint ptr %segment_cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %segment_cnt, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_init_l2p_tbl.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_init_l2p_tbl, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %11 = ptrtoint ptr %segment_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %segment_cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_init_l2p_tbl.__UNIQUE_ID_ddebug315, ptr noundef %dev.i, ptr noundef nonnull @.str.39, i32 noundef %12) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %13 = ptrtoint ptr %segment_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %segment_cnt, align 4
  %mul = mul i32 %14, 48
  %call8 = tail call noalias ptr @vzalloc(i32 noundef %mul) #11
  %segment = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 9
  %15 = ptrtoint ptr %segment to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8, ptr %segment, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %do.end.cleanup92_crit_edge, label %if.end12

do.end.cleanup92_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

if.end12:                                         ; preds = %do.end
  %boot_block = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 4
  %16 = ptrtoint ptr %boot_block to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %boot_block, align 2
  %call13 = tail call fastcc i32 @ms_read_page(ptr noundef %chip, i16 noundef zeroext %17, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp.not = icmp eq i32 %call13, 0
  br i1 %cmp.not, label %if.end12.for.body_crit_edge, label %if.end12.INIT_FAIL_crit_edge

if.end12.INIT_FAIL_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %INIT_FAIL

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end12.for.body_crit_edge
  %i.0157 = phi i32 [ %inc49, %for.inc.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  %reg_addr.0156 = phi i16 [ %inc28, %for.inc.for.body_crit_edge ], [ -1536, %if.end12.for.body_crit_edge ]
  %call23 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext %reg_addr.0156, ptr noundef nonnull %val1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24.not = icmp eq i32 %call23, 0
  br i1 %cmp24.not, label %if.end27, label %for.body.INIT_FAIL_crit_edge

for.body.INIT_FAIL_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %INIT_FAIL

if.end27:                                         ; preds = %for.body
  %inc = or i16 %reg_addr.0156, 1
  %inc28 = add nsw i16 %reg_addr.0156, 2
  %call29 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext %inc, ptr noundef nonnull %val2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %if.end33, label %if.end27.INIT_FAIL_crit_edge

if.end27.INIT_FAIL_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %INIT_FAIL

if.end33:                                         ; preds = %if.end27
  %18 = ptrtoint ptr %val1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %val1, align 1
  %conv35 = zext i8 %19 to i16
  %shl = shl nuw i16 %conv35, 8
  %20 = ptrtoint ptr %val2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val2, align 1
  %conv36 = zext i8 %21 to i16
  %or = or i16 %shl, %conv36
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %or)
  %cmp39 = icmp eq i16 %or, -1
  br i1 %cmp39, label %if.end33.for.end_crit_edge, label %for.inc

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %if.end33
  %22 = lshr i16 %conv35, 1
  %div = zext i16 %22 to i32
  %23 = ptrtoint ptr %segment to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %segment, align 4
  %disable_count = getelementptr %struct.zone_entry, ptr %24, i32 %div, i32 6
  %25 = ptrtoint ptr %disable_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %disable_count, align 4
  %inc45 = add i32 %26, 1
  store i32 %inc45, ptr %disable_count, align 4
  %27 = load ptr, ptr %segment, align 4
  %arrayidx48 = getelementptr %struct.zone_entry, ptr %27, i32 %div, i32 2, i32 %26
  %28 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %or, ptr %arrayidx48, align 2
  %inc49 = add nuw nsw i32 %i.0157, 1
  %29 = ptrtoint ptr %total_block to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %total_block, align 4
  %31 = lshr i16 %30, 9
  %narrow = mul nuw nsw i16 %31, 10
  %32 = or i16 %narrow, 1
  %add = zext i16 %32 to i32
  %cmp21 = icmp ult i32 %inc49, %add
  br i1 %cmp21, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end33.for.end_crit_edge
  %33 = ptrtoint ptr %segment_cnt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %segment_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp52158 = icmp sgt i32 %34, 0
  br i1 %cmp52158, label %for.end.for.body54_crit_edge, label %for.end.cleanup92_crit_edge

for.end.cleanup92_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

for.end.for.body54_crit_edge:                     ; preds = %for.end
  br label %for.body54

for.body54:                                       ; preds = %for.inc87.for.body54_crit_edge, %for.end.for.body54_crit_edge
  %i.1159 = phi i32 [ %inc88, %for.inc87.for.body54_crit_edge ], [ 0, %for.end.for.body54_crit_edge ]
  %35 = ptrtoint ptr %segment to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %segment, align 4
  %build_flag = getelementptr %struct.zone_entry, ptr %36, i32 %i.1159, i32 7
  %37 = ptrtoint ptr %build_flag to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %build_flag, align 4
  %38 = load ptr, ptr %segment, align 4
  %arrayidx58 = getelementptr %struct.zone_entry, ptr %38, i32 %i.1159
  %39 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx58, align 4
  %40 = load ptr, ptr %segment, align 4
  %free_table = getelementptr %struct.zone_entry, ptr %40, i32 %i.1159, i32 1
  %41 = ptrtoint ptr %free_table to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %free_table, align 4
  %42 = load ptr, ptr %segment, align 4
  %get_index = getelementptr %struct.zone_entry, ptr %42, i32 %i.1159, i32 4
  %43 = ptrtoint ptr %get_index to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %get_index, align 4
  %44 = load ptr, ptr %segment, align 4
  %set_index = getelementptr %struct.zone_entry, ptr %44, i32 %i.1159, i32 3
  %45 = ptrtoint ptr %set_index to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %set_index, align 4
  %46 = load ptr, ptr %segment, align 4
  %unused_blk_cnt = getelementptr %struct.zone_entry, ptr %46, i32 %i.1159, i32 5
  %47 = ptrtoint ptr %unused_blk_cnt to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %unused_blk_cnt, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_init_l2p_tbl.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_init_l2p_tbl, %if.then79)) #8
          to label %for.inc87 [label %if.then79], !srcloc !167

if.then79:                                        ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chip, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %dev.i145 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %52 = ptrtoint ptr %segment to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %segment, align 4
  %disable_count83 = getelementptr %struct.zone_entry, ptr %53, i32 %i.1159, i32 6
  %54 = ptrtoint ptr %disable_count83 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %disable_count83, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_init_l2p_tbl.__UNIQUE_ID_ddebug316, ptr noundef %dev.i145, ptr noundef nonnull @.str.40, i32 noundef %i.1159, i32 noundef %55) #8
  br label %for.inc87

for.inc87:                                        ; preds = %if.then79, %for.body54
  %inc88 = add nuw nsw i32 %i.1159, 1
  %56 = ptrtoint ptr %segment_cnt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %segment_cnt, align 4
  %cmp52 = icmp slt i32 %inc88, %57
  br i1 %cmp52, label %for.inc87.for.body54_crit_edge, label %for.inc87.cleanup92_crit_edge

for.inc87.cleanup92_crit_edge:                    ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

for.inc87.for.body54_crit_edge:                   ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body54

INIT_FAIL:                                        ; preds = %if.end27.INIT_FAIL_crit_edge, %for.body.INIT_FAIL_crit_edge, %if.end12.INIT_FAIL_crit_edge
  %58 = ptrtoint ptr %segment to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %segment, align 4
  call void @vfree(ptr noundef %59) #8
  %60 = ptrtoint ptr %segment to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %segment, align 4
  br label %cleanup92

cleanup92:                                        ; preds = %INIT_FAIL, %for.inc87.cleanup92_crit_edge, %for.end.cleanup92_crit_edge, %do.end.cleanup92_crit_edge
  %retval.0 = phi i32 [ 1, %INIT_FAIL ], [ 1, %do.end.cleanup92_crit_edge ], [ 0, %for.end.cleanup92_crit_edge ], [ 0, %for.inc87.cleanup92_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val2) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val1) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_set_bad_block(ptr noundef %chip, i16 noundef zeroext %phy_blk) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca [2 x i8], align 1
  %val = alloca i8, align 1
  %data = alloca [8 x i8], align 1
  %extra = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !168
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #8
  %1 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 1
  %2 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 2
  %3 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 3
  %4 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 4
  %5 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 5
  %6 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 6
  %7 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %extra) #8
  %8 = call ptr @memset(ptr %extra, i32 255, i32 9)
  %call = call fastcc i32 @ms_read_extra_data(ptr noundef %chip, i16 noundef zeroext %phy_blk, i8 noundef zeroext 0, ptr noundef nonnull %extra)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @ms_set_rw_reg_addr(ptr noundef %chip, i8 noundef zeroext 22, i8 noundef zeroext 9, i8 noundef zeroext 16, i8 noundef zeroext 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 8
  %9 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %err_code2.i, align 2
  %10 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ms_card1, align 4
  %12 = and i16 %11, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  %. = select i1 %tobool.not, i8 -128, i8 -120
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %., ptr %data, align 1
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %1, align 1
  %15 = lshr i16 %phy_blk, 8
  %conv12 = trunc i16 %15 to i8
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv12, ptr %2, align 1
  %conv14 = trunc i16 %phy_blk to i8
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv14, ptr %3, align 1
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -128, ptr %4, align 1
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %5, align 1
  %20 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %extra, align 1
  %22 = and i8 %21, 127
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %6, align 1
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %7, align 1
  %call25 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26.not = icmp eq i32 %call25, 0
  br i1 %cmp26.not, label %if.end29, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %25 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 85, ptr %data.i, align 1
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %25, align 1
  %call.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp31.not = icmp eq i32 %call.i, 0
  br i1 %cmp31.not, label %if.end34, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %28 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %err_code2.i, align 2
  %call35 = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %val, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36.not = icmp eq i32 %call35, 0
  br i1 %cmp36.not, label %if.end39, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %val, align 1
  %conv40 = zext i8 %30 to i32
  %and41 = and i32 %conv40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end39.cleanup.sink.split_crit_edge

if.end39.cleanup.sink.split_crit_edge:            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end44:                                         ; preds = %if.end39
  %31 = and i32 %conv40, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %31)
  %.not = icmp eq i32 %31, 192
  br i1 %.not, label %if.end44.cleanup.sink.split_crit_edge, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44.cleanup.sink.split_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end44.cleanup.sink.split_crit_edge, %if.end39.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ 8, %if.end39.cleanup.sink.split_crit_edge ], [ 2, %if.end44.cleanup.sink.split_crit_edge ]
  %32 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %.sink, ptr %err_code2.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end44.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end6.cleanup_crit_edge ], [ 1, %if.end29.cleanup_crit_edge ], [ 1, %if.end34.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %extra) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_erase_block(ptr noundef %chip, i16 noundef zeroext %phy_blk) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca [2 x i8], align 1
  %val = alloca i8, align 1
  %data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !168
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data) #8
  %call = tail call fastcc i32 @ms_set_rw_reg_addr(ptr noundef %chip, i8 noundef zeroext 22, i8 noundef zeroext 9, i8 noundef zeroext 16, i8 noundef zeroext 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 5
  %2 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 4
  %3 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 3
  %4 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 2
  %5 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 1
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 8
  %6 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %err_code2.i, align 2
  %7 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ms_card1, align 4
  %9 = and i16 %8, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  %. = select i1 %tobool.not, i8 -128, i8 -120
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %., ptr %data, align 1
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %5, align 1
  %12 = lshr i16 %phy_blk, 8
  %conv8 = trunc i16 %12 to i8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv8, ptr %4, align 1
  %conv10 = trunc i16 %phy_blk to i8
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv10, ptr %3, align 1
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %2, align 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %1, align 1
  %call14 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %ERASE_RTY.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ERASE_RTY.preheader:                              ; preds = %if.end
  %17 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -103, ptr %data.i, align 1
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %17, align 1
  %call.i72 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %cmp20.not73 = icmp eq i32 %call.i72, 0
  br i1 %cmp20.not73, label %if.end23.preheader, label %ERASE_RTY.preheader.cleanup_crit_edge

ERASE_RTY.preheader.cleanup_crit_edge:            ; preds = %ERASE_RTY.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23.preheader:                               ; preds = %ERASE_RTY.preheader
  %20 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %err_code2.i, align 2
  %call24 = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %val, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %if.end28, label %if.end23.preheader.cleanup_crit_edge

if.end23.preheader.cleanup_crit_edge:             ; preds = %if.end23.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23.1:                                       ; preds = %if.then32
  %21 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %err_code2.i, align 2
  %call24.1 = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %val, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.1)
  %cmp25.not.1 = icmp eq i32 %call24.1, 0
  br i1 %cmp25.not.1, label %if.end28.1, label %if.end23.1.cleanup_crit_edge

if.end23.1.cleanup_crit_edge:                     ; preds = %if.end23.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28.1:                                       ; preds = %if.end23.1
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %val, align 1
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool31.not.1 = icmp eq i8 %24, 0
  br i1 %tobool31.not.1, label %if.end28.1.if.end38_crit_edge, label %if.then32.1

if.end28.1.if.end38_crit_edge:                    ; preds = %if.end28.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then32.1:                                      ; preds = %if.end28.1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -103, ptr %data.i, align 1
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %17, align 1
  %call.i.1 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp20.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %cmp20.not.1, label %if.end23.2, label %if.then32.1.cleanup_crit_edge

if.then32.1.cleanup_crit_edge:                    ; preds = %if.then32.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23.2:                                       ; preds = %if.then32.1
  %27 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %err_code2.i, align 2
  %call24.2 = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %val, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.2)
  %cmp25.not.2 = icmp eq i32 %call24.2, 0
  br i1 %cmp25.not.2, label %if.end28.2, label %if.end23.2.cleanup_crit_edge

if.end23.2.cleanup_crit_edge:                     ; preds = %if.end23.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28.2:                                       ; preds = %if.end23.2
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %val, align 1
  %30 = and i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool31.not.2 = icmp eq i8 %30, 0
  br i1 %tobool31.not.2, label %if.end28.2.if.end38_crit_edge, label %if.then32.2

if.end28.2.if.end38_crit_edge:                    ; preds = %if.end28.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then32.2:                                      ; preds = %if.end28.2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -103, ptr %data.i, align 1
  %32 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %17, align 1
  %call.i.2 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp20.not.2 = icmp eq i32 %call.i.2, 0
  br i1 %cmp20.not.2, label %if.end23.3, label %if.then32.2.cleanup_crit_edge

if.then32.2.cleanup_crit_edge:                    ; preds = %if.then32.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23.3:                                       ; preds = %if.then32.2
  %33 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %err_code2.i, align 2
  %call24.3 = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %val, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.3)
  %cmp25.not.3 = icmp eq i32 %call24.3, 0
  br i1 %cmp25.not.3, label %if.end28.3, label %if.end23.3.cleanup_crit_edge

if.end23.3.cleanup_crit_edge:                     ; preds = %if.end23.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28.3:                                       ; preds = %if.end23.3
  %34 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %val, align 1
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool31.not.3 = icmp eq i8 %36, 0
  br i1 %tobool31.not.3, label %if.end28.3.if.end38_crit_edge, label %if.end36

if.end28.3.if.end38_crit_edge:                    ; preds = %if.end28.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.end28:                                         ; preds = %if.end23.preheader
  %37 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %val, align 1
  %39 = and i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool31.not = icmp eq i8 %39, 0
  br i1 %tobool31.not, label %if.end28.if.end38_crit_edge, label %if.then32

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then32:                                        ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -103, ptr %data.i, align 1
  %41 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %17, align 1
  %call.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp20.not = icmp eq i32 %call.i, 0
  br i1 %cmp20.not, label %if.end23.1, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %if.end28.3
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 8, ptr %err_code2.i, align 2
  %call37 = call fastcc i32 @ms_set_bad_block(ptr noundef %chip, i16 noundef zeroext %phy_blk)
  br label %cleanup

if.end38:                                         ; preds = %if.end28.if.end38_crit_edge, %if.end28.3.if.end38_crit_edge, %if.end28.2.if.end38_crit_edge, %if.end28.1.if.end38_crit_edge
  %.lcssa = phi i8 [ %38, %if.end28.if.end38_crit_edge ], [ %23, %if.end28.1.if.end38_crit_edge ], [ %29, %if.end28.2.if.end38_crit_edge ], [ %35, %if.end28.3.if.end38_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %.lcssa)
  %.not = icmp ugt i8 %.lcssa, -65
  br i1 %.not, label %if.then46, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then46:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %err_code2.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end38.cleanup_crit_edge, %if.end36, %if.then32.cleanup_crit_edge, %if.end23.3.cleanup_crit_edge, %if.then32.2.cleanup_crit_edge, %if.end23.2.cleanup_crit_edge, %if.then32.1.cleanup_crit_edge, %if.end23.1.cleanup_crit_edge, %if.end23.preheader.cleanup_crit_edge, %ERASE_RTY.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end36 ], [ 1, %if.then46 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ], [ 1, %ERASE_RTY.preheader.cleanup_crit_edge ], [ 1, %if.end23.3.cleanup_crit_edge ], [ 1, %if.then32.2.cleanup_crit_edge ], [ 1, %if.end23.2.cleanup_crit_edge ], [ 1, %if.then32.1.cleanup_crit_edge ], [ 1, %if.end23.1.cleanup_crit_edge ], [ 1, %if.end23.preheader.cleanup_crit_edge ], [ 1, %if.then32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ms_arbitrate_l2p(ptr noundef %chip, i16 noundef zeroext %phy_blk, i16 noundef zeroext %log_off, i8 noundef zeroext %us1, i8 noundef zeroext %us2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i16 %phy_blk, 9
  %1 = zext i16 %0 to i32
  %segment2 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 9
  %2 = ptrtoint ptr %segment2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %segment2, align 4
  %arrayidx = getelementptr %struct.zone_entry, ptr %3, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %idxprom = zext i16 %log_off to i32
  %arrayidx3 = getelementptr i16, ptr %5, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx3, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %us1, i8 %us2)
  %cmp.not = icmp eq i8 %us1, %us2
  br i1 %cmp.not, label %if.else24, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %us1)
  %cmp8 = icmp eq i8 %us1, 0
  %card_wp = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 24
  %8 = ptrtoint ptr %card_wp to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %card_wp, align 1
  %10 = and i8 %9, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then
  br i1 %tobool.not, label %if.then12, label %if.then10.if.end_crit_edge

if.then10.if.end_crit_edge:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @ms_erase_block(ptr noundef %chip, i16 noundef zeroext %7)
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then10.if.end_crit_edge
  %11 = lshr i16 %7, 9
  %12 = zext i16 %11 to i32
  %13 = ptrtoint ptr %segment2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %segment2, align 4
  %free_table.i = getelementptr %struct.zone_entry, ptr %14, i32 %12, i32 1
  %15 = ptrtoint ptr %free_table.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %free_table.i, align 4
  %set_index.i = getelementptr %struct.zone_entry, ptr %14, i32 %12, i32 3
  %17 = ptrtoint ptr %set_index.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %set_index.i, align 4
  %inc.i = add i32 %18, 1
  store i32 %inc.i, ptr %set_index.i, align 4
  %arrayidx3.i = getelementptr i16, ptr %16, i32 %18
  %19 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %7, ptr %arrayidx3.i, align 2
  %20 = load i32, ptr %set_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %20)
  %cmp.i = icmp sgt i32 %20, 511
  br i1 %cmp.i, label %if.then.i, label %if.end.ms_set_unused_block.exit_crit_edge

if.end.ms_set_unused_block.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_set_unused_block.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %set_index.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %set_index.i, align 4
  br label %ms_set_unused_block.exit

ms_set_unused_block.exit:                         ; preds = %if.then.i, %if.end.ms_set_unused_block.exit_crit_edge
  %unused_blk_cnt.i = getelementptr %struct.zone_entry, ptr %14, i32 %12, i32 5
  %22 = ptrtoint ptr %unused_blk_cnt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %unused_blk_cnt.i, align 4
  %inc7.i = add i32 %23, 1
  store i32 %inc7.i, ptr %unused_blk_cnt.i, align 4
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %arrayidx15 = getelementptr i16, ptr %25, i32 %idxprom
  %26 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %phy_blk, ptr %arrayidx15, align 2
  br label %if.end49

if.else:                                          ; preds = %if.then
  br i1 %tobool.not, label %if.then20, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = tail call fastcc i32 @ms_erase_block(ptr noundef %chip, i16 noundef zeroext %phy_blk)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.else.if.end22_crit_edge
  %27 = ptrtoint ptr %segment2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %segment2, align 4
  %free_table.i2 = getelementptr %struct.zone_entry, ptr %28, i32 %1, i32 1
  %29 = ptrtoint ptr %free_table.i2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %free_table.i2, align 4
  %set_index.i3 = getelementptr %struct.zone_entry, ptr %28, i32 %1, i32 3
  %31 = ptrtoint ptr %set_index.i3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %set_index.i3, align 4
  %inc.i4 = add i32 %32, 1
  store i32 %inc.i4, ptr %set_index.i3, align 4
  %arrayidx3.i5 = getelementptr i16, ptr %30, i32 %32
  %33 = ptrtoint ptr %arrayidx3.i5 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %phy_blk, ptr %arrayidx3.i5, align 2
  %34 = load i32, ptr %set_index.i3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %34)
  %cmp.i6 = icmp sgt i32 %34, 511
  br i1 %cmp.i6, label %if.then.i7, label %if.end22.ms_set_unused_block.exit10_crit_edge

if.end22.ms_set_unused_block.exit10_crit_edge:    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_set_unused_block.exit10

if.then.i7:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %set_index.i3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %set_index.i3, align 4
  br label %ms_set_unused_block.exit10

ms_set_unused_block.exit10:                       ; preds = %if.then.i7, %if.end22.ms_set_unused_block.exit10_crit_edge
  %unused_blk_cnt.i8 = getelementptr %struct.zone_entry, ptr %28, i32 %1, i32 5
  %36 = ptrtoint ptr %unused_blk_cnt.i8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %unused_blk_cnt.i8, align 4
  %inc7.i9 = add i32 %37, 1
  store i32 %inc7.i9, ptr %unused_blk_cnt.i8, align 4
  br label %if.end49

if.else24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %phy_blk)
  %cmp27 = icmp ugt i16 %7, %phy_blk
  %card_wp30 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 24
  %38 = ptrtoint ptr %card_wp30 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %card_wp30, align 1
  %40 = and i8 %39, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool33.not = icmp eq i8 %40, 0
  br i1 %cmp27, label %if.then29, label %if.else37

if.then29:                                        ; preds = %if.else24
  br i1 %tobool33.not, label %if.then34, label %if.then29.if.end36_crit_edge

if.then29.if.end36_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then34:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = tail call fastcc i32 @ms_erase_block(ptr noundef %chip, i16 noundef zeroext %phy_blk)
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.then29.if.end36_crit_edge
  %41 = ptrtoint ptr %segment2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %segment2, align 4
  %free_table.i12 = getelementptr %struct.zone_entry, ptr %42, i32 %1, i32 1
  %43 = ptrtoint ptr %free_table.i12 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %free_table.i12, align 4
  %set_index.i13 = getelementptr %struct.zone_entry, ptr %42, i32 %1, i32 3
  %45 = ptrtoint ptr %set_index.i13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %set_index.i13, align 4
  %inc.i14 = add i32 %46, 1
  store i32 %inc.i14, ptr %set_index.i13, align 4
  %arrayidx3.i15 = getelementptr i16, ptr %44, i32 %46
  %47 = ptrtoint ptr %arrayidx3.i15 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %phy_blk, ptr %arrayidx3.i15, align 2
  %48 = load i32, ptr %set_index.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %48)
  %cmp.i16 = icmp sgt i32 %48, 511
  br i1 %cmp.i16, label %if.then.i17, label %if.end36.ms_set_unused_block.exit20_crit_edge

if.end36.ms_set_unused_block.exit20_crit_edge:    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_set_unused_block.exit20

if.then.i17:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %set_index.i13 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %set_index.i13, align 4
  br label %ms_set_unused_block.exit20

ms_set_unused_block.exit20:                       ; preds = %if.then.i17, %if.end36.ms_set_unused_block.exit20_crit_edge
  %unused_blk_cnt.i18 = getelementptr %struct.zone_entry, ptr %42, i32 %1, i32 5
  %50 = ptrtoint ptr %unused_blk_cnt.i18 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %unused_blk_cnt.i18, align 4
  %inc7.i19 = add i32 %51, 1
  store i32 %inc7.i19, ptr %unused_blk_cnt.i18, align 4
  br label %if.end49

if.else37:                                        ; preds = %if.else24
  br i1 %tobool33.not, label %if.then42, label %if.else37.if.end44_crit_edge

if.else37.if.end44_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then42:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  %call43 = tail call fastcc i32 @ms_erase_block(ptr noundef %chip, i16 noundef zeroext %7)
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.else37.if.end44_crit_edge
  %52 = lshr i16 %7, 9
  %53 = zext i16 %52 to i32
  %54 = ptrtoint ptr %segment2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %segment2, align 4
  %free_table.i22 = getelementptr %struct.zone_entry, ptr %55, i32 %53, i32 1
  %56 = ptrtoint ptr %free_table.i22 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %free_table.i22, align 4
  %set_index.i23 = getelementptr %struct.zone_entry, ptr %55, i32 %53, i32 3
  %58 = ptrtoint ptr %set_index.i23 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %set_index.i23, align 4
  %inc.i24 = add i32 %59, 1
  store i32 %inc.i24, ptr %set_index.i23, align 4
  %arrayidx3.i25 = getelementptr i16, ptr %57, i32 %59
  %60 = ptrtoint ptr %arrayidx3.i25 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %7, ptr %arrayidx3.i25, align 2
  %61 = load i32, ptr %set_index.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %61)
  %cmp.i26 = icmp sgt i32 %61, 511
  br i1 %cmp.i26, label %if.then.i27, label %if.end44.ms_set_unused_block.exit30_crit_edge

if.end44.ms_set_unused_block.exit30_crit_edge:    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_set_unused_block.exit30

if.then.i27:                                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %set_index.i23 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %set_index.i23, align 4
  br label %ms_set_unused_block.exit30

ms_set_unused_block.exit30:                       ; preds = %if.then.i27, %if.end44.ms_set_unused_block.exit30_crit_edge
  %unused_blk_cnt.i28 = getelementptr %struct.zone_entry, ptr %55, i32 %53, i32 5
  %63 = ptrtoint ptr %unused_blk_cnt.i28 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %unused_blk_cnt.i28, align 4
  %inc7.i29 = add i32 %64, 1
  store i32 %inc7.i29, ptr %unused_blk_cnt.i28, align 4
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx, align 4
  %arrayidx47 = getelementptr i16, ptr %66, i32 %idxprom
  %67 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %phy_blk, ptr %arrayidx47, align 2
  br label %if.end49

if.end49:                                         ; preds = %ms_set_unused_block.exit30, %ms_set_unused_block.exit20, %ms_set_unused_block.exit10, %ms_set_unused_block.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_copy_page(ptr noundef %chip, i16 noundef zeroext %old_blk, i16 noundef zeroext %new_blk, i16 noundef zeroext %log_blk, i8 noundef zeroext %start_page, i8 noundef zeroext %end_page) unnamed_addr #0 align 64 {
entry:
  %data.i494 = alloca [2 x i8], align 1
  %data.i488 = alloca [2 x i8], align 1
  %data.i474 = alloca [2 x i8], align 1
  %data.i = alloca [2 x i8], align 1
  %val.i = alloca [2 x i8], align 1
  %extra = alloca [9 x i8], align 1
  %val = alloca i8, align 1
  %data = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %extra) #8
  %0 = getelementptr inbounds [9 x i8], ptr %extra, i32 0, i32 1
  %1 = getelementptr inbounds [9 x i8], ptr %extra, i32 0, i32 2
  %2 = getelementptr inbounds [9 x i8], ptr %extra, i32 0, i32 3
  %3 = call ptr @memset(ptr %extra, i32 255, i32 9)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val, align 1, !annotation !168
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #8
  %5 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 1
  %6 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 2
  %7 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 3
  %8 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 4
  %9 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 5
  %10 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 6
  %11 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 7
  %12 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 8
  %13 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 9
  %14 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 10
  %15 = call ptr @memset(ptr %data, i32 255, i32 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_copy_page.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_copy_page, %if.then)) #8
          to label %do.body8 [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %conv = zext i16 %old_blk to i32
  %conv6 = zext i16 %new_blk to i32
  %conv7 = zext i16 %log_blk to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_copy_page.__UNIQUE_ID_ddebug308, ptr noundef %dev.i, ptr noundef nonnull @.str.42, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv7) #8
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_copy_page.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_copy_page, %if.then20)) #8
          to label %do.end26 [label %if.then20], !srcloc !167

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %dev.i469 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %conv22 = zext i8 %start_page to i32
  %conv23 = zext i8 %end_page to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_copy_page.__UNIQUE_ID_ddebug309, ptr noundef %dev.i469, ptr noundef nonnull @.str.43, i32 noundef %conv22, i32 noundef %conv23) #8
  br label %do.end26

do.end26:                                         ; preds = %if.then20, %do.body8
  %call27 = call fastcc i32 @ms_read_extra_data(ptr noundef %chip, i16 noundef zeroext %new_blk, i8 noundef zeroext 0, ptr noundef nonnull %extra)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp.not = icmp eq i32 %call27, 0
  br i1 %cmp.not, label %if.end30, label %do.end26.cleanup_crit_edge

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %do.end26
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #8
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %val.i, align 1, !annotation !168
  %25 = getelementptr inbounds [2 x i8], ptr %val.i, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %25, align 1, !annotation !168
  %call.i = call fastcc i32 @ms_set_rw_reg_addr(ptr noundef %chip, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end30.ms_read_status_reg.exit.thread_crit_edge

if.end30.ms_read_status_reg.exit.thread_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_read_status_reg.exit.thread

if.end.i:                                         ; preds = %if.end30
  %call2.i = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 4, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull %val.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %if.end5.i, label %if.end.i.ms_read_status_reg.exit.thread_crit_edge

if.end.i.ms_read_status_reg.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_read_status_reg.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %25, align 1
  %29 = and i8 %28, 21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %if.end35, label %if.then6.i

if.then6.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %err_code2.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 8
  %30 = ptrtoint ptr %err_code2.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 4, ptr %err_code2.i.i, align 2
  br label %ms_read_status_reg.exit.thread

ms_read_status_reg.exit.thread:                   ; preds = %if.then6.i, %if.end.i.ms_read_status_reg.exit.thread_crit_edge, %if.end30.ms_read_status_reg.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #8
  br label %cleanup

if.end35:                                         ; preds = %if.end5.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #8
  %call36 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -1536, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %val, align 1
  %33 = and i8 %32, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool41.not = icmp eq i8 %33, 0
  br i1 %tobool41.not, label %if.end39.if.end58_crit_edge, label %if.then42

if.end39.if.end58_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then42:                                        ; preds = %if.end39
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %34 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -61, ptr %data.i, align 1
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %34, align 1
  %call.i471 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i471)
  %cmp44.not = icmp eq i32 %call.i471, 0
  br i1 %cmp44.not, label %if.end47, label %if.then42.cleanup_crit_edge

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47:                                         ; preds = %if.then42
  %call48 = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %val, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49.not = icmp eq i32 %call48, 0
  br i1 %cmp49.not, label %if.end52, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52:                                         ; preds = %if.end47
  %37 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %38)
  %tobool55.not = icmp sgt i8 %38, -1
  br i1 %tobool55.not, label %if.then56, label %if.end52.if.end58_crit_edge

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 8
  %39 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 2, ptr %err_code2.i, align 2
  br label %cleanup

if.end58:                                         ; preds = %if.end52.if.end58_crit_edge, %if.end39.if.end58_crit_edge
  call void @__sanitizer_cov_trace_cmp1(i8 %start_page, i8 %end_page)
  %cmp61516 = icmp ult i8 %start_page, %end_page
  br i1 %cmp61516, label %for.body.lr.ph, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end58
  %err_code2.i473 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 8
  %40 = lshr i16 %old_blk, 8
  %conv87 = trunc i16 %40 to i8
  %conv89 = trunc i16 %old_blk to i8
  %41 = getelementptr inbounds [2 x i8], ptr %data.i474, i32 0, i32 1
  %42 = lshr i16 %log_blk, 8
  %conv7.i = trunc i16 %42 to i8
  %conv9.i = trunc i16 %log_blk to i8
  %multi_flag = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 16
  %43 = lshr i16 %new_blk, 8
  %conv223 = trunc i16 %43 to i8
  %conv225 = trunc i16 %new_blk to i8
  %44 = getelementptr inbounds [2 x i8], ptr %data.i488, i32 0, i32 1
  %45 = getelementptr inbounds [2 x i8], ptr %data.i494, i32 0, i32 1
  %46 = zext i8 %start_page to i32
  %wide.trip.count = zext i8 %end_page to i32
  br label %for.body

for.body:                                         ; preds = %for.inc349.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ %46, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc349.for.body_crit_edge ]
  %call63 = call i32 @detect_card_cd(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64.not = icmp eq i32 %call63, 0
  br i1 %cmp64.not, label %if.end67, label %if.then66

if.then66:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %err_code2.i473 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 32, ptr %err_code2.i473, align 2
  br label %cleanup

if.end67:                                         ; preds = %for.body
  %48 = trunc i32 %indvars.iv to i8
  %call69 = call fastcc i32 @ms_read_extra_data(ptr noundef %chip, i16 noundef zeroext %old_blk, i8 noundef zeroext %48, ptr noundef nonnull %extra)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70.not = icmp eq i32 %call69, 0
  br i1 %cmp70.not, label %if.end73, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end73:                                         ; preds = %if.end67
  %call74 = call fastcc i32 @ms_set_rw_reg_addr(ptr noundef %chip, i8 noundef zeroext 22, i8 noundef zeroext 9, i8 noundef zeroext 16, i8 noundef zeroext 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75.not = icmp eq i32 %call74, 0
  br i1 %cmp75.not, label %if.end78, label %if.end73.cleanup_crit_edge

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end78:                                         ; preds = %if.end73
  %49 = ptrtoint ptr %err_code2.i473 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %err_code2.i473, align 2
  %50 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %ms_card1, align 4
  %52 = and i16 %51, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool81.not = icmp eq i16 %52, 0
  %. = select i1 %tobool81.not, i8 -128, i8 -120
  %53 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %., ptr %data, align 1
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %5, align 1
  %55 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv87, ptr %6, align 1
  %56 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv89, ptr %7, align 1
  %57 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 32, ptr %8, align 1
  %58 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %48, ptr %9, align 1
  %call94 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95.not = icmp eq i32 %call94, 0
  br i1 %cmp95.not, label %if.end98, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end98:                                         ; preds = %if.end78
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i474) #8
  %59 = ptrtoint ptr %data.i474 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -86, ptr %data.i474, align 1
  %60 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %41, align 1
  %call.i475 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i474, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i474) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i475)
  %cmp100.not = icmp eq i32 %call.i475, 0
  br i1 %cmp100.not, label %if.end103, label %if.end98.cleanup_crit_edge

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end103:                                        ; preds = %if.end98
  %61 = ptrtoint ptr %err_code2.i473 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %err_code2.i473, align 2
  %call104 = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %val, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105.not = icmp eq i32 %call104, 0
  br i1 %cmp105.not, label %if.end108, label %if.end103.cleanup_crit_edge

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end108:                                        ; preds = %if.end103
  %62 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %val, align 1
  %conv109 = zext i8 %63 to i32
  %and110 = and i32 %conv109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.end113, label %if.then112

if.then112:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %err_code2.i473 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 8, ptr %err_code2.i473, align 2
  br label %cleanup

if.end113:                                        ; preds = %if.end108
  %and115 = and i32 %conv109, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.end113.if.end209_crit_edge, label %if.then117

if.end113.if.end209_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209

if.then117:                                       ; preds = %if.end113
  %and119 = and i32 %conv109, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.then117.if.end203_crit_edge, label %if.then121

if.then117.if.end203_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end203

if.then121:                                       ; preds = %if.then117
  %call122 = call fastcc i32 @ms_read_status_reg(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp123.not = icmp eq i32 %call122, 0
  br i1 %cmp123.not, label %if.end144.thread, label %if.then125

if.then125:                                       ; preds = %if.then121
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_copy_page.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_copy_page, %if.then138)) #8
          to label %if.end144 [label %if.then138], !srcloc !167

if.then138:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %chip, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %dev.i478 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_copy_page.__UNIQUE_ID_ddebug310, ptr noundef %dev.i478, ptr noundef nonnull @.str.44) #8
  br label %if.end144

if.end144:                                        ; preds = %if.then138, %if.then125
  %call145 = call fastcc i32 @ms_transfer_tpc(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp146.not = icmp eq i32 %call145, 0
  br i1 %cmp146.not, label %if.then151, label %if.end144.cleanup_crit_edge

if.end144.cleanup_crit_edge:                      ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end144.thread:                                 ; preds = %if.then121
  %call145537 = call fastcc i32 @ms_transfer_tpc(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145537)
  %cmp146.not538 = icmp eq i32 %call145537, 0
  br i1 %cmp146.not538, label %for.body193.preheader, label %if.end144.thread.cleanup_crit_edge

if.end144.thread.cleanup_crit_edge:               ; preds = %if.end144.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body193.preheader:                            ; preds = %if.end144.thread
  %call194 = call fastcc i32 @ms_transfer_tpc(ptr noundef %chip, i8 noundef zeroext 5, i8 noundef zeroext 13, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %cmp195 = icmp eq i32 %call194, 0
  br i1 %cmp195, label %for.body193.preheader.if.end203_crit_edge, label %for.inc

for.body193.preheader.if.end203_crit_edge:        ; preds = %for.body193.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end203

if.then151:                                       ; preds = %if.end144
  %69 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 8)
  store i64 -1, ptr %0, align 1
  %70 = ptrtoint ptr %extra to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -72, ptr %extra, align 1
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv7.i, ptr %1, align 1
  %72 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv9.i, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv)
  %cmp154 = icmp eq i32 %indvars.iv, 0
  br i1 %cmp154, label %if.then156, label %if.then151.if.end161_crit_edge

if.then151.if.end161_crit_edge:                   ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.then156:                                       ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %extra to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -88, ptr %extra, align 1
  br label %if.end161

if.end161:                                        ; preds = %if.then156, %if.then151.if.end161_crit_edge
  %74 = call fastcc i32 @ms_write_extra_data(ptr noundef %chip, i16 noundef zeroext %old_blk, i8 noundef zeroext %48, ptr noundef nonnull %extra)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_copy_page.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ms_copy_page, %if.then176)) #8
          to label %do.end183 [label %if.then176], !srcloc !167

if.then176:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %chip, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %dev.i480 = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  %79 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %extra, align 1
  %conv180 = zext i8 %80 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_copy_page.__UNIQUE_ID_ddebug311, ptr noundef %dev.i480, ptr noundef nonnull @.str.45, i32 noundef %indvars.iv, i32 noundef %conv180) #8
  br label %do.end183

do.end183:                                        ; preds = %if.then176, %if.end161
  %81 = ptrtoint ptr %multi_flag to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %multi_flag, align 2
  %83 = or i8 %82, -128
  store i8 %83, ptr %multi_flag, align 2
  %84 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 8)
  store i64 -1, ptr %0, align 1
  %85 = ptrtoint ptr %extra to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -104, ptr %extra, align 1
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv7.i, ptr %1, align 1
  %87 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv9.i, ptr %2, align 1
  %88 = call fastcc i32 @ms_write_extra_data(ptr noundef %chip, i16 noundef zeroext %new_blk, i8 noundef zeroext %48, ptr noundef nonnull %extra)
  br label %for.inc349

for.inc:                                          ; preds = %for.body193.preheader
  %call194.1 = call fastcc i32 @ms_transfer_tpc(ptr noundef %chip, i8 noundef zeroext 5, i8 noundef zeroext 13, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194.1)
  %cmp195.1 = icmp eq i32 %call194.1, 0
  br i1 %cmp195.1, label %for.inc.if.end203_crit_edge, label %for.inc.1

for.inc.if.end203_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end203

for.inc.1:                                        ; preds = %for.inc
  %call194.2 = call fastcc i32 @ms_transfer_tpc(ptr noundef %chip, i8 noundef zeroext 5, i8 noundef zeroext 13, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194.2)
  %cmp195.2 = icmp eq i32 %call194.2, 0
  br i1 %cmp195.2, label %for.inc.1.if.end203_crit_edge, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.1.if.end203_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end203

if.end203:                                        ; preds = %for.inc.1.if.end203_crit_edge, %for.inc.if.end203_crit_edge, %for.body193.preheader.if.end203_crit_edge, %if.then117.if.end203_crit_edge
  %89 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %val, align 1
  %91 = and i8 %90, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool206.not = icmp eq i8 %91, 0
  br i1 %tobool206.not, label %if.then207, label %if.end203.if.end209_crit_edge

if.end203.if.end209_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209

if.then207:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %err_code2.i473 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %err_code2.i473, align 2
  br label %cleanup

if.end209:                                        ; preds = %if.end203.if.end209_crit_edge, %if.end113.if.end209_crit_edge
  %call210 = call fastcc i32 @ms_set_rw_reg_addr(ptr noundef %chip, i8 noundef zeroext 22, i8 noundef zeroext 9, i8 noundef zeroext 16, i8 noundef zeroext 15)
  %93 = ptrtoint ptr %err_code2.i473 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %err_code2.i473, align 2
  %94 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %ms_card1, align 4
  %96 = and i16 %95, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool214.not = icmp eq i16 %96, 0
  %.457 = select i1 %tobool214.not, i8 -128, i8 -120
  %97 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %.457, ptr %data, align 1
  %98 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %5, align 1
  %99 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv223, ptr %6, align 1
  %100 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv225, ptr %7, align 1
  %101 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 32, ptr %8, align 1
  %102 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %48, ptr %9, align 1
  %103 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %extra, align 1
  %105 = and i8 %104, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %105)
  %cmp232.not = icmp eq i8 %105, 96
  %storemerge455 = select i1 %cmp232.not, i8 -8, i8 %104
  %106 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %storemerge455, ptr %10, align 1
  %107 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 -1, ptr %11, align 1
  %108 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv7.i, ptr %12, align 1
  %109 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv9.i, ptr %13, align 1
  %110 = call ptr @memset(ptr %14, i32 255, i32 6)
  %call258 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258)
  %cmp259.not = icmp eq i32 %call258, 0
  br i1 %cmp259.not, label %if.end262, label %if.end209.cleanup_crit_edge

if.end209.cleanup_crit_edge:                      ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end262:                                        ; preds = %if.end209
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i488) #8
  %111 = ptrtoint ptr %data.i488 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 85, ptr %data.i488, align 1
  %112 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %44, align 1
  %call.i489 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i488, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i488) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i489)
  %cmp264.not = icmp eq i32 %call.i489, 0
  br i1 %cmp264.not, label %if.end267, label %if.end262.cleanup_crit_edge

if.end262.cleanup_crit_edge:                      ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end267:                                        ; preds = %if.end262
  %113 = ptrtoint ptr %err_code2.i473 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %err_code2.i473, align 2
  %call268 = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %val, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call268)
  %cmp269.not = icmp eq i32 %call268, 0
  br i1 %cmp269.not, label %if.end272, label %if.end267.cleanup_crit_edge

if.end267.cleanup_crit_edge:                      ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end272:                                        ; preds = %if.end267
  %114 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %val, align 1
  %conv273 = zext i8 %115 to i32
  %and274 = and i32 %conv273, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and274)
  %tobool275.not = icmp eq i32 %and274, 0
  br i1 %tobool275.not, label %if.end277, label %if.then276

if.then276:                                       ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %err_code2.i473 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 8, ptr %err_code2.i473, align 2
  br label %cleanup

if.end277:                                        ; preds = %if.end272
  %117 = and i32 %conv273, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %117)
  %.not = icmp eq i32 %117, 192
  br i1 %.not, label %if.then285, label %if.end287

if.then285:                                       ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %err_code2.i473 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 2, ptr %err_code2.i473, align 2
  br label %cleanup

if.end287:                                        ; preds = %if.end277
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv)
  %cmp289 = icmp eq i32 %indvars.iv, 0
  br i1 %cmp289, label %if.then291, label %if.end287.for.inc349_crit_edge

if.end287.for.inc349_crit_edge:                   ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc349

if.then291:                                       ; preds = %if.end287
  %call292 = call fastcc i32 @ms_set_rw_reg_addr(ptr noundef %chip, i8 noundef zeroext 22, i8 noundef zeroext 9, i8 noundef zeroext 16, i8 noundef zeroext 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call292)
  %cmp293.not = icmp eq i32 %call292, 0
  br i1 %cmp293.not, label %if.end296, label %if.then291.cleanup_crit_edge

if.then291.cleanup_crit_edge:                     ; preds = %if.then291
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end296:                                        ; preds = %if.then291
  %119 = ptrtoint ptr %err_code2.i473 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %err_code2.i473, align 2
  %120 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %ms_card1, align 4
  %122 = and i16 %121, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %122)
  %tobool300.not = icmp eq i16 %122, 0
  %.458 = select i1 %tobool300.not, i8 -128, i8 -120
  %123 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %.458, ptr %data, align 1
  %124 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %5, align 1
  %125 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv87, ptr %6, align 1
  %126 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv89, ptr %7, align 1
  %127 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 -128, ptr %8, align 1
  %128 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %9, align 1
  %129 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -17, ptr %10, align 1
  %130 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 -1, ptr %11, align 1
  %call318 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call318)
  %cmp319.not = icmp eq i32 %call318, 0
  br i1 %cmp319.not, label %if.end322, label %if.end296.cleanup_crit_edge

if.end296.cleanup_crit_edge:                      ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end322:                                        ; preds = %if.end296
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i494) #8
  %131 = ptrtoint ptr %data.i494 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 85, ptr %data.i494, align 1
  %132 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %45, align 1
  %call.i495 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i494, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i494) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i495)
  %cmp324.not = icmp eq i32 %call.i495, 0
  br i1 %cmp324.not, label %if.end327, label %if.end322.cleanup_crit_edge

if.end322.cleanup_crit_edge:                      ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end327:                                        ; preds = %if.end322
  %133 = ptrtoint ptr %err_code2.i473 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %err_code2.i473, align 2
  %call328 = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %val, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call328)
  %cmp329.not = icmp eq i32 %call328, 0
  br i1 %cmp329.not, label %if.end332, label %if.end327.cleanup_crit_edge

if.end327.cleanup_crit_edge:                      ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end332:                                        ; preds = %if.end327
  %134 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %val, align 1
  %conv333 = zext i8 %135 to i32
  %and334 = and i32 %conv333, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and334)
  %tobool335.not = icmp eq i32 %and334, 0
  br i1 %tobool335.not, label %if.end337, label %if.then336

if.then336:                                       ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #10
  %136 = ptrtoint ptr %err_code2.i473 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 8, ptr %err_code2.i473, align 2
  br label %cleanup

if.end337:                                        ; preds = %if.end332
  %137 = and i32 %conv333, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %137)
  %.not506 = icmp eq i32 %137, 192
  br i1 %.not506, label %if.then345, label %if.end337.for.inc349_crit_edge

if.end337.for.inc349_crit_edge:                   ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc349

if.then345:                                       ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #10
  %138 = ptrtoint ptr %err_code2.i473 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 2, ptr %err_code2.i473, align 2
  br label %cleanup

for.inc349:                                       ; preds = %if.end337.for.inc349_crit_edge, %if.end287.for.inc349_crit_edge, %do.end183
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc349.cleanup_crit_edge, label %for.inc349.for.body_crit_edge

for.inc349.for.body_crit_edge:                    ; preds = %for.inc349
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc349.cleanup_crit_edge:                     ; preds = %for.inc349
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc349.cleanup_crit_edge, %if.then345, %if.then336, %if.end327.cleanup_crit_edge, %if.end322.cleanup_crit_edge, %if.end296.cleanup_crit_edge, %if.then291.cleanup_crit_edge, %if.then285, %if.then276, %if.end267.cleanup_crit_edge, %if.end262.cleanup_crit_edge, %if.end209.cleanup_crit_edge, %if.then207, %for.inc.1.cleanup_crit_edge, %if.end144.thread.cleanup_crit_edge, %if.end144.cleanup_crit_edge, %if.then112, %if.end103.cleanup_crit_edge, %if.end98.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.then66, %if.end58.cleanup_crit_edge, %if.then56, %if.end47.cleanup_crit_edge, %if.then42.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %ms_read_status_reg.exit.thread, %do.end26.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then66 ], [ 1, %if.then112 ], [ 1, %if.then276 ], [ 1, %if.then285 ], [ 1, %if.then336 ], [ 1, %if.then345 ], [ 1, %if.then207 ], [ 1, %if.then56 ], [ 1, %do.end26.cleanup_crit_edge ], [ %call36, %if.end35.cleanup_crit_edge ], [ 1, %if.then42.cleanup_crit_edge ], [ 1, %if.end47.cleanup_crit_edge ], [ 1, %ms_read_status_reg.exit.thread ], [ 0, %if.end58.cleanup_crit_edge ], [ 1, %for.inc.1.cleanup_crit_edge ], [ 1, %if.end144.thread.cleanup_crit_edge ], [ 1, %if.end67.cleanup_crit_edge ], [ 1, %if.end73.cleanup_crit_edge ], [ 1, %if.end78.cleanup_crit_edge ], [ 1, %if.end98.cleanup_crit_edge ], [ 1, %if.end103.cleanup_crit_edge ], [ 1, %if.end144.cleanup_crit_edge ], [ 1, %if.end209.cleanup_crit_edge ], [ 1, %if.end262.cleanup_crit_edge ], [ 1, %if.end267.cleanup_crit_edge ], [ 1, %if.then291.cleanup_crit_edge ], [ 1, %if.end296.cleanup_crit_edge ], [ 1, %if.end322.cleanup_crit_edge ], [ 1, %if.end327.cleanup_crit_edge ], [ 0, %for.inc349.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %extra) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_write_extra_data(ptr noundef %chip, i16 noundef zeroext %block_addr, i8 noundef zeroext %page_num, ptr noundef readonly %buf) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca [2 x i8], align 1
  %val = alloca i8, align 1
  %data = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !168
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #8
  %1 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 1
  %2 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 2
  %3 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 3
  %4 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 4
  %5 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 5
  %6 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 6
  %tobool.not = icmp eq ptr %buf, null
  %7 = getelementptr inbounds i8, ptr %data, i32 15
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @ms_set_rw_reg_addr(ptr noundef %chip, i8 noundef zeroext 22, i8 noundef zeroext 9, i8 noundef zeroext 16, i8 noundef zeroext 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3.not = icmp eq i32 %call, 0
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %ms_card1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ms_card1, align 4
  %11 = and i16 %10, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool6.not = icmp eq i16 %11, 0
  %. = select i1 %tobool6.not, i8 -128, i8 -120
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %., ptr %data, align 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %1, align 1
  %14 = lshr i16 %block_addr, 8
  %conv12 = trunc i16 %14 to i8
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv12, ptr %2, align 1
  %conv14 = trunc i16 %block_addr to i8
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv14, ptr %3, align 1
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 64, ptr %4, align 1
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %page_num, ptr %5, align 1
  %19 = call ptr @memcpy(ptr %6, ptr %buf, i32 9)
  %call22 = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 11, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %if.end26, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %20 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 85, ptr %data.i, align 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %20, align 1
  %call.i = call fastcc i32 @ms_write_bytes(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -128, ptr noundef nonnull %data.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp28.not = icmp eq i32 %call.i, 0
  br i1 %cmp28.not, label %if.end31, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %err_code2.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 8
  %23 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %err_code2.i, align 2
  %call32 = call fastcc i32 @ms_read_bytes(ptr noundef %chip, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %val, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33.not = icmp eq i32 %call32, 0
  br i1 %cmp33.not, label %if.end36, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %val, align 1
  %conv37 = zext i8 %25 to i32
  %and38 = and i32 %conv37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end36.cleanup.sink.split_crit_edge

if.end36.cleanup.sink.split_crit_edge:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end41:                                         ; preds = %if.end36
  %26 = and i32 %conv37, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %26)
  %.not = icmp eq i32 %26, 192
  br i1 %.not, label %if.end41.cleanup.sink.split_crit_edge, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41.cleanup.sink.split_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end41.cleanup.sink.split_crit_edge, %if.end36.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ 8, %if.end36.cleanup.sink.split_crit_edge ], [ 2, %if.end41.cleanup.sink.split_crit_edge ]
  %27 = ptrtoint ptr %err_code2.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %.sink, ptr %err_code2.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end41.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ], [ 1, %if.end26.cleanup_crit_edge ], [ 1, %if.end31.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ms_auto_tune_clock(ptr noundef %chip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %0 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %ms_clock5 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 24
  %2 = ptrtoint ptr %ms_clock5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ms_clock5, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %3)
  %cmp = icmp sgt i32 %3, 30
  br i1 %cmp, label %if.then3, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add nsw i32 %3, -20
  br label %if.end16.sink.split

if.else:                                          ; preds = %entry
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %3, label %if.else.if.end16_crit_edge [
    i32 6, label %if.else.if.end16.sink.split_crit_edge
    i32 5, label %if.then12
  ]

if.else.if.end16.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.sink.split

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.sink.split

if.end16.sink.split:                              ; preds = %if.then12, %if.else.if.end16.sink.split_crit_edge, %if.then3
  %.sink = phi i32 [ 3, %if.then12 ], [ %sub, %if.then3 ], [ 5, %if.else.if.end16.sink.split_crit_edge ]
  %5 = ptrtoint ptr %ms_clock5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %ms_clock5, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %if.else.if.end16_crit_edge, %if.then.if.end16_crit_edge
  %call.i = tail call i32 @select_card(ptr noundef %chip, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end16.ms_switch_clock.exit_crit_edge

if.end16.ms_switch_clock.exit_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %ms_switch_clock.exit

if.end.i:                                         ; preds = %if.end16
  %ms_clock.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 24
  %6 = ptrtoint ptr %ms_clock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ms_clock.i, align 4
  %8 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %7) #8
  br label %ms_switch_clock.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = tail call i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %7) #8
  br label %ms_switch_clock.exit

ms_switch_clock.exit:                             ; preds = %if.else.i.i, %if.then.i.i, %if.end16.ms_switch_clock.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @toggle_gpio(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_transfer_data_partial(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !17, !19, !20, !22, !23, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !48, !50, !52, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !73, !75, !76, !78, !79, !81, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !99, !101, !102, !104, !106, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !121, !123, !124, !126, !127, !129, !131, !132, !133, !135, !136, !137, !139, !140, !142, !143, !144, !146, !147, !149, !151, !152, !153, !155, !156}
!llvm.named.register.sp = !{!157}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rts5208/ms.c", i32 2536, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @reset_ms_card.__UNIQUE_ID_ddebug322, !1, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rts5208/ms.c", i32 4233, i32 4}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ms_cleanup_work.__UNIQUE_ID_ddebug346, !7, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/rts5208/ms.c", i32 4245, i32 3}
!12 = !{ptr @ms_cleanup_work.__UNIQUE_ID_ddebug347, !11, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/rts5208/ms.c", i32 1187, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @reset_ms_pro.__UNIQUE_ID_ddebug305, !14, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/rts5208/ms.c", i32 1189, i32 3}
!19 = !{ptr @reset_ms_pro.__UNIQUE_ID_ddebug306, !18, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/rts5208/ms.c", i32 1200, i32 4}
!22 = !{ptr @reset_ms_pro.__UNIQUE_ID_ddebug307, !21, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../drivers/staging/rts5208/ms.c", i32 509, i32 3}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../drivers/staging/rts5208/ms.c", i32 531, i32 3}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/rts5208/ms.c", i32 540, i32 4}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ms_prepare_reset.__UNIQUE_ID_ddebug293, !28, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/rts5208/ms.c", i32 610, i32 2}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ms_identify_media_type.__UNIQUE_ID_ddebug294, !32, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/rts5208/ms.c", i32 622, i32 2}
!37 = !{ptr @ms_identify_media_type.__UNIQUE_ID_ddebug295, !36, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/rts5208/ms.c", i32 632, i32 2}
!40 = !{ptr @ms_identify_media_type.__UNIQUE_ID_ddebug296, !39, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/rts5208/ms.c", i32 656, i32 2}
!43 = !{ptr @ms_identify_media_type.__UNIQUE_ID_ddebug297, !42, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/rts5208/ms.c", i32 46, i32 2}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ms_transfer_tpc.__UNIQUE_ID_ddebug287, !45, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../drivers/staging/rts5208/ms.c", i32 698, i32 3}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/rts5208/ms.c", i32 995, i32 4}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ms_read_attribute_info.__UNIQUE_ID_ddebug299, !51, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/rts5208/ms.c", i32 1030, i32 4}
!56 = !{ptr @ms_read_attribute_info.__UNIQUE_ID_ddebug300, !55, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/rts5208/ms.c", i32 1071, i32 3}
!59 = !{ptr @ms_read_attribute_info.__UNIQUE_ID_ddebug301, !58, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/rts5208/ms.c", i32 1078, i32 3}
!62 = !{ptr @ms_read_attribute_info.__UNIQUE_ID_ddebug302, !61, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/rts5208/ms.c", i32 1088, i32 2}
!65 = !{ptr @ms_read_attribute_info.__UNIQUE_ID_ddebug303, !64, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/rts5208/ms.c", i32 1123, i32 2}
!68 = !{ptr @ms_read_attribute_info.__UNIQUE_ID_ddebug304, !67, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/rts5208/ms.c", i32 1938, i32 3}
!71 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @reset_ms.__UNIQUE_ID_ddebug312, !70, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/rts5208/ms.c", i32 1992, i32 2}
!75 = !{ptr @reset_ms.__UNIQUE_ID_ddebug313, !74, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/rts5208/ms.c", i32 1993, i32 2}
!78 = !{ptr @reset_ms.__UNIQUE_ID_ddebug314, !77, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/rts5208/ms.c", i32 2283, i32 2}
!81 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ms_build_l2p_tbl.__UNIQUE_ID_ddebug317, !80, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/staging/rts5208/ms.c", i32 2292, i32 3}
!85 = !{ptr @ms_build_l2p_tbl.__UNIQUE_ID_ddebug318, !84, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/rts5208/ms.c", i32 2345, i32 4}
!88 = !{ptr @ms_build_l2p_tbl.__UNIQUE_ID_ddebug319, !87, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/staging/rts5208/ms.c", i32 2413, i32 2}
!91 = !{ptr @ms_build_l2p_tbl.__UNIQUE_ID_ddebug320, !90, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/staging/rts5208/ms.c", i32 2461, i32 5}
!94 = !{ptr @ms_build_l2p_tbl.__UNIQUE_ID_ddebug321, !93, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/staging/rts5208/ms.c", i32 2104, i32 2}
!97 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @ms_init_l2p_tbl.__UNIQUE_ID_ddebug315, !96, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/staging/rts5208/ms.c", i32 2146, i32 3}
!101 = !{ptr @ms_init_l2p_tbl.__UNIQUE_ID_ddebug316, !100, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!102 = !{ptr @ms_start_idx, !103, !"ms_start_idx", i1 false, i1 false}
!103 = !{!"../drivers/staging/rts5208/ms.c", i32 2226, i32 29}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/rts5208/ms.c", i32 1630, i32 2}
!106 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @ms_copy_page.__UNIQUE_ID_ddebug308, !105, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/rts5208/ms.c", i32 1632, i32 2}
!110 = !{ptr @ms_copy_page.__UNIQUE_ID_ddebug309, !109, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/staging/rts5208/ms.c", i32 1715, i32 6}
!113 = !{ptr @ms_copy_page.__UNIQUE_ID_ddebug310, !112, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/rts5208/ms.c", i32 1737, i32 6}
!116 = !{ptr @ms_copy_page.__UNIQUE_ID_ddebug311, !115, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/staging/rts5208/ms.c", i32 2755, i32 2}
!119 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @mspro_read_format_progress.__UNIQUE_ID_ddebug325, !118, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!121 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/staging/rts5208/ms.c", i32 2804, i32 2}
!123 = !{ptr @mspro_read_format_progress.__UNIQUE_ID_ddebug326, !122, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/staging/rts5208/ms.c", i32 2815, i32 2}
!126 = !{ptr @mspro_read_format_progress.__UNIQUE_ID_ddebug327, !125, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!127 = distinct !{null, !128, !"__already_done", i1 false, i1 false}
!128 = !{!"../drivers/staging/rts5208/ms.c", i32 2827, i32 3}
!129 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/staging/rts5208/ms.c", i32 196, i32 3}
!131 = !{ptr @.str.51, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @ms_write_bytes.__UNIQUE_ID_ddebug288, !130, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!133 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/staging/rts5208/ms.c", i32 2719, i32 4}
!135 = !{ptr @.str.53, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @mspro_rw_multi_sector.__UNIQUE_ID_ddebug323, !134, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!137 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/staging/rts5208/ms.c", i32 2728, i32 4}
!139 = !{ptr @mspro_rw_multi_sector.__UNIQUE_ID_ddebug324, !138, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!140 = !{ptr @.str.55, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/staging/rts5208/ms.c", i32 3516, i32 2}
!142 = !{ptr @.str.56, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @ms_rw_multi_sector.__UNIQUE_ID_ddebug329, !141, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!144 = !{ptr @.str.57, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/staging/rts5208/ms.c", i32 3527, i32 3}
!146 = !{ptr @ms_rw_multi_sector.__UNIQUE_ID_ddebug330, !145, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!147 = !{ptr @ms_rw_multi_sector.__UNIQUE_ID_ddebug331, !148, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!148 = !{!"../drivers/staging/rts5208/ms.c", i32 3605, i32 3}
!149 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/staging/rts5208/ms.c", i32 294, i32 3}
!151 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @ms_read_bytes.__UNIQUE_ID_ddebug289, !150, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!153 = !{ptr @.str.60, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/staging/rts5208/ms.c", i32 295, i32 3}
!155 = !{ptr @ms_read_bytes.__UNIQUE_ID_ddebug290, !154, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!156 = !{ptr @.str.61, !154, !"<string literal>", i1 false, i1 false}
!157 = !{!"sp"}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{i64 2148372657, i64 2148372662, i64 2148372675, i64 2148372719, i64 2148372753, i64 2148372774}
!168 = !{!"auto-init"}
!169 = !{!"branch_weights", i32 2000, i32 1}
!170 = !{i64 2148397844, i64 2148398124, i64 2148398458, i64 2148398792}
!171 = !{i64 2155380866}
!172 = !{i64 2155266732}
!173 = !{i64 2155271886}
!174 = !{i64 2155293090}
