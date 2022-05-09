; ModuleID = '/llk/IR_all_yes/drivers/staging/rts5208/rtsx.c_pt.bc'
source_filename = "../drivers/staging/rts5208/rtsx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.rtsx_chip = type { ptr, i32, i8, ptr, ptr, i32, i32, ptr, i32, i32, ptr, [8 x %struct.sense_data_t], i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [8 x i8], [8 x i32], [8 x ptr], [8 x i32], [32 x i8], [8 x i8], [8 x i32], i32, i32, i32, %struct.sd_info, %struct.xd_info, %struct.ms_info, %struct.spi_info, i32, i32, i32, i32, i32, i32, [12 x i8], i8, i8, i8, i32, i32, i32, i16, i16, i8, i32, i32, [2 x i8], i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32 }
%struct.sense_data_t = type { i8, i8, i8, [4 x i8], i8, [4 x i8], i8, i8, i8, [3 x i8] }
%struct.sd_info = type { i16, i8, i8, i32, i32, [16 x i8], [8 x i8], i32, i32, i32, i16, i32, i32, i32, i32, i32, i8, [17 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.xd_info = type { i8, i8, i8, i8, i8, i16, i8, i8, i32, ptr, i32, %struct.xd_delay_write_tag, i32, i32 }
%struct.xd_delay_write_tag = type { i32, i32, i32, i8, i8 }
%struct.ms_info = type { i16, i8, i8, i16, i16, i32, i8, i8, i8, ptr, i32, i32, i32, i16, [96 x i8], [48 x i8], i8, i8, i32, i32, i16, i32, %struct.ms_delay_write_tag, i32, i32, [16 x i8], i8, i32 }
%struct.ms_delay_write_tag = type { i16, i16, i16, i8, i8 }
%struct.spi_info = type { i8, i8, i16, i8, i32 }
%struct.rtsx_dev = type { ptr, i32, ptr, i32, %struct.spinlock, ptr, ptr, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.wait_queue_head, %struct.mutex, ptr, i32, i8, i8, ptr, i32, ptr }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }

@__UNIQUE_ID_description287 = internal constant [75 x i8] c"rts5208.description=Realtek PCI-Express card reader rts5208/rts5288 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file288 = internal constant [45 x i8] c"rts5208.file=drivers/staging/rts5208/rts5208\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [20 x i8] c"rts5208.license=GPL\00", section ".modinfo", align 1
@__param_str_delay_use = internal constant [18 x i8] c"rts5208.delay_use\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@delay_use = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_delay_use = internal constant %struct.kernel_param { ptr @__param_str_delay_use, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @delay_use } }, section "__param", align 4
@__UNIQUE_ID_delay_usetype290 = internal constant [32 x i8] c"rts5208.parmtype=delay_use:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_delay_use291 = internal constant [66 x i8] c"rts5208.parm=delay_use:seconds to delay before using a new device\00", section ".modinfo", align 1
@__param_str_ss_en = internal constant [14 x i8] c"rts5208.ss_en\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ss_en = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ss_en = internal constant %struct.kernel_param { ptr @__param_str_ss_en, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @ss_en } }, section "__param", align 4
@__UNIQUE_ID_ss_entype292 = internal constant [27 x i8] c"rts5208.parmtype=ss_en:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ss_en293 = internal constant [44 x i8] c"rts5208.parm=ss_en:enable selective suspend\00", section ".modinfo", align 1
@__param_str_ss_interval = internal constant [20 x i8] c"rts5208.ss_interval\00", align 1
@ss_interval = internal global { i32, [28 x i8] } { i32 50, [28 x i8] zeroinitializer }, align 32
@__param_ss_interval = internal constant %struct.kernel_param { ptr @__param_str_ss_interval, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @ss_interval } }, section "__param", align 4
@__UNIQUE_ID_ss_intervaltype294 = internal constant [33 x i8] c"rts5208.parmtype=ss_interval:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ss_interval295 = internal constant [63 x i8] c"rts5208.parm=ss_interval:Interval to enter ss state in seconds\00", section ".modinfo", align 1
@__param_str_auto_delink_en = internal constant [23 x i8] c"rts5208.auto_delink_en\00", align 1
@auto_delink_en = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_auto_delink_en = internal constant %struct.kernel_param { ptr @__param_str_auto_delink_en, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @auto_delink_en } }, section "__param", align 4
@__UNIQUE_ID_auto_delink_entype296 = internal constant [36 x i8] c"rts5208.parmtype=auto_delink_en:int\00", section ".modinfo", align 1
@__UNIQUE_ID_auto_delink_en297 = internal constant [47 x i8] c"rts5208.parm=auto_delink_en:enable auto delink\00", section ".modinfo", align 1
@__param_str_aspm_l0s_l1_en = internal constant [23 x i8] c"rts5208.aspm_l0s_l1_en\00", align 1
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 4
@aspm_l0s_l1_en = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_aspm_l0s_l1_en = internal constant %struct.kernel_param { ptr @__param_str_aspm_l0s_l1_en, ptr null, ptr @param_ops_byte, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @aspm_l0s_l1_en } }, section "__param", align 4
@__UNIQUE_ID_aspm_l0s_l1_entype298 = internal constant [37 x i8] c"rts5208.parmtype=aspm_l0s_l1_en:byte\00", section ".modinfo", align 1
@__UNIQUE_ID_aspm_l0s_l1_en299 = internal constant [47 x i8] c"rts5208.parm=aspm_l0s_l1_en:enable device aspm\00", section ".modinfo", align 1
@__param_str_msi_en = internal constant [15 x i8] c"rts5208.msi_en\00", align 1
@msi_en = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_msi_en = internal constant %struct.kernel_param { ptr @__param_str_msi_en, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @msi_en } }, section "__param", align 4
@__UNIQUE_ID_msi_entype300 = internal constant [28 x i8] c"rts5208.parmtype=msi_en:int\00", section ".modinfo", align 1
@__UNIQUE_ID_msi_en301 = internal constant [31 x i8] c"rts5208.parm=msi_en:enable msi\00", section ".modinfo", align 1
@__initcall__kmod_rts5208__307_1001_rtsx_driver_init6 = internal global ptr @rtsx_driver_init, section ".initcall6.init", align 4
@rtsx_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @rtsx_ids, ptr @rtsx_probe, ptr @rtsx_remove, ptr null, ptr null, ptr @rtsx_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtsx_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rtsx_driver_exit = internal global ptr @rtsx_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rts5208\00", [24 x i8] zeroinitializer }, align 32
@rtsx_ids = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4332, i32 21000, i32 -1, i32 -1, i32 16711680, i32 16711680, i32 0, i32 0 }, %struct.pci_device_id { i32 4332, i32 21128, i32 -1, i32 -1, i32 16711680, i32 16711680, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@rtsx_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rtsx_suspend, ptr @rtsx_resume, ptr @rtsx_suspend, ptr @rtsx_resume, ptr @rtsx_suspend, ptr @rtsx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rtsx_probe.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtsx_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/staging/rts5208/rtsx.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Realtek PCI-E card reader detected\0A\00", [60 x i8] zeroinitializer }, align 32
@rtsx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 802, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PCI enable device failed!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtsx_probe._entry_ptr = internal global ptr @rtsx_probe._entry, section ".printk_index", align 4
@rtsx_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 809, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PCI request regions for %s failed!\0A\00", [60 x i8] zeroinitializer }, align 32
@rtsx_probe._entry_ptr.9 = internal global ptr @rtsx_probe._entry.7, section ".printk_index", align 4
@rtsx_host_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @queuecommand, ptr null, ptr null, ptr @.str, ptr @host_info, ptr null, ptr null, ptr null, ptr @command_abort, ptr @device_reset, ptr null, ptr null, ptr null, ptr @slave_alloc, ptr @slave_configure, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 240, i32 0, i32 0, i32 0, i16 0, i8 0, i32 0, i8 24, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@rtsx_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 819, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to allocate the scsi host\0A\00", [62 x i8] zeroinitializer }, align 32
@rtsx_probe._entry_ptr.12 = internal global ptr @rtsx_probe._entry.10, section ".printk_index", align 4
@rtsx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->reg_lock\00", [17 x i8] zeroinitializer }, align 32
@rtsx_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->dev_mutex\00", [16 x i8] zeroinitializer }, align 32
@rtsx_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dev->delay_wait\00", [47 x i8] zeroinitializer }, align 32
@rtsx_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 846, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Resource length: 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rtsx_probe._entry_ptr.21 = internal global ptr @rtsx_probe._entry.18, section ".printk_index", align 4
@rtsx_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 850, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ioremap error\0A\00", [17 x i8] zeroinitializer }, align 32
@rtsx_probe._entry_ptr.24 = internal global ptr @rtsx_probe._entry.22, section ".printk_index", align 4
@rtsx_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.1, ptr @.str.2, i32 860, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Original address: 0x%lx, remapped address: 0x%lx\0A\00", [46 x i8] zeroinitializer }, align 32
@rtsx_probe._entry_ptr.27 = internal global ptr @rtsx_probe._entry.25, section ".printk_index", align 4
@rtsx_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.1, ptr @.str.2, i32 866, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"alloc dma buffer fail\0A\00", [41 x i8] zeroinitializer }, align 32
@rtsx_probe._entry_ptr.30 = internal global ptr @rtsx_probe._entry.28, section ".printk_index", align 4
@rtsx_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.1, ptr @.str.2, i32 880, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pci->irq = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@rtsx_probe._entry_ptr.33 = internal global ptr @rtsx_probe._entry.31, section ".printk_index", align 4
@rtsx_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.1, ptr @.str.2, i32 907, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to start control thread\0A\00", [32 x i8] zeroinitializer }, align 32
@rtsx_probe._entry_ptr.36 = internal global ptr @rtsx_probe._entry.34, section ".printk_index", align 4
@rtsx_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.1, ptr @.str.2, i32 915, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to add the scsi host\0A\00", [35 x i8] zeroinitializer }, align 32
@rtsx_probe._entry_ptr.39 = internal global ptr @rtsx_probe._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtsx-scan\00", [22 x i8] zeroinitializer }, align 32
@rtsx_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.1, ptr @.str.2, i32 922, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unable to start the device-scanning thread\0A\00", [52 x i8] zeroinitializer }, align 32
@rtsx_probe._entry_ptr.43 = internal global ptr @rtsx_probe._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtsx-polling\00", [19 x i8] zeroinitializer }, align 32
@rtsx_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.1, ptr @.str.2, i32 931, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unable to start the device-polling thread\0A\00", [53 x i8] zeroinitializer }, align 32
@rtsx_probe._entry_ptr.47 = internal global ptr @rtsx_probe._entry.45, section ".printk_index", align 4
@rtsx_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.1, ptr @.str.2, i32 960, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s failed\0A\00", [21 x i8] zeroinitializer }, align 32
@rtsx_probe._entry_ptr.50 = internal global ptr @rtsx_probe._entry.48, section ".printk_index", align 4
@queuecommand_lck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 130, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error: chip->srb = %p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"queuecommand_lck\00", [47 x i8] zeroinitializer }, align 32
@queuecommand_lck._entry_ptr = internal global ptr @queuecommand_lck._entry, section ".printk_index", align 4
@queuecommand_lck._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 136, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Fail command during disconnect\0A\00", [32 x i8] zeroinitializer }, align 32
@queuecommand_lck._entry_ptr.55 = internal global ptr @queuecommand_lck._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"SCSI emulation for PCI-Express Mass Storage devices\00", [44 x i8] zeroinitializer }, align 32
@command_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 162, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s called\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"command_abort\00", [18 x i8] zeroinitializer }, align 32
@command_abort._entry_ptr = internal global ptr @command_abort._entry, section ".printk_index", align 4
@command_abort._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 169, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"-- nothing to abort\0A\00", [43 x i8] zeroinitializer }, align 32
@command_abort._entry_ptr.61 = internal global ptr @command_abort._entry.59, section ".printk_index", align 4
@device_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.62, ptr @.str.2, i32 191, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"device_reset\00", [19 x i8] zeroinitializer }, align 32
@device_reset._entry_ptr = internal global ptr @device_reset._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@rtsx_acquire_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 243, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: chip->msi_en = %d, pci->irq = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtsx_acquire_irq\00", [47 x i8] zeroinitializer }, align 32
@rtsx_acquire_irq._entry_ptr = internal global ptr @rtsx_acquire_irq._entry, section ".printk_index", align 4
@rtsx_acquire_irq._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 250, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rtsx: unable to grab IRQ %d, disabling device\0A\00", [49 x i8] zeroinitializer }, align 32
@rtsx_acquire_irq._entry_ptr.68 = internal global ptr @rtsx_acquire_irq._entry.66, section ".printk_index", align 4
@rtsx_control_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 369, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"-- rtsx-control exiting\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtsx_control_thread\00", [44 x i8] zeroinitializer }, align 32
@rtsx_control_thread._entry_ptr = internal global ptr @rtsx_control_thread._entry, section ".printk_index", align 4
@rtsx_control_thread._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 389, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"UNKNOWN data direction\0A\00", [40 x i8] zeroinitializer }, align 32
@rtsx_control_thread._entry_ptr.73 = internal global ptr @rtsx_control_thread._entry.71, section ".printk_index", align 4
@rtsx_control_thread._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.70, ptr @.str.2, i32 399, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Bad target number (%d:%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@rtsx_control_thread._entry_ptr.76 = internal global ptr @rtsx_control_thread._entry.74, section ".printk_index", align 4
@rtsx_control_thread._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.70, ptr @.str.2, i32 406, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Bad LUN (%d:%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@rtsx_control_thread._entry_ptr.79 = internal global ptr @rtsx_control_thread._entry.77, section ".printk_index", align 4
@rtsx_control_thread._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.70, ptr @.str.2, i32 428, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"scsi command aborted\0A\00", [42 x i8] zeroinitializer }, align 32
@rtsx_control_thread._entry_ptr.82 = internal global ptr @rtsx_control_thread._entry.80, section ".printk_index", align 4
@rtsx_scan_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 669, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: waiting for device to settle before scanning\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtsx_scan_thread\00", [47 x i8] zeroinitializer }, align 32
@rtsx_scan_thread._entry_ptr = internal global ptr @rtsx_scan_thread._entry, section ".printk_index", align 4
@rtsx_scan_thread._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.2, i32 680, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: device scan complete\0A\00", [38 x i8] zeroinitializer }, align 32
@rtsx_scan_thread._entry_ptr.87 = internal global ptr @rtsx_scan_thread._entry.85, section ".printk_index", align 4
@rtsx_polling_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 486, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"-- rtsx-polling exiting\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtsx_polling_thread\00", [44 x i8] zeroinitializer }, align 32
@rtsx_polling_thread._entry_ptr = internal global ptr @rtsx_polling_thread._entry, section ".printk_index", align 4
@rtsx_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.91, ptr @.str.2, i32 971, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtsx_remove\00", [20 x i8] zeroinitializer }, align 32
@rtsx_remove._entry_ptr = internal global ptr @rtsx_remove._entry, section ".printk_index", align 4
@rtsx_release_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 573, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"-- %s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtsx_release_resources\00", [41 x i8] zeroinitializer }, align 32
@rtsx_release_resources._entry_ptr = internal global ptr @rtsx_release_resources._entry, section ".printk_index", align 4
@rtsx_release_resources._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.2, i32 579, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"-- sending exit command to thread\0A\00", [61 x i8] zeroinitializer }, align 32
@rtsx_release_resources._entry_ptr.96 = internal global ptr @rtsx_release_resources._entry.94, section ".printk_index", align 4
@___asan_gen_.97 = private unnamed_addr constant [10 x i8] c"delay_use\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 25, i32 21 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"ss_en\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 29, i32 12 }
@___asan_gen_.103 = private unnamed_addr constant [12 x i8] c"ss_interval\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 33, i32 12 }
@___asan_gen_.106 = private unnamed_addr constant [15 x i8] c"auto_delink_en\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 37, i32 12 }
@___asan_gen_.109 = private unnamed_addr constant [15 x i8] c"aspm_l0s_l1_en\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 41, i32 22 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"msi_en\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 45, i32 12 }
@___asan_gen_.115 = private unnamed_addr constant [12 x i8] c"rtsx_driver\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 992, i32 26 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1001, i32 1 }
@___asan_gen_.121 = private unnamed_addr constant [9 x i8] c"rtsx_ids\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 979, i32 35 }
@___asan_gen_.124 = private unnamed_addr constant [12 x i8] c"rtsx_pm_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 989, i32 8 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 798, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 802, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 808, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [19 x i8] c"rtsx_host_template\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 200, i32 34 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 819, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 833, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 834, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 840, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 845, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 850, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 859, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 866, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 880, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 907, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 915, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 920, i32 7 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 922, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 929, i32 7 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 931, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 960, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 129, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 136, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 57, i32 9 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 162, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 169, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 191, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 87, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 242, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 248, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 369, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 389, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 397, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 404, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 428, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 667, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 679, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 486, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 971, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 573, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.385 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.386 = private constant [34 x i8] c"../drivers/staging/rts5208/rtsx.c\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 579, i32 2 }
@llvm.compiler.used = appending global [152 x ptr] [ptr @__UNIQUE_ID_aspm_l0s_l1_en299, ptr @__UNIQUE_ID_aspm_l0s_l1_entype298, ptr @__UNIQUE_ID_auto_delink_en297, ptr @__UNIQUE_ID_auto_delink_entype296, ptr @__UNIQUE_ID_delay_use291, ptr @__UNIQUE_ID_delay_usetype290, ptr @__UNIQUE_ID_description287, ptr @__UNIQUE_ID_file288, ptr @__UNIQUE_ID_license289, ptr @__UNIQUE_ID_msi_en301, ptr @__UNIQUE_ID_msi_entype300, ptr @__UNIQUE_ID_ss_en293, ptr @__UNIQUE_ID_ss_entype292, ptr @__UNIQUE_ID_ss_interval295, ptr @__UNIQUE_ID_ss_intervaltype294, ptr @__exitcall_rtsx_driver_exit, ptr @__initcall__kmod_rts5208__307_1001_rtsx_driver_init6, ptr @__param_aspm_l0s_l1_en, ptr @__param_auto_delink_en, ptr @__param_delay_use, ptr @__param_msi_en, ptr @__param_ss_en, ptr @__param_ss_interval, ptr @command_abort._entry, ptr @command_abort._entry.59, ptr @command_abort._entry_ptr, ptr @command_abort._entry_ptr.61, ptr @device_reset._entry, ptr @device_reset._entry_ptr, ptr @queuecommand_lck._entry, ptr @queuecommand_lck._entry.53, ptr @queuecommand_lck._entry_ptr, ptr @queuecommand_lck._entry_ptr.55, ptr @rtsx_acquire_irq._entry, ptr @rtsx_acquire_irq._entry.66, ptr @rtsx_acquire_irq._entry_ptr, ptr @rtsx_acquire_irq._entry_ptr.68, ptr @rtsx_control_thread._entry, ptr @rtsx_control_thread._entry.71, ptr @rtsx_control_thread._entry.74, ptr @rtsx_control_thread._entry.77, ptr @rtsx_control_thread._entry.80, ptr @rtsx_control_thread._entry_ptr, ptr @rtsx_control_thread._entry_ptr.73, ptr @rtsx_control_thread._entry_ptr.76, ptr @rtsx_control_thread._entry_ptr.79, ptr @rtsx_control_thread._entry_ptr.82, ptr @rtsx_driver_exit, ptr @rtsx_polling_thread._entry, ptr @rtsx_polling_thread._entry_ptr, ptr @rtsx_probe._entry, ptr @rtsx_probe._entry.10, ptr @rtsx_probe._entry.18, ptr @rtsx_probe._entry.22, ptr @rtsx_probe._entry.25, ptr @rtsx_probe._entry.28, ptr @rtsx_probe._entry.31, ptr @rtsx_probe._entry.34, ptr @rtsx_probe._entry.37, ptr @rtsx_probe._entry.41, ptr @rtsx_probe._entry.45, ptr @rtsx_probe._entry.48, ptr @rtsx_probe._entry.7, ptr @rtsx_probe._entry_ptr, ptr @rtsx_probe._entry_ptr.12, ptr @rtsx_probe._entry_ptr.21, ptr @rtsx_probe._entry_ptr.24, ptr @rtsx_probe._entry_ptr.27, ptr @rtsx_probe._entry_ptr.30, ptr @rtsx_probe._entry_ptr.33, ptr @rtsx_probe._entry_ptr.36, ptr @rtsx_probe._entry_ptr.39, ptr @rtsx_probe._entry_ptr.43, ptr @rtsx_probe._entry_ptr.47, ptr @rtsx_probe._entry_ptr.50, ptr @rtsx_probe._entry_ptr.9, ptr @rtsx_release_resources._entry, ptr @rtsx_release_resources._entry.94, ptr @rtsx_release_resources._entry_ptr, ptr @rtsx_release_resources._entry_ptr.96, ptr @rtsx_remove._entry, ptr @rtsx_remove._entry_ptr, ptr @rtsx_scan_thread._entry, ptr @rtsx_scan_thread._entry.85, ptr @rtsx_scan_thread._entry_ptr, ptr @rtsx_scan_thread._entry_ptr.87, ptr @delay_use, ptr @ss_en, ptr @ss_interval, ptr @auto_delink_en, ptr @aspm_l0s_l1_en, ptr @msi_en, ptr @rtsx_driver, ptr @.str, ptr @rtsx_ids, ptr @rtsx_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @rtsx_host_template, ptr @.str.11, ptr @rtsx_probe.__key, ptr @.str.13, ptr @rtsx_probe.__key.14, ptr @.str.15, ptr @rtsx_probe.__key.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @init_completion.__key, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_use to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_en to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auto_delink_en to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspm_l0s_l1_en to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_en to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queuecommand_lck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queuecommand_lck._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @command_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @command_abort._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_acquire_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_acquire_irq._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_control_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_control_thread._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_control_thread._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_control_thread._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_control_thread._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_scan_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_scan_thread._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_polling_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_release_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_release_resources._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @rtsx_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtsx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @rtsx_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_probe.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_probe, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !240

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_probe.__UNIQUE_ID_ddebug306, ptr noundef %dev3, ptr noundef nonnull @.str.3) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @pcim_enable_device(ptr noundef %pci) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end8, label %if.end10

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.4) #15
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %call11 = tail call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str) #15
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %call19 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @rtsx_host_template, i32 noundef 516) #12
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %do.end24, label %if.end26

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.11) #15
  br label %scsi_host_alloc_fail

if.end26:                                         ; preds = %if.end18
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 0, i32 53
  %0 = call ptr @memset(ptr %hostdata.i, i32 0, i32 516)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1184) #16
  %chip = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 34
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %chip, align 4
  %tobool30.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool30.not, label %if.end26.do.end207_crit_edge, label %do.body33

if.end26.do.end207_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end207

do.body33:                                        ; preds = %if.end26
  %reg_lock = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %reg_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @rtsx_probe.__key, i16 noundef signext 3) #12
  %dev_mutex = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 13, i32 13, i32 5, i32 1
  tail call void @__mutex_init(ptr noundef %dev_mutex, ptr noundef nonnull @.str.15, ptr noundef nonnull @rtsx_probe.__key.14) #12
  %cmnd_ready = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 4
  %3 = ptrtoint ptr %cmnd_ready to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %cmnd_ready, align 4
  %wait.i = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 5
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.63, ptr noundef nonnull @init_completion.__key) #12
  %control_exit = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 5, i32 3
  %4 = ptrtoint ptr %control_exit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %control_exit, align 4
  %wait.i323 = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 5, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i323, ptr noundef nonnull @.str.63, ptr noundef nonnull @init_completion.__key) #12
  %polling_exit = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 8
  %5 = ptrtoint ptr %polling_exit to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %polling_exit, align 4
  %wait.i324 = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 9
  tail call void @__init_swait_queue_head(ptr noundef %wait.i324, ptr noundef nonnull @.str.63, ptr noundef nonnull @init_completion.__key) #12
  %notify = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 10, i32 1, i32 1
  %6 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %notify, align 4
  %wait.i325 = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 11
  tail call void @__init_swait_queue_head(ptr noundef %wait.i325, ptr noundef nonnull @.str.63, ptr noundef nonnull @init_completion.__key) #12
  %scanning_done = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 13, i32 3
  %7 = ptrtoint ptr %scanning_done to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %scanning_done, align 4
  %wait.i326 = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 13, i32 4
  tail call void @__init_swait_queue_head(ptr noundef %wait.i326, ptr noundef nonnull @.str.63, ptr noundef nonnull @init_completion.__key) #12
  %delay_wait = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 13, i32 13, i32 1, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %delay_wait, ptr noundef nonnull @.str.17, ptr noundef nonnull @rtsx_probe.__key.16) #12
  %8 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pci, ptr %hostdata.i, align 4
  %irq = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 1, i32 1
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %irq, align 4
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %end = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 0, i32 1
  %10 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp48 = icmp eq i32 %11, 0
  br i1 %cmp48, label %do.body33.cond.end_crit_edge, label %cond.false

do.body33.cond.end_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resource, align 8
  %sub = add i32 %11, 1
  %add = sub i32 %sub, %13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.body33.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %do.body33.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev47, ptr noundef nonnull @.str.19, i32 noundef %cond) #15
  %14 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resource, align 8
  %addr = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %addr, align 4
  %17 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp61 = icmp eq i32 %18, 0
  br i1 %cmp61, label %cond.end.cond.end72_crit_edge, label %cond.false63

cond.end.cond.end72_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end72

cond.false63:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resource, align 8
  %sub70 = add i32 %18, 1
  %add71 = sub i32 %sub70, %20
  br label %cond.end72

cond.end72:                                       ; preds = %cond.false63, %cond.end.cond.end72_crit_edge
  %cond73 = phi i32 [ %add71, %cond.false63 ], [ 0, %cond.end.cond.end72_crit_edge ]
  %call74 = tail call ptr @ioremap(i32 noundef %15, i32 noundef %cond73) #12
  %remap_addr = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 1
  %21 = ptrtoint ptr %remap_addr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call74, ptr %remap_addr, align 4
  %tobool76.not = icmp eq ptr %call74, null
  br i1 %tobool76.not, label %do.end80, label %do.end85

do.end80:                                         ; preds = %cond.end72
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.23) #15
  br label %ioremap_fail

do.end85:                                         ; preds = %cond.end72
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr, align 4
  %24 = ptrtoint ptr %call74 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev47, ptr noundef nonnull @.str.26, i32 noundef %23, i32 noundef %24) #15
  %rtsx_resv_buf_addr = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 30
  %call.i = tail call ptr @dmam_alloc_attrs(ptr noundef %dev47, i32 noundef 4096, ptr noundef %rtsx_resv_buf_addr, i32 noundef 3264, i32 noundef 0) #12
  %rtsx_resv_buf = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 29
  %25 = ptrtoint ptr %rtsx_resv_buf to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %rtsx_resv_buf, align 4
  %tobool92.not = icmp eq ptr %call.i, null
  br i1 %tobool92.not, label %do.end96, label %if.end98

do.end96:                                         ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.29) #15
  br label %dma_alloc_fail

if.end98:                                         ; preds = %do.end85
  %26 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip, align 4
  %host_cmds_ptr = getelementptr inbounds %struct.rtsx_chip, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %host_cmds_ptr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %host_cmds_ptr, align 4
  %29 = ptrtoint ptr %rtsx_resv_buf_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rtsx_resv_buf_addr, align 4
  %31 = load ptr, ptr %chip, align 4
  %host_cmds_addr = getelementptr inbounds %struct.rtsx_chip, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %host_cmds_addr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %30, ptr %host_cmds_addr, align 4
  %33 = ptrtoint ptr %rtsx_resv_buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rtsx_resv_buf, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 1024
  %35 = load ptr, ptr %chip, align 4
  %host_sg_tbl_ptr = getelementptr inbounds %struct.rtsx_chip, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %host_sg_tbl_ptr to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr, ptr %host_sg_tbl_ptr, align 4
  %37 = load i32, ptr %rtsx_resv_buf_addr, align 4
  %add106 = add i32 %37, 1024
  %38 = load ptr, ptr %chip, align 4
  %host_sg_tbl_addr = getelementptr inbounds %struct.rtsx_chip, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %host_sg_tbl_addr to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add106, ptr %host_sg_tbl_addr, align 4
  %40 = load ptr, ptr %chip, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %hostdata.i, ptr %40, align 4
  %42 = load ptr, ptr %chip, align 4
  tail call fastcc void @rtsx_init_options(ptr noundef %42)
  %irq114 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %43 = ptrtoint ptr %irq114 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq114, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev47, ptr noundef nonnull @.str.32, i32 noundef %44) #15
  %45 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chip, align 4
  %msi_en = getelementptr inbounds %struct.rtsx_chip, ptr %46, i32 0, i32 117
  %47 = ptrtoint ptr %msi_en to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %msi_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool116.not = icmp eq i32 %48, 0
  br i1 %tobool116.not, label %if.end98.if.end124_crit_edge, label %if.then117

if.end98.if.end124_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124

if.then117:                                       ; preds = %if.end98
  %call.i327 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %pci, i32 noundef 1, i32 noundef 1, i32 noundef 2, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i327)
  %cmp119 = icmp slt i32 %call.i327, 0
  br i1 %cmp119, label %if.then120, label %if.then117.if.end124_crit_edge

if.then117.if.end124_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124

if.then120:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chip, align 4
  %msi_en122 = getelementptr inbounds %struct.rtsx_chip, ptr %50, i32 0, i32 117
  %51 = ptrtoint ptr %msi_en122 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %msi_en122, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then120, %if.then117.if.end124_crit_edge, %if.end98.if.end124_crit_edge
  %call125 = tail call fastcc i32 @rtsx_acquire_irq(ptr noundef %hostdata.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126 = icmp slt i32 %call125, 0
  br i1 %cmp126, label %if.end124.irq_acquire_fail_crit_edge, label %if.end128

if.end124.irq_acquire_fail_crit_edge:             ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %irq_acquire_fail

if.end128:                                        ; preds = %if.end124
  tail call void @pci_set_master(ptr noundef %pci) #12
  %52 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %53) #12
  %54 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %chip, align 4
  %call131 = tail call i32 @rtsx_init_chip(ptr noundef %55) #12
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 0, i32 21
  %56 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %max_id, align 4
  %57 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chip, align 4
  %max_lun = getelementptr inbounds %struct.rtsx_chip, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %max_lun to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %max_lun, align 4
  %conv = zext i8 %60 to i64
  %max_lun133 = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 0, i32 22
  %61 = ptrtoint ptr %max_lun133 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %conv, ptr %max_lun133, align 8
  %call134 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @rtsx_control_thread, ptr noundef %hostdata.i, i32 noundef -1, ptr noundef nonnull @.str) #12
  %cmp.i = icmp ugt ptr %call134, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end144, label %if.end147

do.end144:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.35) #15
  %62 = ptrtoint ptr %call134 to i32
  br label %control_thread_fail

if.end147:                                        ; preds = %if.end128
  %call137 = tail call i32 @wake_up_process(ptr noundef %call134) #12
  %ctl_thread = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %63 = ptrtoint ptr %ctl_thread to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call134, ptr %ctl_thread, align 4
  %call.i329 = tail call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call19, ptr noundef %dev47, ptr noundef %dev47) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i329)
  %tobool150.not = icmp eq i32 %call.i329, 0
  br i1 %tobool150.not, label %if.end156, label %do.end154

do.end154:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.38) #15
  br label %scsi_add_host_fail

if.end156:                                        ; preds = %if.end147
  %call158 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @rtsx_scan_thread, ptr noundef %hostdata.i, i32 noundef -1, ptr noundef nonnull @.str.40) #12
  %cmp.i330 = icmp ugt ptr %call158, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i330, label %do.end168, label %if.end172

do.end168:                                        ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.42) #15
  tail call void @complete(ptr noundef %scanning_done) #12
  br label %scan_thread_fail

if.end172:                                        ; preds = %if.end156
  %call161 = tail call i32 @wake_up_process(ptr noundef %call158) #12
  %call174 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @rtsx_polling_thread, ptr noundef %hostdata.i, i32 noundef -1, ptr noundef nonnull @.str.44) #12
  %cmp.i332 = icmp ugt ptr %call174, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i332, label %do.end184, label %if.end187

do.end184:                                        ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.46) #15
  br label %scan_thread_fail

if.end187:                                        ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #14
  %call177 = tail call i32 @wake_up_process(ptr noundef %call174) #12
  %polling_thread = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %64 = ptrtoint ptr %polling_thread to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call174, ptr %polling_thread, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %65 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %hostdata.i, ptr %driver_data.i.i, align 4
  br label %cleanup

scan_thread_fail:                                 ; preds = %do.end184, %do.end168
  %err.0.in = phi ptr [ %call158, %do.end168 ], [ %call174, %do.end184 ]
  %err.0 = ptrtoint ptr %err.0.in to i32
  tail call fastcc void @quiesce_and_remove_host(ptr noundef %hostdata.i)
  br label %scsi_add_host_fail

scsi_add_host_fail:                               ; preds = %scan_thread_fail, %do.end154
  %err.1 = phi i32 [ %call.i329, %do.end154 ], [ %err.0, %scan_thread_fail ]
  tail call void @complete(ptr noundef %cmnd_ready) #12
  tail call void @wait_for_completion(ptr noundef %control_exit) #12
  br label %control_thread_fail

control_thread_fail:                              ; preds = %scsi_add_host_fail, %do.end144
  %err.2 = phi i32 [ %62, %do.end144 ], [ %err.1, %scsi_add_host_fail ]
  %66 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %irq, align 4
  %call191 = tail call ptr @free_irq(i32 noundef %67, ptr noundef %hostdata.i) #12
  %68 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %chip, align 4
  tail call void @rtsx_release_chip(ptr noundef %69) #12
  br label %irq_acquire_fail

irq_acquire_fail:                                 ; preds = %control_thread_fail, %if.end124.irq_acquire_fail_crit_edge
  %err.3 = phi i32 [ %err.2, %control_thread_fail ], [ -16, %if.end124.irq_acquire_fail_crit_edge ]
  %70 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %chip, align 4
  %host_cmds_ptr194 = getelementptr inbounds %struct.rtsx_chip, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %host_cmds_ptr194 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %host_cmds_ptr194, align 4
  %73 = load ptr, ptr %chip, align 4
  %host_sg_tbl_ptr196 = getelementptr inbounds %struct.rtsx_chip, ptr %73, i32 0, i32 7
  %74 = ptrtoint ptr %host_sg_tbl_ptr196 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %host_sg_tbl_ptr196, align 4
  %75 = load ptr, ptr %chip, align 4
  %msi_en198 = getelementptr inbounds %struct.rtsx_chip, ptr %75, i32 0, i32 117
  %76 = ptrtoint ptr %msi_en198 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %msi_en198, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool199.not = icmp eq i32 %77, 0
  br i1 %tobool199.not, label %irq_acquire_fail.dma_alloc_fail_crit_edge, label %if.then200

irq_acquire_fail.dma_alloc_fail_crit_edge:        ; preds = %irq_acquire_fail
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_alloc_fail

if.then200:                                       ; preds = %irq_acquire_fail
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hostdata.i, align 4
  tail call void @pci_free_irq_vectors(ptr noundef %79) #12
  br label %dma_alloc_fail

dma_alloc_fail:                                   ; preds = %if.then200, %irq_acquire_fail.dma_alloc_fail_crit_edge, %do.end96
  %err.4 = phi i32 [ %err.3, %if.then200 ], [ %err.3, %irq_acquire_fail.dma_alloc_fail_crit_edge ], [ -6, %do.end96 ]
  %80 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %remap_addr, align 4
  tail call void @iounmap(ptr noundef %81) #12
  br label %ioremap_fail

ioremap_fail:                                     ; preds = %dma_alloc_fail, %do.end80
  %err.5 = phi i32 [ %err.4, %dma_alloc_fail ], [ -6, %do.end80 ]
  %82 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %chip, align 4
  tail call void @kfree(ptr noundef %83) #12
  br label %do.end207

do.end207:                                        ; preds = %ioremap_fail, %if.end26.do.end207_crit_edge
  %err.6 = phi i32 [ %err.5, %ioremap_fail ], [ -12, %if.end26.do.end207_crit_edge ]
  %dev208 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev208, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1) #15
  tail call void @scsi_host_put(ptr noundef nonnull %call19) #12
  br label %scsi_host_alloc_fail

scsi_host_alloc_fail:                             ; preds = %do.end207, %do.end24
  %err.7 = phi i32 [ %err.6, %do.end207 ], [ -12, %do.end24 ]
  tail call void @pci_release_regions(ptr noundef %pci) #12
  br label %cleanup

cleanup:                                          ; preds = %scsi_host_alloc_fail, %if.end187, %do.end16, %do.end8
  %retval.0 = phi i32 [ %call4, %do.end8 ], [ %call11, %do.end16 ], [ %err.7, %scsi_host_alloc_fail ], [ 0, %if.end187 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtsx_remove(ptr noundef %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.91) #15
  tail call fastcc void @quiesce_and_remove_host(ptr noundef %1)
  tail call fastcc void @rtsx_release_resources(ptr noundef %1) #12
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -2448
  tail call void @scsi_host_put(ptr noundef %add.ptr.i.i) #12
  tail call void @pci_release_regions(ptr noundef %pci) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtsx_shutdown(ptr noundef %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip1 = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  tail call void @rtsx_do_before_power_down(ptr noundef %3, i32 noundef 1) #12
  %irq = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp sgt i32 %5, -1
  br i1 %cmp, label %if.then2, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call ptr @free_irq(i32 noundef %5, ptr noundef nonnull %1) #12
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %irq, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %msi_en = getelementptr inbounds %struct.rtsx_chip, ptr %3, i32 0, i32 117
  %7 = ptrtoint ptr %msi_en to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msi_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %if.end6.if.end9_crit_edge, label %if.then8

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_free_irq_vectors(ptr noundef %pci) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  tail call void @pci_disable_device(ptr noundef %pci) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @rtsx_init_options(ptr noundef %chip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor, align 8
  %vendor_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 57
  %6 = ptrtoint ptr %vendor_id to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %vendor_id, align 4
  %7 = load ptr, ptr %1, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device, align 2
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %10 = ptrtoint ptr %product_id to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %product_id, align 2
  %adma_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 64
  %11 = ptrtoint ptr %adma_mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %adma_mode, align 4
  %lun_mc = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 25
  %12 = ptrtoint ptr %lun_mc to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %lun_mc, align 2
  %driver_first_load = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 60
  %13 = ptrtoint ptr %driver_first_load to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %driver_first_load, align 4
  %sdio_in_charge = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 61
  %14 = ptrtoint ptr %sdio_in_charge to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %sdio_in_charge, align 4
  %mspro_formatter_enable = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 80
  %15 = ptrtoint ptr %mspro_formatter_enable to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %mspro_formatter_enable, align 4
  %ignore_sd = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 82
  %16 = ptrtoint ptr %ignore_sd to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ignore_sd, align 4
  %use_hw_setting = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 83
  %17 = ptrtoint ptr %use_hw_setting to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %use_hw_setting, align 4
  %lun_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 67
  %18 = ptrtoint ptr %lun_mode to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %lun_mode, align 4
  %19 = load i32, ptr @auto_delink_en, align 4
  %auto_delink_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 65
  %20 = ptrtoint ptr %auto_delink_en to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %auto_delink_en, align 4
  %21 = load i32, ptr @ss_en, align 4
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %22 = ptrtoint ptr %ss_en to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ss_en, align 4
  %23 = load i32, ptr @ss_interval, align 4
  %mul = mul i32 %23, 1000
  %ss_idle_period = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 84
  %24 = ptrtoint ptr %ss_idle_period to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul, ptr %ss_idle_period, align 4
  %remote_wakeup_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 81
  %25 = ptrtoint ptr %remote_wakeup_en to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %remote_wakeup_en, align 4
  %26 = load i8, ptr @aspm_l0s_l1_en, align 1
  %aspm_l0s_l1_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 68
  %27 = ptrtoint ptr %aspm_l0s_l1_en to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %aspm_l0s_l1_en, align 1
  %dynamic_aspm = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 85
  %28 = ptrtoint ptr %dynamic_aspm to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %dynamic_aspm, align 4
  %fpga_sd_sdr104_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 86
  %29 = ptrtoint ptr %fpga_sd_sdr104_clk to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 10, ptr %fpga_sd_sdr104_clk, align 4
  %fpga_sd_ddr50_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 87
  %30 = ptrtoint ptr %fpga_sd_ddr50_clk to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 7, ptr %fpga_sd_ddr50_clk, align 4
  %fpga_sd_sdr50_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 88
  %31 = ptrtoint ptr %fpga_sd_sdr50_clk to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 7, ptr %fpga_sd_sdr50_clk, align 4
  %fpga_sd_hs_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 89
  %32 = ptrtoint ptr %fpga_sd_hs_clk to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 7, ptr %fpga_sd_hs_clk, align 4
  %fpga_mmc_52m_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 90
  %33 = ptrtoint ptr %fpga_mmc_52m_clk to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 6, ptr %fpga_mmc_52m_clk, align 4
  %fpga_ms_hg_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 91
  %34 = ptrtoint ptr %fpga_ms_hg_clk to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 6, ptr %fpga_ms_hg_clk, align 4
  %fpga_ms_4bit_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 92
  %35 = ptrtoint ptr %fpga_ms_4bit_clk to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 6, ptr %fpga_ms_4bit_clk, align 4
  %fpga_ms_1bit_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 93
  %36 = ptrtoint ptr %fpga_ms_1bit_clk to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3, ptr %fpga_ms_1bit_clk, align 4
  %asic_sd_sdr104_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 94
  %37 = ptrtoint ptr %asic_sd_sdr104_clk to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 203, ptr %asic_sd_sdr104_clk, align 4
  %asic_sd_sdr50_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 96
  %38 = ptrtoint ptr %asic_sd_sdr50_clk to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 98, ptr %asic_sd_sdr50_clk, align 4
  %asic_sd_ddr50_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 95
  %39 = ptrtoint ptr %asic_sd_ddr50_clk to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 98, ptr %asic_sd_ddr50_clk, align 4
  %asic_sd_hs_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 97
  %40 = ptrtoint ptr %asic_sd_hs_clk to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 98, ptr %asic_sd_hs_clk, align 4
  %asic_mmc_52m_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 98
  %41 = ptrtoint ptr %asic_mmc_52m_clk to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 98, ptr %asic_mmc_52m_clk, align 4
  %asic_ms_hg_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 99
  %42 = ptrtoint ptr %asic_ms_hg_clk to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 117, ptr %asic_ms_hg_clk, align 4
  %asic_ms_4bit_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 100
  %43 = ptrtoint ptr %asic_ms_4bit_clk to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 78, ptr %asic_ms_4bit_clk, align 4
  %asic_ms_1bit_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 101
  %44 = ptrtoint ptr %asic_ms_1bit_clk to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 39, ptr %asic_ms_1bit_clk, align 4
  %ssc_depth_sd_sdr104 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 102
  %45 = ptrtoint ptr %ssc_depth_sd_sdr104 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 2, ptr %ssc_depth_sd_sdr104, align 4
  %ssc_depth_sd_sdr50 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 104
  %46 = ptrtoint ptr %ssc_depth_sd_sdr50 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 2, ptr %ssc_depth_sd_sdr50, align 2
  %ssc_depth_sd_ddr50 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 103
  %47 = ptrtoint ptr %ssc_depth_sd_ddr50 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 3, ptr %ssc_depth_sd_ddr50, align 1
  %ssc_depth_sd_hs = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 105
  %48 = ptrtoint ptr %ssc_depth_sd_hs to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 3, ptr %ssc_depth_sd_hs, align 1
  %ssc_depth_mmc_52m = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 106
  %49 = ptrtoint ptr %ssc_depth_mmc_52m to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 3, ptr %ssc_depth_mmc_52m, align 4
  %ssc_depth_ms_hg = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 107
  %50 = ptrtoint ptr %ssc_depth_ms_hg to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 3, ptr %ssc_depth_ms_hg, align 1
  %ssc_depth_ms_4bit = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 108
  %51 = ptrtoint ptr %ssc_depth_ms_4bit to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 4, ptr %ssc_depth_ms_4bit, align 2
  %ssc_depth_low_speed = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 109
  %52 = ptrtoint ptr %ssc_depth_low_speed to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 4, ptr %ssc_depth_low_speed, align 1
  %ssc_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 116
  %53 = ptrtoint ptr %ssc_en to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %ssc_en, align 4
  %sd_speed_prior = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 144
  %54 = ptrtoint ptr %sd_speed_prior to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 17039875, ptr %sd_speed_prior, align 4
  %sd_current_prior = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 145
  %55 = ptrtoint ptr %sd_current_prior to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 66051, ptr %sd_current_prior, align 4
  %sd_ctl = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 146
  %56 = ptrtoint ptr %sd_ctl to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 74, ptr %sd_ctl, align 4
  %sd_ddr_tx_phase = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 123
  %57 = ptrtoint ptr %sd_ddr_tx_phase to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %sd_ddr_tx_phase, align 4
  %mmc_ddr_tx_phase = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 124
  %58 = ptrtoint ptr %mmc_ddr_tx_phase to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %mmc_ddr_tx_phase, align 4
  %sd_default_tx_phase = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 125
  %59 = ptrtoint ptr %sd_default_tx_phase to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 15, ptr %sd_default_tx_phase, align 4
  %sd_default_rx_phase = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 126
  %60 = ptrtoint ptr %sd_default_rx_phase to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 15, ptr %sd_default_rx_phase, align 4
  %pmos_pwr_on_interval = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 127
  %61 = ptrtoint ptr %pmos_pwr_on_interval to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 200, ptr %pmos_pwr_on_interval, align 4
  %sd_voltage_switch_delay = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 128
  %62 = ptrtoint ptr %sd_voltage_switch_delay to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1000, ptr %sd_voltage_switch_delay, align 4
  %ms_power_class_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 79
  %63 = ptrtoint ptr %ms_power_class_en to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 3, ptr %ms_power_class_en, align 4
  %sd_400mA_ocp_thd = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 113
  %64 = ptrtoint ptr %sd_400mA_ocp_thd to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %sd_400mA_ocp_thd, align 1
  %sd_800mA_ocp_thd = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 114
  %65 = ptrtoint ptr %sd_800mA_ocp_thd to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 5, ptr %sd_800mA_ocp_thd, align 4
  %ms_ocp_thd = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 115
  %66 = ptrtoint ptr %ms_ocp_thd to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 2, ptr %ms_ocp_thd, align 1
  %card_drive_sel = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 110
  %67 = ptrtoint ptr %card_drive_sel to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 85, ptr %card_drive_sel, align 4
  %sd30_drive_sel_1v8 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 111
  %68 = ptrtoint ptr %sd30_drive_sel_1v8 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 3, ptr %sd30_drive_sel_1v8, align 1
  %sd30_drive_sel_3v3 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 112
  %69 = ptrtoint ptr %sd30_drive_sel_3v3 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %sd30_drive_sel_3v3, align 2
  %do_delink_before_power_down = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 132
  %70 = ptrtoint ptr %do_delink_before_power_down to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %do_delink_before_power_down, align 4
  %auto_power_down = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 122
  %71 = ptrtoint ptr %auto_power_down to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %auto_power_down, align 4
  %polling_config = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 133
  %72 = ptrtoint ptr %polling_config to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %polling_config, align 4
  %force_clkreq_0 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 130
  %73 = ptrtoint ptr %force_clkreq_0 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %force_clkreq_0, align 4
  %ft2_fast_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 131
  %74 = ptrtoint ptr %ft2_fast_mode to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %ft2_fast_mode, align 4
  %sdio_retry_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 134
  %75 = ptrtoint ptr %sdio_retry_cnt to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %sdio_retry_cnt, align 4
  %xd_timeout = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 118
  %76 = ptrtoint ptr %xd_timeout to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2000, ptr %xd_timeout, align 4
  %sd_timeout = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 119
  %77 = ptrtoint ptr %sd_timeout to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 10000, ptr %sd_timeout, align 4
  %ms_timeout = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 120
  %78 = ptrtoint ptr %ms_timeout to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 2000, ptr %ms_timeout, align 4
  %mspro_timeout = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 121
  %79 = ptrtoint ptr %mspro_timeout to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 15000, ptr %mspro_timeout, align 4
  %power_down_in_ss = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 69
  %80 = ptrtoint ptr %power_down_in_ss to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %power_down_in_ss, align 4
  %sdr104_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 70
  %81 = ptrtoint ptr %sdr104_en to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %sdr104_en, align 4
  %sdr50_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 72
  %82 = ptrtoint ptr %sdr50_en to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %sdr50_en, align 4
  %ddr50_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 71
  %83 = ptrtoint ptr %ddr50_en to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %ddr50_en, align 4
  %delink_stage1_step = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 135
  %84 = ptrtoint ptr %delink_stage1_step to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 100, ptr %delink_stage1_step, align 4
  %delink_stage2_step = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 136
  %85 = ptrtoint ptr %delink_stage2_step to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 40, ptr %delink_stage2_step, align 4
  %delink_stage3_step = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 137
  %86 = ptrtoint ptr %delink_stage3_step to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 20, ptr %delink_stage3_step, align 4
  %auto_delink_in_L1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 138
  %87 = ptrtoint ptr %auto_delink_in_L1 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %auto_delink_in_L1, align 4
  %blink_led = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 141
  %88 = ptrtoint ptr %blink_led to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %blink_led, align 4
  %89 = load i32, ptr @msi_en, align 4
  %msi_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 117
  %90 = ptrtoint ptr %msi_en to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %msi_en, align 4
  %hp_watch_bios_hotplug = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 139
  %91 = ptrtoint ptr %hp_watch_bios_hotplug to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %hp_watch_bios_hotplug, align 4
  %max_payload = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 143
  %92 = ptrtoint ptr %max_payload to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %max_payload, align 2
  %phy_voltage = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 142
  %93 = ptrtoint ptr %phy_voltage to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %phy_voltage, align 1
  %support_ms_8bit = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 140
  %94 = ptrtoint ptr %support_ms_8bit to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %support_ms_8bit, align 4
  %s3_pwr_off_delay = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 129
  %95 = ptrtoint ptr %s3_pwr_off_delay to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1000, ptr %s3_pwr_off_delay, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtsx_acquire_irq(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtsx_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %msi_en = getelementptr inbounds %struct.rtsx_chip, ptr %1, i32 0, i32 117
  %4 = ptrtoint ptr %msi_en to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msi_en, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef %5, i32 noundef %7) #15
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %irq5 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq5, align 4
  %12 = ptrtoint ptr %msi_en to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msi_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %cond = select i1 %tobool.not, i32 128, i32 0
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %11, ptr noundef nonnull @rtsx_interrupt, ptr noundef null, i32 noundef %cond, ptr noundef nonnull @.str, ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br i1 %tobool7.not, label %if.end, label %do.end10

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %irq14 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 46
  %16 = ptrtoint ptr %irq14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.67, i32 noundef %17) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %irq16 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 46
  %18 = ptrtoint ptr %irq16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq16, align 4
  %irq17 = getelementptr inbounds %struct.rtsx_dev, ptr %dev, i32 0, i32 3
  %20 = ptrtoint ptr %irq17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %irq17, align 4
  %21 = ptrtoint ptr %msi_en to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msi_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool20.not = icmp eq i32 %22, 0
  %lnot.ext = zext i1 %tobool20.not to i32
  tail call void @pci_intx(ptr noundef %15, i32 noundef %lnot.ext) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end10
  %retval.0 = phi i32 [ -1, %do.end10 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_init_chip(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_control_thread(ptr noundef %__dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtsx_dev, ptr %__dev, i32 0, i32 20
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %cmnd_ready = getelementptr inbounds %struct.rtsx_dev, ptr %__dev, i32 0, i32 7
  %call2136 = tail call i32 @wait_for_completion_interruptible(ptr noundef %cmnd_ready) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2136)
  %tobool.not137 = icmp eq i32 %call2136, 0
  br i1 %tobool.not137, label %if.end.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.lr.ph:                                     ; preds = %entry
  %dev_mutex = getelementptr inbounds %struct.rtsx_dev, ptr %__dev, i32 0, i32 13
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %1, i32 0, i32 56
  %host_lock = getelementptr i8, ptr %__dev, i32 -2380
  %srb12 = getelementptr inbounds %struct.rtsx_chip, ptr %1, i32 0, i32 10
  %max_lun = getelementptr inbounds %struct.rtsx_chip, ptr %1, i32 0, i32 2
  %notify = getelementptr inbounds %struct.rtsx_dev, ptr %__dev, i32 0, i32 10
  br label %if.end

if.end:                                           ; preds = %if.end93.if.end_crit_edge, %if.end.lr.ph
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #12
  %2 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp = icmp eq i32 %3, 7
  br i1 %cmp, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %__dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__dev, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev4, ptr noundef nonnull @.str.69) #15
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #12
  br label %for.end

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %7) #12
  %8 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp8 = icmp eq i32 %9, 6
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %srb12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %srb12, align 4
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 24
  %12 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 327680, ptr %result, align 4
  br label %do.end80

if.end10:                                         ; preds = %if.end6
  %13 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %14) #12
  %15 = ptrtoint ptr %srb12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %srb12, align 4
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp13 = icmp eq i32 %18, 0
  br i1 %cmp13, label %do.end17, label %if.else

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %__dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %__dev, align 4
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.72) #15
  %21 = ptrtoint ptr %srb12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %srb12, align 4
  %result21 = getelementptr inbounds %struct.scsi_cmnd, ptr %22, i32 0, i32 24
  %23 = ptrtoint ptr %result21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 458752, ptr %result21, align 4
  br label %if.end65

if.else:                                          ; preds = %if.end10
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %16, i32 0, i32 1
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool23.not = icmp eq i32 %27, 0
  br i1 %tobool23.not, label %if.else38, label %do.end27

do.end27:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %__dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %__dev, align 4
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %lun = getelementptr inbounds %struct.scsi_device, ptr %25, i32 0, i32 18
  %30 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %lun, align 8
  %conv = trunc i64 %31 to i32
  %conv35 = and i32 %conv, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.75, i32 noundef %27, i32 noundef %conv35) #15
  %32 = ptrtoint ptr %srb12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %srb12, align 4
  %result37 = getelementptr inbounds %struct.scsi_cmnd, ptr %33, i32 0, i32 24
  %34 = ptrtoint ptr %result37 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 262144, ptr %result37, align 4
  br label %if.end65

if.else38:                                        ; preds = %if.else
  %lun41 = getelementptr inbounds %struct.scsi_device, ptr %25, i32 0, i32 18
  %35 = ptrtoint ptr %lun41 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %lun41, align 8
  %37 = ptrtoint ptr %max_lun to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %max_lun, align 4
  %conv42 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %conv42)
  %cmp43 = icmp ugt i64 %36, %conv42
  br i1 %cmp43, label %do.end48, label %if.else61

do.end48:                                         ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %__dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__dev, align 4
  %dev50 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %conv57 = trunc i64 %36 to i32
  %conv58 = and i32 %conv57, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.78, i32 noundef 0, i32 noundef %conv58) #15
  %41 = ptrtoint ptr %srb12 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %srb12, align 4
  %result60 = getelementptr inbounds %struct.scsi_cmnd, ptr %42, i32 0, i32 24
  %43 = ptrtoint ptr %result60 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 262144, ptr %result60, align 4
  br label %if.end65

if.else61:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_show_command(ptr noundef %1) #12
  %44 = ptrtoint ptr %srb12 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %srb12, align 4
  tail call void @rtsx_invoke_transport(ptr noundef %45, ptr noundef %1) #12
  br label %if.end65

if.end65:                                         ; preds = %if.else61, %do.end48, %do.end27, %do.end17
  %46 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %47) #12
  %48 = ptrtoint ptr %srb12 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %srb12, align 4
  %tobool68.not = icmp eq ptr %49, null
  br i1 %tobool68.not, label %if.end65.if.end84_crit_edge, label %if.else70

if.end65.if.end84_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

if.else70:                                        ; preds = %if.end65
  %result72 = getelementptr inbounds %struct.scsi_cmnd, ptr %49, i32 0, i32 24
  %50 = ptrtoint ptr %result72 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %result72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 327680, i32 %51)
  %cmp73.not = icmp eq i32 %51, 327680
  br i1 %cmp73.not, label %if.else70.do.end80_crit_edge, label %if.then75

if.else70.do.end80_crit_edge:                     ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end80

if.then75:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_done(ptr noundef nonnull %49) #12
  br label %if.end84

do.end80:                                         ; preds = %if.else70.do.end80_crit_edge, %if.then9
  %52 = ptrtoint ptr %__dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %__dev, align 4
  %dev82 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev82, ptr noundef nonnull @.str.81) #15
  br label %if.end84

if.end84:                                         ; preds = %do.end80, %if.then75, %if.end65.if.end84_crit_edge
  %54 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %55)
  %cmp86 = icmp eq i32 %55, 6
  br i1 %cmp86, label %if.then88, label %if.end84.if.end93_crit_edge

if.end84.if.end93_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.then88:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @complete(ptr noundef %notify) #12
  %56 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %rtsx_stat, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then88, %if.end84.if.end93_crit_edge
  %57 = ptrtoint ptr %srb12 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %srb12, align 4
  %58 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %59) #12
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #12
  %call2 = tail call i32 @wait_for_completion_interruptible(ptr noundef %cmnd_ready) #12
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end93.if.end_crit_edge, label %if.end93.for.end_crit_edge

if.end93.for.end_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end93.if.end_crit_edge:                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.end:                                          ; preds = %if.end93.for.end_crit_edge, %do.end, %entry.for.end_crit_edge
  %control_exit = getelementptr inbounds %struct.rtsx_dev, ptr %__dev, i32 0, i32 8
  call void @__asan_handle_no_return()
  tail call void @kthread_complete_and_exit(ptr noundef %control_exit, i32 noundef 0) #17
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_scan_thread(ptr noundef %__dev) #6 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtsx_dev, ptr %__dev, i32 0, i32 20
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %2 = load i32, ptr @delay_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.if.end45_crit_edge, label %do.end

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

do.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %__dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__dev, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str) #15
  %5 = load i32, ptr @delay_use, align 4
  %mul = mul i32 %5, 100
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 673) #12
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %1, i32 0, i32 56
  %6 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %cmp9 = icmp eq i32 %7, 7
  %not.cmp9 = xor i1 %cmp9, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool13.not78 = icmp eq i32 %mul, 0
  %tobool13.not = select i1 %not.cmp9, i1 %tobool13.not78, i1 false
  %8 = select i1 %cmp9, i1 true, i1 %tobool13.not
  br i1 %8, label %do.end.if.end45_crit_edge, label %if.then15

do.end.if.end45_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then15:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %10 = load i32, ptr @delay_use, align 4
  %mul17 = mul i32 %10, 100
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %delay_wait = getelementptr inbounds %struct.rtsx_dev, ptr %__dev, i32 0, i32 12
  %call80 = call i32 @prepare_to_wait_event(ptr noundef %delay_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %11 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %12)
  %cmp2081 = icmp eq i32 %12, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul17)
  %tobool24.not82 = icmp eq i32 %mul17, 0
  %13 = select i1 %cmp2081, i1 %tobool24.not82, i1 false
  %__ret16.183 = select i1 %13, i32 1, i32 %mul17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.183)
  %tobool30.not84 = icmp eq i32 %__ret16.183, 0
  %14 = select i1 %cmp2081, i1 true, i1 %tobool30.not84
  br i1 %14, label %if.then15.for.end_crit_edge, label %if.then15.if.end36_crit_edge

if.then15.if.end36_crit_edge:                     ; preds = %if.then15
  br label %if.end36

if.then15.for.end_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end36:                                         ; preds = %cleanup.if.end36_crit_edge, %if.then15.if.end36_crit_edge
  %__ret16.186 = phi i32 [ %__ret16.1, %cleanup.if.end36_crit_edge ], [ %__ret16.183, %if.then15.if.end36_crit_edge ]
  %call85 = phi i32 [ %call, %cleanup.if.end36_crit_edge ], [ %call80, %if.then15.if.end36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool37.not = icmp eq i32 %call85, 0
  br i1 %tobool37.not, label %cleanup, label %if.end36.__out_crit_edge

if.end36.__out_crit_edge:                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out

cleanup:                                          ; preds = %if.end36
  %call40 = call i32 @schedule_timeout(i32 noundef %__ret16.186) #12
  %call = call i32 @prepare_to_wait_event(ptr noundef %delay_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %15 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %16)
  %cmp20 = icmp eq i32 %16, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool24.not = icmp eq i32 %call40, 0
  %17 = select i1 %cmp20, i1 %tobool24.not, i1 false
  %__ret16.1 = select i1 %17, i32 1, i32 %call40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.1)
  %tobool30.not = icmp eq i32 %__ret16.1, 0
  %18 = select i1 %cmp20, i1 true, i1 %tobool30.not
  br i1 %18, label %cleanup.for.end_crit_edge, label %cleanup.if.end36_crit_edge

cleanup.if.end36_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then15.for.end_crit_edge
  call void @finish_wait(ptr noundef %delay_wait, ptr noundef nonnull %__wq_entry) #12
  br label %__out

__out:                                            ; preds = %for.end, %if.end36.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end45

if.end45:                                         ; preds = %__out, %do.end.if.end45_crit_edge, %entry.if.end45_crit_edge
  %rtsx_stat46 = getelementptr inbounds %struct.rtsx_chip, ptr %1, i32 0, i32 56
  %19 = ptrtoint ptr %rtsx_stat46 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rtsx_stat46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %20)
  %cmp47 = icmp eq i32 %20, 7
  br i1 %cmp47, label %if.end45.if.end55_crit_edge, label %if.then48

if.end45.if.end55_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %__dev, i32 -2448
  call void @scsi_scan_host(ptr noundef %add.ptr.i) #12
  %21 = ptrtoint ptr %__dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %__dev, align 4
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev54, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str) #15
  br label %if.end55

if.end55:                                         ; preds = %if.then48, %if.end45.if.end55_crit_edge
  %scanning_done = getelementptr inbounds %struct.rtsx_dev, ptr %__dev, i32 0, i32 11
  call void @__asan_handle_no_return()
  call void @kthread_complete_and_exit(ptr noundef %scanning_done, i32 noundef 0) #17
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_polling_thread(ptr noundef %__dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtsx_dev, ptr %__dev, i32 0, i32 20
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %cleanup_counter = getelementptr inbounds %struct.rtsx_chip, ptr %1, i32 0, i32 40, i32 11
  %2 = ptrtoint ptr %cleanup_counter to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cleanup_counter, align 4
  %cleanup_counter5 = getelementptr inbounds %struct.rtsx_chip, ptr %1, i32 0, i32 41, i32 12
  %3 = ptrtoint ptr %cleanup_counter5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %cleanup_counter5, align 4
  %cleanup_counter6 = getelementptr inbounds %struct.rtsx_chip, ptr %1, i32 0, i32 42, i32 23
  %4 = ptrtoint ptr %cleanup_counter6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cleanup_counter6, align 4
  br label %__here

__here:                                           ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !230) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 212
  %9 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 ptrtoint (ptr blockaddress(@rtsx_polling_thread, %__here) to i32), ptr %task_state_change, align 4
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 1, ptr %10, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !241
  %12 = load i32, ptr @delay_use, align 4
  %13 = mul i32 %12, 100000
  %mul67 = add i32 %13, 500000
  %div = udiv i32 %mul67, 1000
  %call68 = tail call i32 @schedule_timeout(i32 noundef %div) #12
  %dev_mutex = getelementptr inbounds %struct.rtsx_dev, ptr %__dev, i32 0, i32 13
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %1, i32 0, i32 56
  br label %__here121

__here121:                                        ; preds = %if.end159, %__here
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %task_state_change125 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 212
  %16 = ptrtoint ptr %task_state_change125 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 ptrtoint (ptr blockaddress(@rtsx_polling_thread, %__here121) to i32), ptr %task_state_change125, align 4
  %17 = load ptr, ptr %task, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %17, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !242
  %call152 = tail call i32 @schedule_timeout(i32 noundef 3) #12
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #12
  %19 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rtsx_stat, align 4
  %cmp = icmp eq i32 %20, 7
  br i1 %cmp, label %do.end156, label %if.end159

do.end156:                                        ; preds = %__here121
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %__dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %__dev, align 4
  %dev157 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev157, ptr noundef nonnull @.str.89) #15
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #12
  %polling_exit = getelementptr inbounds %struct.rtsx_dev, ptr %__dev, i32 0, i32 9
  call void @__asan_handle_no_return()
  tail call void @kthread_complete_and_exit(ptr noundef %polling_exit, i32 noundef 0) #17
  unreachable

if.end159:                                        ; preds = %__here121
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #12
  tail call void @mspro_polling_format_status(ptr noundef %1) #12
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #12
  tail call void @rtsx_polling_func(ptr noundef %1) #12
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #12
  br label %__here121
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @quiesce_and_remove_host(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtsx_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %dev_mutex = getelementptr inbounds %struct.rtsx_dev, ptr %dev, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #12
  %host_lock = getelementptr i8, ptr %dev, i32 -2380
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #12
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %1, i32 0, i32 55
  %4 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %1, i32 0, i32 56
  %5 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 7, ptr %rtsx_stat, align 4
  %6 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %7) #12
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #12
  %delay_wait = getelementptr inbounds %struct.rtsx_dev, ptr %dev, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %delay_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %scanning_done = getelementptr inbounds %struct.rtsx_dev, ptr %dev, i32 0, i32 11
  tail call void @wait_for_completion(ptr noundef %scanning_done) #12
  br label %__here

__here:                                           ; preds = %entry
  %8 = tail call i32 @llvm.read_register.i32(metadata !230) #12
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 212
  %12 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 ptrtoint (ptr blockaddress(@quiesce_and_remove_host, %__here) to i32), ptr %task_state_change, align 4
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %13, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !243
  %call68 = tail call i32 @schedule_timeout(i32 noundef 10) #12
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #12
  %srb = getelementptr inbounds %struct.rtsx_chip, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %srb, align 4
  %tobool72.not = icmp eq ptr %16, null
  br i1 %tobool72.not, label %__here.if.end80_crit_edge, label %if.then73

__here.if.end80_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then73:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %16, i32 0, i32 24
  %17 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 65536, ptr %result, align 4
  %18 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %19) #12
  %20 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip1, align 4
  %srb77 = getelementptr inbounds %struct.rtsx_chip, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %srb77 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %srb77, align 4
  tail call void @scsi_done(ptr noundef %23) #12
  %24 = ptrtoint ptr %srb to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %srb, align 4
  %25 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %26) #12
  br label %if.end80

if.end80:                                         ; preds = %if.then73, %__here.if.end80_crit_edge
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -2448
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #12
  tail call void @scsi_remove_host(ptr noundef %add.ptr.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_release_chip(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queuecommand(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #12
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 53
  %chip1.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 34
  %6 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip1.i, align 4
  %srb2.i = getelementptr inbounds %struct.rtsx_chip, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %srb2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %srb2.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hostdata.i.i, align 4
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.51, ptr noundef nonnull %9) #15
  br label %queuecommand_lck.exit

if.end.i:                                         ; preds = %entry
  %rtsx_stat.i = getelementptr inbounds %struct.rtsx_chip, ptr %7, i32 0, i32 56
  %12 = ptrtoint ptr %rtsx_stat.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rtsx_stat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %13)
  %cmp.i = icmp eq i32 %13, 7
  br i1 %cmp.i, label %do.end8.i, label %if.end11.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hostdata.i.i, align 4
  %dev10.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10.i, ptr noundef nonnull @.str.54) #15
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %16 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 65536, ptr %result.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #12
  br label %queuecommand_lck.exit

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %srb2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cmd, ptr %srb2.i, align 4
  %cmnd_ready.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 4
  tail call void @complete(ptr noundef %cmnd_ready.i) #12
  br label %queuecommand_lck.exit

queuecommand_lck.exit:                            ; preds = %if.end11.i, %do.end8.i, %do.end.i
  %retval.0.i = phi i32 [ 4181, %do.end.i ], [ 0, %do.end8.i ], [ 0, %if.end11.i ]
  %18 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %call2) #12
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @host_info(ptr nocapture noundef readnone %host) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.56
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @command_abort(ptr noundef readonly %srb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %chip2 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 34
  %4 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip2, align 4
  %6 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostdata.i, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #15
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #12
  %srb4 = getelementptr inbounds %struct.rtsx_chip, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %srb4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %srb4, align 4
  %cmp.not = icmp eq ptr %11, %srb
  br i1 %cmp.not, label %do.body11, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %13) #12
  %14 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hostdata.i, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10, ptr noundef nonnull @.str.60) #15
  br label %cleanup

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %5, i32 0, i32 55
  %16 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %5, i32 0, i32 56
  %17 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 6, ptr %rtsx_stat, align 4
  %18 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %19) #12
  %notify = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 10, i32 1, i32 1
  tail call void @wait_for_completion(ptr noundef %notify) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body11, %if.then
  %retval.0 = phi i32 [ 8195, %if.then ], [ 8194, %do.body11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_reset(ptr nocapture noundef readonly %srb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata.i, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.62) #15
  ret i32 8194
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @slave_alloc(ptr nocapture noundef writeonly %sdev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %inquiry_len = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 27
  %0 = ptrtoint ptr %inquiry_len to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 36, ptr %inquiry_len, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slave_configure(ptr nocapture noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %0 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_queue, align 4
  tail call void @blk_queue_dma_alignment(ptr noundef %1, i32 noundef 511) #12
  %scsi_level = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 23
  %2 = ptrtoint ptr %scsi_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %scsi_level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp ult i8 %3, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %scsi_level to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %scsi_level, align 1
  %sdev_target = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 37
  %5 = ptrtoint ptr %sdev_target to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_target, align 8
  %scsi_level3 = getelementptr inbounds %struct.scsi_target, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %scsi_level3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %scsi_level3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_dma_alignment(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  %chip2 = getelementptr inbounds %struct.rtsx_dev, ptr %dev_id, i32 0, i32 20
  %0 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip2, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.then
  %reg_lock = getelementptr inbounds %struct.rtsx_dev, ptr %dev_id, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #12
  %call = tail call i32 @rtsx_pre_handle_interrupt(ptr noundef nonnull %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #12
  %int_reg = getelementptr inbounds %struct.rtsx_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %int_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %int_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp8 = icmp eq i32 %3, -1
  %. = zext i1 %cmp8 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %int_reg12 = getelementptr inbounds %struct.rtsx_chip, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %int_reg12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %int_reg12, align 4
  %check_card_cd = getelementptr inbounds %struct.rtsx_dev, ptr %dev_id, i32 0, i32 19
  %6 = ptrtoint ptr %check_card_cd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %check_card_cd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool13.not = icmp ne i32 %7, 0
  %and = and i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool13.not, i1 %tobool16.not, i1 false
  br i1 %or.cond, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.end11
  %trans_result = getelementptr inbounds %struct.rtsx_dev, ptr %dev_id, i32 0, i32 16
  %8 = ptrtoint ptr %trans_result to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %trans_result, align 4
  %done = getelementptr inbounds %struct.rtsx_dev, ptr %dev_id, i32 0, i32 18
  %9 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %done, align 4
  %tobool18.not = icmp eq ptr %10, null
  br i1 %tobool18.not, label %if.then17.exit_crit_edge, label %if.then17.exit.sink.split_crit_edge

if.then17.exit.sink.split_crit_edge:              ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit.sink.split

if.then17.exit_crit_edge:                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end23:                                         ; preds = %if.end11
  %and24 = and i32 %5, 1895825408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.exit_crit_edge, label %if.then26

if.end23.exit_crit_edge:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then26:                                        ; preds = %if.end23
  %and27 = and i32 %5, 285212672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else41, label %if.then29

if.then29:                                        ; preds = %if.then26
  %and30 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.then29.if.end34_crit_edge, label %if.then32

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %rtsx_flag = getelementptr inbounds %struct.rtsx_chip, ptr %1, i32 0, i32 53
  %11 = ptrtoint ptr %rtsx_flag to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rtsx_flag, align 2
  %13 = or i8 %12, 1
  store i8 %13, ptr %rtsx_flag, align 2
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then29.if.end34_crit_edge
  %trans_result35 = getelementptr inbounds %struct.rtsx_dev, ptr %dev_id, i32 0, i32 16
  %14 = ptrtoint ptr %trans_result35 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %trans_result35, align 4
  %done36 = getelementptr inbounds %struct.rtsx_dev, ptr %dev_id, i32 0, i32 18
  %15 = ptrtoint ptr %done36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %done36, align 4
  %tobool37.not = icmp eq ptr %16, null
  br i1 %tobool37.not, label %if.end34.exit_crit_edge, label %if.end34.exit.sink.split_crit_edge

if.end34.exit.sink.split_crit_edge:               ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit.sink.split

if.end34.exit_crit_edge:                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.else41:                                        ; preds = %if.then26
  %and42 = and i32 %5, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.else51, label %if.then44

if.then44:                                        ; preds = %if.else41
  %trans_result45 = getelementptr inbounds %struct.rtsx_dev, ptr %dev_id, i32 0, i32 16
  %17 = ptrtoint ptr %trans_result45 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %trans_result45, align 4
  %done46 = getelementptr inbounds %struct.rtsx_dev, ptr %dev_id, i32 0, i32 18
  %18 = ptrtoint ptr %done46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %done46, align 4
  %tobool47.not = icmp eq ptr %19, null
  br i1 %tobool47.not, label %if.then44.exit_crit_edge, label %if.then44.exit.sink.split_crit_edge

if.then44.exit.sink.split_crit_edge:              ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit.sink.split

if.then44.exit_crit_edge:                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.else51:                                        ; preds = %if.else41
  %and52 = and i32 %5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.else51.exit_crit_edge, label %if.then54

if.else51.exit_crit_edge:                         ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then54:                                        ; preds = %if.else51
  %trans_result55 = getelementptr inbounds %struct.rtsx_dev, ptr %dev_id, i32 0, i32 16
  %20 = ptrtoint ptr %trans_result55 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %trans_result55, align 4
  %done56 = getelementptr inbounds %struct.rtsx_dev, ptr %dev_id, i32 0, i32 18
  %21 = ptrtoint ptr %done56 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %done56, align 4
  %tobool57.not = icmp eq ptr %22, null
  br i1 %tobool57.not, label %if.then54.exit_crit_edge, label %land.lhs.true

if.then54.exit_crit_edge:                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

land.lhs.true:                                    ; preds = %if.then54
  %trans_state = getelementptr inbounds %struct.rtsx_dev, ptr %dev_id, i32 0, i32 17
  %23 = ptrtoint ptr %trans_state to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %trans_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp59 = icmp eq i8 %24, 3
  br i1 %cmp59, label %land.lhs.true.exit.sink.split_crit_edge, label %land.lhs.true.exit_crit_edge

land.lhs.true.exit_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

land.lhs.true.exit.sink.split_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit.sink.split

exit.sink.split:                                  ; preds = %land.lhs.true.exit.sink.split_crit_edge, %if.then44.exit.sink.split_crit_edge, %if.end34.exit.sink.split_crit_edge, %if.then17.exit.sink.split_crit_edge
  %.sink = phi ptr [ %10, %if.then17.exit.sink.split_crit_edge ], [ %16, %if.end34.exit.sink.split_crit_edge ], [ %19, %if.then44.exit.sink.split_crit_edge ], [ %22, %land.lhs.true.exit.sink.split_crit_edge ]
  tail call void @complete(ptr noundef nonnull %.sink) #12
  br label %exit

exit:                                             ; preds = %exit.sink.split, %land.lhs.true.exit_crit_edge, %if.then54.exit_crit_edge, %if.else51.exit_crit_edge, %if.then44.exit_crit_edge, %if.end34.exit_crit_edge, %if.end23.exit_crit_edge, %if.then17.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.then6, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ %., %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_intx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pre_handle_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_show_command(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_invoke_transport(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @kthread_complete_and_exit(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mspro_polling_format_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_polling_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtsx_release_resources(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93) #15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5, ptr noundef nonnull @.str.95) #15
  %cmnd_ready = getelementptr inbounds %struct.rtsx_dev, ptr %dev, i32 0, i32 7
  tail call void @complete(ptr noundef %cmnd_ready) #12
  %ctl_thread = getelementptr inbounds %struct.rtsx_dev, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %ctl_thread to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctl_thread, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %control_exit = getelementptr inbounds %struct.rtsx_dev, ptr %dev, i32 0, i32 8
  tail call void @wait_for_completion(ptr noundef %control_exit) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %polling_thread = getelementptr inbounds %struct.rtsx_dev, ptr %dev, i32 0, i32 6
  %6 = ptrtoint ptr %polling_thread to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %polling_thread, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end.__here_crit_edge, label %if.then7

if.end.__here_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %polling_exit = getelementptr inbounds %struct.rtsx_dev, ptr %dev, i32 0, i32 9
  tail call void @wait_for_completion(ptr noundef %polling_exit) #12
  br label %__here

__here:                                           ; preds = %if.then7, %if.end.__here_crit_edge
  %8 = tail call i32 @llvm.read_register.i32(metadata !230) #12
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 212
  %12 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 ptrtoint (ptr blockaddress(@rtsx_release_resources, %__here) to i32), ptr %task_state_change, align 4
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %13, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !244
  %call74 = tail call i32 @schedule_timeout(i32 noundef 20) #12
  %rtsx_resv_buf = getelementptr inbounds %struct.rtsx_dev, ptr %dev, i32 0, i32 14
  %15 = ptrtoint ptr %rtsx_resv_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rtsx_resv_buf, align 4
  %tobool77.not = icmp eq ptr %16, null
  br i1 %tobool77.not, label %__here.if.end80_crit_edge, label %if.then78

__here.if.end80_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then78:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  %chip = getelementptr inbounds %struct.rtsx_dev, ptr %dev, i32 0, i32 20
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 4
  %host_cmds_ptr = getelementptr inbounds %struct.rtsx_chip, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %host_cmds_ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %host_cmds_ptr, align 4
  %20 = load ptr, ptr %chip, align 4
  %host_sg_tbl_ptr = getelementptr inbounds %struct.rtsx_chip, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %host_sg_tbl_ptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %host_sg_tbl_ptr, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %__here.if.end80_crit_edge
  %irq = getelementptr inbounds %struct.rtsx_dev, ptr %dev, i32 0, i32 3
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp = icmp sgt i32 %23, 0
  br i1 %cmp, label %if.then81, label %if.end80.if.end84_crit_edge

if.end80.if.end84_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

if.then81:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  %call83 = tail call ptr @free_irq(i32 noundef %23, ptr noundef %dev) #12
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.end80.if.end84_crit_edge
  %chip85 = getelementptr inbounds %struct.rtsx_dev, ptr %dev, i32 0, i32 20
  %24 = ptrtoint ptr %chip85 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip85, align 4
  %msi_en = getelementptr inbounds %struct.rtsx_chip, ptr %25, i32 0, i32 117
  %26 = ptrtoint ptr %msi_en to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msi_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool86.not = icmp eq i32 %27, 0
  br i1 %tobool86.not, label %if.end84.if.end89_crit_edge, label %if.then87

if.end84.if.end89_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  tail call void @pci_free_irq_vectors(ptr noundef %29) #12
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.end84.if.end89_crit_edge
  %remap_addr = getelementptr inbounds %struct.rtsx_dev, ptr %dev, i32 0, i32 2
  %30 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %remap_addr, align 4
  %tobool90.not = icmp eq ptr %31, null
  br i1 %tobool90.not, label %if.end89.if.end93_crit_edge, label %if.then91

if.end89.if.end93_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.then91:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iounmap(ptr noundef nonnull %31) #12
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.end89.if.end93_crit_edge
  %32 = ptrtoint ptr %chip85 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip85, align 4
  tail call void @rtsx_release_chip(ptr noundef %33) #12
  %34 = ptrtoint ptr %chip85 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chip85, align 4
  tail call void @kfree(ptr noundef %35) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_do_before_power_down(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_suspend(ptr noundef %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev_d, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev_d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_mutex = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #12
  %chip1 = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  tail call void @rtsx_do_before_power_down(ptr noundef %3, i32 noundef 3) #12
  %irq = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp sgt i32 %5, -1
  br i1 %cmp, label %if.then2, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call ptr @free_irq(i32 noundef %5, ptr noundef nonnull %1) #12
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %irq, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %msi_en = getelementptr inbounds %struct.rtsx_chip, ptr %3, i32 0, i32 117
  %7 = ptrtoint ptr %msi_en to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msi_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %if.end6.if.end9_crit_edge, label %if.then8

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_free_irq_vectors(ptr noundef %add.ptr) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  %call10 = tail call i32 @device_wakeup_enable(ptr noundef %dev_d) #12
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_resume(ptr noundef %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev_d, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev_d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip1 = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  %dev_mutex = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #12
  tail call void @pci_set_master(ptr noundef %add.ptr) #12
  %msi_en = getelementptr inbounds %struct.rtsx_chip, ptr %3, i32 0, i32 117
  %4 = ptrtoint ptr %msi_en to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msi_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 1, i32 noundef 2, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then5, label %if.then3.if.end8_crit_edge

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %msi_en to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %msi_en, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call9 = tail call fastcc i32 @rtsx_acquire_irq(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup.sink.split_crit_edge, label %if.end13

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %call14 = tail call i32 @rtsx_write_register(ptr noundef %3, i16 noundef zeroext -416, i8 noundef zeroext 3, i8 noundef zeroext 0) #12
  %call15 = tail call i32 @rtsx_init_chip(ptr noundef %3) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end13, %if.end8.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end13 ], [ -5, %if.end8.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_write_register(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !44, !46, !47, !49, !50, !51, !53, !54, !55, !56, !57, !59, !61, !63, !64, !65, !66, !68, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !122, !123, !124, !126, !128, !129, !130, !132, !133, !134, !136, !138, !139, !140, !141, !143, !144, !145, !147, !149, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !198, !200, !201, !202, !204, !206, !208, !209, !210, !211, !213, !215, !216, !217, !219, !220, !221, !222, !224, !225, !226, !228}
!llvm.named.register.sp = !{!230}
!llvm.module.flags = !{!231, !232, !233, !234, !235, !236, !237, !238}
!llvm.ident = !{!239}

!0 = !{ptr @__UNIQUE_ID_description287, !1, !"__UNIQUE_ID_description287", i1 false, i1 false}
!1 = !{!"../drivers/staging/rts5208/rtsx.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_file288, !3, !"__UNIQUE_ID_file288", i1 false, i1 false}
!3 = !{!"../drivers/staging/rts5208/rtsx.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_license289, !3, !"__UNIQUE_ID_license289", i1 false, i1 false}
!5 = !{ptr @__param_delay_use, !6, !"__param_delay_use", i1 false, i1 false}
!6 = !{!"../drivers/staging/rts5208/rtsx.c", i32 26, i32 1}
!7 = !{ptr @__UNIQUE_ID_delay_usetype290, !6, !"__UNIQUE_ID_delay_usetype290", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_delay_use291, !9, !"__UNIQUE_ID_delay_use291", i1 false, i1 false}
!9 = !{!"../drivers/staging/rts5208/rtsx.c", i32 27, i32 1}
!10 = !{ptr @__param_ss_en, !11, !"__param_ss_en", i1 false, i1 false}
!11 = !{!"../drivers/staging/rts5208/rtsx.c", i32 30, i32 1}
!12 = !{ptr @__UNIQUE_ID_ss_entype292, !11, !"__UNIQUE_ID_ss_entype292", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_ss_en293, !14, !"__UNIQUE_ID_ss_en293", i1 false, i1 false}
!14 = !{!"../drivers/staging/rts5208/rtsx.c", i32 31, i32 1}
!15 = !{ptr @__param_ss_interval, !16, !"__param_ss_interval", i1 false, i1 false}
!16 = !{!"../drivers/staging/rts5208/rtsx.c", i32 34, i32 1}
!17 = !{ptr @__UNIQUE_ID_ss_intervaltype294, !16, !"__UNIQUE_ID_ss_intervaltype294", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_ss_interval295, !19, !"__UNIQUE_ID_ss_interval295", i1 false, i1 false}
!19 = !{!"../drivers/staging/rts5208/rtsx.c", i32 35, i32 1}
!20 = !{ptr @__param_auto_delink_en, !21, !"__param_auto_delink_en", i1 false, i1 false}
!21 = !{!"../drivers/staging/rts5208/rtsx.c", i32 38, i32 1}
!22 = !{ptr @__UNIQUE_ID_auto_delink_entype296, !21, !"__UNIQUE_ID_auto_delink_entype296", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_auto_delink_en297, !24, !"__UNIQUE_ID_auto_delink_en297", i1 false, i1 false}
!24 = !{!"../drivers/staging/rts5208/rtsx.c", i32 39, i32 1}
!25 = !{ptr @__param_aspm_l0s_l1_en, !26, !"__param_aspm_l0s_l1_en", i1 false, i1 false}
!26 = !{!"../drivers/staging/rts5208/rtsx.c", i32 42, i32 1}
!27 = !{ptr @__UNIQUE_ID_aspm_l0s_l1_entype298, !26, !"__UNIQUE_ID_aspm_l0s_l1_entype298", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_aspm_l0s_l1_en299, !29, !"__UNIQUE_ID_aspm_l0s_l1_en299", i1 false, i1 false}
!29 = !{!"../drivers/staging/rts5208/rtsx.c", i32 43, i32 1}
!30 = !{ptr @__param_msi_en, !31, !"__param_msi_en", i1 false, i1 false}
!31 = !{!"../drivers/staging/rts5208/rtsx.c", i32 46, i32 1}
!32 = !{ptr @__UNIQUE_ID_msi_entype300, !31, !"__UNIQUE_ID_msi_entype300", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_msi_en301, !34, !"__UNIQUE_ID_msi_en301", i1 false, i1 false}
!34 = !{!"../drivers/staging/rts5208/rtsx.c", i32 47, i32 1}
!35 = !{ptr @__initcall__kmod_rts5208__307_1001_rtsx_driver_init6, !36, !"__initcall__kmod_rts5208__307_1001_rtsx_driver_init6", i1 false, i1 false}
!36 = !{!"../drivers/staging/rts5208/rtsx.c", i32 1001, i32 1}
!37 = !{ptr @__exitcall_rtsx_driver_exit, !36, !"__exitcall_rtsx_driver_exit", i1 false, i1 false}
!38 = !{ptr @ss_en, !39, !"ss_en", i1 false, i1 false}
!39 = !{!"../drivers/staging/rts5208/rtsx.c", i32 29, i32 12}
!40 = !{ptr @auto_delink_en, !41, !"auto_delink_en", i1 false, i1 false}
!41 = !{!"../drivers/staging/rts5208/rtsx.c", i32 37, i32 12}
!42 = !{ptr @aspm_l0s_l1_en, !43, !"aspm_l0s_l1_en", i1 false, i1 false}
!43 = !{!"../drivers/staging/rts5208/rtsx.c", i32 41, i32 22}
!44 = !{ptr @msi_en, !45, !"msi_en", i1 false, i1 false}
!45 = !{!"../drivers/staging/rts5208/rtsx.c", i32 45, i32 12}
!46 = !{ptr @__param_str_delay_use, !6, !"__param_str_delay_use", i1 false, i1 false}
!47 = !{ptr @delay_use, !48, !"delay_use", i1 false, i1 false}
!48 = !{!"../drivers/staging/rts5208/rtsx.c", i32 25, i32 21}
!49 = !{ptr @__param_str_ss_en, !11, !"__param_str_ss_en", i1 false, i1 false}
!50 = !{ptr @__param_str_ss_interval, !16, !"__param_str_ss_interval", i1 false, i1 false}
!51 = !{ptr @ss_interval, !52, !"ss_interval", i1 false, i1 false}
!52 = !{!"../drivers/staging/rts5208/rtsx.c", i32 33, i32 12}
!53 = !{ptr @__param_str_auto_delink_en, !21, !"__param_str_auto_delink_en", i1 false, i1 false}
!54 = !{ptr @__param_str_aspm_l0s_l1_en, !26, !"__param_str_aspm_l0s_l1_en", i1 false, i1 false}
!55 = !{ptr @__param_str_msi_en, !31, !"__param_str_msi_en", i1 false, i1 false}
!56 = !{ptr @.str, !36, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @rtsx_driver, !58, !"rtsx_driver", i1 false, i1 false}
!58 = !{!"../drivers/staging/rts5208/rtsx.c", i32 992, i32 26}
!59 = !{ptr @rtsx_ids, !60, !"rtsx_ids", i1 false, i1 false}
!60 = !{!"../drivers/staging/rts5208/rtsx.c", i32 979, i32 35}
!61 = !{ptr @.str.1, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/rts5208/rtsx.c", i32 798, i32 2}
!63 = !{ptr @.str.2, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.3, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @rtsx_probe.__UNIQUE_ID_ddebug306, !62, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!66 = !{ptr @.str.4, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/rts5208/rtsx.c", i32 802, i32 3}
!68 = !{ptr @.str.5, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.6, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @rtsx_probe._entry, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @rtsx_probe._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.8, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/rts5208/rtsx.c", i32 808, i32 3}
!74 = !{ptr @rtsx_probe._entry.7, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @rtsx_probe._entry_ptr.9, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.11, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/rts5208/rtsx.c", i32 819, i32 3}
!78 = !{ptr @rtsx_probe._entry.10, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @rtsx_probe._entry_ptr.12, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @rtsx_probe.__key, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/staging/rts5208/rtsx.c", i32 833, i32 2}
!82 = !{ptr @.str.13, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @rtsx_probe.__key.14, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/staging/rts5208/rtsx.c", i32 834, i32 2}
!85 = !{ptr @.str.15, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @rtsx_probe.__key.16, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/staging/rts5208/rtsx.c", i32 840, i32 2}
!88 = !{ptr @.str.17, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.19, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/staging/rts5208/rtsx.c", i32 845, i32 2}
!91 = !{ptr @.str.20, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @rtsx_probe._entry.18, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @rtsx_probe._entry_ptr.21, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.23, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/rts5208/rtsx.c", i32 850, i32 3}
!96 = !{ptr @rtsx_probe._entry.22, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @rtsx_probe._entry_ptr.24, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.26, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/staging/rts5208/rtsx.c", i32 859, i32 2}
!100 = !{ptr @rtsx_probe._entry.25, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @rtsx_probe._entry_ptr.27, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.29, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/rts5208/rtsx.c", i32 866, i32 3}
!104 = !{ptr @rtsx_probe._entry.28, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @rtsx_probe._entry_ptr.30, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.32, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/rts5208/rtsx.c", i32 880, i32 2}
!108 = !{ptr @rtsx_probe._entry.31, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @rtsx_probe._entry_ptr.33, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.35, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/rts5208/rtsx.c", i32 907, i32 3}
!112 = !{ptr @rtsx_probe._entry.34, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @rtsx_probe._entry_ptr.36, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.38, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/rts5208/rtsx.c", i32 915, i32 3}
!116 = !{ptr @rtsx_probe._entry.37, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @rtsx_probe._entry_ptr.39, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/rts5208/rtsx.c", i32 920, i32 7}
!120 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/staging/rts5208/rtsx.c", i32 922, i32 3}
!122 = !{ptr @rtsx_probe._entry.41, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @rtsx_probe._entry_ptr.43, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.44, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/staging/rts5208/rtsx.c", i32 929, i32 7}
!126 = !{ptr @.str.46, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/staging/rts5208/rtsx.c", i32 931, i32 3}
!128 = !{ptr @rtsx_probe._entry.45, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @rtsx_probe._entry_ptr.47, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.49, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/staging/rts5208/rtsx.c", i32 960, i32 2}
!132 = !{ptr @rtsx_probe._entry.48, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @rtsx_probe._entry_ptr.50, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @rtsx_host_template, !135, !"rtsx_host_template", i1 false, i1 false}
!135 = !{!"../drivers/staging/rts5208/rtsx.c", i32 200, i32 34}
!136 = !{ptr @.str.51, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/staging/rts5208/rtsx.c", i32 129, i32 3}
!138 = !{ptr @.str.52, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @queuecommand_lck._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @queuecommand_lck._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.54, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/staging/rts5208/rtsx.c", i32 136, i32 3}
!143 = !{ptr @queuecommand_lck._entry.53, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @queuecommand_lck._entry_ptr.55, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.56, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/staging/rts5208/rtsx.c", i32 57, i32 9}
!147 = !{ptr @.str.57, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/staging/rts5208/rtsx.c", i32 162, i32 2}
!149 = !{ptr @.str.58, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @command_abort._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @command_abort._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.60, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/staging/rts5208/rtsx.c", i32 169, i32 3}
!154 = !{ptr @command_abort._entry.59, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @command_abort._entry_ptr.61, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.62, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/staging/rts5208/rtsx.c", i32 191, i32 2}
!158 = !{ptr @device_reset._entry, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @device_reset._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @init_completion.__key, !161, !"__key", i1 false, i1 false}
!161 = !{!"../include/linux/completion.h", i32 87, i32 2}
!162 = !{ptr @.str.63, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.64, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/staging/rts5208/rtsx.c", i32 242, i32 2}
!165 = !{ptr @.str.65, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @rtsx_acquire_irq._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @rtsx_acquire_irq._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.67, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/staging/rts5208/rtsx.c", i32 248, i32 3}
!170 = !{ptr @rtsx_acquire_irq._entry.66, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @rtsx_acquire_irq._entry_ptr.68, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.69, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/staging/rts5208/rtsx.c", i32 369, i32 4}
!174 = !{ptr @.str.70, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @rtsx_control_thread._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @rtsx_control_thread._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.72, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/staging/rts5208/rtsx.c", i32 389, i32 4}
!179 = !{ptr @rtsx_control_thread._entry.71, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @rtsx_control_thread._entry_ptr.73, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.75, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/staging/rts5208/rtsx.c", i32 397, i32 4}
!183 = !{ptr @rtsx_control_thread._entry.74, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @rtsx_control_thread._entry_ptr.76, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.78, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/staging/rts5208/rtsx.c", i32 404, i32 4}
!187 = !{ptr @rtsx_control_thread._entry.77, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @rtsx_control_thread._entry_ptr.79, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.81, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/staging/rts5208/rtsx.c", i32 428, i32 4}
!191 = !{ptr @rtsx_control_thread._entry.80, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @rtsx_control_thread._entry_ptr.82, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.83, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/staging/rts5208/rtsx.c", i32 667, i32 3}
!195 = !{ptr @.str.84, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @rtsx_scan_thread._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @rtsx_scan_thread._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.86, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/staging/rts5208/rtsx.c", i32 679, i32 3}
!200 = !{ptr @rtsx_scan_thread._entry.85, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @rtsx_scan_thread._entry_ptr.87, !199, !"_entry_ptr", i1 false, i1 false}
!202 = distinct !{null, !203, !"__already_done", i1 false, i1 false}
!203 = !{!"../drivers/staging/rts5208/rtsx.c", i32 475, i32 2}
!204 = distinct !{null, !205, !"__already_done", i1 false, i1 false}
!205 = !{!"../drivers/staging/rts5208/rtsx.c", i32 478, i32 3}
!206 = !{ptr @.str.89, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/staging/rts5208/rtsx.c", i32 486, i32 4}
!208 = !{ptr @.str.90, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @rtsx_polling_thread._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @rtsx_polling_thread._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = distinct !{null, !212, !"__already_done", i1 false, i1 false}
!212 = !{!"../drivers/staging/rts5208/rtsx.c", i32 626, i32 2}
!213 = !{ptr @.str.91, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/staging/rts5208/rtsx.c", i32 971, i32 2}
!215 = !{ptr @rtsx_remove._entry, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @rtsx_remove._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.92, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/staging/rts5208/rtsx.c", i32 573, i32 2}
!219 = !{ptr @.str.93, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @rtsx_release_resources._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @rtsx_release_resources._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.95, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/staging/rts5208/rtsx.c", i32 579, i32 2}
!224 = !{ptr @rtsx_release_resources._entry.94, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @rtsx_release_resources._entry_ptr.96, !223, !"_entry_ptr", i1 false, i1 false}
!226 = distinct !{null, !227, !"__already_done", i1 false, i1 false}
!227 = !{!"../drivers/staging/rts5208/rtsx.c", i32 586, i32 2}
!228 = !{ptr @rtsx_pm_ops, !229, !"rtsx_pm_ops", i1 false, i1 false}
!229 = !{!"../drivers/staging/rts5208/rtsx.c", i32 989, i32 8}
!230 = !{!"sp"}
!231 = !{i32 1, !"wchar_size", i32 2}
!232 = !{i32 1, !"min_enum_size", i32 4}
!233 = !{i32 8, !"branch-target-enforcement", i32 0}
!234 = !{i32 8, !"sign-return-address", i32 0}
!235 = !{i32 8, !"sign-return-address-all", i32 0}
!236 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!237 = !{i32 7, !"uwtable", i32 1}
!238 = !{i32 7, !"frame-pointer", i32 2}
!239 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!240 = !{i64 2148295809, i64 2148295814, i64 2148295827, i64 2148295871, i64 2148295905, i64 2148295926}
!241 = !{i64 2155236134}
!242 = !{i64 2155240883}
!243 = !{i64 2155257085}
!244 = !{i64 2155251649}
