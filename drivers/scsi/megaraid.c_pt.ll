; ModuleID = '/llk/IR_all_yes/drivers/scsi/megaraid.c_pt.bc'
source_filename = "../drivers/scsi/megaraid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.mega_hbas = type { i32, ptr }
%struct.mcontroller = type { i64, i8, i8, i8, i16, i8, i16, i16, i8, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
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
%struct.adapter_t = type { i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, %struct.mega_product_info, i8, ptr, %struct.atomic_t, i8, [7 x i8], [7 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, [9 x i8], i32, i8, %struct.scb_t, %struct.mutex, i32, %struct.completion, i32 }
%struct.mega_product_info = type { i32, i32, [16 x i8], [16 x i8], [80 x i8], i8, i8, i8, i8, i32, i16, i16, i16, i8, [889 x i8] }
%struct.scb_t = type { i32, i32, %struct.list_head, [66 x i8], i32, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32 }
%struct.mbox_out = type <{ i8, i8, i16, i32, i32, i8, i8, i8 }>
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.mbox_t = type { %struct.mbox_out, %struct.mbox_in }
%struct.mbox_in = type { i8, i8, i8, [46 x i8], i8, i8 }
%struct.mbox64_t = type <{ i32, i32, %struct.mbox_t }>
%struct.mega_adp_info = type { i8, i8, i8, i8, [4 x i8], i16, i8, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.mega_inquiry3 = type <{ i32, %struct.notify, [88 x i8], i8, i8, i8, i8, i8, i8, [5 x i8], [5 x i16], [40 x i32], [40 x i8], [40 x i8], [256 x i8], [16 x i16], [80 x i8], [263 x i8] }>
%struct.notify = type { i32, i8, i8, i16, i8, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mraid_inquiry = type { %struct.mega_adp_info, %struct.mega_ldrv_info, %struct.mega_pdrv_info }
%struct.mega_ldrv_info = type { i8, [3 x i8], [8 x i32], [8 x i8], [8 x i8] }
%struct.mega_pdrv_info = type { [75 x i8], i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct.private_bios_data = type { i8, i8, [12 x i8], i16 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mega_passthru = type { i8, i8, i8, i8, i8, i8, [10 x i8], i8, i8, [32 x i8], i8, i8, i32, i32 }
%struct.mega_ext_passthru = type { i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8], i8, i8, i8, [32 x i8], i8, i32, i32 }
%struct.megacmd_t = type <{ i8, i8, i8, i8, i32, i32, i8, [3 x i8], i8, i8 }>
%struct.mega_sgl64 = type <{ i64, i32 }>
%struct.mega_sglist = type { i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.disk_array_40ld = type { i8, [3 x i8], [40 x %struct.logdrv_40ld], [75 x %struct.phys_drv] }
%struct.logdrv_40ld = type { %struct.logdrv_param, [8 x %struct.adp_span_40ld] }
%struct.logdrv_param = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.adp_span_40ld = type { i32, i32, [32 x %struct.adp_device] }
%struct.adp_device = type { i8, i8 }
%struct.phys_drv = type { i8, i8, i8, i8, i32 }
%struct.disk_array_8ld = type { i8, [3 x i8], [8 x %struct.logdrv_8ld], [75 x %struct.phys_drv] }
%struct.logdrv_8ld = type { %struct.logdrv_param, [8 x %struct.adp_span_8ld] }
%struct.adp_span_8ld = type { i32, i32, [8 x %struct.adp_device] }
%struct.uioctl_t = type <{ i32, i32, %union.anon.85, [18 x i8], %struct.mega_passthru, ptr, [4 x i8] }>
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type { i8, i8, i16, ptr, [4 x i8], i32 }
%struct.nitioctl_t = type { [8 x i8], i32, i32, %union.anon.84, i32, i32 }
%union.anon.84 = type { ptr, [16 x i8] }

@__UNIQUE_ID_author287 = internal constant [29 x i8] c"megaraid.author=sju@lsil.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description288 = internal constant [54 x i8] c"megaraid.description=LSI Logic MegaRAID legacy driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file289 = internal constant [36 x i8] c"megaraid.file=drivers/scsi/megaraid\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [21 x i8] c"megaraid.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version291 = internal constant [24 x i8] c"megaraid.version=2.00.4\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"megaraid\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.00.4\00", [25 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_max_cmd_per_lun = internal constant [25 x i8] c"megaraid.max_cmd_per_lun\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@max_cmd_per_lun = internal global { i32, [28 x i8] } { i32 63, [28 x i8] zeroinitializer }, align 32
@__param_max_cmd_per_lun = internal constant %struct.kernel_param { ptr @__param_str_max_cmd_per_lun, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @max_cmd_per_lun } }, section "__param", align 4
@__UNIQUE_ID_max_cmd_per_luntype292 = internal constant [39 x i8] c"megaraid.parmtype=max_cmd_per_lun:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_max_cmd_per_lun293 = internal constant [122 x i8] c"megaraid.parm=max_cmd_per_lun:Maximum number of commands which can be issued to a single LUN (default=DEF_CMD_PER_LUN=63)\00", section ".modinfo", align 1
@__param_str_max_sectors_per_io = internal constant [28 x i8] c"megaraid.max_sectors_per_io\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@max_sectors_per_io = internal global { i16, [30 x i8] } { i16 128, [30 x i8] zeroinitializer }, align 32
@__param_max_sectors_per_io = internal constant %struct.kernel_param { ptr @__param_str_max_sectors_per_io, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @max_sectors_per_io } }, section "__param", align 4
@__UNIQUE_ID_max_sectors_per_iotype294 = internal constant [44 x i8] c"megaraid.parmtype=max_sectors_per_io:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_max_sectors_per_io295 = internal constant [108 x i8] c"megaraid.parm=max_sectors_per_io:Maximum number of sectors per I/O request (default=MAX_SECTORS_PER_IO=128)\00", section ".modinfo", align 1
@__param_str_max_mbox_busy_wait = internal constant [28 x i8] c"megaraid.max_mbox_busy_wait\00", align 1
@max_mbox_busy_wait = internal global { i16, [30 x i8] } { i16 10, [30 x i8] zeroinitializer }, align 32
@__param_max_mbox_busy_wait = internal constant %struct.kernel_param { ptr @__param_str_max_mbox_busy_wait, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @max_mbox_busy_wait } }, section "__param", align 4
@__UNIQUE_ID_max_mbox_busy_waittype296 = internal constant [44 x i8] c"megaraid.parmtype=max_mbox_busy_wait:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_max_mbox_busy_wait297 = internal constant [110 x i8] c"megaraid.parm=max_mbox_busy_wait:Maximum wait for mailbox in microseconds if busy (default=MBOX_BUSY_WAIT=10)\00", section ".modinfo", align 1
@megaraid_info.buffer = internal global { [512 x i8], [128 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"LSI Logic MegaRAID %s %d commands %d targs %d chans %d luns\00", [36 x i8] zeroinitializer }, align 32
@major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"megadev_legacy\00", [17 x i8] zeroinitializer }, align 32
@megaraid_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.5, ptr @megaraid_pci_tbl, ptr @megaraid_probe_one, ptr @megaraid_remove_one, ptr null, ptr null, ptr @megaraid_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_megaraid__299_4633_megaraid_init6 = internal global ptr @megaraid_init, section ".initcall6.init", align 4
@__exitcall_megaraid_exit = internal global ptr @megaraid_exit, section ".exitcall.exit", align 4
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"megaraid_legacy\00", [16 x i8] zeroinitializer }, align 32
@megaraid_pci_tbl = internal global { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4126, i32 36880, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4126, i32 36960, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 6496, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@hba_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@megaraid_probe_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 4183, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"found 0x%4.04x:0x%4.04x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"megaraid_probe_one\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/scsi/megaraid.c\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry_ptr = internal global ptr @megaraid_probe_one._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@megaraid_probe_one._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 4194, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mem region busy!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry_ptr.14 = internal global ptr @megaraid_probe_one._entry.11, section ".printk_index", align 4
@megaraid_probe_one._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.8, i32 4200, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not map hba memory\0A\00", [38 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry_ptr.17 = internal global ptr @megaraid_probe_one._entry.15, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@megaraid_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @megaraid_queue, ptr null, ptr null, ptr @.str.46, ptr @megaraid_info, ptr null, ptr null, ptr null, ptr @megaraid_abort, ptr @megaraid_reset, ptr null, ptr @megaraid_reset, ptr @megaraid_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @megaraid_biosparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.5, ptr null, i32 126, i32 7, i16 64, i16 0, i32 128, i32 0, i32 0, i32 0, i16 63, i8 0, i32 0, i8 4, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.8, i32 4221, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"scsi%d:Found MegaRAID controller at 0x%lx, IRQ:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry_ptr.20 = internal global ptr @megaraid_probe_one._entry.18, section ".printk_index", align 4
@megaraid_probe_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&adapter->lock\00", [17 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.7, ptr @.str.8, i32 4259, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"out of RAM\0A\00", [20 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry_ptr.24 = internal global ptr @megaraid_probe_one._entry.22, section ".printk_index", align 4
@megaraid_probe_one._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.7, ptr @.str.8, i32 4266, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry_ptr.26 = internal global ptr @megaraid_probe_one._entry.25, section ".printk_index", align 4
@megaraid_probe_one._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.7, ptr @.str.8, i32 4273, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Couldn't register IRQ %d!\0A\00", [37 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry_ptr.29 = internal global ptr @megaraid_probe_one._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3.00\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3.01\00", [27 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.7, ptr @.str.8, i32 4308, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [435 x i8], [109 x i8] } { [435 x i8] c"Your card is a Dell PERC 2/SC RAID controller with firmware\0Amegaraid: 3.00 or 3.01.  This driver is known to have corruption issues\0Amegaraid: with those firmware versions on this specific card.  In order\0Amegaraid: to protect your data, please upgrade your firmware to version\0Amegaraid: 3.10 or later, available from the Dell Technical Support web\0Amegaraid: site at\0Ahttp://support.dell.com/us/en/filelib/download/index.asp?fileid=2940\0A\00", [109 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry_ptr.34 = internal global ptr @megaraid_probe_one._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"H01.07\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"H01.08\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"H01.09\00", [25 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.7, ptr @.str.8, i32 4332, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [121 x i8], [39 x i8] } { [121 x i8] c"Firmware H.01.07, H.01.08, and H.01.09 on 1M/2M controllers\0Ado not support 64 bit addressing.\0ADISABLING 64 bit support.\0A\00", [39 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry_ptr.40 = internal global ptr @megaraid_probe_one._entry.38, section ".printk_index", align 4
@mega_hbas = internal global { [32 x %struct.mega_hbas], [64 x i8] } zeroinitializer, align 32
@hba_soft_state = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@mcontroller = internal global { [32 x %struct.mcontroller], [256 x i8] } zeroinitializer, align 32
@megaraid_probe_one.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&adapter->int_mtx\00", [46 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.7, ptr @.str.8, i32 4441, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cluster driver, initiator id:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry_ptr.45 = internal global ptr @megaraid_probe_one._entry.43, section ".printk_index", align 4
@mega_proc_dir_entry = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MegaRAID\00", [23 x i8] zeroinitializer }, align 32
@mega_build_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.8, i32 680, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"scsi%d: scanning scsi channel %d for logical drives\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mega_build_cmd\00", [17 x i8] zeroinitializer }, align 32
@mega_build_cmd._entry_ptr = internal global ptr @mega_build_cmd._entry, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@mega_prepare_extpassthru._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.8, i32 1048, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"scsi%d: scanning scsi channel %d [P%d] for physical devices\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mega_prepare_extpassthru\00", [39 x i8] zeroinitializer }, align 32
@mega_prepare_extpassthru._entry_ptr = internal global ptr @mega_prepare_extpassthru._entry, section ".printk_index", align 4
@mega_prepare_passthru._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.51, ptr @.str.8, i32 985, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mega_prepare_passthru\00", [42 x i8] zeroinitializer }, align 32
@mega_prepare_passthru._entry_ptr = internal global ptr @mega_prepare_passthru._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@megaraid_abort_and_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.8, i32 1932, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s cmd=%x <c=%d t=%d l=%d>\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"megaraid_abort_and_reset\00", [39 x i8] zeroinitializer }, align 32
@megaraid_abort_and_reset._entry_ptr = internal global ptr @megaraid_abort_and_reset._entry, section ".printk_index", align 4
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ABORTING\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RESET\00", [26 x i8] zeroinitializer }, align 32
@megaraid_abort_and_reset._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.53, ptr @.str.8, i32 1956, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s[%x], fw owner\0A\00", [46 x i8] zeroinitializer }, align 32
@megaraid_abort_and_reset._entry_ptr.58 = internal global ptr @megaraid_abort_and_reset._entry.56, section ".printk_index", align 4
@megaraid_abort_and_reset._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.53, ptr @.str.8, i32 1969, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s-[%x], driver owner\0A\00", [41 x i8] zeroinitializer }, align 32
@megaraid_abort_and_reset._entry_ptr.61 = internal global ptr @megaraid_abort_and_reset._entry.59, section ".printk_index", align 4
@megaraid_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.8, i32 1893, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reservation reset failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"megaraid_reset\00", [17 x i8] zeroinitializer }, align 32
@megaraid_reset._entry_ptr = internal global ptr @megaraid_reset._entry, section ".printk_index", align 4
@megaraid_reset._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.8, i32 1896, ptr @.str.66, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reservation reset\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@megaraid_reset._entry_ptr.67 = internal global ptr @megaraid_reset._entry.64, section ".printk_index", align 4
@mega_internal_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.8, i32 4098, ptr @.str.66, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cmd [%x, %x, %x] status:[%x]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mega_internal_command\00", [42 x i8] zeroinitializer }, align 32
@mega_internal_command._entry_ptr = internal global ptr @mega_internal_command._entry, section ".printk_index", align 4
@megaraid_biosparam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.8, i32 2827, ptr @.str.66, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"invalid partition on this disk on channel %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"megaraid_biosparam\00", [45 x i8] zeroinitializer }, align 32
@megaraid_biosparam._entry_ptr = internal global ptr @megaraid_biosparam._entry, section ".printk_index", align 4
@mega_cmd_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.8, i32 1455, ptr @.str.74, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"invalid command Id %d, scb->state:%x, scsi cmd:%p\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mega_cmd_done\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@mega_cmd_done._entry_ptr = internal global ptr @mega_cmd_done._entry, section ".printk_index", align 4
@mega_cmd_done._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.73, ptr @.str.8, i32 1467, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"aborted cmd [%x] complete\0A\00", [37 x i8] zeroinitializer }, align 32
@mega_cmd_done._entry_ptr.77 = internal global ptr @mega_cmd_done._entry.75, section ".printk_index", align 4
@mega_cmd_done._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.73, ptr @.str.8, i32 1486, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reset cmd [%x] complete\0A\00", [39 x i8] zeroinitializer }, align 32
@mega_cmd_done._entry_ptr.80 = internal global ptr @mega_cmd_done._entry.78, section ".printk_index", align 4
@mega_cmd_done._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.73, ptr @.str.8, i32 1551, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"invalid sg\0A\00", [20 x i8] zeroinitializer }, align 32
@mega_cmd_done._entry_ptr.83 = internal global ptr @mega_cmd_done._entry.81, section ".printk_index", align 4
@mega_query_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.8, i32 271, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Product_info cmd failed with error: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mega_query_adapter\00", [45 x i8] zeroinitializer }, align 32
@mega_query_adapter._entry_ptr = internal global ptr @mega_query_adapter._entry, section ".printk_index", align 4
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%c%d%d.%d%d\00", [20 x i8] zeroinitializer }, align 32
@mega_query_adapter._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.85, ptr @.str.8, i32 338, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%s:%s] detected %d logical drives\0A\00", [60 x i8] zeroinitializer }, align 32
@mega_query_adapter._entry_ptr.89 = internal global ptr @mega_query_adapter._entry.87, section ".printk_index", align 4
@mega_query_adapter._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.85, ptr @.str.8, i32 345, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"supports extended CDBs\0A\00", [40 x i8] zeroinitializer }, align 32
@mega_query_adapter._entry_ptr.92 = internal global ptr @mega_query_adapter._entry.90, section ".printk_index", align 4
@issue_scb_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.8, i32 1240, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Blocked mailbox......!!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"issue_scb_block\00", [16 x i8] zeroinitializer }, align 32
@issue_scb_block._entry_ptr = internal global ptr @issue_scb_block._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.95 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@mega_enum_raid_scsi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.8, i32 3629, ptr @.str.66, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"channel[%d] is raid\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mega_enum_raid_scsi\00", [44 x i8] zeroinitializer }, align 32
@mega_enum_raid_scsi._entry_ptr = internal global ptr @mega_enum_raid_scsi._entry, section ".printk_index", align 4
@mega_enum_raid_scsi._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.8, i32 3633, ptr @.str.66, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"channel[%d] is scsi\0A\00", [43 x i8] zeroinitializer }, align 32
@mega_enum_raid_scsi._entry_ptr.101 = internal global ptr @mega_enum_raid_scsi._entry.99, section ".printk_index", align 4
@mega_init_scb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.8, i32 2887, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RAID: Can't allocate sglist\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mega_init_scb\00", [18 x i8] zeroinitializer }, align 32
@mega_init_scb._entry_ptr = internal global ptr @mega_init_scb._entry, section ".printk_index", align 4
@mega_init_scb._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.8, i32 2897, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RAID: Can't allocate passthru\0A\00", [33 x i8] zeroinitializer }, align 32
@mega_init_scb._entry_ptr.106 = internal global ptr @mega_init_scb._entry.104, section ".printk_index", align 4
@mega_init_scb._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.103, ptr @.str.8, i32 2908, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Can't allocate extended passthru\0A\00", [62 x i8] zeroinitializer }, align 32
@mega_init_scb._entry_ptr.109 = internal global ptr @mega_init_scb._entry.107, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hba%d\00", [26 x i8] zeroinitializer }, align 32
@mega_create_proc_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.8, i32 2742, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"proc_mkdir failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mega_create_proc_entry\00", [41 x i8] zeroinitializer }, align 32
@mega_create_proc_entry._entry_ptr = internal global ptr @mega_create_proc_entry._entry, section ".printk_index", align 4
@.str.114 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"config\00", [25 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stat\00", [27 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mailbox\00", [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rebuild-rate\00", [19 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"battery-status\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"diskdrives-ch0\00", [17 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"diskdrives-ch1\00", [17 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"diskdrives-ch2\00", [17 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"diskdrives-ch3\00", [17 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"raiddrives-0-9\00", [17 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"raiddrives-10-19\00", [47 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"raiddrives-20-29\00", [47 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"raiddrives-30-39\00", [47 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"v2.00.4 (Release Date: Thu Feb 9 08:51:30 EST 2006)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Controller Type: \00", [46 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"438/466/467/471/493/518/520/531/532\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"418/428/434\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Controller Supports 40 Logical Drives\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Controller capable of 64-bit memory addressing\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Controller using 64-bit memory addressing\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Controller is not using 64-bit memory addressing\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Base = %08lx, Irq = %d, \00", [39 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Logical Drives = %d, Channels = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Version =%s:%s, DRAM = %dMb\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Controller Queue Depth = %d, Driver Queue Depth = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"support_ext_cdb    = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"support_random_del = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"boot_ldrv_enabled  = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"boot_ldrv          = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"boot_pdrv_enabled  = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"boot_pdrv_ch       = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"boot_pdrv_tgt      = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"quiescent          = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"has_cluster        = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\0AModule Parameters:\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max_cmd_per_lun    = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max_sectors_per_io = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Statistical Information for this controller\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pend_cmds = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"IO and error counters not compiled in driver.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Contents of Mail Box Structure\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  Fw Command   = 0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  Cmd Sequence = 0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"  No of Sectors= %04d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  LBA          = 0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  DTA          = 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  Logical Drive= 0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  No of SG Elmt= 0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"  Busy         = %01x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  Status       = 0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Adapter inquiry failed.\0A\00", [39 x i8] zeroinitializer }, align 32
@proc_show_rebuild_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.8, i32 2189, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"inquiry failed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"proc_show_rebuild_rate\00", [41 x i8] zeroinitializer }, align 32
@proc_show_rebuild_rate._entry_ptr = internal global ptr @proc_show_rebuild_rate._entry, section ".printk_index", align 4
@.str.168 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Rebuild Rate: [%d%%]\0A\00", [42 x i8] zeroinitializer }, align 32
@proc_show_battery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.169, ptr @.str.8, i32 2233, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"proc_show_battery\00", [46 x i8] zeroinitializer }, align 32
@proc_show_battery._entry_ptr = internal global ptr @proc_show_battery._entry, section ".printk_index", align 4
@.str.170 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Battery Status:[%d]\00", [44 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" Charge Done\00", [19 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" Module Missing\00", [16 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" Low Voltage\00", [19 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" Temperature High\00", [46 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" Pack Missing\00", [18 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" Charge In-progress\00", [44 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" Charge Fail\00", [19 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" Cycles Exceeded\00", [47 x i8] zeroinitializer }, align 32
@proc_show_pdrv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.179, ptr @.str.8, i32 2342, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"proc_show_pdrv\00", [17 x i8] zeroinitializer }, align 32
@proc_show_pdrv._entry_ptr = internal global ptr @proc_show_pdrv._entry, section ".printk_index", align 4
@.str.180 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"memory not available for scsi inq.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Channel:%2d Id:%2d State: Online\00", [63 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Channel:%2d Id:%2d State: Failed\00", [63 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Channel:%2d Id:%2d State: Rebuild\00", [62 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Channel:%2d Id:%2d State: Hot spare\00", [60 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Channel:%2d Id:%2d State: Un-configured\00", [56 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c".\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"  Vendor: \00", [21 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"  Model: \00", [22 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"  Rev: \00", [24 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  Type:   %s \00", [18 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"                 ANSI SCSI revision: %02x\00", [54 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" CCS\0A\00", [26 x i8] zeroinitializer }, align 32
@proc_show_rdrv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.193, ptr @.str.8, i32 2518, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"proc_show_rdrv\00", [17 x i8] zeroinitializer }, align 32
@proc_show_rdrv._entry_ptr = internal global ptr @proc_show_rdrv._entry, section ".printk_index", align 4
@.str.194 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"memory not available.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"40LD read config failed.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"8LD read config failed.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Logical drive:%2d:, \00", [43 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"state: offline\00", [17 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"state: degraded\00", [16 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"state: optimal\00", [17 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"state: deleted\00", [17 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"state: unknown\00", [17 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c", check-consistency in progress\00", [32 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c", initialization in progress\00", [35 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Span depth:%3d, \00", [47 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RAID level:%3d, \00", [47 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Stripe size:%3d, \00", [46 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Row size:%3d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Read Policy: \00", [18 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"No read ahead, \00", [16 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Read ahead, \00", [19 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Adaptive, \00", [21 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Write Policy: \00", [17 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Write thru, \00", [19 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Write back, \00", [19 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Cache Policy: \00", [17 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Cached IO\0A\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Direct IO\0A\0A\00", [20 x i8] zeroinitializer }, align 32
@__megaraid_shutdown._entry = internal constant %struct.pi_entry { ptr @.str.219, ptr @.str.220, ptr @.str.8, i32 4507, ptr @.str.13, ptr @.str.10 }, align 1
@.str.219 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pending commands!!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__megaraid_shutdown\00", [44 x i8] zeroinitializer }, align 32
@__megaraid_shutdown._entry_ptr = internal global ptr @__megaraid_shutdown._entry, section ".printk_index", align 4
@megaraid_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.222, ptr @.str.8, i32 4593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014megaraid: failed to create megaraid root\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"megaraid_init\00", [18 x i8] zeroinitializer }, align 32
@megaraid_init._entry_ptr = internal global ptr @megaraid_init._entry, section ".printk_index", align 4
@megadev_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @megadev_unlocked_ioctl, ptr null, ptr null, i32 0, ptr @megadev_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@megaraid_init._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.222, ptr @.str.8, i32 4613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014megaraid: failed to register char device\0A\00", [52 x i8] zeroinitializer }, align 32
@megaraid_init._entry_ptr.225 = internal global ptr @megaraid_init._entry.223, section ".printk_index", align 4
@megadev_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.226, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @megadev_mutex, i64 52), ptr getelementptr (i8, ptr @megadev_mutex, i64 52) }, ptr @megadev_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.227, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"megadev_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"megadev_mutex\00", [18 x i8] zeroinitializer }, align 32
@megadev_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.229, ptr @.str.8, i32 3104, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"logdrv delete on non-supporting F/W\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"megadev_ioctl\00", [18 x i8] zeroinitializer }, align 32
@megadev_ioctl._entry_ptr = internal global ptr @megadev_ioctl._entry, section ".printk_index", align 4
@megadev_ioctl._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.229, ptr @.str.8, i32 3128, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rejected passthru\0A\00", [45 x i8] zeroinitializer }, align 32
@megadev_ioctl._entry_ptr.232 = internal global ptr @megadev_ioctl._entry.230, section ".printk_index", align 4
@.str.233 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MEGANIT\00", [24 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.234 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mega_do_del_logdrv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.238, ptr @.str.8, i32 3832, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Delete LD-%d failed\00", [44 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mega_do_del_logdrv\00", [45 x i8] zeroinitializer }, align 32
@mega_do_del_logdrv._entry_ptr = internal global ptr @mega_do_del_logdrv._entry, section ".printk_index", align 4
@switch.table.proc_show_pdrv = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184], [16 x i8] zeroinitializer }, align 32
@switch.table.proc_show_rdrv = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201], [16 x i8] zeroinitializer }, align 32
@switch.table.proc_show_rdrv.239 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.210, ptr @.str.211, ptr @.str.212], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 13124, i64 52428]
@__sancov_gen_cov_switch_values.240 = internal global [6 x i64] [i64 4, i64 8, i64 8, i64 10, i64 40, i64 42]
@__sancov_gen_cov_switch_values.241 = internal global [14 x i64] [i64 12, i64 8, i64 0, i64 8, i64 10, i64 18, i64 22, i64 23, i64 26, i64 37, i64 40, i64 42, i64 168, i64 170]
@__sancov_gen_cov_switch_values.242 = internal global [4 x i64] [i64 2, i64 8, i64 18, i64 37]
@__sancov_gen_cov_switch_values.243 = internal global [4 x i64] [i64 2, i64 8, i64 18, i64 37]
@__sancov_gen_cov_switch_values.244 = internal global [6 x i64] [i64 4, i64 8, i64 167, i64 168, i64 195, i64 227]
@__sancov_gen_cov_switch_values.245 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 8]
@__sancov_gen_cov_switch_values.246 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 195, i64 227]
@__sancov_gen_cov_switch_values.247 = internal global [6 x i64] [i64 4, i64 8, i64 167, i64 168, i64 195, i64 227]
@__sancov_gen_cov_switch_values.248 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.249 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.250 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.251 = internal global [5 x i64] [i64 3, i64 8, i64 128, i64 129, i64 130]
@__sancov_gen_cov_switch_values.252 = internal global [5 x i64] [i64 3, i64 8, i64 101, i64 103, i64 109]
@__sancov_gen_cov_switch_values.253 = internal global [5 x i64] [i64 3, i64 8, i64 164, i64 195, i64 227]
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 59, i32 1 }
@___asan_gen_.263 = private unnamed_addr constant [16 x i8] c"max_cmd_per_lun\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 62, i32 21 }
@___asan_gen_.266 = private unnamed_addr constant [19 x i8] c"max_sectors_per_io\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 66, i32 27 }
@___asan_gen_.269 = private unnamed_addr constant [19 x i8] c"max_mbox_busy_wait\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 71, i32 27 }
@___asan_gen_.272 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 1842, i32 14 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 1848, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant [6 x i8] c"major\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 115, i32 12 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4624, i32 27 }
@___asan_gen_.284 = private unnamed_addr constant [20 x i8] c"megaraid_pci_driver\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4572, i32 26 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4573, i32 11 }
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"megaraid_pci_tbl\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4561, i32 29 }
@___asan_gen_.293 = private unnamed_addr constant [10 x i8] c"hba_count\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 84, i32 12 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4182, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4194, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4200, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant [18 x i8] c"megaraid_template\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4105, i32 34 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4219, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4232, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4259, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4266, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4273, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4290, i32 36 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4291, i32 34 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4293, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4323, i32 36 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4324, i32 36 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4325, i32 36 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4326, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant [10 x i8] c"mega_hbas\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 89, i32 25 }
@___asan_gen_.389 = private unnamed_addr constant [15 x i8] c"hba_soft_state\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 85, i32 19 }
@___asan_gen_.392 = private unnamed_addr constant [12 x i8] c"mcontroller\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 109, i32 27 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4423, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4439, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant [20 x i8] c"mega_proc_dir_entry\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 86, i32 31 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4107, i32 13 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 676, i32 5 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 1044, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 981, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 1929, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 1953, i32 5 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 1966, i32 5 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 1893, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 1896, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4097, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2825, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 1453, i32 5 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 1465, i32 5 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 1484, i32 5 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 1551, i32 5 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 269, i32 4 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 313, i32 5 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 337, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 345, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 1240, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 326, i32 6 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 3628, i32 4 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 3632, i32 4 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2887, i32 4 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2897, i32 4 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2907, i32 4 }
@___asan_gen_.605 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.609 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 87, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2739, i32 18 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2742, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2746, i32 26 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2748, i32 26 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2750, i32 26 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2753, i32 26 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2755, i32 26 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2757, i32 26 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2759, i32 26 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2761, i32 26 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2763, i32 26 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2765, i32 26 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2767, i32 26 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2769, i32 26 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2771, i32 26 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2053, i32 14 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2055, i32 17 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2057, i32 14 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2060, i32 15 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2062, i32 15 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2065, i32 15 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2068, i32 15 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2070, i32 15 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2072, i32 15 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2074, i32 16 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2077, i32 16 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2080, i32 16 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2084, i32 16 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2087, i32 16 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2088, i32 16 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2089, i32 16 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2090, i32 16 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2091, i32 16 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2092, i32 16 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2093, i32 16 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2094, i32 16 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2096, i32 16 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2098, i32 14 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2099, i32 16 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2100, i32 16 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2119, i32 14 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2120, i32 16 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2132, i32 14 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2152, i32 14 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2153, i32 16 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2154, i32 16 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2155, i32 16 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2156, i32 16 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2157, i32 16 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2158, i32 16 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2159, i32 16 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2160, i32 16 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2161, i32 16 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2188, i32 15 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2189, i32 3 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2194, i32 17 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2233, i32 3 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2248, i32 16 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2251, i32 15 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2254, i32 15 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2257, i32 15 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2260, i32 15 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2263, i32 15 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2266, i32 15 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2269, i32 15 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2272, i32 15 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2342, i32 3 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2350, i32 15 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2375, i32 18 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2380, i32 18 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2385, i32 18 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2390, i32 18 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2395, i32 18 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2416, i32 15 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2292, i32 14 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2294, i32 14 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2296, i32 14 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2301, i32 16 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2303, i32 16 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2307, i32 15 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2518, i32 3 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2545, i32 15 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2556, i32 16 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2567, i32 17 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2588, i32 17 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2592, i32 16 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2595, i32 16 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2598, i32 16 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2601, i32 16 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2604, i32 16 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2613, i32 16 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2615, i32 16 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2619, i32 17 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2620, i32 17 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2621, i32 17 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2623, i32 17 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2625, i32 15 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2628, i32 16 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2631, i32 16 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2634, i32 16 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2639, i32 15 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2642, i32 16 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2645, i32 16 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2649, i32 15 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2652, i32 16 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 2655, i32 16 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4507, i32 3 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4592, i32 3 }
@___asan_gen_.965 = private unnamed_addr constant [13 x i8] c"megadev_fops\00", align 1
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 97, i32 37 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 4612, i32 3 }
@___asan_gen_.974 = private unnamed_addr constant [14 x i8] c"megadev_mutex\00", align 1
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 61, i32 8 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 3103, i32 5 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 3128, i32 4 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 3395, i32 24 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1005, i32 230, i32 6 }
@___asan_gen_.1005 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1005, i32 214, i32 2 }
@___asan_gen_.1008 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 174, i32 2 }
@___asan_gen_.1010 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1016 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1017 = private constant [27 x i8] c"../drivers/scsi/megaraid.c\00", align 1
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1017, i32 3832, i32 3 }
@___asan_gen_.1019 = private unnamed_addr constant [28 x i8] c"switch.table.proc_show_pdrv\00", align 1
@___asan_gen_.1020 = private unnamed_addr constant [28 x i8] c"switch.table.proc_show_rdrv\00", align 1
@___asan_gen_.1021 = private unnamed_addr constant [32 x i8] c"switch.table.proc_show_rdrv.239\00", align 1
@llvm.compiler.used = appending global [321 x ptr] [ptr @__UNIQUE_ID_author287, ptr @__UNIQUE_ID_description288, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__UNIQUE_ID_max_cmd_per_lun293, ptr @__UNIQUE_ID_max_cmd_per_luntype292, ptr @__UNIQUE_ID_max_mbox_busy_wait297, ptr @__UNIQUE_ID_max_mbox_busy_waittype296, ptr @__UNIQUE_ID_max_sectors_per_io295, ptr @__UNIQUE_ID_max_sectors_per_iotype294, ptr @__UNIQUE_ID_version291, ptr @__exitcall_megaraid_exit, ptr @__initcall__kmod_megaraid__299_4633_megaraid_init6, ptr @__megaraid_shutdown._entry, ptr @__megaraid_shutdown._entry_ptr, ptr @__modver_attr, ptr @__param_max_cmd_per_lun, ptr @__param_max_mbox_busy_wait, ptr @__param_max_sectors_per_io, ptr @issue_scb_block._entry, ptr @issue_scb_block._entry_ptr, ptr @mega_build_cmd._entry, ptr @mega_build_cmd._entry_ptr, ptr @mega_cmd_done._entry, ptr @mega_cmd_done._entry.75, ptr @mega_cmd_done._entry.78, ptr @mega_cmd_done._entry.81, ptr @mega_cmd_done._entry_ptr, ptr @mega_cmd_done._entry_ptr.77, ptr @mega_cmd_done._entry_ptr.80, ptr @mega_cmd_done._entry_ptr.83, ptr @mega_create_proc_entry._entry, ptr @mega_create_proc_entry._entry_ptr, ptr @mega_do_del_logdrv._entry, ptr @mega_do_del_logdrv._entry_ptr, ptr @mega_enum_raid_scsi._entry, ptr @mega_enum_raid_scsi._entry.99, ptr @mega_enum_raid_scsi._entry_ptr, ptr @mega_enum_raid_scsi._entry_ptr.101, ptr @mega_init_scb._entry, ptr @mega_init_scb._entry.104, ptr @mega_init_scb._entry.107, ptr @mega_init_scb._entry_ptr, ptr @mega_init_scb._entry_ptr.106, ptr @mega_init_scb._entry_ptr.109, ptr @mega_internal_command._entry, ptr @mega_internal_command._entry_ptr, ptr @mega_prepare_extpassthru._entry, ptr @mega_prepare_extpassthru._entry_ptr, ptr @mega_prepare_passthru._entry, ptr @mega_prepare_passthru._entry_ptr, ptr @mega_query_adapter._entry, ptr @mega_query_adapter._entry.87, ptr @mega_query_adapter._entry.90, ptr @mega_query_adapter._entry_ptr, ptr @mega_query_adapter._entry_ptr.89, ptr @mega_query_adapter._entry_ptr.92, ptr @megadev_ioctl._entry, ptr @megadev_ioctl._entry.230, ptr @megadev_ioctl._entry_ptr, ptr @megadev_ioctl._entry_ptr.232, ptr @megaraid_abort_and_reset._entry, ptr @megaraid_abort_and_reset._entry.56, ptr @megaraid_abort_and_reset._entry.59, ptr @megaraid_abort_and_reset._entry_ptr, ptr @megaraid_abort_and_reset._entry_ptr.58, ptr @megaraid_abort_and_reset._entry_ptr.61, ptr @megaraid_biosparam._entry, ptr @megaraid_biosparam._entry_ptr, ptr @megaraid_exit, ptr @megaraid_init._entry, ptr @megaraid_init._entry.223, ptr @megaraid_init._entry_ptr, ptr @megaraid_init._entry_ptr.225, ptr @megaraid_probe_one._entry, ptr @megaraid_probe_one._entry.11, ptr @megaraid_probe_one._entry.15, ptr @megaraid_probe_one._entry.18, ptr @megaraid_probe_one._entry.22, ptr @megaraid_probe_one._entry.25, ptr @megaraid_probe_one._entry.27, ptr @megaraid_probe_one._entry.32, ptr @megaraid_probe_one._entry.38, ptr @megaraid_probe_one._entry.43, ptr @megaraid_probe_one._entry_ptr, ptr @megaraid_probe_one._entry_ptr.14, ptr @megaraid_probe_one._entry_ptr.17, ptr @megaraid_probe_one._entry_ptr.20, ptr @megaraid_probe_one._entry_ptr.24, ptr @megaraid_probe_one._entry_ptr.26, ptr @megaraid_probe_one._entry_ptr.29, ptr @megaraid_probe_one._entry_ptr.34, ptr @megaraid_probe_one._entry_ptr.40, ptr @megaraid_probe_one._entry_ptr.45, ptr @megaraid_reset._entry, ptr @megaraid_reset._entry.64, ptr @megaraid_reset._entry_ptr, ptr @megaraid_reset._entry_ptr.67, ptr @proc_show_battery._entry, ptr @proc_show_battery._entry_ptr, ptr @proc_show_pdrv._entry, ptr @proc_show_pdrv._entry_ptr, ptr @proc_show_rdrv._entry, ptr @proc_show_rdrv._entry_ptr, ptr @proc_show_rebuild_rate._entry, ptr @proc_show_rebuild_rate._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @max_cmd_per_lun, ptr @max_sectors_per_io, ptr @max_mbox_busy_wait, ptr @megaraid_info.buffer, ptr @.str.3, ptr @major, ptr @.str.4, ptr @megaraid_pci_driver, ptr @.str.5, ptr @megaraid_pci_tbl, ptr @hba_count, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @megaraid_template, ptr @.str.19, ptr @megaraid_probe_one.__key, ptr @.str.21, ptr @.str.23, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @mega_hbas, ptr @hba_soft_state, ptr @mcontroller, ptr @megaraid_probe_one.__key.41, ptr @.str.42, ptr @.str.44, ptr @mega_proc_dir_entry, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.108, ptr @init_completion.__key, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @megadev_fops, ptr @.str.224, ptr @megadev_mutex, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.231, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @switch.table.proc_show_pdrv, ptr @switch.table.proc_show_rdrv, ptr @switch.table.proc_show_rdrv.239], section "llvm.metadata"
@0 = internal global [258 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_cmd_per_lun to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_sectors_per_io to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_mbox_busy_wait to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_info.buffer to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_pci_tbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hba_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_probe_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_probe_one._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_probe_one._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_probe_one._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_probe_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_probe_one._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_probe_one._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_probe_one._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_probe_one._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 435, i32 544, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_probe_one._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mega_hbas to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hba_soft_state to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcontroller to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_probe_one.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_probe_one._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mega_proc_dir_entry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mega_build_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mega_prepare_extpassthru._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mega_prepare_passthru._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_abort_and_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_abort_and_reset._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_abort_and_reset._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_reset._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mega_internal_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_biosparam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mega_cmd_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mega_cmd_done._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mega_cmd_done._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mega_cmd_done._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mega_query_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mega_query_adapter._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mega_query_adapter._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @issue_scb_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mega_enum_raid_scsi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mega_enum_raid_scsi._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mega_init_scb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mega_init_scb._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mega_init_scb._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mega_create_proc_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_show_rebuild_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_show_battery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_show_pdrv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_show_rdrv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megadev_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_init._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megadev_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megadev_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megadev_ioctl._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mega_do_del_logdrv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.proc_show_pdrv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.proc_show_rdrv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.proc_show_rdrv.239 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local nonnull ptr @megaraid_info(ptr noundef %host) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 53
  %fw_version = getelementptr inbounds %struct.adapter_t, ptr %hostdata, i32 0, i32 21
  %max_commands = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 10, i32 0, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %max_commands to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_commands, align 4
  %conv = zext i8 %1 to i32
  %host2 = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host2, align 4
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %max_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_id, align 4
  %max_channel = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %max_channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_channel, align 8
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 22
  %8 = ptrtoint ptr %max_lun to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %max_lun, align 8
  %conv5 = trunc i64 %9 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @megaraid_info.buffer, ptr noundef nonnull @.str.3, ptr noundef %fw_version, i32 noundef %conv, i32 noundef %5, i32 noundef %7, i32 noundef %conv5)
  ret ptr @megaraid_info.buffer
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @megaraid_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = load i32, ptr @major, align 4
  tail call void @__unregister_chrdev(i32 noundef %0, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.4) #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @megaraid_pci_driver) #14
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.1, ptr noundef null) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @megaraid_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @max_cmd_per_lun, align 4
  %1 = add i32 %0, -127
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %1)
  %2 = icmp ult i32 %1, -126
  br i1 %2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  store i32 126, ptr @max_cmd_per_lun, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = load i16, ptr @max_mbox_busy_wait, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp2 = icmp ugt i16 %3, 10
  br i1 %cmp2, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  store i16 10, ptr @max_mbox_busy_wait, align 2
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %call = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.1, ptr noundef null) #14
  store ptr %call, ptr @mega_proc_dir_entry, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end5.if.end8_crit_edge

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221) #17
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end5.if.end8_crit_edge
  %call9 = tail call i32 @__pci_register_driver(ptr noundef nonnull @megaraid_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.1, ptr noundef null) #14
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call.i = tail call i32 @__register_chrdev(i32 noundef 0, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.4, ptr noundef nonnull @megadev_fops) #14
  store i32 %call.i, ptr @major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %do.end18, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.end12.cleanup_crit_edge, %if.then11
  ret i32 %call9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @megaraid_probe_one(ptr noundef %pdev, ptr nocapture noundef readonly %id) #5 align 64 {
entry:
  %mbox.i = alloca %struct.mbox_out, align 1
  %magic = alloca i16, align 2
  %magic64 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @hba_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %0)
  %cmp = icmp sgt i32 %0, 31
  br i1 %cmp, label %entry.cleanup330_crit_edge, label %if.end

entry.cleanup330_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup330

if.end:                                           ; preds = %entry
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup330_crit_edge

if.end.cleanup330_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup330

if.end2:                                          ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %pdev) #14
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %number, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %5 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %devfn, align 4
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %7 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %8)
  %cmp4 = icmp eq i16 %8, -32634
  br i1 %cmp4, label %if.then6, label %if.end2.if.end25_crit_edge

if.end2.if.end25_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then6:                                         ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %magic) #14
  %9 = ptrtoint ptr %magic to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %magic, align 2, !annotation !526
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %10 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3601, i16 %11)
  %cmp8 = icmp eq i16 %11, 3601
  br i1 %cmp8, label %land.lhs.true, label %if.then6.if.end14_crit_edge

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

land.lhs.true:                                    ; preds = %if.then6
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %12 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %13)
  %cmp11 = icmp eq i16 %13, -16384
  br i1 %cmp11, label %land.lhs.true.cleanup.thread_crit_edge, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

land.lhs.true.cleanup.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.then6.if.end14_crit_edge
  %call15 = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 160, ptr noundef nonnull %magic) #14
  %14 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %magic, align 2
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i16 %15, label %if.end14.cleanup.thread_crit_edge [
    i16 -13108, label %if.end14.cleanup_crit_edge
    i16 13124, label %if.end14.cleanup_crit_edge527
  ]

if.end14.cleanup_crit_edge527:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end14.cleanup.thread_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end14.cleanup.thread_crit_edge, %land.lhs.true.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %magic) #14
  br label %out_disable_device

cleanup:                                          ; preds = %if.end14.cleanup_crit_edge, %if.end14.cleanup_crit_edge527
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %magic) #14
  br label %if.end25

if.end25:                                         ; preds = %cleanup, %if.end2.if.end25_crit_edge
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %17 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %driver_data, align 4
  %and = and i32 %18, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.else, label %if.end25.if.end34_crit_edge

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %magic64) #14
  %19 = ptrtoint ptr %magic64 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %magic64, align 4, !annotation !526
  %call28 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 164, ptr noundef nonnull %magic64) #14
  %20 = ptrtoint ptr %magic64 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %magic64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 665, i32 %21)
  %cmp29 = icmp eq i32 %21, 665
  %spec.select = select i1 %cmp29, i32 67108864, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %magic64) #14
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.end25.if.end34_crit_edge
  %flag.1 = phi i32 [ %spec.select, %if.else ], [ 67108864, %if.end25.if.end34_crit_edge ]
  %subsystem_vendor35 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %22 = ptrtoint ptr %subsystem_vendor35 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %subsystem_vendor35, align 4
  %subsystem_device36 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %24 = ptrtoint ptr %subsystem_device36 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %subsystem_device36, align 2
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id, align 4
  %device = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 1
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %device, align 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %27, i32 noundef %29) #17
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %30 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %resource, align 8
  %irq38 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %32 = ptrtoint ptr %irq38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq38, align 4
  %flags = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %and41 = and i32 %35, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.else61, label %if.then43

if.then43:                                        ; preds = %if.end34
  %or44 = or i32 %flag.1, 536870912
  %call45 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %31, i32 noundef 128, ptr noundef nonnull @.str.1, i32 noundef 0) #14
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %do.end50, label %if.end52

do.end50:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.12) #17
  br label %out_disable_device

if.end52:                                         ; preds = %if.then43
  %call53 = call ptr @ioremap(i32 noundef %31, i32 noundef 128) #14
  %36 = ptrtoint ptr %call53 to i32
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %do.end58, label %if.end52.if.end67_crit_edge

if.end52.if.end67_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.16) #17
  br label %out_release_region

if.else61:                                        ; preds = %if.end34
  %or62 = or i32 %flag.1, 268435456
  %add = add i32 %31, 16
  %call63 = call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %add, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef 0) #14
  %tobool64.not = icmp eq ptr %call63, null
  br i1 %tobool64.not, label %if.else61.out_disable_device_crit_edge, label %if.else61.if.end67_crit_edge

if.else61.if.end67_crit_edge:                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.else61.out_disable_device_crit_edge:           ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_disable_device

if.end67:                                         ; preds = %if.else61.if.end67_crit_edge, %if.end52.if.end67_crit_edge
  %mega_baseport.0 = phi i32 [ %36, %if.end52.if.end67_crit_edge ], [ %add, %if.else61.if.end67_crit_edge ]
  %flag.2 = phi i32 [ %or44, %if.end52.if.end67_crit_edge ], [ %or62, %if.else61.if.end67_crit_edge ]
  %call68 = call ptr @scsi_host_alloc(ptr noundef nonnull @megaraid_template, i32 noundef 1524) #14
  %tobool69.not = icmp eq ptr %call68, null
  br i1 %tobool69.not, label %if.end67.out_iounmap_crit_edge, label %if.end71

if.end67.out_iounmap_crit_edge:                   ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  %.pre = and i32 %flag.2, 536870912
  br label %out_iounmap

if.end71:                                         ; preds = %if.end67
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 0, i32 53
  %37 = call ptr @memset(ptr %hostdata, i32 0, i32 1524)
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 0, i32 17
  %38 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %host_no, align 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %39, i32 noundef %mega_baseport.0, i32 noundef %33) #17
  %base = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 1
  %40 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mega_baseport.0, ptr %base, align 4
  %and76 = and i32 %flag.2, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end71.if.end79_crit_edge, label %if.then78

if.end71.if.end79_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

if.then78:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  %41 = inttoptr i32 %mega_baseport.0 to ptr
  %mmio_base = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 1, i32 1
  %42 = ptrtoint ptr %mmio_base to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %mmio_base, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end71.if.end79_crit_edge
  %free_list = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 3, i32 0, i32 0, i32 4
  %43 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %free_list, ptr %free_list, align 4
  %prev.i = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %free_list, ptr %prev.i, align 4
  %pending_list = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1, i32 1
  %45 = ptrtoint ptr %pending_list to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %pending_list, ptr %pending_list, align 4
  %prev.i511 = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 3, i32 0, i32 0, i32 4, i32 2
  %46 = ptrtoint ptr %prev.i511 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %pending_list, ptr %prev.i511, align 4
  %completed_list = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 3, i32 0, i32 0, i32 4, i32 3
  %47 = ptrtoint ptr %completed_list to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %completed_list, ptr %completed_list, align 4
  %prev.i512 = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %48 = ptrtoint ptr %prev.i512 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %completed_list, ptr %prev.i512, align 4
  %flag80 = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 0, i32 1
  %49 = ptrtoint ptr %flag80 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %flag.2, ptr %flag80, align 4
  %lock = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 49, i32 12, i32 10, i32 3, i32 1
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @megaraid_probe_one.__key, i16 noundef signext 3) #14
  %50 = load i32, ptr @max_cmd_per_lun, align 4
  %conv85 = trunc i32 %50 to i16
  %cmd_per_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 0, i32 27
  %51 = ptrtoint ptr %cmd_per_lun to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv85, ptr %cmd_per_lun, align 8
  %52 = load i16, ptr @max_sectors_per_io, align 2
  %conv86 = zext i16 %52 to i32
  %max_sectors = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 0, i32 30
  %53 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv86, ptr %max_sectors, align 8
  %dev87 = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 3, i32 0, i32 0, i32 3
  %54 = ptrtoint ptr %dev87 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %pdev, ptr %dev87, align 4
  %host88 = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %55 = ptrtoint ptr %host88 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call68, ptr %host88, align 4
  %irq90 = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 0, i32 47
  %56 = ptrtoint ptr %irq90 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %33, ptr %irq90, align 8
  br i1 %tobool77.not, label %if.else96, label %if.then93

if.then93:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  %base95 = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 0, i32 43
  %57 = ptrtoint ptr %base95 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %31, ptr %base95, align 4
  br label %if.end99

if.else96:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 0, i32 44
  %58 = ptrtoint ptr %io_port to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %31, ptr %io_port, align 8
  %n_io_port = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 0, i32 45
  %59 = ptrtoint ptr %n_io_port to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 16, ptr %n_io_port, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.else96, %if.then93
  %conv100 = zext i8 %4 to i32
  %shl = shl nuw nsw i32 %conv100, 8
  %conv101 = and i32 %6, 255
  %or102 = or i32 %shl, %conv101
  %60 = ptrtoint ptr %host88 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %host88, align 4
  %unique_id = getelementptr inbounds %struct.Scsi_Host, ptr %61, i32 0, i32 23
  %62 = ptrtoint ptr %unique_id to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or102, ptr %unique_id, align 8
  %63 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev87, align 4
  %dev105 = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44
  %buf_dma_handle = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 5
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev105, i32 noundef 2048, ptr noundef %buf_dma_handle, i32 noundef 3264, i32 noundef 0) #14
  %mega_buffer = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 4
  %65 = ptrtoint ptr %mega_buffer to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i, ptr %mega_buffer, align 4
  %tobool108.not = icmp eq ptr %call.i, null
  br i1 %tobool108.not, label %do.end112, label %if.end114

do.end112:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23) #17
  br label %out_host_put

if.end114:                                        ; preds = %if.end99
  %call1.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16632, i32 noundef 3264, i32 noundef 3) #18
  %scb_list = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 49, i32 12, i32 8, i32 0, i32 0, i32 2
  %66 = ptrtoint ptr %scb_list to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call1.i.i.i, ptr %scb_list, align 4
  %tobool117.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool117.not, label %do.end121, label %if.end123

do.end121:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23) #17
  br label %out_free_cmd_buffer

if.end123:                                        ; preds = %if.end114
  %67 = ptrtoint ptr %flag80 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flag80, align 4
  %and125 = and i32 %68, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  %cond = select i1 %tobool126.not, ptr @megaraid_isr_iomapped, ptr @megaraid_isr_memmapped
  %call.i513 = call i32 @request_threaded_irq(i32 noundef %33, ptr noundef nonnull %cond, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %hostdata) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i513)
  %tobool128.not = icmp eq i32 %call.i513, 0
  br i1 %tobool128.not, label %if.end134, label %do.end132

do.end132:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %33) #17
  br label %out_free_scb_list

if.end134:                                        ; preds = %if.end123
  %call135 = call fastcc i32 @mega_setup_mailbox(ptr noundef %hostdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end138, label %if.end134.out_free_irq_crit_edge

if.end134.out_free_irq_crit_edge:                 ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_irq

if.end138:                                        ; preds = %if.end134
  %call139 = call fastcc i32 @mega_query_adapter(ptr noundef %hostdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.end142, label %if.end138.out_free_mbox_crit_edge

if.end138.out_free_mbox_crit_edge:                ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_mbox

if.end142:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_const_cmp2(i16 4369, i16 %25)
  %cmp144 = icmp eq i16 %25, 4369
  call void @__sanitizer_cov_trace_const_cmp2(i16 4369, i16 %23)
  %cmp148 = icmp eq i16 %23, 4369
  %or.cond = select i1 %cmp144, i1 %cmp148, i1 false
  br i1 %or.cond, label %if.then150, label %if.end164

if.then150:                                       ; preds = %if.end142
  %fw_version = getelementptr inbounds %struct.adapter_t, ptr %hostdata, i32 0, i32 21
  %call152 = call i32 @strcmp(ptr noundef %fw_version, ptr noundef nonnull dereferenceable(5) @.str.30) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.then150.do.end161_crit_edge, label %lor.lhs.false

if.then150.do.end161_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end161

lor.lhs.false:                                    ; preds = %if.then150
  %call156 = call i32 @strcmp(ptr noundef %fw_version, ptr noundef nonnull dereferenceable(5) @.str.31) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %lor.lhs.false.do.end161_crit_edge, label %lor.lhs.false.if.end199_crit_edge

lor.lhs.false.if.end199_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end199

lor.lhs.false.do.end161_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end161

do.end161:                                        ; preds = %lor.lhs.false.do.end161_crit_edge, %if.then150.do.end161_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.33) #17
  br label %if.end199

if.end164:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_const_cmp2(i16 4156, i16 %23)
  %cmp166 = icmp eq i16 %23, 4156
  %.off = add i16 %25, -24807
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  %or.cond509 = select i1 %cmp166, i1 %switch, i1 false
  br i1 %or.cond509, label %if.then176, label %if.end164.if.end199_crit_edge

if.end164.if.end199_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end199

if.then176:                                       ; preds = %if.end164
  %fw_version177 = getelementptr inbounds %struct.adapter_t, ptr %hostdata, i32 0, i32 21
  %call179 = call i32 @strcmp(ptr noundef %fw_version177, ptr noundef nonnull dereferenceable(7) @.str.35) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.then176.do.end194_crit_edge, label %lor.lhs.false181

if.then176.do.end194_crit_edge:                   ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end194

lor.lhs.false181:                                 ; preds = %if.then176
  %call184 = call i32 @strcmp(ptr noundef %fw_version177, ptr noundef nonnull dereferenceable(7) @.str.36) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %lor.lhs.false181.do.end194_crit_edge, label %lor.lhs.false186

lor.lhs.false181.do.end194_crit_edge:             ; preds = %lor.lhs.false181
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end194

lor.lhs.false186:                                 ; preds = %lor.lhs.false181
  %call189 = call i32 @strcmp(ptr noundef %fw_version177, ptr noundef nonnull dereferenceable(7) @.str.37) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %lor.lhs.false186.do.end194_crit_edge, label %lor.lhs.false186.if.end199_crit_edge

lor.lhs.false186.if.end199_crit_edge:             ; preds = %lor.lhs.false186
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end199

lor.lhs.false186.do.end194_crit_edge:             ; preds = %lor.lhs.false186
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end194

do.end194:                                        ; preds = %lor.lhs.false186.do.end194_crit_edge, %lor.lhs.false181.do.end194_crit_edge, %if.then176.do.end194_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.39) #17
  %69 = ptrtoint ptr %flag80 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flag80, align 4
  %and197 = and i32 %70, -67108865
  store i32 %and197, ptr %flag80, align 4
  br label %if.end199

if.end199:                                        ; preds = %do.end194, %lor.lhs.false186.if.end199_crit_edge, %if.end164.if.end199_crit_edge, %do.end161, %lor.lhs.false.if.end199_crit_edge
  %call200 = call fastcc i32 @mega_is_bios_enabled(ptr noundef %hostdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.end199.if.end204_crit_edge, label %if.then202

if.end199.if.end204_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end204

if.then202:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #16
  %71 = load i32, ptr @hba_count, align 4
  %arrayidx203 = getelementptr [32 x %struct.mega_hbas], ptr @mega_hbas, i32 0, i32 %71
  %72 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %arrayidx203, align 4
  br label %if.end204

if.end204:                                        ; preds = %if.then202, %if.end199.if.end204_crit_edge
  %73 = load i32, ptr @hba_count, align 4
  %hostdata_addr = getelementptr [32 x %struct.mega_hbas], ptr @mega_hbas, i32 0, i32 %73, i32 1
  %74 = ptrtoint ptr %hostdata_addr to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %hostdata, ptr %hostdata_addr, align 4
  call fastcc void @mega_enum_raid_scsi(ptr noundef %hostdata)
  call fastcc void @mega_get_boot_drv(ptr noundef %hostdata)
  %boot_pdrv_enabled = getelementptr inbounds %struct.adapter_t, ptr %hostdata, i32 0, i32 28
  %75 = ptrtoint ptr %boot_pdrv_enabled to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %boot_pdrv_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool206.not = icmp eq i32 %76, 0
  br i1 %tobool206.not, label %for.cond223.preheader, label %if.then207

for.cond223.preheader:                            ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #16
  %logdrv_chan227 = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 49, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1
  %77 = ptrtoint ptr %logdrv_chan227 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 16843009, ptr %logdrv_chan227, align 1
  %uglygep526 = getelementptr i8, ptr %call68, i32 3668
  %78 = call ptr @memset(ptr %uglygep526, i32 0, i32 5)
  %mega_ch_class = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 49, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 3
  %79 = ptrtoint ptr %mega_ch_class to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mega_ch_class, align 4
  %shl241 = shl i32 %80, 4
  store i32 %shl241, ptr %mega_ch_class, align 4
  br label %if.end242

if.then207:                                       ; preds = %if.end204
  %product_info = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 5, i32 1
  %nchannels = getelementptr inbounds %struct.mega_product_info, ptr %product_info, i32 0, i32 6
  %81 = ptrtoint ptr %nchannels to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %nchannels, align 1
  %conv208 = zext i8 %82 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp209521.not = icmp eq i8 %82, 0
  br i1 %cmp209521.not, label %if.then207.for.cond212.preheader_crit_edge, label %for.body.lr.ph

if.then207.for.cond212.preheader_crit_edge:       ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond212.preheader

for.body.lr.ph:                                   ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #16
  %logdrv_chan = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 49, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1
  %83 = call ptr @memset(ptr %logdrv_chan, i32 0, i32 %conv208)
  br label %for.cond212.preheader

for.cond212.preheader:                            ; preds = %for.body.lr.ph, %if.then207.for.cond212.preheader_crit_edge
  %84 = add nuw nsw i32 %conv208, 3664
  %uglygep = getelementptr i8, ptr %call68, i32 %84
  %85 = ptrtoint ptr %uglygep to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 16843009, ptr %uglygep, align 1
  br label %if.end242

if.end242:                                        ; preds = %for.cond212.preheader, %for.cond223.preheader
  %read_ldidmap = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 49, i32 12, i32 10, i32 2
  %86 = ptrtoint ptr %read_ldidmap to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %read_ldidmap, align 4
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %mbox.i) #14
  %87 = getelementptr inbounds %struct.mbox_out, ptr %mbox.i, i32 0, i32 2
  %88 = getelementptr inbounds i8, ptr %mbox.i, i32 1
  %89 = call ptr @memset(ptr %88, i32 0, i32 14)
  %90 = ptrtoint ptr %mbox.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -92, ptr %mbox.i, align 1
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 42, ptr %87, align 1
  %call.i514 = call fastcc i32 @issue_scb_block(ptr noundef %hostdata, ptr noundef nonnull %mbox.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i514)
  %tobool.not.i = icmp eq i32 %call.i514, 0
  %lnot.ext.i = zext i1 %tobool.not.i to i32
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %mbox.i) #14
  %support_random_del = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 49, i32 12, i32 10, i32 1, i32 1
  %92 = ptrtoint ptr %support_random_del to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %lnot.ext.i, ptr %support_random_del, align 4
  %call244 = call fastcc i32 @mega_init_scb(ptr noundef %hostdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244)
  %tobool245.not = icmp eq i32 %call244, 0
  br i1 %tobool245.not, label %if.end247, label %if.end242.out_free_mbox_crit_edge

if.end242.out_free_mbox_crit_edge:                ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_mbox

if.end247:                                        ; preds = %if.end242
  %pend_cmds = getelementptr inbounds %struct.adapter_t, ptr %hostdata, i32 0, i32 19
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pend_cmds, i32 noundef 4) #14
  %93 = ptrtoint ptr %pend_cmds to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile i32 0, ptr %pend_cmds, align 4
  %quiescent = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 49, i32 12, i32 10, i32 3
  %call.i.i510 = call zeroext i1 @__kasan_check_write(ptr noundef %quiescent, i32 noundef 4) #14
  %94 = ptrtoint ptr %quiescent to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 0, ptr %quiescent, align 4
  %95 = load i32, ptr @hba_count, align 4
  %arrayidx248 = getelementptr [32 x ptr], ptr @hba_soft_state, i32 0, i32 %95
  %96 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %hostdata, ptr %arrayidx248, align 4
  %conv249 = zext i32 %mega_baseport.0 to i64
  %arrayidx250 = getelementptr [32 x %struct.mcontroller], ptr @mcontroller, i32 0, i32 %95
  %97 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %conv249, ptr %arrayidx250, align 8
  %conv252 = trunc i32 %33 to i8
  %irq254 = getelementptr [32 x %struct.mcontroller], ptr @mcontroller, i32 0, i32 %95, i32 1
  %98 = ptrtoint ptr %irq254 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv252, ptr %irq254, align 8
  %numldrv = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 49, i32 12, i32 8, i32 0, i32 1
  %99 = ptrtoint ptr %numldrv to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %numldrv, align 4
  %numldrv256 = getelementptr [32 x %struct.mcontroller], ptr @mcontroller, i32 0, i32 %95, i32 2
  %101 = ptrtoint ptr %numldrv256 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %numldrv256, align 1
  %pcibus = getelementptr [32 x %struct.mcontroller], ptr @mcontroller, i32 0, i32 %95, i32 3
  %102 = ptrtoint ptr %pcibus to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %4, ptr %pcibus, align 2
  %103 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %device, align 4
  %conv259 = trunc i32 %104 to i16
  %pcidev = getelementptr [32 x %struct.mcontroller], ptr @mcontroller, i32 0, i32 %95, i32 4
  %105 = ptrtoint ptr %pcidev to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv259, ptr %pcidev, align 4
  %106 = trunc i32 %6 to i8
  %conv263 = and i8 %106, 7
  %pcifun = getelementptr [32 x %struct.mcontroller], ptr @mcontroller, i32 0, i32 %95, i32 5
  %107 = ptrtoint ptr %pcifun to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv263, ptr %pcifun, align 2
  %pciid = getelementptr [32 x %struct.mcontroller], ptr @mcontroller, i32 0, i32 %95, i32 6
  %108 = ptrtoint ptr %pciid to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 -1, ptr %pciid, align 8
  %109 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %id, align 4
  %conv267 = trunc i32 %110 to i16
  %pcivendor = getelementptr [32 x %struct.mcontroller], ptr @mcontroller, i32 0, i32 %95, i32 7
  %111 = ptrtoint ptr %pcivendor to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %conv267, ptr %pcivendor, align 2
  %112 = lshr i8 %106, 3
  %pcislot = getelementptr [32 x %struct.mcontroller], ptr @mcontroller, i32 0, i32 %95, i32 8
  %113 = ptrtoint ptr %pcislot to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %pcislot, align 4
  %uid = getelementptr [32 x %struct.mcontroller], ptr @mcontroller, i32 0, i32 %95, i32 9
  %114 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %or102, ptr %uid, align 8
  %call287 = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #14
  %has_64bit_addr288 = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 49, i32 12, i32 8, i32 3
  %115 = ptrtoint ptr %has_64bit_addr288 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %has_64bit_addr288, align 4
  %int_mtx = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 49, i32 19
  call void @__mutex_init(ptr noundef %int_mtx, ptr noundef nonnull @.str.42, ptr noundef nonnull @megaraid_probe_one.__key.41) #14
  %int_waitq = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 49, i32 31, i32 0, i32 0, i32 4, i32 3
  %116 = ptrtoint ptr %int_waitq to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %int_waitq, align 4
  %wait.i = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 49, i32 31, i32 0, i32 0, i32 4, i32 6
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.110, ptr noundef nonnull @init_completion.__key) #14
  %117 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 7, ptr %hostdata, align 4
  %118 = ptrtoint ptr %host88 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %host88, align 4
  %this_id294 = getelementptr inbounds %struct.Scsi_Host, ptr %119, i32 0, i32 25
  %120 = ptrtoint ptr %this_id294 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 7, ptr %this_id294, align 8
  %call295 = call fastcc i32 @mega_support_cluster(ptr noundef %hostdata)
  %has_cluster = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 50, i32 0, i32 1, i32 1
  %121 = ptrtoint ptr %has_cluster to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %call295, ptr %has_cluster, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call295)
  %tobool297.not = icmp eq i32 %call295, 0
  br i1 %tobool297.not, label %if.end247.if.end304_crit_edge, label %do.end301

if.end247.if.end304_crit_edge:                    ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end304

do.end301:                                        ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #16
  %122 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %hostdata, align 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %123) #17
  br label %if.end304

if.end304:                                        ; preds = %do.end301, %if.end247.if.end304_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %124 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call68, ptr %driver_data.i.i, align 4
  %125 = load i32, ptr @hba_count, align 4
  %126 = load ptr, ptr @mega_proc_dir_entry, align 4
  call fastcc void @mega_create_proc_entry(i32 noundef %125, ptr noundef %126)
  %call.i515 = call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call68, ptr noundef %dev, ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i515)
  %tobool307.not = icmp eq i32 %call.i515, 0
  br i1 %tobool307.not, label %if.end309, label %if.end304.out_free_mbox_crit_edge

if.end304.out_free_mbox_crit_edge:                ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_mbox

if.end309:                                        ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #16
  call void @scsi_scan_host(ptr noundef nonnull %call68) #14
  %127 = load i32, ptr @hba_count, align 4
  %inc310 = add i32 %127, 1
  store i32 %inc310, ptr @hba_count, align 4
  br label %cleanup330

out_free_mbox:                                    ; preds = %if.end304.out_free_mbox_crit_edge, %if.end242.out_free_mbox_crit_edge, %if.end138.out_free_mbox_crit_edge
  %error.0 = phi i32 [ -19, %if.end138.out_free_mbox_crit_edge ], [ -19, %if.end242.out_free_mbox_crit_edge ], [ %call.i515, %if.end304.out_free_mbox_crit_edge ]
  %128 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev87, align 4
  %dev312 = getelementptr inbounds %struct.pci_dev, ptr %129, i32 0, i32 44
  %una_mbox64 = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 2
  %130 = ptrtoint ptr %una_mbox64 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %una_mbox64, align 4
  %una_mbox64_dma = getelementptr inbounds %struct.Scsi_Host, ptr %call68, i32 1, i32 2, i32 1
  %132 = ptrtoint ptr %una_mbox64_dma to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %una_mbox64_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev312, i32 noundef 74, ptr noundef %131, i32 noundef %133, i32 noundef 0) #14
  br label %out_free_irq

out_free_irq:                                     ; preds = %out_free_mbox, %if.end134.out_free_irq_crit_edge
  %error.1 = phi i32 [ -19, %if.end134.out_free_irq_crit_edge ], [ %error.0, %out_free_mbox ]
  %134 = ptrtoint ptr %host88 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %host88, align 4
  %irq314 = getelementptr inbounds %struct.Scsi_Host, ptr %135, i32 0, i32 47
  %136 = ptrtoint ptr %irq314 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %irq314, align 8
  %call315 = call ptr @free_irq(i32 noundef %137, ptr noundef %hostdata) #14
  br label %out_free_scb_list

out_free_scb_list:                                ; preds = %out_free_irq, %do.end132
  %error.2 = phi i32 [ -19, %do.end132 ], [ %error.1, %out_free_irq ]
  %138 = ptrtoint ptr %scb_list to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %scb_list, align 4
  call void @kfree(ptr noundef %139) #14
  br label %out_free_cmd_buffer

out_free_cmd_buffer:                              ; preds = %out_free_scb_list, %do.end121
  %error.3 = phi i32 [ %error.2, %out_free_scb_list ], [ -19, %do.end121 ]
  %140 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev87, align 4
  %dev318 = getelementptr inbounds %struct.pci_dev, ptr %141, i32 0, i32 44
  %142 = ptrtoint ptr %mega_buffer to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mega_buffer, align 4
  %144 = ptrtoint ptr %buf_dma_handle to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %buf_dma_handle, align 4
  call void @dma_free_attrs(ptr noundef %dev318, i32 noundef 2048, ptr noundef %143, i32 noundef %145, i32 noundef 0) #14
  br label %out_host_put

out_host_put:                                     ; preds = %out_free_cmd_buffer, %do.end112
  %error.4 = phi i32 [ %error.3, %out_free_cmd_buffer ], [ -19, %do.end112 ]
  call void @scsi_host_put(ptr noundef nonnull %call68) #14
  br label %out_iounmap

out_iounmap:                                      ; preds = %out_host_put, %if.end67.out_iounmap_crit_edge
  %and321.pre-phi = phi i32 [ %.pre, %if.end67.out_iounmap_crit_edge ], [ %and76, %out_host_put ]
  %error.5 = phi i32 [ -19, %if.end67.out_iounmap_crit_edge ], [ %error.4, %out_host_put ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and321.pre-phi)
  %tobool322.not = icmp eq i32 %and321.pre-phi, 0
  br i1 %tobool322.not, label %out_iounmap.out_release_region_crit_edge, label %if.then323

out_iounmap.out_release_region_crit_edge:         ; preds = %out_iounmap
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_release_region

if.then323:                                       ; preds = %out_iounmap
  call void @__sanitizer_cov_trace_pc() #16
  %146 = inttoptr i32 %mega_baseport.0 to ptr
  call void @iounmap(ptr noundef %146) #14
  br label %out_release_region

out_release_region:                               ; preds = %if.then323, %out_iounmap.out_release_region_crit_edge, %do.end58
  %mega_baseport.1 = phi i32 [ %mega_baseport.0, %if.then323 ], [ %mega_baseport.0, %out_iounmap.out_release_region_crit_edge ], [ 0, %do.end58 ]
  %flag.3 = phi i32 [ %flag.2, %if.then323 ], [ %flag.2, %out_iounmap.out_release_region_crit_edge ], [ %or44, %do.end58 ]
  %error.6 = phi i32 [ %error.5, %if.then323 ], [ %error.5, %out_iounmap.out_release_region_crit_edge ], [ -19, %do.end58 ]
  %and325 = and i32 %flag.3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and325)
  %tobool326.not = icmp eq i32 %and325, 0
  br i1 %tobool326.not, label %if.else328, label %if.then327

if.then327:                                       ; preds = %out_release_region
  call void @__sanitizer_cov_trace_pc() #16
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %31, i32 noundef 128) #14
  br label %out_disable_device

if.else328:                                       ; preds = %out_release_region
  call void @__sanitizer_cov_trace_pc() #16
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %mega_baseport.1, i32 noundef 16) #14
  br label %out_disable_device

out_disable_device:                               ; preds = %if.else328, %if.then327, %if.else61.out_disable_device_crit_edge, %do.end50, %cleanup.thread
  %error.7 = phi i32 [ %error.6, %if.then327 ], [ %error.6, %if.else328 ], [ -19, %do.end50 ], [ -19, %if.else61.out_disable_device_crit_edge ], [ -19, %cleanup.thread ]
  call void @pci_disable_device(ptr noundef %pdev) #14
  br label %cleanup330

cleanup330:                                       ; preds = %out_disable_device, %if.end309, %if.end.cleanup330_crit_edge, %entry.cleanup330_crit_edge
  %retval.0 = phi i32 [ 0, %if.end309 ], [ -19, %entry.cleanup330_crit_edge ], [ -19, %if.end.cleanup330_crit_edge ], [ %error.7, %out_disable_device ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @megaraid_remove_one(ptr noundef %pdev) #5 align 64 {
entry:
  %buf = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf) #14
  %2 = call ptr @memset(ptr %buf, i32 0, i32 12)
  tail call void @scsi_remove_host(ptr noundef %1) #14
  tail call fastcc void @__megaraid_shutdown(ptr noundef %hostdata)
  %flag = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flag, align 4
  %and = and i32 %4, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %base3 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 1
  %5 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base3, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = inttoptr i32 %6 to ptr
  tail call void @iounmap(ptr noundef %7) #14
  %host1 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %8 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host1, align 4
  %base2 = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 43
  %10 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base2, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %11, i32 noundef 128) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %6, i32 noundef 16) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %max_cmds.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 12, i32 8, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %max_cmds.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %max_cmds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp41.not.i = icmp eq i8 %13, 0
  br i1 %cmp41.not.i, label %if.end.mega_free_sgl.exit_crit_edge, label %for.body.lr.ph.i

if.end.mega_free_sgl.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_free_sgl.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %scb_list.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 12, i32 8, i32 0, i32 0, i32 2
  %dev.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 3
  %sglen.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.042.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %scb_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %scb_list.i, align 4
  %sgl64.i = getelementptr %struct.scb_t, ptr %15, i32 %i.042.i, i32 10
  %16 = ptrtoint ptr %sgl64.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sgl64.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %sglen.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sglen.i, align 4
  %conv3.i = zext i8 %21 to i32
  %mul.i = mul nuw nsw i32 %conv3.i, 12
  %sgl_dma_addr.i = getelementptr %struct.scb_t, ptr %15, i32 %i.042.i, i32 11
  %22 = ptrtoint ptr %sgl_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sgl_dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2.i, i32 noundef %mul.i, ptr noundef nonnull %17, i32 noundef %23, i32 noundef 0) #14
  %24 = ptrtoint ptr %sgl64.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %sgl64.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %pthru.i = getelementptr %struct.scb_t, ptr %15, i32 %i.042.i, i32 12
  %25 = ptrtoint ptr %pthru.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pthru.i, align 4
  %tobool6.not.i = icmp eq ptr %26, null
  br i1 %tobool6.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then7.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %pthru_dma_addr.i = getelementptr %struct.scb_t, ptr %15, i32 %i.042.i, i32 13
  %29 = ptrtoint ptr %pthru_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pthru_dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev9.i, i32 noundef 60, ptr noundef nonnull %26, i32 noundef %30, i32 noundef 0) #14
  %31 = ptrtoint ptr %pthru.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %pthru.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then7.i, %if.end.i.if.end12.i_crit_edge
  %epthru.i = getelementptr %struct.scb_t, ptr %15, i32 %i.042.i, i32 14
  %32 = ptrtoint ptr %epthru.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %epthru.i, align 4
  %tobool13.not.i = icmp eq ptr %33, null
  br i1 %tobool13.not.i, label %if.end12.i.for.inc.i_crit_edge, label %if.then14.i

if.end12.i.for.inc.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %dev16.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %epthru_dma_addr.i = getelementptr %struct.scb_t, ptr %15, i32 %i.042.i, i32 15
  %36 = ptrtoint ptr %epthru_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %epthru_dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev16.i, i32 noundef 68, ptr noundef nonnull %33, i32 noundef %37, i32 noundef 0) #14
  %38 = ptrtoint ptr %epthru.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %epthru.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then14.i, %if.end12.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.042.i, 1
  %39 = ptrtoint ptr %max_cmds.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %max_cmds.i, align 4
  %conv.i = zext i8 %40 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.mega_free_sgl.exit_crit_edge

for.inc.i.mega_free_sgl.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_free_sgl.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

mega_free_sgl.exit:                               ; preds = %for.inc.i.mega_free_sgl.exit_crit_edge, %if.end.mega_free_sgl.exit_crit_edge
  %host5 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %41 = ptrtoint ptr %host5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host5, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %42, i32 0, i32 17
  %43 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %host_no, align 4
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.111, i32 noundef %44)
  %45 = load ptr, ptr @mega_proc_dir_entry, align 4
  %call8 = call i32 @remove_proc_subtree(ptr noundef nonnull %buf, ptr noundef %45) #14
  %dev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 3
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %mega_buffer = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 4
  %48 = ptrtoint ptr %mega_buffer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mega_buffer, align 4
  %buf_dma_handle = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5
  %50 = ptrtoint ptr %buf_dma_handle to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %buf_dma_handle, align 4
  call void @dma_free_attrs(ptr noundef %dev9, i32 noundef 2048, ptr noundef %49, i32 noundef %51, i32 noundef 0) #14
  %scb_list = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 12, i32 8, i32 0, i32 0, i32 2
  %52 = ptrtoint ptr %scb_list to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %scb_list, align 4
  call void @kfree(ptr noundef %53) #14
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %una_mbox64 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 2
  %56 = ptrtoint ptr %una_mbox64 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %una_mbox64, align 4
  %una_mbox64_dma = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 2, i32 1
  %58 = ptrtoint ptr %una_mbox64_dma to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %una_mbox64_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev11, i32 noundef 74, ptr noundef %57, i32 noundef %59, i32 noundef 0) #14
  call void @scsi_host_put(ptr noundef %1) #14
  call void @pci_disable_device(ptr noundef %pdev) #14
  %60 = load i32, ptr @hba_count, align 4
  %dec = add i32 %60, -1
  store i32 %dec, ptr @hba_count, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @megaraid_shutdown(ptr nocapture noundef readonly %pdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  tail call fastcc void @__megaraid_shutdown(ptr noundef %hostdata)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @megaraid_isr_memmapped(i32 noundef %irq, ptr noundef %devp) #5 align 64 {
entry:
  %completed = alloca [46 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 46, ptr nonnull %completed) #14
  %0 = call ptr @memset(ptr %completed, i32 255, i32 46)
  %lock = getelementptr inbounds %struct.adapter_t, ptr %devp, i32 0, i32 34
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %mmio_base = getelementptr inbounds %struct.adapter_t, ptr %devp, i32 0, i32 3
  %1 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio_base, align 4
  %add.ptr99 = getelementptr i8, ptr %2, i32 44
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr99) #14, !srcloc !527
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !528
  call void @__sanitizer_cov_trace_const_cmp4(i32 873594896, i32 %3)
  %cmp9.not100 = icmp eq i32 %3, 873594896
  br i1 %cmp9.not100, label %do.body11.lr.ph, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

do.body11.lr.ph:                                  ; preds = %entry
  %mbox = getelementptr inbounds %struct.adapter_t, ptr %devp, i32 0, i32 7
  %pend_cmds = getelementptr inbounds %struct.adapter_t, ptr %devp, i32 0, i32 19
  %completed_list.i = getelementptr inbounds %struct.adapter_t, ptr %devp, i32 0, i32 12
  %prev.i.i = getelementptr inbounds %struct.adapter_t, ptr %devp, i32 0, i32 12, i32 1
  %quiescent = getelementptr inbounds %struct.adapter_t, ptr %devp, i32 0, i32 33
  br label %do.body11

do.body11:                                        ; preds = %do.cond72.do.body11_crit_edge, %do.body11.lr.ph
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !529
  tail call void @arm_heavy_mb() #14
  %4 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio_base, align 4
  %add.ptr15 = getelementptr i8, ptr %5, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 873594896) #14, !srcloc !530
  %6 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mbox, align 4
  %numstatus94 = getelementptr inbounds %struct.mbox_t, ptr %7, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %numstatus94 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %numstatus94, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp1795 = icmp eq i8 %9, -1
  br i1 %cmp1795, label %do.body11.do.end23_crit_edge, label %do.body11.while.end_crit_edge

do.body11.while.end_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

do.body11.do.end23_crit_edge:                     ; preds = %do.body11
  br label %do.end23

do.end23:                                         ; preds = %do.end23.do.end23_crit_edge, %do.body11.do.end23_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !531
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !532
  %10 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mbox, align 4
  %numstatus = getelementptr inbounds %struct.mbox_t, ptr %11, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %numstatus to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %numstatus, align 1
  %cmp17 = icmp eq i8 %13, -1
  br i1 %cmp17, label %do.end23.do.end23_crit_edge, label %do.end23.while.end_crit_edge

do.end23.while.end_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

do.end23.do.end23_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end23

while.end:                                        ; preds = %do.end23.while.end_crit_edge, %do.body11.while.end_crit_edge
  %.lcssa93 = phi ptr [ %7, %do.body11.while.end_crit_edge ], [ %11, %do.end23.while.end_crit_edge ]
  %.lcssa = phi i8 [ %9, %do.body11.while.end_crit_edge ], [ %13, %do.end23.while.end_crit_edge ]
  %numstatus.le = getelementptr inbounds %struct.mbox_t, ptr %.lcssa93, i32 0, i32 1, i32 1
  %conv16.le = zext i8 %.lcssa to i32
  %14 = ptrtoint ptr %numstatus.le to i32
  call void @__asan_store1_noabort(i32 %14)
  store volatile i8 -1, ptr %numstatus.le, align 1
  %15 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mbox, align 4
  %status33 = getelementptr inbounds %struct.mbox_t, ptr %16, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %status33 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load volatile i8, ptr %status33, align 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pend_cmds, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %pend_cmds, i32 1, i32 3, i32 1) #14
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pend_cmds, ptr %pend_cmds, i32 %conv16.le, ptr elementtype(i32) %pend_cmds) #14, !srcloc !533
  %20 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mbox, align 4
  %completed37 = getelementptr inbounds %struct.mbox_t, ptr %21, i32 0, i32 1, i32 3
  %22 = call ptr @memcpy(ptr %completed, ptr %completed37, i32 %conv16.le)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !534
  tail call void @arm_heavy_mb() #14
  %23 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio_base, align 4
  %add.ptr44 = getelementptr i8, ptr %24, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 33554432) #14, !srcloc !530
  %25 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio_base, align 4
  %add.ptr4997 = getelementptr i8, ptr %26, i32 32
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4997) #14, !srcloc !527
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !535
  %28 = and i32 %27, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not98 = icmp eq i32 %28, 0
  br i1 %tobool.not98, label %while.end.while.end63_crit_edge, label %while.end.do.end58_crit_edge

while.end.do.end58_crit_edge:                     ; preds = %while.end
  br label %do.end58

while.end.while.end63_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end63

do.end58:                                         ; preds = %do.end58.do.end58_crit_edge, %while.end.do.end58_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !536
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !537
  %29 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio_base, align 4
  %add.ptr49 = getelementptr i8, ptr %30, i32 32
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #14, !srcloc !527
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !535
  %32 = and i32 %31, 33554432
  %tobool.not = icmp eq i32 %32, 0
  br i1 %tobool.not, label %do.end58.while.end63_crit_edge, label %do.end58.do.end58_crit_edge

do.end58.do.end58_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end58

do.end58.while.end63_crit_edge:                   ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end63

while.end63:                                      ; preds = %do.end58.while.end63_crit_edge, %while.end.while.end63_crit_edge
  %conv66 = zext i8 %18 to i32
  call fastcc void @mega_cmd_done(ptr noundef %devp, ptr noundef nonnull %completed, i32 noundef %conv16.le, i32 noundef %conv66)
  %33 = ptrtoint ptr %completed_list.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %pos.08.i = load ptr, ptr %completed_list.i, align 4
  %cmp.i.not9.i = icmp eq ptr %pos.08.i, %completed_list.i
  br i1 %cmp.i.not9.i, label %while.end63.mega_rundoneq.exit_crit_edge, label %while.end63.for.body.i_crit_edge

while.end63.for.body.i_crit_edge:                 ; preds = %while.end63
  br label %for.body.i

while.end63.mega_rundoneq.exit_crit_edge:         ; preds = %while.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_rundoneq.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.end63.for.body.i_crit_edge
  %pos.010.i = phi ptr [ %pos.0.i, %for.body.i.for.body.i_crit_edge ], [ %pos.08.i, %while.end63.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %pos.010.i, i32 -232
  tail call void @scsi_done(ptr noundef %add.ptr.i) #14
  %34 = ptrtoint ptr %pos.010.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %pos.0.i = load ptr, ptr %pos.010.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %completed_list.i
  br i1 %cmp.i.not.i, label %for.body.i.mega_rundoneq.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.mega_rundoneq.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_rundoneq.exit

mega_rundoneq.exit:                               ; preds = %for.body.i.mega_rundoneq.exit_crit_edge, %while.end63.mega_rundoneq.exit_crit_edge
  %35 = ptrtoint ptr %completed_list.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %completed_list.i, ptr %completed_list.i, align 4
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %completed_list.i, ptr %prev.i.i, align 4
  %call.i.i92 = tail call zeroext i1 @__kasan_check_read(ptr noundef %quiescent, i32 noundef 4) #14
  %37 = ptrtoint ptr %quiescent to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %quiescent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp68 = icmp eq i32 %38, 0
  br i1 %cmp68, label %if.then70, label %mega_rundoneq.exit.do.cond72_crit_edge

mega_rundoneq.exit.do.cond72_crit_edge:           ; preds = %mega_rundoneq.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond72

if.then70:                                        ; preds = %mega_rundoneq.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @mega_runpendq(ptr noundef %devp)
  br label %do.cond72

do.cond72:                                        ; preds = %if.then70, %mega_rundoneq.exit.do.cond72_crit_edge
  %39 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio_base, align 4
  %add.ptr = getelementptr i8, ptr %40, i32 44
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !527
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !528
  %cmp9.not = icmp eq i32 %41, 873594896
  br i1 %cmp9.not, label %do.cond72.do.body11_crit_edge, label %do.cond72.out_unlock_crit_edge

do.cond72.out_unlock_crit_edge:                   ; preds = %do.cond72
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

do.cond72.do.body11_crit_edge:                    ; preds = %do.cond72
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11

out_unlock:                                       ; preds = %do.cond72.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %tobool75.not.lcssa = phi i32 [ 0, %entry.out_unlock_crit_edge ], [ 1, %do.cond72.out_unlock_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #14
  call void @llvm.lifetime.end.p0(i64 46, ptr nonnull %completed) #14
  ret i32 %tobool75.not.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @megaraid_isr_iomapped(i32 noundef %irq, ptr noundef %devp) #5 align 64 {
entry:
  %completed = alloca [46 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 46, ptr nonnull %completed) #14
  %0 = call ptr @memset(ptr %completed, i32 255, i32 46)
  %lock = getelementptr inbounds %struct.adapter_t, ptr %devp, i32 0, i32 34
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %base = getelementptr inbounds %struct.adapter_t, ptr %devp, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %base, align 4
  %add74 = add i32 %2, 10
  %and.i75 = and i32 %add74, 1048575
  %add.i76 = or i32 %and.i75, -18874368
  %3 = inttoptr i32 %add.i76 to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #14, !srcloc !538
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  %5 = and i8 %4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp877 = icmp eq i8 %5, 0
  br i1 %cmp877, label %entry.out_unlock_crit_edge, label %if.end.lr.ph

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end.lr.ph:                                     ; preds = %entry
  %mbox = getelementptr inbounds %struct.adapter_t, ptr %devp, i32 0, i32 7
  %pend_cmds = getelementptr inbounds %struct.adapter_t, ptr %devp, i32 0, i32 19
  %completed_list.i = getelementptr inbounds %struct.adapter_t, ptr %devp, i32 0, i32 12
  %prev.i.i = getelementptr inbounds %struct.adapter_t, ptr %devp, i32 0, i32 12, i32 1
  %quiescent = getelementptr inbounds %struct.adapter_t, ptr %devp, i32 0, i32 33
  br label %if.end

if.end:                                           ; preds = %do.cond46.if.end_crit_edge, %if.end.lr.ph
  %6 = phi i8 [ %4, %if.end.lr.ph ], [ %39, %do.cond46.if.end_crit_edge ]
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base, align 4
  %add11 = add i32 %8, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !540
  tail call void @arm_heavy_mb() #14
  %and.i66 = and i32 %add11, 1048575
  %add.i67 = or i32 %and.i66, -18874368
  %9 = inttoptr i32 %add.i67 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %6) #14, !srcloc !541
  %10 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mbox, align 4
  %numstatus71 = getelementptr inbounds %struct.mbox_t, ptr %11, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %numstatus71 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %numstatus71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp1372 = icmp eq i8 %13, -1
  br i1 %cmp1372, label %if.end.do.end19_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end.do.end19_crit_edge:                        ; preds = %if.end
  br label %do.end19

do.end19:                                         ; preds = %do.end19.do.end19_crit_edge, %if.end.do.end19_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !542
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !543
  %14 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mbox, align 4
  %numstatus = getelementptr inbounds %struct.mbox_t, ptr %15, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %numstatus to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %numstatus, align 1
  %cmp13 = icmp eq i8 %17, -1
  br i1 %cmp13, label %do.end19.do.end19_crit_edge, label %do.end19.while.end_crit_edge

do.end19.while.end_crit_edge:                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

do.end19.do.end19_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19

while.end:                                        ; preds = %do.end19.while.end_crit_edge, %if.end.while.end_crit_edge
  %.lcssa70 = phi ptr [ %11, %if.end.while.end_crit_edge ], [ %15, %do.end19.while.end_crit_edge ]
  %.lcssa = phi i8 [ %13, %if.end.while.end_crit_edge ], [ %17, %do.end19.while.end_crit_edge ]
  %numstatus.le = getelementptr inbounds %struct.mbox_t, ptr %.lcssa70, i32 0, i32 1, i32 1
  %conv12 = zext i8 %.lcssa to i32
  %18 = ptrtoint ptr %numstatus.le to i32
  call void @__asan_store1_noabort(i32 %18)
  store volatile i8 -1, ptr %numstatus.le, align 1
  %19 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mbox, align 4
  %status29 = getelementptr inbounds %struct.mbox_t, ptr %20, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %status29 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %status29, align 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pend_cmds, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %pend_cmds, i32 1, i32 3, i32 1) #14
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pend_cmds, ptr %pend_cmds, i32 %conv12, ptr elementtype(i32) %pend_cmds) #14, !srcloc !533
  %24 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mbox, align 4
  %completed33 = getelementptr inbounds %struct.mbox_t, ptr %25, i32 0, i32 1, i32 3
  %26 = call ptr @memcpy(ptr %completed, ptr %completed33, i32 %conv12)
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !540
  tail call void @arm_heavy_mb() #14
  %and.i68 = and i32 %28, 1048575
  %add.i69 = or i32 %and.i68, -18874368
  %29 = inttoptr i32 %add.i69 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 8) #14, !srcloc !541
  %conv40 = zext i8 %22 to i32
  call fastcc void @mega_cmd_done(ptr noundef %devp, ptr noundef nonnull %completed, i32 noundef %conv12, i32 noundef %conv40)
  %30 = ptrtoint ptr %completed_list.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %pos.08.i = load ptr, ptr %completed_list.i, align 4
  %cmp.i.not9.i = icmp eq ptr %pos.08.i, %completed_list.i
  br i1 %cmp.i.not9.i, label %while.end.mega_rundoneq.exit_crit_edge, label %while.end.for.body.i_crit_edge

while.end.for.body.i_crit_edge:                   ; preds = %while.end
  br label %for.body.i

while.end.mega_rundoneq.exit_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_rundoneq.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.end.for.body.i_crit_edge
  %pos.010.i = phi ptr [ %pos.0.i, %for.body.i.for.body.i_crit_edge ], [ %pos.08.i, %while.end.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %pos.010.i, i32 -232
  tail call void @scsi_done(ptr noundef %add.ptr.i) #14
  %31 = ptrtoint ptr %pos.010.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %pos.0.i = load ptr, ptr %pos.010.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %completed_list.i
  br i1 %cmp.i.not.i, label %for.body.i.mega_rundoneq.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.mega_rundoneq.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_rundoneq.exit

mega_rundoneq.exit:                               ; preds = %for.body.i.mega_rundoneq.exit_crit_edge, %while.end.mega_rundoneq.exit_crit_edge
  %32 = ptrtoint ptr %completed_list.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %completed_list.i, ptr %completed_list.i, align 4
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %completed_list.i, ptr %prev.i.i, align 4
  %call.i.i65 = tail call zeroext i1 @__kasan_check_read(ptr noundef %quiescent, i32 noundef 4) #14
  %34 = ptrtoint ptr %quiescent to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %quiescent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp42 = icmp eq i32 %35, 0
  br i1 %cmp42, label %if.then44, label %mega_rundoneq.exit.do.cond46_crit_edge

mega_rundoneq.exit.do.cond46_crit_edge:           ; preds = %mega_rundoneq.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond46

if.then44:                                        ; preds = %mega_rundoneq.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @mega_runpendq(ptr noundef %devp)
  br label %do.cond46

do.cond46:                                        ; preds = %if.then44, %mega_rundoneq.exit.do.cond46_crit_edge
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base, align 4
  %add = add i32 %37, 10
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %38 = inttoptr i32 %add.i to ptr
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #14, !srcloc !538
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  %40 = and i8 %39, 64
  %cmp8 = icmp eq i8 %40, 0
  br i1 %cmp8, label %do.cond46.out_unlock_crit_edge, label %do.cond46.if.end_crit_edge

do.cond46.if.end_crit_edge:                       ; preds = %do.cond46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.cond46.out_unlock_crit_edge:                   ; preds = %do.cond46
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

out_unlock:                                       ; preds = %do.cond46.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %tobool.not.lcssa = phi i32 [ 0, %entry.out_unlock_crit_edge ], [ 1, %do.cond46.out_unlock_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #14
  call void @llvm.lifetime.end.p0(i64 46, ptr nonnull %completed) #14
  ret i32 %tobool.not.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mega_setup_mailbox(ptr noundef %adapter) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 9
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %una_mbox64_dma = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 5
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 74, ptr noundef %una_mbox64_dma, i32 noundef 3264, i32 noundef 0) #14
  %una_mbox64 = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 4
  %2 = ptrtoint ptr %una_mbox64 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %una_mbox64, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %mbox = getelementptr inbounds %struct.mbox64_t, ptr %call.i, i32 0, i32 2
  %mbox4 = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 7
  %3 = ptrtoint ptr %mbox to i32
  %add = add i32 %3, 15
  %and = and i32 %add, -16
  %4 = inttoptr i32 %and to ptr
  %5 = ptrtoint ptr %mbox4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %mbox4, align 4
  %sub = add i32 %and, -8
  %6 = inttoptr i32 %sub to ptr
  %mbox64 = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 6
  %7 = ptrtoint ptr %mbox64 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %mbox64, align 4
  %8 = ptrtoint ptr %una_mbox64_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %una_mbox64_dma, align 4
  %add12 = sub i32 8, %3
  %sub.ptr.sub = add i32 %add12, %and
  %add13 = add i32 %sub.ptr.sub, %9
  %mbox_dma = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 8
  %10 = ptrtoint ptr %mbox_dma to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add13, ptr %mbox_dma, align 4
  %flag = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 1
  %11 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flag, align 4
  %and14 = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !544
  tail call void @arm_heavy_mb() #14
  %13 = ptrtoint ptr %mbox_dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mbox_dma, align 4
  %conv = trunc i32 %14 to i8
  %host = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 13
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host, align 4
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io_port, align 8
  %add19 = add i32 %18, 4
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %19 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %conv) #14, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !545
  tail call void @arm_heavy_mb() #14
  %20 = ptrtoint ptr %mbox_dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mbox_dma, align 4
  %shr = lshr i32 %21, 8
  %conv28 = trunc i32 %shr to i8
  %22 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %host, align 4
  %io_port30 = getelementptr inbounds %struct.Scsi_Host, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %io_port30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_port30, align 8
  %add31 = add i32 %25, 5
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %26 = inttoptr i32 %add33 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %conv28) #14, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !546
  tail call void @arm_heavy_mb() #14
  %27 = ptrtoint ptr %mbox_dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mbox_dma, align 4
  %shr39 = lshr i32 %28, 16
  %conv41 = trunc i32 %shr39 to i8
  %29 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %host, align 4
  %io_port43 = getelementptr inbounds %struct.Scsi_Host, ptr %30, i32 0, i32 44
  %31 = ptrtoint ptr %io_port43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %io_port43, align 8
  %add44 = add i32 %32, 6
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %33 = inttoptr i32 %add46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %conv41) #14, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !547
  tail call void @arm_heavy_mb() #14
  %34 = ptrtoint ptr %mbox_dma to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mbox_dma, align 4
  %shr52 = lshr i32 %35, 24
  %conv54 = trunc i32 %shr52 to i8
  %36 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %host, align 4
  %io_port56 = getelementptr inbounds %struct.Scsi_Host, ptr %37, i32 0, i32 44
  %38 = ptrtoint ptr %io_port56 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %io_port56, align 8
  %add57 = add i32 %39, 7
  %and58 = and i32 %add57, 1048575
  %add59 = or i32 %and58, -18874368
  %40 = inttoptr i32 %add59 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 %conv54) #14, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !548
  tail call void @arm_heavy_mb() #14
  %41 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host, align 4
  %io_port65 = getelementptr inbounds %struct.Scsi_Host, ptr %42, i32 0, i32 44
  %43 = ptrtoint ptr %io_port65 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %io_port65, align 8
  %add66 = add i32 %44, 11
  %and67 = and i32 %add66, 1048575
  %add68 = or i32 %and67, -18874368
  %45 = inttoptr i32 %add68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 0) #14, !srcloc !541
  %base = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 2
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !540
  tail call void @arm_heavy_mb() #14
  %and.i = and i32 %47, 1048575
  %add.i = or i32 %and.i, -18874368
  %48 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 8) #14, !srcloc !541
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %base, align 4
  %add72 = add i32 %50, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !540
  tail call void @arm_heavy_mb() #14
  %and.i99 = and i32 %add72, 1048575
  %add.i100 = or i32 %and.i99, -18874368
  %51 = inttoptr i32 %add.i100 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 -64) #14, !srcloc !541
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %do.body ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mega_query_adapter(ptr noundef %adapter) unnamed_addr #5 align 64 {
entry:
  %mbox.i190 = alloca %struct.mbox_out, align 1
  %mbox.i = alloca %struct.mbox_out, align 1
  %mbox = alloca %struct.mbox_out, align 1
  %dma_handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %mbox) #14
  %0 = getelementptr inbounds %struct.mbox_out, ptr %mbox, i32 0, i32 2
  %1 = getelementptr inbounds %struct.mbox_out, ptr %mbox, i32 0, i32 4
  %mega_buffer = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 14
  %2 = ptrtoint ptr %mega_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mega_buffer, align 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 2048)
  %5 = getelementptr inbounds i8, ptr %mbox, i32 1
  %6 = call ptr @memset(ptr %5, i32 0, i32 14)
  %buf_dma_handle = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 15
  %7 = ptrtoint ptr %buf_dma_handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf_dma_handle, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %1, align 1
  %10 = load ptr, ptr %mega_buffer, align 4
  %11 = ptrtoint ptr %mbox to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -95, ptr %mbox, align 1
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 15, ptr %0, align 1
  %arrayidx4 = getelementptr inbounds i8, ptr %mbox, i32 3
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %arrayidx4, align 1
  %call = call fastcc i32 @issue_scb_block(ptr noundef %adapter, ptr noundef nonnull %mbox)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle) #14
  %14 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %dma_handle, align 4, !annotation !526
  %dev = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 9
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev5, i32 noundef 166, ptr noundef nonnull %dma_handle, i32 noundef 3264, i32 noundef 0) #14
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %cleanup121.critedge, label %if.end

if.end:                                           ; preds = %if.then
  %17 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_handle, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %1, align 1
  %20 = ptrtoint ptr %mbox to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 4, ptr %mbox, align 1
  %call9 = call fastcc i32 @issue_scb_block(ptr noundef %adapter, ptr noundef nonnull %mbox)
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %call.i, align 1
  %max_commands1.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 16, i32 5
  %23 = ptrtoint ptr %max_commands1.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %max_commands1.i, align 1
  %rebuild_rate.i = getelementptr inbounds %struct.mega_adp_info, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %rebuild_rate.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rebuild_rate.i, align 1
  %rebuild_rate3.i = getelementptr inbounds %struct.mega_inquiry3, ptr %10, i32 0, i32 3
  %26 = ptrtoint ptr %rebuild_rate3.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %rebuild_rate3.i, align 1
  %nchannels.i = getelementptr inbounds %struct.mega_adp_info, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %nchannels.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %nchannels.i, align 1
  %nchannels5.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 16, i32 6
  %29 = ptrtoint ptr %nchannels5.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %nchannels5.i, align 1
  %arrayidx.i = getelementptr %struct.mega_adp_info, ptr %call.i, i32 0, i32 4, i32 0
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i, align 1
  %arrayidx8.i = getelementptr %struct.adapter_t, ptr %adapter, i32 0, i32 16, i32 2
  %32 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx8.i, align 1
  %arrayidx10.i = getelementptr %struct.mega_adp_info, ptr %call.i, i32 0, i32 9, i32 0
  %33 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx10.i, align 1
  %arrayidx12.i = getelementptr %struct.adapter_t, ptr %adapter, i32 0, i32 16, i32 3
  %35 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx12.i, align 1
  %arrayidx.1.i = getelementptr %struct.mega_adp_info, ptr %call.i, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx8.1.i = getelementptr %struct.adapter_t, ptr %adapter, i32 0, i32 16, i32 2, i32 1
  %38 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx8.1.i, align 1
  %arrayidx10.1.i = getelementptr %struct.mega_adp_info, ptr %call.i, i32 0, i32 9, i32 1
  %39 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx10.1.i, align 1
  %arrayidx12.1.i = getelementptr %struct.adapter_t, ptr %adapter, i32 0, i32 16, i32 3, i32 1
  %41 = ptrtoint ptr %arrayidx12.1.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx12.1.i, align 1
  %arrayidx.2.i = getelementptr %struct.mega_adp_info, ptr %call.i, i32 0, i32 4, i32 2
  %42 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.2.i, align 1
  %arrayidx8.2.i = getelementptr %struct.adapter_t, ptr %adapter, i32 0, i32 16, i32 2, i32 2
  %44 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx8.2.i, align 1
  %arrayidx10.2.i = getelementptr %struct.mega_adp_info, ptr %call.i, i32 0, i32 9, i32 2
  %45 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx10.2.i, align 1
  %arrayidx12.2.i = getelementptr %struct.adapter_t, ptr %adapter, i32 0, i32 16, i32 3, i32 2
  %47 = ptrtoint ptr %arrayidx12.2.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx12.2.i, align 1
  %arrayidx.3.i = getelementptr %struct.mega_adp_info, ptr %call.i, i32 0, i32 4, i32 3
  %48 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.3.i, align 1
  %arrayidx8.3.i = getelementptr %struct.adapter_t, ptr %adapter, i32 0, i32 16, i32 2, i32 3
  %50 = ptrtoint ptr %arrayidx8.3.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx8.3.i, align 1
  %arrayidx10.3.i = getelementptr %struct.mega_adp_info, ptr %call.i, i32 0, i32 9, i32 3
  %51 = ptrtoint ptr %arrayidx10.3.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx10.3.i, align 1
  %arrayidx12.3.i = getelementptr %struct.adapter_t, ptr %adapter, i32 0, i32 16, i32 3, i32 3
  %53 = ptrtoint ptr %arrayidx12.3.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx12.3.i, align 1
  %cache_flush_interval.i = getelementptr inbounds %struct.mega_adp_info, ptr %call.i, i32 0, i32 8
  %54 = ptrtoint ptr %cache_flush_interval.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %cache_flush_interval.i, align 1
  %cache_flush_interval14.i = getelementptr inbounds %struct.mega_inquiry3, ptr %10, i32 0, i32 4
  %56 = ptrtoint ptr %cache_flush_interval14.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %cache_flush_interval14.i, align 1
  %dram_size.i = getelementptr inbounds %struct.mega_adp_info, ptr %call.i, i32 0, i32 7
  %57 = ptrtoint ptr %dram_size.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %dram_size.i, align 1
  %conv.i = zext i8 %58 to i16
  %dram_size16.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 16, i32 10
  %59 = ptrtoint ptr %dram_size16.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 %conv.i, ptr %dram_size16.i, align 1
  %logdrv_info.i = getelementptr inbounds %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1
  %60 = ptrtoint ptr %logdrv_info.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %logdrv_info.i, align 1
  %num_ldrv17.i = getelementptr inbounds %struct.mega_inquiry3, ptr %10, i32 0, i32 8
  %62 = ptrtoint ptr %num_ldrv17.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %num_ldrv17.i, align 1
  %arrayidx23.i = getelementptr %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1, i32 2, i32 0
  %63 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %arrayidx23.i, align 1
  %arrayidx25.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 11, i32 0
  %65 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %64, ptr %arrayidx25.i, align 1
  %arrayidx27.i = getelementptr %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1, i32 3, i32 0
  %66 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx27.i, align 1
  %arrayidx29.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 12, i32 0
  %68 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %arrayidx29.i, align 1
  %arrayidx31.i = getelementptr %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1, i32 4, i32 0
  %69 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx31.i, align 1
  %arrayidx33.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 13, i32 0
  %71 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %arrayidx33.i, align 1
  %arrayidx23.1.i = getelementptr %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1, i32 2, i32 1
  %72 = ptrtoint ptr %arrayidx23.1.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %arrayidx23.1.i, align 1
  %arrayidx25.1.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 11, i32 1
  %74 = ptrtoint ptr %arrayidx25.1.i to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %73, ptr %arrayidx25.1.i, align 1
  %arrayidx27.1.i = getelementptr %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1, i32 3, i32 1
  %75 = ptrtoint ptr %arrayidx27.1.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx27.1.i, align 1
  %arrayidx29.1.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 12, i32 1
  %77 = ptrtoint ptr %arrayidx29.1.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx29.1.i, align 1
  %arrayidx31.1.i = getelementptr %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1, i32 4, i32 1
  %78 = ptrtoint ptr %arrayidx31.1.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx31.1.i, align 1
  %arrayidx33.1.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 13, i32 1
  %80 = ptrtoint ptr %arrayidx33.1.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx33.1.i, align 1
  %arrayidx23.2.i = getelementptr %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1, i32 2, i32 2
  %81 = ptrtoint ptr %arrayidx23.2.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %arrayidx23.2.i, align 1
  %arrayidx25.2.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 11, i32 2
  %83 = ptrtoint ptr %arrayidx25.2.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %82, ptr %arrayidx25.2.i, align 1
  %arrayidx27.2.i = getelementptr %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1, i32 3, i32 2
  %84 = ptrtoint ptr %arrayidx27.2.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx27.2.i, align 1
  %arrayidx29.2.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 12, i32 2
  %86 = ptrtoint ptr %arrayidx29.2.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %arrayidx29.2.i, align 1
  %arrayidx31.2.i = getelementptr %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1, i32 4, i32 2
  %87 = ptrtoint ptr %arrayidx31.2.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx31.2.i, align 1
  %arrayidx33.2.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 13, i32 2
  %89 = ptrtoint ptr %arrayidx33.2.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %arrayidx33.2.i, align 1
  %arrayidx23.3.i = getelementptr %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1, i32 2, i32 3
  %90 = ptrtoint ptr %arrayidx23.3.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %arrayidx23.3.i, align 1
  %arrayidx25.3.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 11, i32 3
  %92 = ptrtoint ptr %arrayidx25.3.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %91, ptr %arrayidx25.3.i, align 1
  %arrayidx27.3.i = getelementptr %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1, i32 3, i32 3
  %93 = ptrtoint ptr %arrayidx27.3.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx27.3.i, align 1
  %arrayidx29.3.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 12, i32 3
  %95 = ptrtoint ptr %arrayidx29.3.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %arrayidx29.3.i, align 1
  %arrayidx31.3.i = getelementptr %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1, i32 4, i32 3
  %96 = ptrtoint ptr %arrayidx31.3.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx31.3.i, align 1
  %arrayidx33.3.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 13, i32 3
  %98 = ptrtoint ptr %arrayidx33.3.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %arrayidx33.3.i, align 1
  %arrayidx23.4.i = getelementptr %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1, i32 2, i32 4
  %99 = ptrtoint ptr %arrayidx23.4.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %arrayidx23.4.i, align 1
  %arrayidx25.4.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 11, i32 4
  %101 = ptrtoint ptr %arrayidx25.4.i to i32
  call void @__asan_storeN_noabort(i32 %101, i32 4)
  store i32 %100, ptr %arrayidx25.4.i, align 1
  %arrayidx27.4.i = getelementptr %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1, i32 3, i32 4
  %102 = ptrtoint ptr %arrayidx27.4.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx27.4.i, align 1
  %arrayidx29.4.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 12, i32 4
  %104 = ptrtoint ptr %arrayidx29.4.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %arrayidx29.4.i, align 1
  %arrayidx31.4.i = getelementptr %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1, i32 4, i32 4
  %105 = ptrtoint ptr %arrayidx31.4.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx31.4.i, align 1
  %arrayidx33.4.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 13, i32 4
  %107 = ptrtoint ptr %arrayidx33.4.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %arrayidx33.4.i, align 1
  %arrayidx23.5.i = getelementptr %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1, i32 2, i32 5
  %108 = ptrtoint ptr %arrayidx23.5.i to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %arrayidx23.5.i, align 1
  %arrayidx25.5.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 11, i32 5
  %110 = ptrtoint ptr %arrayidx25.5.i to i32
  call void @__asan_storeN_noabort(i32 %110, i32 4)
  store i32 %109, ptr %arrayidx25.5.i, align 1
  %arrayidx27.5.i = getelementptr %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1, i32 3, i32 5
  %111 = ptrtoint ptr %arrayidx27.5.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx27.5.i, align 1
  %arrayidx29.5.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 12, i32 5
  %113 = ptrtoint ptr %arrayidx29.5.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %arrayidx29.5.i, align 1
  %arrayidx31.5.i = getelementptr %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1, i32 4, i32 5
  %114 = ptrtoint ptr %arrayidx31.5.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx31.5.i, align 1
  %arrayidx33.5.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 13, i32 5
  %116 = ptrtoint ptr %arrayidx33.5.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %arrayidx33.5.i, align 1
  %arrayidx23.6.i = getelementptr %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1, i32 2, i32 6
  %117 = ptrtoint ptr %arrayidx23.6.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %arrayidx23.6.i, align 1
  %arrayidx25.6.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 11, i32 6
  %119 = ptrtoint ptr %arrayidx25.6.i to i32
  call void @__asan_storeN_noabort(i32 %119, i32 4)
  store i32 %118, ptr %arrayidx25.6.i, align 1
  %arrayidx27.6.i = getelementptr %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1, i32 3, i32 6
  %120 = ptrtoint ptr %arrayidx27.6.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx27.6.i, align 1
  %arrayidx29.6.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 12, i32 6
  %122 = ptrtoint ptr %arrayidx29.6.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %arrayidx29.6.i, align 1
  %arrayidx31.6.i = getelementptr %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1, i32 4, i32 6
  %123 = ptrtoint ptr %arrayidx31.6.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx31.6.i, align 1
  %arrayidx33.6.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 13, i32 6
  %125 = ptrtoint ptr %arrayidx33.6.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %arrayidx33.6.i, align 1
  %arrayidx23.7.i = getelementptr %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1, i32 2, i32 7
  %126 = ptrtoint ptr %arrayidx23.7.i to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %127 = load i32, ptr %arrayidx23.7.i, align 1
  %arrayidx25.7.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 11, i32 7
  %128 = ptrtoint ptr %arrayidx25.7.i to i32
  call void @__asan_storeN_noabort(i32 %128, i32 4)
  store i32 %127, ptr %arrayidx25.7.i, align 1
  %arrayidx27.7.i = getelementptr %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1, i32 3, i32 7
  %129 = ptrtoint ptr %arrayidx27.7.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx27.7.i, align 1
  %arrayidx29.7.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 12, i32 7
  %131 = ptrtoint ptr %arrayidx29.7.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %arrayidx29.7.i, align 1
  %arrayidx31.7.i = getelementptr %struct.mraid_inquiry, ptr %call.i, i32 0, i32 1, i32 4, i32 7
  %132 = ptrtoint ptr %arrayidx31.7.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx31.7.i, align 1
  %arrayidx33.7.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 13, i32 7
  %134 = ptrtoint ptr %arrayidx33.7.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %arrayidx33.7.i, align 1
  %pdrv_info.i = getelementptr inbounds %struct.mraid_inquiry, ptr %call.i, i32 0, i32 2
  br label %for.body40.i

for.body40.i:                                     ; preds = %for.body40.i.for.body40.i_crit_edge, %if.end
  %i.287.i = phi i32 [ 0, %if.end ], [ %inc45.i, %for.body40.i.for.body40.i_crit_edge ]
  %arrayidx41.i = getelementptr [75 x i8], ptr %pdrv_info.i, i32 0, i32 %i.287.i
  %135 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx41.i, align 1
  %arrayidx43.i = getelementptr %struct.mega_inquiry3, ptr %10, i32 0, i32 14, i32 %i.287.i
  %137 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %arrayidx43.i, align 1
  %inc45.i = add nuw nsw i32 %i.287.i, 1
  %exitcond.not.i = icmp eq i32 %inc45.i, 75
  br i1 %exitcond.not.i, label %mega_8_to_40ld.exit, label %for.body40.i.for.body40.i_crit_edge

for.body40.i.for.body40.i_crit_edge:              ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body40.i

mega_8_to_40ld.exit:                              ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #16
  %138 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %139, i32 0, i32 44
  %140 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %dma_handle, align 4
  call void @dma_free_attrs(ptr noundef %dev11, i32 noundef 166, ptr noundef %call.i, i32 noundef %141, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle) #14
  br label %if.end29

if.else:                                          ; preds = %entry
  %flag = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 1
  %142 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %flag, align 4
  %or = or i32 %143, 134217728
  store i32 %or, ptr %flag, align 4
  %dev14 = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 9
  %144 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev14, align 4
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %145, i32 0, i32 44
  %product_info16 = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 16
  %call.i188 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %product_info16) #14
  br i1 %call.i188, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.else
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !549

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev15) #14
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %145, i32 0, i32 44, i32 3
  %146 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %147, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %148 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev15, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %149, %if.end.i.i ], [ %147, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.95, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.96, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #14
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %dev15, ptr noundef %product_info16, i32 noundef 1024) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %150 = load ptr, ptr @mem_map, align 4
  %151 = ptrtoint ptr %product_info16 to i32
  %sub.i = add i32 %151, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %150, i32 %shr.i
  %and.i = and i32 %151, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev15, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 1024, i32 noundef 2, i32 noundef 0) #14
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %152 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %152, i32 4)
  store i32 %retval.0.i, ptr %1, align 1
  %153 = ptrtoint ptr %mbox to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 -95, ptr %mbox, align 1
  %154 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 14, ptr %0, align 1
  %call21 = call fastcc i32 @issue_scb_block(ptr noundef %adapter, ptr noundef nonnull %mbox)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %dma_map_single_attrs.exit.if.end26_crit_edge, label %do.end

dma_map_single_attrs.exit.if.end26_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

do.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #16
  %155 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev14, align 4
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %156, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev25, ptr noundef nonnull @.str.84, i32 noundef %call21) #17
  br label %if.end26

if.end26:                                         ; preds = %do.end, %dma_map_single_attrs.exit.if.end26_crit_edge
  %157 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev14, align 4
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %158, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev28, i32 noundef %retval.0.i, i32 noundef 1024, i32 noundef 2, i32 noundef 0) #14
  br label %if.end29

if.end29:                                         ; preds = %if.end26, %mega_8_to_40ld.exit
  %nchannels = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 16, i32 6
  %159 = ptrtoint ptr %nchannels to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %nchannels, align 1
  %conv = zext i8 %160 to i32
  %sub = add nuw nsw i32 %conv, 3
  %host = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 13
  %161 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %host, align 4
  %max_channel = getelementptr inbounds %struct.Scsi_Host, ptr %162, i32 0, i32 20
  %163 = ptrtoint ptr %max_channel to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %sub, ptr %max_channel, align 8
  %164 = load ptr, ptr %host, align 4
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %164, i32 0, i32 21
  %165 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 16, ptr %max_id, align 4
  %166 = load ptr, ptr %host, align 4
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %166, i32 0, i32 22
  %167 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 7, ptr %max_lun, align 8
  %168 = load i32, ptr @max_cmd_per_lun, align 4
  %conv33 = trunc i32 %168 to i16
  %169 = load ptr, ptr %host, align 4
  %cmd_per_lun = getelementptr inbounds %struct.Scsi_Host, ptr %169, i32 0, i32 27
  %170 = ptrtoint ptr %cmd_per_lun to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %conv33, ptr %cmd_per_lun, align 8
  %num_ldrv = getelementptr inbounds %struct.mega_inquiry3, ptr %10, i32 0, i32 8
  %171 = ptrtoint ptr %num_ldrv to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %num_ldrv, align 1
  %numldrv = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 20
  %173 = ptrtoint ptr %numldrv to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %172, ptr %numldrv, align 4
  %max_commands = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 16, i32 5
  %174 = ptrtoint ptr %max_commands to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %max_commands, align 4
  %max_cmds = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 17
  %176 = call i8 @llvm.umin.i8(i8 %175, i8 126)
  %177 = ptrtoint ptr %max_cmds to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %max_cmds, align 4
  %conv44 = zext i8 %176 to i32
  %sub45 = add nsw i32 %conv44, -1
  %178 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %host, align 4
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %179, i32 0, i32 26
  %180 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %sub45, ptr %can_queue, align 4
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %mbox.i) #14
  %181 = getelementptr inbounds %struct.mbox_out, ptr %mbox.i, i32 0, i32 2
  %182 = getelementptr inbounds %struct.mbox_out, ptr %mbox.i, i32 0, i32 4
  %183 = getelementptr inbounds i8, ptr %mbox.i, i32 1
  %184 = call ptr @memset(ptr %183, i32 0, i32 14)
  %185 = ptrtoint ptr %mega_buffer to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %mega_buffer, align 4
  %187 = call ptr @memset(ptr %186, i32 0, i32 2048)
  %188 = ptrtoint ptr %buf_dma_handle to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %buf_dma_handle, align 4
  %190 = ptrtoint ptr %182 to i32
  call void @__asan_storeN_noabort(i32 %190, i32 4)
  store i32 %189, ptr %182, align 1
  %191 = ptrtoint ptr %mbox.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 -92, ptr %mbox.i, align 1
  %192 = ptrtoint ptr %181 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 1, ptr %181, align 1
  %call.i189 = call fastcc i32 @issue_scb_block(ptr noundef %adapter, ptr noundef nonnull %mbox.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %tobool.not.i = icmp eq i32 %call.i189, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end29.mega_get_max_sgl.exit_crit_edge

if.end29.mega_get_max_sgl.exit_crit_edge:         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_get_max_sgl.exit

if.else.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %193 = ptrtoint ptr %mega_buffer to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %mega_buffer, align 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %194, align 1
  %197 = call i8 @llvm.umin.i8(i8 %196, i8 64) #14
  br label %mega_get_max_sgl.exit

mega_get_max_sgl.exit:                            ; preds = %if.else.i, %if.end29.mega_get_max_sgl.exit_crit_edge
  %.sink.i = phi i8 [ %197, %if.else.i ], [ 26, %if.end29.mega_get_max_sgl.exit_crit_edge ]
  %198 = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 37
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %.sink.i, ptr %198, align 4
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %mbox.i) #14
  %conv47 = zext i8 %.sink.i to i16
  %200 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %host, align 4
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %201, i32 0, i32 28
  %202 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %conv47, ptr %sg_tablesize, align 2
  %subsysvid = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 16, i32 12
  %203 = ptrtoint ptr %subsysvid to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %subsysvid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4156, i16 %204)
  %cmp51 = icmp eq i16 %204, 4156
  %fw_version = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 21
  %fw_version55 = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 16, i32 2
  br i1 %cmp51, label %if.then53, label %if.else84

if.then53:                                        ; preds = %mega_get_max_sgl.exit
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx56 = getelementptr %struct.adapter_t, ptr %adapter, i32 0, i32 16, i32 2, i32 2
  %205 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %arrayidx56, align 2
  %conv57 = zext i8 %206 to i32
  %arrayidx60 = getelementptr %struct.adapter_t, ptr %adapter, i32 0, i32 16, i32 2, i32 1
  %207 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx60, align 1
  %209 = and i8 %208, 15
  %and = zext i8 %209 to i32
  %210 = ptrtoint ptr %fw_version55 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %fw_version55, align 4
  %212 = and i8 %211, 15
  %and66 = zext i8 %212 to i32
  %call67 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 7, ptr noundef nonnull @.str.86, i32 noundef %conv57, i32 noundef 0, i32 noundef %and, i32 noundef 0, i32 noundef %and66)
  %bios_version = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 22
  %bios_version70 = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 16, i32 3
  %arrayidx71 = getelementptr %struct.adapter_t, ptr %adapter, i32 0, i32 16, i32 3, i32 2
  %213 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx71, align 2
  %conv72 = zext i8 %214 to i32
  %arrayidx75 = getelementptr %struct.adapter_t, ptr %adapter, i32 0, i32 16, i32 3, i32 1
  %215 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx75, align 1
  %217 = and i8 %216, 15
  %and77 = zext i8 %217 to i32
  %218 = ptrtoint ptr %bios_version70 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %bios_version70, align 4
  %220 = and i8 %219, 15
  %and82 = zext i8 %220 to i32
  %call83 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bios_version, i32 noundef 7, ptr noundef nonnull @.str.86, i32 noundef %conv72, i32 noundef 0, i32 noundef %and77, i32 noundef 0, i32 noundef %and82)
  br label %do.end102

if.else84:                                        ; preds = %mega_get_max_sgl.exit
  call void @__sanitizer_cov_trace_pc() #16
  %221 = ptrtoint ptr %fw_version55 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %fw_version55, align 4
  %223 = ptrtoint ptr %fw_version to i32
  call void @__asan_storeN_noabort(i32 %223, i32 4)
  store i32 %222, ptr %fw_version, align 1
  %arrayidx91 = getelementptr %struct.adapter_t, ptr %adapter, i32 0, i32 21, i32 4
  %224 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 0, ptr %arrayidx91, align 1
  %bios_version92 = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 22
  %bios_version95 = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 16, i32 3
  %225 = ptrtoint ptr %bios_version95 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %bios_version95, align 4
  %227 = ptrtoint ptr %bios_version92 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %bios_version92, align 4
  %arrayidx98 = getelementptr %struct.adapter_t, ptr %adapter, i32 0, i32 22, i32 4
  %228 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 0, ptr %arrayidx98, align 4
  br label %do.end102

do.end102:                                        ; preds = %if.else84, %if.then53
  %dev103 = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 9
  %229 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dev103, align 4
  %dev104 = getelementptr inbounds %struct.pci_dev, ptr %230, i32 0, i32 44
  %fw_version105 = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 21
  %bios_version107 = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 22
  %231 = ptrtoint ptr %numldrv to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %numldrv, align 4
  %conv110 = zext i8 %232 to i32
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev104, ptr noundef nonnull @.str.88, ptr noundef %fw_version105, ptr noundef %bios_version107, i32 noundef %conv110) #17
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %mbox.i190) #14
  %233 = getelementptr inbounds %struct.mbox_out, ptr %mbox.i190, i32 0, i32 2
  %234 = getelementptr inbounds i8, ptr %mbox.i190, i32 1
  %235 = call ptr @memset(ptr %234, i32 0, i32 14)
  %236 = ptrtoint ptr %mbox.i190 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 -92, ptr %mbox.i190, align 1
  %237 = ptrtoint ptr %233 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 22, ptr %233, align 1
  %call.i191 = call fastcc i32 @issue_scb_block(ptr noundef %adapter, ptr noundef nonnull %mbox.i190) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %tobool.not.i192 = icmp eq i32 %call.i191, 0
  %lnot.ext.i = zext i1 %tobool.not.i192 to i32
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %mbox.i190) #14
  %support_ext_cdb = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 25
  %238 = ptrtoint ptr %support_ext_cdb to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %lnot.ext.i, ptr %support_ext_cdb, align 4
  br i1 %tobool.not.i192, label %do.end117, label %do.end102.cleanup121_crit_edge

do.end102.cleanup121_crit_edge:                   ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup121

do.end117:                                        ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #16
  %239 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dev103, align 4
  %dev119 = getelementptr inbounds %struct.pci_dev, ptr %240, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev119, ptr noundef nonnull @.str.91) #17
  br label %cleanup121

cleanup121.critedge:                              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle) #14
  br label %cleanup121

cleanup121:                                       ; preds = %cleanup121.critedge, %do.end117, %do.end102.cleanup121_crit_edge
  %retval.1 = phi i32 [ -1, %cleanup121.critedge ], [ 0, %do.end117 ], [ 0, %do.end102.cleanup121_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %mbox) #14
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mega_is_bios_enabled(ptr nocapture noundef readonly %adapter) unnamed_addr #5 align 64 {
entry:
  %mbox = alloca %struct.mbox_out, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %mbox) #14
  %0 = getelementptr inbounds %struct.mbox_out, ptr %mbox, i32 0, i32 2
  %1 = getelementptr inbounds %struct.mbox_out, ptr %mbox, i32 0, i32 4
  %2 = getelementptr inbounds i8, ptr %mbox, i32 1
  %3 = call ptr @memset(ptr %2, i32 0, i32 14)
  %mega_buffer = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 14
  %4 = ptrtoint ptr %mega_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mega_buffer, align 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 2048)
  %buf_dma_handle = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 15
  %7 = ptrtoint ptr %buf_dma_handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf_dma_handle, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %1, align 1
  %10 = ptrtoint ptr %mbox to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 98, ptr %mbox, align 1
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %0, align 1
  %call = call fastcc i32 @issue_scb_block(ptr noundef %adapter, ptr noundef nonnull %mbox)
  %12 = ptrtoint ptr %mega_buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mega_buffer, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv = zext i8 %15 to i32
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %mbox) #14
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mega_enum_raid_scsi(ptr nocapture noundef %adapter) unnamed_addr #5 align 64 {
entry:
  %mbox = alloca %struct.mbox_out, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %mbox) #14
  %0 = getelementptr inbounds %struct.mbox_out, ptr %mbox, i32 0, i32 4
  %1 = getelementptr inbounds i8, ptr %mbox, i32 1
  %2 = call ptr @memset(ptr %1, i32 0, i32 14)
  %3 = ptrtoint ptr %mbox to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -87, ptr %mbox, align 1
  %mega_buffer = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 14
  %4 = ptrtoint ptr %mega_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mega_buffer, align 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 2048)
  %buf_dma_handle = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 15
  %7 = ptrtoint ptr %buf_dma_handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf_dma_handle, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %0, align 1
  %mega_ch_class = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 36
  %10 = ptrtoint ptr %mega_ch_class to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 255, ptr %mega_ch_class, align 4
  %call = call fastcc i32 @issue_scb_block(ptr noundef %adapter, ptr noundef nonnull %mbox)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %mega_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mega_buffer, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %conv = zext i8 %14 to i32
  %15 = ptrtoint ptr %mega_ch_class to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %mega_ch_class, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %nchannels = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 16, i32 6
  %16 = ptrtoint ptr %nchannels to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nchannels, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp33.not = icmp eq i8 %17, 0
  br i1 %cmp33.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %dev = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %18 = ptrtoint ptr %mega_ch_class to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mega_ch_class, align 4
  %20 = shl nuw i32 1, %i.034
  %21 = and i32 %19, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool7.not = icmp eq i32 %21, 0
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %.str.100..str.97 = select i1 %tobool7.not, ptr @.str.100, ptr @.str.97
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14, ptr noundef nonnull %.str.100..str.97, i32 noundef %i.034) #17
  %inc = add nuw nsw i32 %i.034, 1
  %24 = ptrtoint ptr %nchannels to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %nchannels, align 1
  %conv4 = zext i8 %25 to i32
  %cmp = icmp ult i32 %inc, %conv4
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %mbox) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mega_get_boot_drv(ptr nocapture noundef %adapter) unnamed_addr #5 align 64 {
entry:
  %mbox = alloca %struct.mbox_out, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %mbox) #14
  %0 = getelementptr inbounds %struct.mbox_out, ptr %mbox, i32 0, i32 4
  %1 = getelementptr inbounds i8, ptr %mbox, i32 1
  %2 = call ptr @memset(ptr %1, i32 0, i32 14)
  %3 = ptrtoint ptr %mbox to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 64, ptr %mbox, align 1
  %mega_buffer = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 14
  %4 = ptrtoint ptr %mega_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mega_buffer, align 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 2048)
  %buf_dma_handle = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 15
  %7 = ptrtoint ptr %buf_dma_handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf_dma_handle, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %0, align 1
  %boot_ldrv_enabled = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 26
  %boot_ldrv = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 27
  %boot_pdrv_enabled = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 28
  %boot_pdrv_ch = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 29
  %boot_pdrv_tgt = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 30
  %10 = call ptr @memset(ptr %boot_ldrv_enabled, i32 0, i32 20)
  %call = call fastcc i32 @issue_scb_block(ptr noundef %adapter, ptr noundef nonnull %mbox)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then:                                          ; preds = %entry
  %11 = ptrtoint ptr %mega_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mega_buffer, align 4
  %incdec.ptr = getelementptr i8, ptr %12, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %conv4 = zext i8 %14 to i16
  %incdec.ptr.1 = getelementptr i8, ptr %12, i32 2
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr, align 1
  %conv4.1 = zext i8 %16 to i16
  %add.1 = add nuw nsw i16 %conv4, %conv4.1
  %incdec.ptr.2 = getelementptr i8, ptr %12, i32 3
  %17 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %incdec.ptr.1, align 1
  %conv4.2 = zext i8 %18 to i16
  %add.2 = add nuw nsw i16 %add.1, %conv4.2
  %incdec.ptr.3 = getelementptr i8, ptr %12, i32 4
  %19 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %incdec.ptr.2, align 1
  %conv4.3 = zext i8 %20 to i16
  %add.3 = add nuw nsw i16 %add.2, %conv4.3
  %incdec.ptr.4 = getelementptr i8, ptr %12, i32 5
  %21 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %incdec.ptr.3, align 1
  %conv4.4 = zext i8 %22 to i16
  %add.4 = add nuw nsw i16 %add.3, %conv4.4
  %incdec.ptr.5 = getelementptr i8, ptr %12, i32 6
  %23 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %incdec.ptr.4, align 1
  %conv4.5 = zext i8 %24 to i16
  %add.5 = add nuw nsw i16 %add.4, %conv4.5
  %incdec.ptr.6 = getelementptr i8, ptr %12, i32 7
  %25 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %incdec.ptr.5, align 1
  %conv4.6 = zext i8 %26 to i16
  %add.6 = add nuw nsw i16 %add.5, %conv4.6
  %incdec.ptr.7 = getelementptr i8, ptr %12, i32 8
  %27 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %incdec.ptr.6, align 1
  %conv4.7 = zext i8 %28 to i16
  %add.7 = add nuw nsw i16 %add.6, %conv4.7
  %incdec.ptr.8 = getelementptr i8, ptr %12, i32 9
  %29 = ptrtoint ptr %incdec.ptr.7 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %incdec.ptr.7, align 1
  %conv4.8 = zext i8 %30 to i16
  %add.8 = add nuw nsw i16 %add.7, %conv4.8
  %incdec.ptr.9 = getelementptr i8, ptr %12, i32 10
  %31 = ptrtoint ptr %incdec.ptr.8 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %incdec.ptr.8, align 1
  %conv4.9 = zext i8 %32 to i16
  %add.9 = add nuw nsw i16 %add.8, %conv4.9
  %incdec.ptr.10 = getelementptr i8, ptr %12, i32 11
  %33 = ptrtoint ptr %incdec.ptr.9 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %incdec.ptr.9, align 1
  %conv4.10 = zext i8 %34 to i16
  %add.10 = add nuw nsw i16 %add.9, %conv4.10
  %incdec.ptr.11 = getelementptr i8, ptr %12, i32 12
  %35 = ptrtoint ptr %incdec.ptr.10 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %incdec.ptr.10, align 1
  %conv4.11 = zext i8 %36 to i16
  %add.11 = add nuw nsw i16 %add.10, %conv4.11
  %incdec.ptr.12 = getelementptr i8, ptr %12, i32 13
  %37 = ptrtoint ptr %incdec.ptr.11 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %incdec.ptr.11, align 1
  %conv4.12 = zext i8 %38 to i16
  %add.12 = add nuw nsw i16 %add.11, %conv4.12
  %39 = ptrtoint ptr %incdec.ptr.12 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %incdec.ptr.12, align 1
  %conv4.13 = zext i8 %40 to i16
  %add.13 = add nuw nsw i16 %add.12, %conv4.13
  %cksum7 = getelementptr inbounds %struct.private_bios_data, ptr %12, i32 0, i32 3
  %41 = ptrtoint ptr %cksum7 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %cksum7, align 1
  %43 = sub nsw i16 0, %add.13
  call void @__sanitizer_cov_trace_cmp2(i16 %42, i16 %43)
  %cmp12 = icmp eq i16 %42, %43
  br i1 %cmp12, label %if.then14, label %if.then.if.end31_crit_edge

if.then.if.end31_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then14:                                        ; preds = %if.then
  %44 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %45)
  %tobool.not = icmp sgt i8 %45, -1
  br i1 %tobool.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %boot_pdrv_enabled to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %boot_pdrv_enabled, align 4
  %47 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %incdec.ptr, align 1
  %49 = and i8 %48, 127
  %conv22 = zext i8 %49 to i32
  %div54 = lshr i32 %conv22, 4
  %50 = ptrtoint ptr %boot_pdrv_ch to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %div54, ptr %boot_pdrv_ch, align 4
  %rem = and i32 %conv22, 15
  %51 = ptrtoint ptr %boot_pdrv_tgt to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %rem, ptr %boot_pdrv_tgt, align 4
  br label %if.end31

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  %52 = ptrtoint ptr %boot_ldrv_enabled to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %boot_ldrv_enabled, align 4
  %53 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %incdec.ptr, align 1
  %conv28 = zext i8 %54 to i32
  %55 = ptrtoint ptr %boot_ldrv to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv28, ptr %boot_ldrv, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then16, %if.then.if.end31_crit_edge, %entry.if.end31_crit_edge
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %mbox) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mega_init_scb(ptr noundef %adapter) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %max_cmds = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %max_cmds to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp163.not = icmp eq i8 %1, 0
  br i1 %cmp163.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %scb_list = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 18
  br label %for.body

for.cond2.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp5170.not = icmp eq i8 %9, 0
  br i1 %cmp5170.not, label %for.cond2.preheader.cleanup_crit_edge, label %for.body7.lr.ph

for.cond2.preheader.cleanup_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body7.lr.ph:                                  ; preds = %for.cond2.preheader
  %scb_list8 = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 18
  %dev = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 9
  %sglen = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 37
  %free_list = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 10
  br label %for.body7

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0164 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %scb_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scb_list, align 4
  %sgl64 = getelementptr %struct.scb_t, ptr %3, i32 %i.0164, i32 10
  %4 = ptrtoint ptr %sgl64 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %sgl64, align 4
  %sgl = getelementptr %struct.scb_t, ptr %3, i32 %i.0164, i32 9
  %5 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %sgl, align 4
  %pthru = getelementptr %struct.scb_t, ptr %3, i32 %i.0164, i32 12
  %6 = ptrtoint ptr %pthru to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pthru, align 4
  %epthru = getelementptr %struct.scb_t, ptr %3, i32 %i.0164, i32 14
  %7 = ptrtoint ptr %epthru to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %epthru, align 4
  %inc = add nuw nsw i32 %i.0164, 1
  %8 = ptrtoint ptr %max_cmds to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %max_cmds, align 4
  %conv = zext i8 %9 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond2.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body7:                                        ; preds = %list_add.exit.for.body7_crit_edge, %for.body7.lr.ph
  %i.1171 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc45, %list_add.exit.for.body7_crit_edge ]
  %10 = ptrtoint ptr %scb_list8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scb_list8, align 4
  %arrayidx9 = getelementptr %struct.scb_t, ptr %11, i32 %i.1171
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %i.1171, ptr %arrayidx9, align 4
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %15 = ptrtoint ptr %sglen to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sglen, align 4
  %conv11 = zext i8 %16 to i32
  %mul = mul nuw nsw i32 %conv11, 12
  %sgl_dma_addr = getelementptr %struct.scb_t, ptr %11, i32 %i.1171, i32 11
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev10, i32 noundef %mul, ptr noundef %sgl_dma_addr, i32 noundef 3264, i32 noundef 0) #14
  %sgl6412 = getelementptr %struct.scb_t, ptr %11, i32 %i.1171, i32 10
  %17 = ptrtoint ptr %sgl6412 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %sgl6412, align 4
  %sgl14 = getelementptr %struct.scb_t, ptr %11, i32 %i.1171, i32 9
  %18 = ptrtoint ptr %sgl14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %sgl14, align 4
  %tobool.not = icmp eq ptr %call.i, null
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev17, ptr noundef nonnull @.str.102) #17
  %21 = ptrtoint ptr %max_cmds to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %max_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp41.not.i = icmp eq i8 %22, 0
  br i1 %cmp41.not.i, label %do.end.cleanup_crit_edge, label %do.end.for.body.i_crit_edge

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %i.042.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %scb_list8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %scb_list8, align 4
  %sgl64.i = getelementptr %struct.scb_t, ptr %24, i32 %i.042.i, i32 10
  %25 = ptrtoint ptr %sgl64.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sgl64.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %29 = ptrtoint ptr %sglen to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sglen, align 4
  %conv3.i = zext i8 %30 to i32
  %mul.i = mul nuw nsw i32 %conv3.i, 12
  %sgl_dma_addr.i = getelementptr %struct.scb_t, ptr %24, i32 %i.042.i, i32 11
  %31 = ptrtoint ptr %sgl_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sgl_dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2.i, i32 noundef %mul.i, ptr noundef nonnull %26, i32 noundef %32, i32 noundef 0) #14
  %33 = ptrtoint ptr %sgl64.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %sgl64.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %pthru.i = getelementptr %struct.scb_t, ptr %24, i32 %i.042.i, i32 12
  %34 = ptrtoint ptr %pthru.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pthru.i, align 4
  %tobool6.not.i = icmp eq ptr %35, null
  br i1 %tobool6.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then7.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %pthru_dma_addr.i = getelementptr %struct.scb_t, ptr %24, i32 %i.042.i, i32 13
  %38 = ptrtoint ptr %pthru_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pthru_dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev9.i, i32 noundef 60, ptr noundef nonnull %35, i32 noundef %39, i32 noundef 0) #14
  %40 = ptrtoint ptr %pthru.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %pthru.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then7.i, %if.end.i.if.end12.i_crit_edge
  %epthru.i = getelementptr %struct.scb_t, ptr %24, i32 %i.042.i, i32 14
  %41 = ptrtoint ptr %epthru.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %epthru.i, align 4
  %tobool13.not.i = icmp eq ptr %42, null
  br i1 %tobool13.not.i, label %if.end12.i.for.inc.i_crit_edge, label %if.then14.i

if.end12.i.for.inc.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %dev16.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %epthru_dma_addr.i = getelementptr %struct.scb_t, ptr %24, i32 %i.042.i, i32 15
  %45 = ptrtoint ptr %epthru_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %epthru_dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev16.i, i32 noundef 68, ptr noundef nonnull %42, i32 noundef %46, i32 noundef 0) #14
  %47 = ptrtoint ptr %epthru.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %epthru.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then14.i, %if.end12.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.042.i, 1
  %48 = ptrtoint ptr %max_cmds to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %max_cmds, align 4
  %conv.i = zext i8 %49 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end:                                           ; preds = %for.body7
  %pthru_dma_addr = getelementptr %struct.scb_t, ptr %11, i32 %i.1171, i32 13
  %call.i87 = tail call ptr @dma_alloc_attrs(ptr noundef %dev17, i32 noundef 60, ptr noundef %pthru_dma_addr, i32 noundef 3264, i32 noundef 0) #14
  %pthru21 = getelementptr %struct.scb_t, ptr %11, i32 %i.1171, i32 12
  %50 = ptrtoint ptr %pthru21 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i87, ptr %pthru21, align 4
  %tobool23.not = icmp eq ptr %call.i87, null
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  br i1 %tobool23.not, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev29, ptr noundef nonnull @.str.105) #17
  %53 = ptrtoint ptr %max_cmds to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %max_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp41.not.i89 = icmp eq i8 %54, 0
  br i1 %cmp41.not.i89, label %do.end27.cleanup_crit_edge, label %do.end27.for.body.i97_crit_edge

do.end27.for.body.i97_crit_edge:                  ; preds = %do.end27
  br label %for.body.i97

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.i97:                                     ; preds = %for.inc.i118.for.body.i97_crit_edge, %do.end27.for.body.i97_crit_edge
  %i.042.i94 = phi i32 [ %inc.i115, %for.inc.i118.for.body.i97_crit_edge ], [ 0, %do.end27.for.body.i97_crit_edge ]
  %55 = ptrtoint ptr %scb_list8 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %scb_list8, align 4
  %sgl64.i95 = getelementptr %struct.scb_t, ptr %56, i32 %i.042.i94, i32 10
  %57 = ptrtoint ptr %sgl64.i95 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sgl64.i95, align 4
  %tobool.not.i96 = icmp eq ptr %58, null
  br i1 %tobool.not.i96, label %for.body.i97.if.end.i105_crit_edge, label %if.then.i102

for.body.i97.if.end.i105_crit_edge:               ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i105

if.then.i102:                                     ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #16
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  %dev2.i98 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %61 = ptrtoint ptr %sglen to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %sglen, align 4
  %conv3.i99 = zext i8 %62 to i32
  %mul.i100 = mul nuw nsw i32 %conv3.i99, 12
  %sgl_dma_addr.i101 = getelementptr %struct.scb_t, ptr %56, i32 %i.042.i94, i32 11
  %63 = ptrtoint ptr %sgl_dma_addr.i101 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sgl_dma_addr.i101, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2.i98, i32 noundef %mul.i100, ptr noundef nonnull %58, i32 noundef %64, i32 noundef 0) #14
  %65 = ptrtoint ptr %sgl64.i95 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %sgl64.i95, align 4
  br label %if.end.i105

if.end.i105:                                      ; preds = %if.then.i102, %for.body.i97.if.end.i105_crit_edge
  %pthru.i103 = getelementptr %struct.scb_t, ptr %56, i32 %i.042.i94, i32 12
  %66 = ptrtoint ptr %pthru.i103 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pthru.i103, align 4
  %tobool6.not.i104 = icmp eq ptr %67, null
  br i1 %tobool6.not.i104, label %if.end.i105.if.end12.i111_crit_edge, label %if.then7.i108

if.end.i105.if.end12.i111_crit_edge:              ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i111

if.then7.i108:                                    ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #16
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 4
  %dev9.i106 = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %pthru_dma_addr.i107 = getelementptr %struct.scb_t, ptr %56, i32 %i.042.i94, i32 13
  %70 = ptrtoint ptr %pthru_dma_addr.i107 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pthru_dma_addr.i107, align 4
  tail call void @dma_free_attrs(ptr noundef %dev9.i106, i32 noundef 60, ptr noundef nonnull %67, i32 noundef %71, i32 noundef 0) #14
  %72 = ptrtoint ptr %pthru.i103 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %pthru.i103, align 4
  br label %if.end12.i111

if.end12.i111:                                    ; preds = %if.then7.i108, %if.end.i105.if.end12.i111_crit_edge
  %epthru.i109 = getelementptr %struct.scb_t, ptr %56, i32 %i.042.i94, i32 14
  %73 = ptrtoint ptr %epthru.i109 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %epthru.i109, align 4
  %tobool13.not.i110 = icmp eq ptr %74, null
  br i1 %tobool13.not.i110, label %if.end12.i111.for.inc.i118_crit_edge, label %if.then14.i114

if.end12.i111.for.inc.i118_crit_edge:             ; preds = %if.end12.i111
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i118

if.then14.i114:                                   ; preds = %if.end12.i111
  call void @__sanitizer_cov_trace_pc() #16
  %75 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev, align 4
  %dev16.i112 = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  %epthru_dma_addr.i113 = getelementptr %struct.scb_t, ptr %56, i32 %i.042.i94, i32 15
  %77 = ptrtoint ptr %epthru_dma_addr.i113 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %epthru_dma_addr.i113, align 4
  tail call void @dma_free_attrs(ptr noundef %dev16.i112, i32 noundef 68, ptr noundef nonnull %74, i32 noundef %78, i32 noundef 0) #14
  %79 = ptrtoint ptr %epthru.i109 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %epthru.i109, align 4
  br label %for.inc.i118

for.inc.i118:                                     ; preds = %if.then14.i114, %if.end12.i111.for.inc.i118_crit_edge
  %inc.i115 = add nuw nsw i32 %i.042.i94, 1
  %80 = ptrtoint ptr %max_cmds to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %max_cmds, align 4
  %conv.i116 = zext i8 %81 to i32
  %cmp.i117 = icmp ult i32 %inc.i115, %conv.i116
  br i1 %cmp.i117, label %for.inc.i118.for.body.i97_crit_edge, label %for.inc.i118.cleanup_crit_edge

for.inc.i118.cleanup_crit_edge:                   ; preds = %for.inc.i118
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.i118.for.body.i97_crit_edge:              ; preds = %for.inc.i118
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i97

if.end30:                                         ; preds = %if.end
  %epthru_dma_addr = getelementptr %struct.scb_t, ptr %11, i32 %i.1171, i32 15
  %call.i120 = tail call ptr @dma_alloc_attrs(ptr noundef %dev29, i32 noundef 68, ptr noundef %epthru_dma_addr, i32 noundef 3264, i32 noundef 0) #14
  %epthru34 = getelementptr %struct.scb_t, ptr %11, i32 %i.1171, i32 14
  %82 = ptrtoint ptr %epthru34 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i120, ptr %epthru34, align 4
  %tobool36.not = icmp eq ptr %call.i120, null
  br i1 %tobool36.not, label %do.end40, label %if.end43

do.end40:                                         ; preds = %if.end30
  %83 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev, align 4
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev42, ptr noundef nonnull @.str.108) #17
  %85 = ptrtoint ptr %max_cmds to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %max_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp41.not.i122 = icmp eq i8 %86, 0
  br i1 %cmp41.not.i122, label %do.end40.cleanup_crit_edge, label %do.end40.for.body.i130_crit_edge

do.end40.for.body.i130_crit_edge:                 ; preds = %do.end40
  br label %for.body.i130

do.end40.cleanup_crit_edge:                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.i130:                                    ; preds = %for.inc.i151.for.body.i130_crit_edge, %do.end40.for.body.i130_crit_edge
  %i.042.i127 = phi i32 [ %inc.i148, %for.inc.i151.for.body.i130_crit_edge ], [ 0, %do.end40.for.body.i130_crit_edge ]
  %87 = ptrtoint ptr %scb_list8 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %scb_list8, align 4
  %sgl64.i128 = getelementptr %struct.scb_t, ptr %88, i32 %i.042.i127, i32 10
  %89 = ptrtoint ptr %sgl64.i128 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sgl64.i128, align 4
  %tobool.not.i129 = icmp eq ptr %90, null
  br i1 %tobool.not.i129, label %for.body.i130.if.end.i138_crit_edge, label %if.then.i135

for.body.i130.if.end.i138_crit_edge:              ; preds = %for.body.i130
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i138

if.then.i135:                                     ; preds = %for.body.i130
  call void @__sanitizer_cov_trace_pc() #16
  %91 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev, align 4
  %dev2.i131 = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 44
  %93 = ptrtoint ptr %sglen to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %sglen, align 4
  %conv3.i132 = zext i8 %94 to i32
  %mul.i133 = mul nuw nsw i32 %conv3.i132, 12
  %sgl_dma_addr.i134 = getelementptr %struct.scb_t, ptr %88, i32 %i.042.i127, i32 11
  %95 = ptrtoint ptr %sgl_dma_addr.i134 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %sgl_dma_addr.i134, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2.i131, i32 noundef %mul.i133, ptr noundef nonnull %90, i32 noundef %96, i32 noundef 0) #14
  %97 = ptrtoint ptr %sgl64.i128 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %sgl64.i128, align 4
  br label %if.end.i138

if.end.i138:                                      ; preds = %if.then.i135, %for.body.i130.if.end.i138_crit_edge
  %pthru.i136 = getelementptr %struct.scb_t, ptr %88, i32 %i.042.i127, i32 12
  %98 = ptrtoint ptr %pthru.i136 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pthru.i136, align 4
  %tobool6.not.i137 = icmp eq ptr %99, null
  br i1 %tobool6.not.i137, label %if.end.i138.if.end12.i144_crit_edge, label %if.then7.i141

if.end.i138.if.end12.i144_crit_edge:              ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i144

if.then7.i141:                                    ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #16
  %100 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev, align 4
  %dev9.i139 = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 44
  %pthru_dma_addr.i140 = getelementptr %struct.scb_t, ptr %88, i32 %i.042.i127, i32 13
  %102 = ptrtoint ptr %pthru_dma_addr.i140 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pthru_dma_addr.i140, align 4
  tail call void @dma_free_attrs(ptr noundef %dev9.i139, i32 noundef 60, ptr noundef nonnull %99, i32 noundef %103, i32 noundef 0) #14
  %104 = ptrtoint ptr %pthru.i136 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %pthru.i136, align 4
  br label %if.end12.i144

if.end12.i144:                                    ; preds = %if.then7.i141, %if.end.i138.if.end12.i144_crit_edge
  %epthru.i142 = getelementptr %struct.scb_t, ptr %88, i32 %i.042.i127, i32 14
  %105 = ptrtoint ptr %epthru.i142 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %epthru.i142, align 4
  %tobool13.not.i143 = icmp eq ptr %106, null
  br i1 %tobool13.not.i143, label %if.end12.i144.for.inc.i151_crit_edge, label %if.then14.i147

if.end12.i144.for.inc.i151_crit_edge:             ; preds = %if.end12.i144
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i151

if.then14.i147:                                   ; preds = %if.end12.i144
  call void @__sanitizer_cov_trace_pc() #16
  %107 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev, align 4
  %dev16.i145 = getelementptr inbounds %struct.pci_dev, ptr %108, i32 0, i32 44
  %epthru_dma_addr.i146 = getelementptr %struct.scb_t, ptr %88, i32 %i.042.i127, i32 15
  %109 = ptrtoint ptr %epthru_dma_addr.i146 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %epthru_dma_addr.i146, align 4
  tail call void @dma_free_attrs(ptr noundef %dev16.i145, i32 noundef 68, ptr noundef nonnull %106, i32 noundef %110, i32 noundef 0) #14
  %111 = ptrtoint ptr %epthru.i142 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %epthru.i142, align 4
  br label %for.inc.i151

for.inc.i151:                                     ; preds = %if.then14.i147, %if.end12.i144.for.inc.i151_crit_edge
  %inc.i148 = add nuw nsw i32 %i.042.i127, 1
  %112 = ptrtoint ptr %max_cmds to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %max_cmds, align 4
  %conv.i149 = zext i8 %113 to i32
  %cmp.i150 = icmp ult i32 %inc.i148, %conv.i149
  br i1 %cmp.i150, label %for.inc.i151.for.body.i130_crit_edge, label %for.inc.i151.cleanup_crit_edge

for.inc.i151.cleanup_crit_edge:                   ; preds = %for.inc.i151
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.i151.for.body.i130_crit_edge:             ; preds = %for.inc.i151
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i130

if.end43:                                         ; preds = %if.end30
  %dma_type = getelementptr %struct.scb_t, ptr %11, i32 %i.1171, i32 4
  %114 = ptrtoint ptr %dma_type to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 65535, ptr %dma_type, align 4
  %state = getelementptr %struct.scb_t, ptr %11, i32 %i.1171, i32 1
  %115 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %state, align 4
  %cmd = getelementptr %struct.scb_t, ptr %11, i32 %i.1171, i32 6
  %116 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %cmd, align 4
  %list = getelementptr %struct.scb_t, ptr %11, i32 %i.1171, i32 2
  %117 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %free_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %free_list, ptr noundef %118) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end43.list_add.exit_crit_edge

if.end43.list_add.exit_crit_edge:                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %list, ptr %prev1.i.i, align 4
  %120 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %118, ptr %list, align 4
  %prev3.i.i = getelementptr %struct.scb_t, ptr %11, i32 %i.1171, i32 2, i32 1
  %121 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %free_list, ptr %prev3.i.i, align 4
  %122 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %list, ptr %free_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end43.list_add.exit_crit_edge
  %inc45 = add nuw nsw i32 %i.1171, 1
  %123 = ptrtoint ptr %max_cmds to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %max_cmds, align 4
  %conv4 = zext i8 %124 to i32
  %cmp5 = icmp ult i32 %inc45, %conv4
  br i1 %cmp5, label %list_add.exit.for.body7_crit_edge, label %list_add.exit.cleanup_crit_edge

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

list_add.exit.for.body7_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body7

cleanup:                                          ; preds = %list_add.exit.cleanup_crit_edge, %for.inc.i151.cleanup_crit_edge, %do.end40.cleanup_crit_edge, %for.inc.i118.cleanup_crit_edge, %do.end27.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %do.end.cleanup_crit_edge, %for.cond2.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end.cleanup_crit_edge ], [ -1, %do.end27.cleanup_crit_edge ], [ -1, %do.end40.cleanup_crit_edge ], [ 0, %for.cond2.preheader.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -1, %for.inc.i.cleanup_crit_edge ], [ -1, %for.inc.i118.cleanup_crit_edge ], [ -1, %for.inc.i151.cleanup_crit_edge ], [ 0, %list_add.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mega_support_cluster(ptr nocapture noundef %adapter) unnamed_addr #5 align 64 {
entry:
  %mbox = alloca %struct.mbox_out, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %mbox) #14
  %0 = getelementptr inbounds %struct.mbox_out, ptr %mbox, i32 0, i32 4
  %1 = getelementptr inbounds i8, ptr %mbox, i32 1
  %2 = call ptr @memset(ptr %1, i32 0, i32 14)
  %mega_buffer = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 14
  %3 = ptrtoint ptr %mega_buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mega_buffer, align 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 2048)
  %buf_dma_handle = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 15
  %6 = ptrtoint ptr %buf_dma_handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_dma_handle, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %0, align 1
  %9 = ptrtoint ptr %mbox to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 125, ptr %mbox, align 1
  %call = call fastcc i32 @issue_scb_block(ptr noundef %adapter, ptr noundef nonnull %mbox)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %mega_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mega_buffer, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %adapter, align 4
  %host = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 13
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host, align 4
  %this_id3 = getelementptr inbounds %struct.Scsi_Host, ptr %16, i32 0, i32 25
  %17 = ptrtoint ptr %this_id3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %13, ptr %this_id3, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %mbox) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mega_create_proc_entry(i32 noundef %index, ptr noundef %parent) unnamed_addr #5 align 64 {
entry:
  %string = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [32 x ptr], ptr @hba_soft_state, i32 0, i32 %index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %string) #14
  %host = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 13
  %2 = call ptr @memset(ptr %string, i32 255, i32 16)
  %3 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %host_no, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %string, ptr noundef nonnull @.str.111, i32 noundef %6)
  %call2 = call ptr @proc_mkdir_data(ptr noundef nonnull %string, i16 noundef zeroext 0, ptr noundef %parent, ptr noundef %1) #14
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.112) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.114, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef nonnull @proc_show_config, ptr noundef %1) #14
  %call5 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.115, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef nonnull @proc_show_stat, ptr noundef %1) #14
  %call6 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.116, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef nonnull @proc_show_mbox, ptr noundef %1) #14
  %call7 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.117, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef nonnull @proc_show_rebuild_rate, ptr noundef %1) #14
  %call8 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.118, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef nonnull @proc_show_battery, ptr noundef %1) #14
  %call9 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.119, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef nonnull @proc_show_pdrv_ch0, ptr noundef %1) #14
  %call10 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.120, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef nonnull @proc_show_pdrv_ch1, ptr noundef %1) #14
  %call11 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.121, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef nonnull @proc_show_pdrv_ch2, ptr noundef %1) #14
  %call12 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.122, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef nonnull @proc_show_pdrv_ch3, ptr noundef %1) #14
  %call13 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.123, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef nonnull @proc_show_rdrv_10, ptr noundef %1) #14
  %call14 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.124, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef nonnull @proc_show_rdrv_20, ptr noundef %1) #14
  %call15 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.125, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef nonnull @proc_show_rdrv_30, ptr noundef %1) #14
  %call16 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.126, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef nonnull @proc_show_rdrv_40, ptr noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %string) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @megaraid_queue(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #5 align 64 {
entry:
  %seg.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #14
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 53
  %lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 49, i32 12, i32 10, i32 3, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seg.i.i) #14
  %6 = ptrtoint ptr %seg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %seg.i.i, align 4, !annotation !526
  %7 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device.i, align 4
  %channel1.i.i = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel1.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.adapter_t, ptr %hostdata.i, i32 0, i32 35, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i, align 1
  %boot_pdrv_enabled.i.i = getelementptr inbounds %struct.adapter_t, ptr %hostdata.i, i32 0, i32 28
  %13 = ptrtoint ptr %boot_pdrv_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %boot_pdrv_enabled.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool19.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i.i, label %if.else18.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  br i1 %tobool19.not.i.i, label %if.else.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %nchannels.i.i = getelementptr inbounds %struct.adapter_t, ptr %hostdata.i, i32 0, i32 16, i32 6
  %15 = ptrtoint ptr %nchannels.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nchannels.i.i, align 1
  %conv.i.i = zext i8 %16 to i32
  %sub.i.i = sub i32 %10, %conv.i.i
  br label %if.then32.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  %id.i.i = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 16
  %17 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.i = icmp eq i32 %18, 0
  %boot_pdrv_tgt.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 49, i32 12, i32 10, i32 1
  %19 = ptrtoint ptr %boot_pdrv_tgt.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %boot_pdrv_tgt.i.i, align 4
  br i1 %cmp.i.i, label %if.else.i.i.if.else46.i.i_crit_edge, label %if.else11.i.i

if.else.i.i.if.else46.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else46.i.i

if.else11.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp13.i.i = icmp eq i32 %18, %20
  %spec.store.select.i.i = select i1 %cmp13.i.i, i32 0, i32 %18
  br label %if.else46.i.i

if.else18.i.i:                                    ; preds = %entry
  br i1 %tobool19.not.i.i, label %if.else23.i.i, label %if.else18.i.i.if.then32.i.i_crit_edge

if.else18.i.i.if.then32.i.i_crit_edge:            ; preds = %if.else18.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then32.i.i

if.else23.i.i:                                    ; preds = %if.else18.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub26.i.i = add i32 %10, -4
  %id28.i.i = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 16
  %21 = ptrtoint ptr %id28.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id28.i.i, align 8
  br label %if.else46.i.i

if.then32.i.i:                                    ; preds = %if.else18.i.i.if.then32.i.i_crit_edge, %if.then3.i.i
  %channel.0.i.i = phi i32 [ %sub.i.i, %if.then3.i.i ], [ %10, %if.else18.i.i.if.then32.i.i_crit_edge ]
  %lun.i.i = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 18
  %23 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %lun.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool34.not.i.i = icmp eq i64 %24, 0
  br i1 %tobool34.not.i.i, label %if.end36.i.i, label %if.then32.i.i.mega_build_cmd.exit.thread.sink.split.i_crit_edge

if.then32.i.i.mega_build_cmd.exit.thread.sink.split.i_crit_edge: ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_build_cmd.exit.thread.sink.split.i

if.end36.i.i:                                     ; preds = %if.then32.i.i
  %id.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 16
  %25 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id.i.i.i, align 8
  %27 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hostdata.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp.i.i.i = icmp sgt i32 %26, %28
  %dec.i.i.i = sext i1 %cmp.i.i.i to i32
  %mul.i.i.i = mul i32 %channel.0.i.i, 15
  %spec.select.i.i.i = add i32 %26, %mul.i.i.i
  %add.i.i.i = add i32 %spec.select.i.i.i, %dec.i.i.i
  %boot_ldrv_enabled.i.i.i = getelementptr inbounds %struct.adapter_t, ptr %hostdata.i, i32 0, i32 26
  %29 = ptrtoint ptr %boot_ldrv_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %boot_ldrv_enabled.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i.i, label %if.end36.i.i.if.end10.i.i.i_crit_edge, label %if.then1.i.i.i

if.end36.i.i.if.end10.i.i.i_crit_edge:            ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i.i.i

if.then1.i.i.i:                                   ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i.i)
  %cmp2.i.i.i = icmp eq i32 %add.i.i.i, 0
  %boot_ldrv.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 49, i32 12, i32 9
  %31 = ptrtoint ptr %boot_ldrv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %boot_ldrv.i.i.i, align 4
  br i1 %cmp2.i.i.i, label %if.then1.i.i.i.if.end10.i.i.i_crit_edge, label %if.else.i.i.i

if.then1.i.i.i.if.end10.i.i.i_crit_edge:          ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i.i.i

if.else.i.i.i:                                    ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %32)
  %cmp5.not.i.i.i = icmp sle i32 %add.i.i.i, %32
  %dec7.i.i.i = sext i1 %cmp5.not.i.i.i to i32
  %spec.select28.i.i.i = add i32 %add.i.i.i, %dec7.i.i.i
  br label %if.end10.i.i.i

if.end10.i.i.i:                                   ; preds = %if.else.i.i.i, %if.then1.i.i.i.if.end10.i.i.i_crit_edge, %if.end36.i.i.if.end10.i.i.i_crit_edge
  %ldrv_num.0.i.i.i = phi i32 [ %add.i.i.i, %if.end36.i.i.if.end10.i.i.i_crit_edge ], [ %spec.select28.i.i.i, %if.else.i.i.i ], [ %32, %if.then1.i.i.i.if.end10.i.i.i_crit_edge ]
  %support_random_del.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 49, i32 12, i32 10, i32 1, i32 1
  %33 = ptrtoint ptr %support_random_del.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %support_random_del.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool11.not.i.i.i = icmp eq i32 %34, 0
  br i1 %tobool11.not.i.i.i, label %if.end10.i.i.i.mega_get_ldrv_num.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end10.i.i.i.mega_get_ldrv_num.exit.i.i_crit_edge: ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_get_ldrv_num.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end10.i.i.i
  %read_ldidmap.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 49, i32 12, i32 10, i32 2
  %35 = ptrtoint ptr %read_ldidmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %read_ldidmap.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool12.not.i.i.i = icmp eq i32 %36, 0
  br i1 %tobool12.not.i.i.i, label %land.lhs.true.i.i.i.mega_get_ldrv_num.exit.i.i_crit_edge, label %if.then13.i.i.i

land.lhs.true.i.i.i.mega_get_ldrv_num.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_get_ldrv_num.exit.i.i

if.then13.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  %cmnd.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %37 = ptrtoint ptr %cmnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cmnd.i.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 1
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.240)
  switch i8 %40, label %if.then13.i.i.i.mega_get_ldrv_num.exit.i.i_crit_edge [
    i8 8, label %if.then13.i.i.i.sw.bb.i.i.i_crit_edge
    i8 10, label %if.then13.i.i.i.sw.bb.i.i.i_crit_edge8
    i8 40, label %if.then13.i.i.i.sw.bb.i.i.i_crit_edge9
    i8 42, label %if.then13.i.i.i.sw.bb.i.i.i_crit_edge10
  ]

if.then13.i.i.i.sw.bb.i.i.i_crit_edge10:          ; preds = %if.then13.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i.i

if.then13.i.i.i.sw.bb.i.i.i_crit_edge9:           ; preds = %if.then13.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i.i

if.then13.i.i.i.sw.bb.i.i.i_crit_edge8:           ; preds = %if.then13.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i.i

if.then13.i.i.i.sw.bb.i.i.i_crit_edge:            ; preds = %if.then13.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i.i

if.then13.i.i.i.mega_get_ldrv_num.exit.i.i_crit_edge: ; preds = %if.then13.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_get_ldrv_num.exit.i.i

sw.bb.i.i.i:                                      ; preds = %if.then13.i.i.i.sw.bb.i.i.i_crit_edge, %if.then13.i.i.i.sw.bb.i.i.i_crit_edge8, %if.then13.i.i.i.sw.bb.i.i.i_crit_edge9, %if.then13.i.i.i.sw.bb.i.i.i_crit_edge10
  %add14.i.i.i = add i32 %ldrv_num.0.i.i.i, 128
  br label %mega_get_ldrv_num.exit.i.i

mega_get_ldrv_num.exit.i.i:                       ; preds = %sw.bb.i.i.i, %if.then13.i.i.i.mega_get_ldrv_num.exit.i.i_crit_edge, %land.lhs.true.i.i.i.mega_get_ldrv_num.exit.i.i_crit_edge, %if.end10.i.i.i.mega_get_ldrv_num.exit.i.i_crit_edge
  %ldrv_num.1.i.i.i = phi i32 [ %ldrv_num.0.i.i.i, %if.then13.i.i.i.mega_get_ldrv_num.exit.i.i_crit_edge ], [ %add14.i.i.i, %sw.bb.i.i.i ], [ %ldrv_num.0.i.i.i, %land.lhs.true.i.i.i.mega_get_ldrv_num.exit.i.i_crit_edge ], [ %ldrv_num.0.i.i.i, %if.end10.i.i.i.mega_get_ldrv_num.exit.i.i_crit_edge ]
  %flag.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 0, i32 1
  %42 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flag.i.i, align 4
  %and.i.i = and i32 %43, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool37.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool37.not.i.i, i32 8, i32 40
  %read_ldidmap.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 49, i32 12, i32 10, i32 2
  %44 = ptrtoint ptr %read_ldidmap.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %read_ldidmap.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool38.not.i.i = icmp eq i32 %45, 0
  %add.i.i = or i32 %cond.i.i, 128
  %spec.select.i.i = select i1 %tobool38.not.i.i, i32 %cond.i.i, i32 %add.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %ldrv_num.1.i.i.i, i32 %spec.select.i.i)
  %cmp41.i.i = icmp sgt i32 %ldrv_num.1.i.i.i, %spec.select.i.i
  br i1 %cmp41.i.i, label %mega_get_ldrv_num.exit.i.i.mega_build_cmd.exit.thread.sink.split.i_crit_edge, label %if.then56.i.i

mega_get_ldrv_num.exit.i.i.mega_build_cmd.exit.thread.sink.split.i_crit_edge: ; preds = %mega_get_ldrv_num.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_build_cmd.exit.thread.sink.split.i

if.else46.i.i:                                    ; preds = %if.else23.i.i, %if.else11.i.i, %if.else.i.i.if.else46.i.i_crit_edge
  %channel.0.ph.i.i = phi i32 [ %sub26.i.i, %if.else23.i.i ], [ %10, %if.else11.i.i ], [ %10, %if.else.i.i.if.else46.i.i_crit_edge ]
  %target.0.ph.i.i = phi i32 [ %22, %if.else23.i.i ], [ %spec.store.select.i.i, %if.else11.i.i ], [ %20, %if.else.i.i.if.else46.i.i_crit_edge ]
  %lun48.i.i = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 18
  %46 = ptrtoint ptr %lun48.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %lun48.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 7, i64 %47)
  %cmp49.i.i = icmp ugt i64 %47, 7
  br i1 %cmp49.i.i, label %if.else46.i.i.mega_build_cmd.exit.thread.sink.split.i_crit_edge, label %if.else317.i.i

if.else46.i.i.mega_build_cmd.exit.thread.sink.split.i_crit_edge: ; preds = %if.else46.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_build_cmd.exit.thread.sink.split.i

if.then56.i.i:                                    ; preds = %mega_get_ldrv_num.exit.i.i
  %cmnd.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %48 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cmnd.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 1
  %52 = zext i8 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.241)
  switch i8 %51, label %if.then56.i.i.mega_build_cmd.exit.thread.sink.split.i_crit_edge [
    i8 0, label %sw.bb.i.i
    i8 26, label %sw.bb73.i.i
    i8 37, label %if.then56.i.i.sw.bb86.i.i_crit_edge
    i8 18, label %if.then56.i.i.sw.bb86.i.i_crit_edge11
    i8 8, label %if.then56.i.i.sw.bb133.i.i_crit_edge
    i8 10, label %if.then56.i.i.sw.bb133.i.i_crit_edge12
    i8 40, label %if.then56.i.i.sw.bb133.i.i_crit_edge13
    i8 42, label %if.then56.i.i.sw.bb133.i.i_crit_edge14
    i8 -88, label %if.then56.i.i.sw.bb133.i.i_crit_edge15
    i8 -86, label %if.then56.i.i.sw.bb133.i.i_crit_edge16
    i8 22, label %if.then56.i.i.sw.bb292.i.i_crit_edge
    i8 23, label %if.then56.i.i.sw.bb292.i.i_crit_edge17
  ]

if.then56.i.i.sw.bb292.i.i_crit_edge17:           ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb292.i.i

if.then56.i.i.sw.bb292.i.i_crit_edge:             ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb292.i.i

if.then56.i.i.sw.bb133.i.i_crit_edge16:           ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb133.i.i

if.then56.i.i.sw.bb133.i.i_crit_edge15:           ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb133.i.i

if.then56.i.i.sw.bb133.i.i_crit_edge14:           ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb133.i.i

if.then56.i.i.sw.bb133.i.i_crit_edge13:           ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb133.i.i

if.then56.i.i.sw.bb133.i.i_crit_edge12:           ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb133.i.i

if.then56.i.i.sw.bb133.i.i_crit_edge:             ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb133.i.i

if.then56.i.i.sw.bb86.i.i_crit_edge11:            ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb86.i.i

if.then56.i.i.sw.bb86.i.i_crit_edge:              ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb86.i.i

if.then56.i.i.mega_build_cmd.exit.thread.sink.split.i_crit_edge: ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_build_cmd.exit.thread.sink.split.i

sw.bb.i.i:                                        ; preds = %if.then56.i.i
  %has_cluster.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 50, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %has_cluster.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %has_cluster.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool59.not.i.i = icmp eq i32 %54, 0
  br i1 %tobool59.not.i.i, label %sw.bb.i.i.mega_build_cmd.exit.thread.sink.split.i_crit_edge, label %if.end62.i.i

sw.bb.i.i.mega_build_cmd.exit.thread.sink.split.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_build_cmd.exit.thread.sink.split.i

if.end62.i.i:                                     ; preds = %sw.bb.i.i
  %free_list.i27.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 4
  %55 = ptrtoint ptr %free_list.i27.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %free_list.i27.i, align 4
  %cmp.i.not.i28.i = icmp eq ptr %56, %free_list.i27.i
  br i1 %cmp.i.not.i28.i, label %if.end62.i.i.mega_build_cmd.exit.thread.i_crit_edge, label %if.then.i31.i

if.end62.i.i.mega_build_cmd.exit.thread.i_crit_edge: ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_build_cmd.exit.thread.i

if.then.i31.i:                                    ; preds = %if.end62.i.i
  %add.ptr.i29.i = getelementptr i8, ptr %56, i32 -8
  %call.i.i.i30.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %56) #14
  br i1 %call.i.i.i30.i, label %if.end.i.i.i34.i, label %if.then.i31.i.mega_allocate_scb.exit41.i_crit_edge

if.then.i31.i.mega_allocate_scb.exit41.i_crit_edge: ; preds = %if.then.i31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_allocate_scb.exit41.i

if.end.i.i.i34.i:                                 ; preds = %if.then.i31.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i32.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i.i32.i, align 4
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %56, align 4
  %prev1.i.i.i.i33.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i.i33.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i.i33.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %mega_allocate_scb.exit41.i

mega_allocate_scb.exit41.i:                       ; preds = %if.end.i.i.i34.i, %if.then.i31.i.mega_allocate_scb.exit41.i_crit_edge
  %63 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %56, ptr %56, align 4
  %prev.i3.i.i35.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i3.i.i35.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %56, ptr %prev.i3.i.i35.i, align 4
  %state.i36.i = getelementptr i8, ptr %56, i32 -4
  %65 = ptrtoint ptr %state.i36.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %state.i36.i, align 4
  %cmd2.i37.i = getelementptr i8, ptr %56, i32 84
  %66 = ptrtoint ptr %cmd2.i37.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %cmd, ptr %cmd2.i37.i, align 4
  %dma_type.i38.i = getelementptr i8, ptr %56, i32 76
  %67 = ptrtoint ptr %dma_type.i38.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 65535, ptr %dma_type.i38.i, align 4
  %tobool64.not.i.i = icmp eq ptr %add.ptr.i29.i, null
  br i1 %tobool64.not.i.i, label %mega_allocate_scb.exit41.i.mega_build_cmd.exit.thread.i_crit_edge, label %if.end66.i.i

mega_allocate_scb.exit41.i.mega_build_cmd.exit.thread.i_crit_edge: ; preds = %mega_allocate_scb.exit41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_build_cmd.exit.thread.i

if.end66.i.i:                                     ; preds = %mega_allocate_scb.exit41.i
  call void @__sanitizer_cov_trace_pc() #16
  %raw_mbox.i.i = getelementptr i8, ptr %56, i32 8
  %68 = ptrtoint ptr %raw_mbox.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 110, ptr %raw_mbox.i.i, align 4
  %arrayidx69.i.i = getelementptr i8, ptr %56, i32 10
  %69 = ptrtoint ptr %arrayidx69.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 4, ptr %arrayidx69.i.i, align 2
  %conv70.i.i = trunc i32 %ldrv_num.1.i.i.i to i8
  %arrayidx72.i.i = getelementptr i8, ptr %56, i32 11
  %70 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv70.i.i, ptr %arrayidx72.i.i, align 1
  %dma_direction.i.i = getelementptr i8, ptr %56, i32 80
  %71 = ptrtoint ptr %dma_direction.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 3, ptr %dma_direction.i.i, align 4
  br label %if.end.i

sw.bb73.i.i:                                      ; preds = %if.then56.i.i
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17
  %72 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sdb.i.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  %and.i.i.i.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_page.exit.i.i, label %do.body2.i.i.i, !prof !549

do.body2.i.i.i:                                   ; preds = %sw.bb73.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #14, !srcloc !550
  unreachable

sg_page.exit.i.i:                                 ; preds = %sw.bb73.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %and.i.i.i = and i32 %75, -4
  %76 = inttoptr i32 %and.i.i.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %77 = load i32, ptr @pgprot_kernel, align 4
  %or.i25.i = or i32 %77, 512
  %78 = tail call i32 @llvm.read_register.i32(metadata !516) #14
  %and.i.i.i.i.i.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %81, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !551
  %82 = tail call i32 @llvm.read_register.i32(metadata !516) #14
  %and.i.i.i1.i.i.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 213
  %86 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %87, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !552
  %call.i.i26.i = tail call ptr @__kmap_local_page_prot(ptr noundef %76, i32 noundef %or.i25.i) #14
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %73, i32 0, i32 1
  %88 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i26.i, i32 %89
  %90 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cmnd.i.i, align 4
  %arrayidx78.i.i = getelementptr i8, ptr %91, i32 4
  %92 = ptrtoint ptr %arrayidx78.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx78.i.i, align 1
  %conv79.i.i = zext i8 %93 to i32
  %94 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %conv79.i.i)
  %95 = load i32, ptr %offset.i.i, align 4
  %idx.neg.i.i = sub i32 0, %95
  %add.ptr82.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %idx.neg.i.i
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr82.i.i) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !553
  %96 = tail call i32 @llvm.read_register.i32(metadata !516) #14
  %and.i.i.i1.i.i = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %99, i32 0, i32 213
  %100 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %101, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !554
  %102 = tail call i32 @llvm.read_register.i32(metadata !516) #14
  %and.i.i.i.i.i = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %105, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  br label %mega_build_cmd.exit.thread.sink.split.i

sw.bb86.i.i:                                      ; preds = %if.then56.i.i.sw.bb86.i.i_crit_edge, %if.then56.i.i.sw.bb86.i.i_crit_edge11
  %shl.i.i = shl nuw i32 1, %10
  %and90.i.i = and i32 %43, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90.i.i)
  %tobool91.not.i.i = icmp eq i32 %and90.i.i, 0
  br i1 %tobool91.not.i.i, label %do.end95.i.i, label %sw.bb86.i.i.if.end103.i.i_crit_edge

sw.bb86.i.i.if.end103.i.i_crit_edge:              ; preds = %sw.bb86.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end103.i.i

do.end95.i.i:                                     ; preds = %sw.bb86.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 3
  %106 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev.i.i, align 4
  %dev96.i.i = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 44
  %host.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %108 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %host.i.i, align 4
  %host_no.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %109, i32 0, i32 17
  %110 = ptrtoint ptr %host_no.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %host_no.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev96.i.i, ptr noundef nonnull @.str.47, i32 noundef %111, i32 noundef %10) #17
  %112 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %device.i, align 4
  %channel100.i.i = getelementptr inbounds %struct.scsi_device, ptr %113, i32 0, i32 17
  %114 = ptrtoint ptr %channel100.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %channel100.i.i, align 4
  %shl101.i.i = shl nuw i32 1, %115
  %116 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %flag.i.i, align 4
  %or.i.i = or i32 %117, %shl101.i.i
  store i32 %or.i.i, ptr %flag.i.i, align 4
  br label %if.end103.i.i

if.end103.i.i:                                    ; preds = %do.end95.i.i, %sw.bb86.i.i.if.end103.i.i_crit_edge
  %free_list.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 4
  %118 = ptrtoint ptr %free_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile ptr, ptr %free_list.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %119, %free_list.i.i.i
  br i1 %cmp.i.not.i.i.i, label %if.end103.i.i.mega_build_cmd.exit.thread.i_crit_edge, label %if.then.i.i.i

if.end103.i.i.mega_build_cmd.exit.thread.i_crit_edge: ; preds = %if.end103.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_build_cmd.exit.thread.i

if.then.i.i.i:                                    ; preds = %if.end103.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %119, i32 -8
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %119) #14
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.mega_allocate_scb.exit.i.i_crit_edge

if.then.i.i.i.mega_allocate_scb.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_allocate_scb.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %122 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %119, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %121, ptr %prev1.i.i.i.i.i.i, align 4
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %123, ptr %121, align 4
  br label %mega_allocate_scb.exit.i.i

mega_allocate_scb.exit.i.i:                       ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.mega_allocate_scb.exit.i.i_crit_edge
  %126 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %119, ptr %119, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  %127 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %119, ptr %prev.i3.i.i.i.i, align 4
  %state.i.i.i = getelementptr i8, ptr %119, i32 -4
  %128 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1, ptr %state.i.i.i, align 4
  %cmd2.i.i.i = getelementptr i8, ptr %119, i32 84
  %129 = ptrtoint ptr %cmd2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %cmd, ptr %cmd2.i.i.i, align 4
  %dma_type.i.i.i = getelementptr i8, ptr %119, i32 76
  %130 = ptrtoint ptr %dma_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 65535, ptr %dma_type.i.i.i, align 4
  %tobool105.not.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool105.not.i.i, label %mega_allocate_scb.exit.i.i.mega_build_cmd.exit.thread.i_crit_edge, label %if.end107.i.i

mega_allocate_scb.exit.i.i.mega_build_cmd.exit.thread.i_crit_edge: ; preds = %mega_allocate_scb.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_build_cmd.exit.thread.i

if.end107.i.i:                                    ; preds = %mega_allocate_scb.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pthru108.i.i = getelementptr i8, ptr %119, i32 108
  %131 = ptrtoint ptr %pthru108.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pthru108.i.i, align 4
  %raw_mbox109.i.i = getelementptr i8, ptr %119, i32 8
  %133 = call ptr @memset(ptr %raw_mbox109.i.i, i32 0, i32 66)
  %134 = getelementptr inbounds i8, ptr %132, i32 2
  %135 = call ptr @memset(ptr %134, i32 0, i32 58)
  %reqsenselen.i.i = getelementptr inbounds %struct.mega_passthru, ptr %132, i32 0, i32 8
  %136 = ptrtoint ptr %reqsenselen.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 14, ptr %reqsenselen.i.i, align 1
  %137 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 17, ptr %132, align 1
  %conv116.i.i = trunc i32 %ldrv_num.1.i.i.i to i8
  %logdrv.i.i = getelementptr inbounds %struct.mega_passthru, ptr %132, i32 0, i32 1
  %138 = ptrtoint ptr %logdrv.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv116.i.i, ptr %logdrv.i.i, align 1
  %cmd_len.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %139 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %cmd_len.i.i, align 4
  %conv117.i.i = trunc i16 %140 to i8
  %cdblen.i.i = getelementptr inbounds %struct.mega_passthru, ptr %132, i32 0, i32 7
  %141 = ptrtoint ptr %cdblen.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv117.i.i, ptr %cdblen.i.i, align 1
  %cdb.i.i = getelementptr inbounds %struct.mega_passthru, ptr %132, i32 0, i32 6
  %142 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %cmnd.i.i, align 4
  %144 = load i16, ptr %cmd_len.i.i, align 4
  %conv121.i.i = zext i16 %144 to i32
  %145 = call ptr @memcpy(ptr %cdb.i.i, ptr %143, i32 %conv121.i.i)
  %has_64bit_addr.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 49, i32 12, i32 8, i32 3
  %146 = ptrtoint ptr %has_64bit_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %has_64bit_addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool122.not.i.i = icmp eq i32 %147, 0
  %..i.i = select i1 %tobool122.not.i.i, i8 3, i8 -61
  %148 = ptrtoint ptr %raw_mbox109.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %..i.i, ptr %raw_mbox109.i.i, align 1
  %dma_direction129.i.i = getelementptr i8, ptr %119, i32 80
  %149 = ptrtoint ptr %dma_direction129.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 2, ptr %dma_direction129.i.i, align 4
  %dataxferaddr.i.i = getelementptr inbounds %struct.mega_passthru, ptr %132, i32 0, i32 12
  %dataxferlen.i.i = getelementptr inbounds %struct.mega_passthru, ptr %132, i32 0, i32 13
  %call130.i.i = tail call fastcc i32 @mega_build_sglist(ptr noundef %hostdata.i, ptr noundef nonnull %add.ptr.i.i.i, ptr noundef %dataxferaddr.i.i, ptr noundef %dataxferlen.i.i) #14
  %conv131.i.i = trunc i32 %call130.i.i to i8
  %numsgelements.i.i = getelementptr inbounds %struct.mega_passthru, ptr %132, i32 0, i32 10
  %150 = ptrtoint ptr %numsgelements.i.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv131.i.i, ptr %numsgelements.i.i, align 1
  %pthru_dma_addr.i.i = getelementptr i8, ptr %119, i32 112
  %151 = ptrtoint ptr %pthru_dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %pthru_dma_addr.i.i, align 4
  %xferaddr.i.i = getelementptr i8, ptr %119, i32 16
  %153 = ptrtoint ptr %xferaddr.i.i to i32
  call void @__asan_storeN_noabort(i32 %153, i32 4)
  store i32 %152, ptr %xferaddr.i.i, align 1
  br label %if.end.i

sw.bb133.i.i:                                     ; preds = %if.then56.i.i.sw.bb133.i.i_crit_edge, %if.then56.i.i.sw.bb133.i.i_crit_edge12, %if.then56.i.i.sw.bb133.i.i_crit_edge13, %if.then56.i.i.sw.bb133.i.i_crit_edge14, %if.then56.i.i.sw.bb133.i.i_crit_edge15, %if.then56.i.i.sw.bb133.i.i_crit_edge16
  %free_list.i525.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 4
  %154 = ptrtoint ptr %free_list.i525.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile ptr, ptr %free_list.i525.i.i, align 4
  %cmp.i.not.i526.i.i = icmp eq ptr %155, %free_list.i525.i.i
  br i1 %cmp.i.not.i526.i.i, label %sw.bb133.i.i.mega_build_cmd.exit.thread.i_crit_edge, label %if.then.i529.i.i

sw.bb133.i.i.mega_build_cmd.exit.thread.i_crit_edge: ; preds = %sw.bb133.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_build_cmd.exit.thread.i

if.then.i529.i.i:                                 ; preds = %sw.bb133.i.i
  %add.ptr.i527.i.i = getelementptr i8, ptr %155, i32 -8
  %call.i.i.i528.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %155) #14
  br i1 %call.i.i.i528.i.i, label %if.end.i.i.i532.i.i, label %if.then.i529.i.i.mega_allocate_scb.exit539.i.i_crit_edge

if.then.i529.i.i.mega_allocate_scb.exit539.i.i_crit_edge: ; preds = %if.then.i529.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_allocate_scb.exit539.i.i

if.end.i.i.i532.i.i:                              ; preds = %if.then.i529.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i530.i.i = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %prev.i.i.i530.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %prev.i.i.i530.i.i, align 4
  %158 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %155, align 4
  %prev1.i.i.i.i531.i.i = getelementptr inbounds %struct.list_head, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %prev1.i.i.i.i531.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %157, ptr %prev1.i.i.i.i531.i.i, align 4
  %161 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile ptr %159, ptr %157, align 4
  br label %mega_allocate_scb.exit539.i.i

mega_allocate_scb.exit539.i.i:                    ; preds = %if.end.i.i.i532.i.i, %if.then.i529.i.i.mega_allocate_scb.exit539.i.i_crit_edge
  %162 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %162)
  store volatile ptr %155, ptr %155, align 4
  %prev.i3.i.i533.i.i = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  %163 = ptrtoint ptr %prev.i3.i.i533.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %155, ptr %prev.i3.i.i533.i.i, align 4
  %state.i534.i.i = getelementptr i8, ptr %155, i32 -4
  %164 = ptrtoint ptr %state.i534.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 1, ptr %state.i534.i.i, align 4
  %cmd2.i535.i.i = getelementptr i8, ptr %155, i32 84
  %165 = ptrtoint ptr %cmd2.i535.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %cmd, ptr %cmd2.i535.i.i, align 4
  %dma_type.i536.i.i = getelementptr i8, ptr %155, i32 76
  %166 = ptrtoint ptr %dma_type.i536.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 65535, ptr %dma_type.i536.i.i, align 4
  %tobool135.not.i.i = icmp eq ptr %add.ptr.i527.i.i, null
  br i1 %tobool135.not.i.i, label %mega_allocate_scb.exit539.i.i.mega_build_cmd.exit.thread.i_crit_edge, label %if.end137.i.i

mega_allocate_scb.exit539.i.i.mega_build_cmd.exit.thread.i_crit_edge: ; preds = %mega_allocate_scb.exit539.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_build_cmd.exit.thread.i

if.end137.i.i:                                    ; preds = %mega_allocate_scb.exit539.i.i
  %raw_mbox138.i.i = getelementptr i8, ptr %155, i32 8
  %167 = call ptr @memset(ptr %raw_mbox138.i.i, i32 0, i32 66)
  %conv140.i.i = trunc i32 %ldrv_num.1.i.i.i to i8
  %logdrv142.i.i = getelementptr i8, ptr %155, i32 20
  %168 = ptrtoint ptr %logdrv142.i.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %conv140.i.i, ptr %logdrv142.i.i, align 1
  %has_64bit_addr143.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 49, i32 12, i32 8, i32 3
  %169 = ptrtoint ptr %has_64bit_addr143.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %has_64bit_addr143.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool144.not.i.i = icmp eq i32 %170, 0
  %171 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %cmnd.i.i, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %172, align 1
  %175 = and i8 %174, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool158.not.i.i = icmp eq i8 %175, 0
  %conv160.i.i = select i1 %tobool158.not.i.i, i8 1, i8 2
  %conv151.i.i = select i1 %tobool158.not.i.i, i8 -89, i8 -88
  %storemerge522.i.i = select i1 %tobool144.not.i.i, i8 %conv160.i.i, i8 %conv151.i.i
  %176 = ptrtoint ptr %raw_mbox138.i.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %storemerge522.i.i, ptr %raw_mbox138.i.i, align 1
  %cmd_len164.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %177 = ptrtoint ptr %cmd_len164.i.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %cmd_len164.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %178)
  %cmp166.i.i = icmp eq i16 %178, 6
  br i1 %cmp166.i.i, label %if.then168.i.i, label %if.end137.i.i.if.end191.i.i_crit_edge

if.end137.i.i.if.end191.i.i_crit_edge:            ; preds = %if.end137.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end191.i.i

if.then168.i.i:                                   ; preds = %if.end137.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %179 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %cmnd.i.i, align 4
  %arrayidx170.i.i = getelementptr i8, ptr %180, i32 4
  %181 = ptrtoint ptr %arrayidx170.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx170.i.i, align 1
  %conv172.i.i = zext i8 %182 to i16
  %numsectors.i.i = getelementptr i8, ptr %155, i32 10
  %183 = ptrtoint ptr %numsectors.i.i to i32
  call void @__asan_storeN_noabort(i32 %183, i32 2)
  store i16 %conv172.i.i, ptr %numsectors.i.i, align 1
  %184 = load ptr, ptr %cmnd.i.i, align 4
  %arrayidx175.i.i = getelementptr i8, ptr %184, i32 1
  %185 = ptrtoint ptr %arrayidx175.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx175.i.i, align 1
  %conv176.i.i = zext i8 %186 to i32
  %shl177.i.i = shl nuw nsw i32 %conv176.i.i, 16
  %arrayidx179.i.i = getelementptr i8, ptr %184, i32 2
  %187 = ptrtoint ptr %arrayidx179.i.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx179.i.i, align 1
  %conv180.i.i = zext i8 %188 to i32
  %shl181.i.i = shl nuw nsw i32 %conv180.i.i, 8
  %arrayidx184.i.i = getelementptr i8, ptr %184, i32 3
  %189 = ptrtoint ptr %arrayidx184.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx184.i.i, align 1
  %conv185.i.i = zext i8 %190 to i32
  %lba.i.i = getelementptr i8, ptr %155, i32 12
  %shl177.masked.i.i = and i32 %shl177.i.i, 2031616
  %or182.masked.i.i = or i32 %shl177.masked.i.i, %shl181.i.i
  %and190.i.i = or i32 %or182.masked.i.i, %conv185.i.i
  %191 = ptrtoint ptr %lba.i.i to i32
  call void @__asan_storeN_noabort(i32 %191, i32 4)
  store i32 %and190.i.i, ptr %lba.i.i, align 1
  %192 = ptrtoint ptr %cmd_len164.i.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %.pr.i.i = load i16, ptr %cmd_len164.i.i, align 4
  br label %if.end191.i.i

if.end191.i.i:                                    ; preds = %if.then168.i.i, %if.end137.i.i.if.end191.i.i_crit_edge
  %193 = phi i16 [ %.pr.i.i, %if.then168.i.i ], [ %178, %if.end137.i.i.if.end191.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %193)
  %cmp194.i.i = icmp eq i16 %193, 10
  br i1 %cmp194.i.i, label %if.then196.i.i, label %if.end191.i.i.if.end228.i.i_crit_edge

if.end191.i.i.if.end228.i.i_crit_edge:            ; preds = %if.end191.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end228.i.i

if.then196.i.i:                                   ; preds = %if.end191.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %194 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %cmnd.i.i, align 4
  %arrayidx198.i.i = getelementptr i8, ptr %195, i32 8
  %196 = ptrtoint ptr %arrayidx198.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx198.i.i, align 1
  %conv199.i.i = zext i8 %197 to i16
  %arrayidx201.i.i = getelementptr i8, ptr %195, i32 7
  %198 = ptrtoint ptr %arrayidx201.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx201.i.i, align 1
  %conv202.i.i = zext i8 %199 to i16
  %shl203.i.i = shl nuw i16 %conv202.i.i, 8
  %or204.i.i = or i16 %shl203.i.i, %conv199.i.i
  %numsectors207.i.i = getelementptr i8, ptr %155, i32 10
  %200 = ptrtoint ptr %numsectors207.i.i to i32
  call void @__asan_storeN_noabort(i32 %200, i32 2)
  store i16 %or204.i.i, ptr %numsectors207.i.i, align 1
  %201 = load ptr, ptr %cmnd.i.i, align 4
  %arrayidx209.i.i = getelementptr i8, ptr %201, i32 2
  %202 = ptrtoint ptr %arrayidx209.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx209.i.i, align 1
  %conv210.i.i = zext i8 %203 to i32
  %shl211.i.i = shl nuw i32 %conv210.i.i, 24
  %arrayidx213.i.i = getelementptr i8, ptr %201, i32 3
  %204 = ptrtoint ptr %arrayidx213.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx213.i.i, align 1
  %conv214.i.i = zext i8 %205 to i32
  %shl215.i.i = shl nuw nsw i32 %conv214.i.i, 16
  %or216.i.i = or i32 %shl215.i.i, %shl211.i.i
  %arrayidx218.i.i = getelementptr i8, ptr %201, i32 4
  %206 = ptrtoint ptr %arrayidx218.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx218.i.i, align 1
  %conv219.i.i = zext i8 %207 to i32
  %shl220.i.i = shl nuw nsw i32 %conv219.i.i, 8
  %or221.i.i = or i32 %or216.i.i, %shl220.i.i
  %arrayidx223.i.i = getelementptr i8, ptr %201, i32 5
  %208 = ptrtoint ptr %arrayidx223.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx223.i.i, align 1
  %conv224.i.i = zext i8 %209 to i32
  %or225.i.i = or i32 %or221.i.i, %conv224.i.i
  %lba227.i.i = getelementptr i8, ptr %155, i32 12
  %210 = ptrtoint ptr %lba227.i.i to i32
  call void @__asan_storeN_noabort(i32 %210, i32 4)
  store i32 %or225.i.i, ptr %lba227.i.i, align 1
  br label %if.end228.i.i

if.end228.i.i:                                    ; preds = %if.then196.i.i, %if.end191.i.i.if.end228.i.i_crit_edge
  %211 = ptrtoint ptr %cmd_len164.i.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %cmd_len164.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %212)
  %cmp231.i.i = icmp eq i16 %212, 12
  br i1 %cmp231.i.i, label %if.then233.i.i, label %if.end228.i.i.if.end275.i.i_crit_edge

if.end228.i.i.if.end275.i.i_crit_edge:            ; preds = %if.end228.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end275.i.i

if.then233.i.i:                                   ; preds = %if.end228.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %213 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %cmnd.i.i, align 4
  %arrayidx235.i.i = getelementptr i8, ptr %214, i32 2
  %215 = ptrtoint ptr %arrayidx235.i.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx235.i.i, align 1
  %conv236.i.i = zext i8 %216 to i32
  %shl237.i.i = shl nuw i32 %conv236.i.i, 24
  %arrayidx239.i.i = getelementptr i8, ptr %214, i32 3
  %217 = ptrtoint ptr %arrayidx239.i.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx239.i.i, align 1
  %conv240.i.i = zext i8 %218 to i32
  %shl241.i.i = shl nuw nsw i32 %conv240.i.i, 16
  %or242.i.i = or i32 %shl241.i.i, %shl237.i.i
  %arrayidx244.i.i = getelementptr i8, ptr %214, i32 4
  %219 = ptrtoint ptr %arrayidx244.i.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx244.i.i, align 1
  %conv245.i.i = zext i8 %220 to i32
  %shl246.i.i = shl nuw nsw i32 %conv245.i.i, 8
  %or247.i.i = or i32 %or242.i.i, %shl246.i.i
  %arrayidx249.i.i = getelementptr i8, ptr %214, i32 5
  %221 = ptrtoint ptr %arrayidx249.i.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx249.i.i, align 1
  %conv250.i.i = zext i8 %222 to i32
  %or251.i.i = or i32 %or247.i.i, %conv250.i.i
  %lba253.i.i = getelementptr i8, ptr %155, i32 12
  %223 = ptrtoint ptr %lba253.i.i to i32
  call void @__asan_storeN_noabort(i32 %223, i32 4)
  store i32 %or251.i.i, ptr %lba253.i.i, align 1
  %224 = load ptr, ptr %cmnd.i.i, align 4
  %arrayidx264.i.i = getelementptr i8, ptr %224, i32 8
  %225 = ptrtoint ptr %arrayidx264.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx264.i.i, align 1
  %conv265.i.i = zext i8 %226 to i16
  %shl266.i.i = shl nuw i16 %conv265.i.i, 8
  %arrayidx269.i.i = getelementptr i8, ptr %224, i32 9
  %227 = ptrtoint ptr %arrayidx269.i.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx269.i.i, align 1
  %conv270.i.i = zext i8 %228 to i16
  %or271.i.i = or i16 %shl266.i.i, %conv270.i.i
  %numsectors274.i.i = getelementptr i8, ptr %155, i32 10
  %229 = ptrtoint ptr %numsectors274.i.i to i32
  call void @__asan_storeN_noabort(i32 %229, i32 2)
  store i16 %or271.i.i, ptr %numsectors274.i.i, align 1
  br label %if.end275.i.i

if.end275.i.i:                                    ; preds = %if.then233.i.i, %if.end228.i.i.if.end275.i.i_crit_edge
  %230 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %cmnd.i.i, align 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %231, align 1
  %234 = and i8 %233, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %234)
  %cmp279.i.i = icmp eq i8 %234, 8
  %spec.select625.i.i = select i1 %cmp279.i.i, i32 2, i32 1
  %235 = getelementptr i8, ptr %155, i32 80
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %spec.select625.i.i, ptr %235, align 4
  %xferaddr287.i.i = getelementptr i8, ptr %155, i32 16
  %call288.i.i = call fastcc i32 @mega_build_sglist(ptr noundef %hostdata.i, ptr noundef nonnull %add.ptr.i527.i.i, ptr noundef %xferaddr287.i.i, ptr noundef nonnull %seg.i.i) #14
  %conv289.i.i = trunc i32 %call288.i.i to i8
  %numsgelements291.i.i = getelementptr i8, ptr %155, i32 21
  %237 = ptrtoint ptr %numsgelements291.i.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %conv289.i.i, ptr %numsgelements291.i.i, align 1
  br label %if.end.i

sw.bb292.i.i:                                     ; preds = %if.then56.i.i.sw.bb292.i.i_crit_edge, %if.then56.i.i.sw.bb292.i.i_crit_edge17
  %has_cluster293.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 50, i32 0, i32 1, i32 1
  %238 = ptrtoint ptr %has_cluster293.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %has_cluster293.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool294.not.i.i = icmp eq i32 %239, 0
  br i1 %tobool294.not.i.i, label %sw.bb292.i.i.mega_build_cmd.exit.thread.sink.split.i_crit_edge, label %if.end297.i.i

sw.bb292.i.i.mega_build_cmd.exit.thread.sink.split.i_crit_edge: ; preds = %sw.bb292.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_build_cmd.exit.thread.sink.split.i

if.end297.i.i:                                    ; preds = %sw.bb292.i.i
  %free_list.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 4
  %240 = ptrtoint ptr %free_list.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load volatile ptr, ptr %free_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %241, %free_list.i.i
  br i1 %cmp.i.not.i.i, label %if.end297.i.i.mega_build_cmd.exit.thread.i_crit_edge, label %if.then.i23.i

if.end297.i.i.mega_build_cmd.exit.thread.i_crit_edge: ; preds = %if.end297.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_build_cmd.exit.thread.i

if.then.i23.i:                                    ; preds = %if.end297.i.i
  %add.ptr.i22.i = getelementptr i8, ptr %241, i32 -8
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %241) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i23.i.mega_allocate_scb.exit.i_crit_edge

if.then.i23.i.mega_allocate_scb.exit.i_crit_edge: ; preds = %if.then.i23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_allocate_scb.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i23.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %prev.i.i.i.i, align 4
  %244 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %241, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %243, ptr %prev1.i.i.i.i.i, align 4
  %247 = ptrtoint ptr %243 to i32
  call void @__asan_store4_noabort(i32 %247)
  store volatile ptr %245, ptr %243, align 4
  br label %mega_allocate_scb.exit.i

mega_allocate_scb.exit.i:                         ; preds = %if.end.i.i.i.i, %if.then.i23.i.mega_allocate_scb.exit.i_crit_edge
  %248 = ptrtoint ptr %241 to i32
  call void @__asan_store4_noabort(i32 %248)
  store volatile ptr %241, ptr %241, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %241, i32 0, i32 1
  %249 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %241, ptr %prev.i3.i.i.i, align 4
  %state.i.i = getelementptr i8, ptr %241, i32 -4
  %250 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 1, ptr %state.i.i, align 4
  %cmd2.i.i = getelementptr i8, ptr %241, i32 84
  %251 = ptrtoint ptr %cmd2.i.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %cmd, ptr %cmd2.i.i, align 4
  %dma_type.i.i = getelementptr i8, ptr %241, i32 76
  %252 = ptrtoint ptr %dma_type.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 65535, ptr %dma_type.i.i, align 4
  %tobool299.not.i.i = icmp eq ptr %add.ptr.i22.i, null
  br i1 %tobool299.not.i.i, label %mega_allocate_scb.exit.i.mega_build_cmd.exit.thread.i_crit_edge, label %if.end301.i.i

mega_allocate_scb.exit.i.mega_build_cmd.exit.thread.i_crit_edge: ; preds = %mega_allocate_scb.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_build_cmd.exit.thread.i

if.end301.i.i:                                    ; preds = %mega_allocate_scb.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %raw_mbox302.i.i = getelementptr i8, ptr %241, i32 8
  %253 = ptrtoint ptr %raw_mbox302.i.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 110, ptr %raw_mbox302.i.i, align 4
  %254 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %cmnd.i.i, align 4
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %255, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %257)
  %cmp306.i.i = icmp eq i8 %257, 22
  %conv309.i.i = select i1 %cmp306.i.i, i8 1, i8 2
  %arrayidx311.i.i = getelementptr i8, ptr %241, i32 10
  %258 = ptrtoint ptr %arrayidx311.i.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %conv309.i.i, ptr %arrayidx311.i.i, align 2
  %conv312.i.i = trunc i32 %ldrv_num.1.i.i.i to i8
  %arrayidx314.i.i = getelementptr i8, ptr %241, i32 11
  %259 = ptrtoint ptr %arrayidx314.i.i to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %conv312.i.i, ptr %arrayidx314.i.i, align 1
  %dma_direction315.i.i = getelementptr i8, ptr %241, i32 80
  %260 = ptrtoint ptr %dma_direction315.i.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 3, ptr %dma_direction315.i.i, align 4
  br label %if.end.i

if.else317.i.i:                                   ; preds = %if.else46.i.i
  %free_list.i540.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 4
  %261 = ptrtoint ptr %free_list.i540.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load volatile ptr, ptr %free_list.i540.i.i, align 4
  %cmp.i.not.i541.i.i = icmp eq ptr %262, %free_list.i540.i.i
  br i1 %cmp.i.not.i541.i.i, label %if.else317.i.i.mega_build_cmd.exit.thread.i_crit_edge, label %if.then.i544.i.i

if.else317.i.i.mega_build_cmd.exit.thread.i_crit_edge: ; preds = %if.else317.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_build_cmd.exit.thread.i

if.then.i544.i.i:                                 ; preds = %if.else317.i.i
  %add.ptr.i542.i.i = getelementptr i8, ptr %262, i32 -8
  %call.i.i.i543.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %262) #14
  br i1 %call.i.i.i543.i.i, label %if.end.i.i.i547.i.i, label %if.then.i544.i.i.mega_allocate_scb.exit554.i.i_crit_edge

if.then.i544.i.i.mega_allocate_scb.exit554.i.i_crit_edge: ; preds = %if.then.i544.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_allocate_scb.exit554.i.i

if.end.i.i.i547.i.i:                              ; preds = %if.then.i544.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i545.i.i = getelementptr inbounds %struct.list_head, ptr %262, i32 0, i32 1
  %263 = ptrtoint ptr %prev.i.i.i545.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %prev.i.i.i545.i.i, align 4
  %265 = ptrtoint ptr %262 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %262, align 4
  %prev1.i.i.i.i546.i.i = getelementptr inbounds %struct.list_head, ptr %266, i32 0, i32 1
  %267 = ptrtoint ptr %prev1.i.i.i.i546.i.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %264, ptr %prev1.i.i.i.i546.i.i, align 4
  %268 = ptrtoint ptr %264 to i32
  call void @__asan_store4_noabort(i32 %268)
  store volatile ptr %266, ptr %264, align 4
  br label %mega_allocate_scb.exit554.i.i

mega_allocate_scb.exit554.i.i:                    ; preds = %if.end.i.i.i547.i.i, %if.then.i544.i.i.mega_allocate_scb.exit554.i.i_crit_edge
  %269 = ptrtoint ptr %262 to i32
  call void @__asan_store4_noabort(i32 %269)
  store volatile ptr %262, ptr %262, align 4
  %prev.i3.i.i548.i.i = getelementptr inbounds %struct.list_head, ptr %262, i32 0, i32 1
  %270 = ptrtoint ptr %prev.i3.i.i548.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr %262, ptr %prev.i3.i.i548.i.i, align 4
  %state.i549.i.i = getelementptr i8, ptr %262, i32 -4
  %271 = ptrtoint ptr %state.i549.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 1, ptr %state.i549.i.i, align 4
  %cmd2.i550.i.i = getelementptr i8, ptr %262, i32 84
  %272 = ptrtoint ptr %cmd2.i550.i.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %cmd, ptr %cmd2.i550.i.i, align 4
  %dma_type.i551.i.i = getelementptr i8, ptr %262, i32 76
  %273 = ptrtoint ptr %dma_type.i551.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 65535, ptr %dma_type.i551.i.i, align 4
  %tobool319.not.i.i = icmp eq ptr %add.ptr.i542.i.i, null
  br i1 %tobool319.not.i.i, label %mega_allocate_scb.exit554.i.i.mega_build_cmd.exit.thread.i_crit_edge, label %if.end321.i.i

mega_allocate_scb.exit554.i.i.mega_build_cmd.exit.thread.i_crit_edge: ; preds = %mega_allocate_scb.exit554.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_build_cmd.exit.thread.i

if.end321.i.i:                                    ; preds = %mega_allocate_scb.exit554.i.i
  %raw_mbox322.i.i = getelementptr i8, ptr %262, i32 8
  %274 = call ptr @memset(ptr %raw_mbox322.i.i, i32 0, i32 66)
  %support_ext_cdb.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 49, i32 12, i32 8, i32 4
  %275 = ptrtoint ptr %support_ext_cdb.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %support_ext_cdb.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %276)
  %tobool324.not.i.i = icmp eq i32 %276, 0
  br i1 %tobool324.not.i.i, label %if.else331.i.i, label %if.then325.i.i

if.then325.i.i:                                   ; preds = %if.end321.i.i
  %epthru1.i.i.i = getelementptr i8, ptr %262, i32 116
  %277 = ptrtoint ptr %epthru1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %epthru1.i.i.i, align 4
  %279 = getelementptr inbounds i8, ptr %278, i32 1
  %280 = call ptr @memset(ptr %279, i32 0, i32 67)
  %reqsenselen.i.i.i = getelementptr inbounds %struct.mega_ext_passthru, ptr %278, i32 0, i32 11
  %281 = ptrtoint ptr %reqsenselen.i.i.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 14, ptr %reqsenselen.i.i.i, align 1
  %282 = ptrtoint ptr %278 to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 80, ptr %278, align 1
  %flag.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 0, i32 1
  %283 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %flag.i.i.i, align 4
  %and.i555.i.i = and i32 %284, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i555.i.i)
  %tobool.not.i556.i.i = icmp eq i32 %and.i555.i.i, 0
  %phi.cast.i.i.i = trunc i32 %channel.0.ph.i.i to i8
  %spec.select.i557.i.i = select i1 %tobool.not.i556.i.i, i8 %phi.cast.i.i.i, i8 0
  %channel8.i.i.i = getelementptr inbounds %struct.mega_ext_passthru, ptr %278, i32 0, i32 2
  %285 = ptrtoint ptr %channel8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 %spec.select.i557.i.i, ptr %channel8.i.i.i, align 1
  %286 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %flag.i.i.i, align 4
  %and10.i.i.i = and i32 %287, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i.i)
  %tobool11.not.i558.i.i = icmp eq i32 %and10.i.i.i, 0
  %shl.i.i.i = shl i32 %channel.0.ph.i.i, 4
  %or.i.i.i = select i1 %tobool11.not.i558.i.i, i32 0, i32 %shl.i.i.i
  %cond15.i.i.i = or i32 %or.i.i.i, %target.0.ph.i.i
  %conv16.i.i.i = trunc i32 %cond15.i.i.i to i8
  %target17.i.i.i = getelementptr inbounds %struct.mega_ext_passthru, ptr %278, i32 0, i32 3
  %288 = ptrtoint ptr %target17.i.i.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %conv16.i.i.i, ptr %target17.i.i.i, align 1
  %cmd_len.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %289 = ptrtoint ptr %cmd_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %289)
  %290 = load i16, ptr %cmd_len.i.i.i, align 4
  %conv18.i.i.i = trunc i16 %290 to i8
  %cdblen.i.i.i = getelementptr inbounds %struct.mega_ext_passthru, ptr %278, i32 0, i32 6
  %291 = ptrtoint ptr %cdblen.i.i.i to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 %conv18.i.i.i, ptr %cdblen.i.i.i, align 1
  %292 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %device.i, align 4
  %lun.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %293, i32 0, i32 18
  %294 = ptrtoint ptr %lun.i.i.i to i32
  call void @__asan_load8_noabort(i32 %294)
  %295 = load i64, ptr %lun.i.i.i, align 8
  %conv19.i.i.i = trunc i64 %295 to i8
  %296 = ptrtoint ptr %279 to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 %conv19.i.i.i, ptr %279, align 1
  %cdb.i.i.i = getelementptr inbounds %struct.mega_ext_passthru, ptr %278, i32 0, i32 8
  %cmnd.i560.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %297 = ptrtoint ptr %cmnd.i560.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %cmnd.i560.i.i, align 4
  %299 = load i16, ptr %cmd_len.i.i.i, align 4
  %conv21.i.i.i = zext i16 %299 to i32
  %300 = call ptr @memcpy(ptr %cdb.i.i.i, ptr %298, i32 %conv21.i.i.i)
  %dma_direction.i.i.i = getelementptr i8, ptr %262, i32 80
  %301 = ptrtoint ptr %dma_direction.i.i.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 0, ptr %dma_direction.i.i.i, align 4
  %302 = load ptr, ptr %cmnd.i560.i.i, align 4
  %303 = ptrtoint ptr %302 to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %302, align 1
  %305 = zext i8 %304 to i64
  call void @__sanitizer_cov_trace_switch(i64 %305, ptr @__sancov_gen_cov_switch_values.242)
  switch i8 %304, label %if.then325.i.i.mega_prepare_extpassthru.exit.i.i_crit_edge [
    i8 18, label %if.then325.i.i.sw.bb.i561.i.i_crit_edge
    i8 37, label %if.then325.i.i.sw.bb.i561.i.i_crit_edge18
  ]

if.then325.i.i.sw.bb.i561.i.i_crit_edge18:        ; preds = %if.then325.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i561.i.i

if.then325.i.i.sw.bb.i561.i.i_crit_edge:          ; preds = %if.then325.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i561.i.i

if.then325.i.i.mega_prepare_extpassthru.exit.i.i_crit_edge: ; preds = %if.then325.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_prepare_extpassthru.exit.i.i

sw.bb.i561.i.i:                                   ; preds = %if.then325.i.i.sw.bb.i561.i.i_crit_edge, %if.then325.i.i.sw.bb.i561.i.i_crit_edge18
  %306 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %flag.i.i.i, align 4
  %308 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %device.i, align 4
  %channel26.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %309, i32 0, i32 17
  %310 = ptrtoint ptr %channel26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %channel26.i.i.i, align 4
  %shl27.i.i.i = shl nuw i32 1, %311
  %and28.i.i.i = and i32 %shl27.i.i.i, %307
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i.i.i)
  %tobool29.not.i.i.i = icmp eq i32 %and28.i.i.i, 0
  br i1 %tobool29.not.i.i.i, label %do.end.i.i.i, label %sw.bb.i561.i.i.mega_prepare_extpassthru.exit.i.i_crit_edge

sw.bb.i561.i.i.mega_prepare_extpassthru.exit.i.i_crit_edge: ; preds = %sw.bb.i561.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_prepare_extpassthru.exit.i.i

do.end.i.i.i:                                     ; preds = %sw.bb.i561.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 3
  %312 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %dev.i.i.i, align 4
  %dev30.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %313, i32 0, i32 44
  %host.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %314 = ptrtoint ptr %host.i.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %host.i.i.i, align 4
  %host_no.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %315, i32 0, i32 17
  %316 = ptrtoint ptr %host_no.i.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %host_no.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev30.i.i.i, ptr noundef nonnull @.str.49, i32 noundef %317, i32 noundef %311, i32 noundef %channel.0.ph.i.i) #17
  %318 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %device.i, align 4
  %channel34.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %319, i32 0, i32 17
  %320 = ptrtoint ptr %channel34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %channel34.i.i.i, align 4
  %shl35.i.i.i = shl nuw i32 1, %321
  %322 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %flag.i.i.i, align 4
  %or37.i.i.i = or i32 %323, %shl35.i.i.i
  store i32 %or37.i.i.i, ptr %flag.i.i.i, align 4
  br label %mega_prepare_extpassthru.exit.i.i

mega_prepare_extpassthru.exit.i.i:                ; preds = %do.end.i.i.i, %sw.bb.i561.i.i.mega_prepare_extpassthru.exit.i.i_crit_edge, %if.then325.i.i.mega_prepare_extpassthru.exit.i.i_crit_edge
  %dataxferaddr.i.i.i = getelementptr inbounds %struct.mega_ext_passthru, ptr %278, i32 0, i32 14
  %dataxferlen.i.i.i = getelementptr inbounds %struct.mega_ext_passthru, ptr %278, i32 0, i32 15
  %call.i.i20.i = tail call fastcc i32 @mega_build_sglist(ptr noundef %hostdata.i, ptr noundef nonnull %add.ptr.i542.i.i, ptr noundef %dataxferaddr.i.i.i, ptr noundef %dataxferlen.i.i.i) #14
  %conv38.i.i.i = trunc i32 %call.i.i20.i to i8
  %numsgelements.i.i.i = getelementptr inbounds %struct.mega_ext_passthru, ptr %278, i32 0, i32 9
  %324 = ptrtoint ptr %numsgelements.i.i.i to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 %conv38.i.i.i, ptr %numsgelements.i.i.i, align 1
  %325 = ptrtoint ptr %raw_mbox322.i.i to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 -29, ptr %raw_mbox322.i.i, align 1
  %epthru_dma_addr.i.i = getelementptr i8, ptr %262, i32 120
  %326 = ptrtoint ptr %epthru_dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %epthru_dma_addr.i.i, align 4
  %xferaddr330.i.i = getelementptr i8, ptr %262, i32 16
  %328 = ptrtoint ptr %xferaddr330.i.i to i32
  call void @__asan_storeN_noabort(i32 %328, i32 4)
  store i32 %327, ptr %xferaddr330.i.i, align 1
  br label %if.end.i

if.else331.i.i:                                   ; preds = %if.end321.i.i
  %pthru1.i.i.i = getelementptr i8, ptr %262, i32 108
  %329 = ptrtoint ptr %pthru1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %pthru1.i.i.i, align 4
  %331 = getelementptr inbounds i8, ptr %330, i32 1
  %332 = call ptr @memset(ptr %331, i32 0, i32 59)
  %reqsenselen.i562.i.i = getelementptr inbounds %struct.mega_passthru, ptr %330, i32 0, i32 8
  %333 = ptrtoint ptr %reqsenselen.i562.i.i to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 14, ptr %reqsenselen.i562.i.i, align 1
  %334 = ptrtoint ptr %330 to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 80, ptr %330, align 1
  %flag.i563.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 0, i32 1
  %335 = ptrtoint ptr %flag.i563.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %flag.i563.i.i, align 4
  %and.i564.i.i = and i32 %336, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i564.i.i)
  %tobool.not.i565.i.i = icmp eq i32 %and.i564.i.i, 0
  %phi.cast.i566.i.i = trunc i32 %channel.0.ph.i.i to i8
  %spec.select.i567.i.i = select i1 %tobool.not.i565.i.i, i8 %phi.cast.i566.i.i, i8 0
  %channel8.i568.i.i = getelementptr inbounds %struct.mega_passthru, ptr %330, i32 0, i32 2
  %337 = ptrtoint ptr %channel8.i568.i.i to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 %spec.select.i567.i.i, ptr %channel8.i568.i.i, align 1
  %338 = ptrtoint ptr %flag.i563.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %flag.i563.i.i, align 4
  %and10.i569.i.i = and i32 %339, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i569.i.i)
  %tobool11.not.i570.i.i = icmp eq i32 %and10.i569.i.i, 0
  %shl.i571.i.i = shl i32 %channel.0.ph.i.i, 4
  %or.i572.i.i = select i1 %tobool11.not.i570.i.i, i32 0, i32 %shl.i571.i.i
  %cond15.i573.i.i = or i32 %or.i572.i.i, %target.0.ph.i.i
  %conv16.i574.i.i = trunc i32 %cond15.i573.i.i to i8
  %target17.i575.i.i = getelementptr inbounds %struct.mega_passthru, ptr %330, i32 0, i32 3
  %340 = ptrtoint ptr %target17.i575.i.i to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 %conv16.i574.i.i, ptr %target17.i575.i.i, align 1
  %cmd_len.i576.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %341 = ptrtoint ptr %cmd_len.i576.i.i to i32
  call void @__asan_load2_noabort(i32 %341)
  %342 = load i16, ptr %cmd_len.i576.i.i, align 4
  %conv18.i577.i.i = trunc i16 %342 to i8
  %cdblen.i578.i.i = getelementptr inbounds %struct.mega_passthru, ptr %330, i32 0, i32 7
  %343 = ptrtoint ptr %cdblen.i578.i.i to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 %conv18.i577.i.i, ptr %cdblen.i578.i.i, align 1
  %344 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %device.i, align 4
  %lun.i580.i.i = getelementptr inbounds %struct.scsi_device, ptr %345, i32 0, i32 18
  %346 = ptrtoint ptr %lun.i580.i.i to i32
  call void @__asan_load8_noabort(i32 %346)
  %347 = load i64, ptr %lun.i580.i.i, align 8
  %conv19.i581.i.i = trunc i64 %347 to i8
  %348 = ptrtoint ptr %331 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %conv19.i581.i.i, ptr %331, align 1
  %cdb.i583.i.i = getelementptr inbounds %struct.mega_passthru, ptr %330, i32 0, i32 6
  %cmnd.i584.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %349 = ptrtoint ptr %cmnd.i584.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %cmnd.i584.i.i, align 4
  %351 = load i16, ptr %cmd_len.i576.i.i, align 4
  %conv21.i585.i.i = zext i16 %351 to i32
  %352 = call ptr @memcpy(ptr %cdb.i583.i.i, ptr %350, i32 %conv21.i585.i.i)
  %dma_direction.i586.i.i = getelementptr i8, ptr %262, i32 80
  %353 = ptrtoint ptr %dma_direction.i586.i.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 0, ptr %dma_direction.i586.i.i, align 4
  %354 = load ptr, ptr %cmnd.i584.i.i, align 4
  %355 = ptrtoint ptr %354 to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %354, align 1
  %357 = zext i8 %356 to i64
  call void @__sanitizer_cov_trace_switch(i64 %357, ptr @__sancov_gen_cov_switch_values.243)
  switch i8 %356, label %if.else331.i.i.mega_prepare_passthru.exit.i.i_crit_edge [
    i8 18, label %if.else331.i.i.sw.bb.i591.i.i_crit_edge
    i8 37, label %if.else331.i.i.sw.bb.i591.i.i_crit_edge19
  ]

if.else331.i.i.sw.bb.i591.i.i_crit_edge19:        ; preds = %if.else331.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i591.i.i

if.else331.i.i.sw.bb.i591.i.i_crit_edge:          ; preds = %if.else331.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i591.i.i

if.else331.i.i.mega_prepare_passthru.exit.i.i_crit_edge: ; preds = %if.else331.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_prepare_passthru.exit.i.i

sw.bb.i591.i.i:                                   ; preds = %if.else331.i.i.sw.bb.i591.i.i_crit_edge, %if.else331.i.i.sw.bb.i591.i.i_crit_edge19
  %358 = ptrtoint ptr %flag.i563.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %flag.i563.i.i, align 4
  %360 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %device.i, align 4
  %channel26.i587.i.i = getelementptr inbounds %struct.scsi_device, ptr %361, i32 0, i32 17
  %362 = ptrtoint ptr %channel26.i587.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %channel26.i587.i.i, align 4
  %shl27.i588.i.i = shl nuw i32 1, %363
  %and28.i589.i.i = and i32 %shl27.i588.i.i, %359
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i589.i.i)
  %tobool29.not.i590.i.i = icmp eq i32 %and28.i589.i.i, 0
  br i1 %tobool29.not.i590.i.i, label %do.end.i599.i.i, label %sw.bb.i591.i.i.mega_prepare_passthru.exit.i.i_crit_edge

sw.bb.i591.i.i.mega_prepare_passthru.exit.i.i_crit_edge: ; preds = %sw.bb.i591.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_prepare_passthru.exit.i.i

do.end.i599.i.i:                                  ; preds = %sw.bb.i591.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i592.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 3
  %364 = ptrtoint ptr %dev.i592.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %dev.i592.i.i, align 4
  %dev30.i593.i.i = getelementptr inbounds %struct.pci_dev, ptr %365, i32 0, i32 44
  %host.i594.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %366 = ptrtoint ptr %host.i594.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %host.i594.i.i, align 4
  %host_no.i595.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %367, i32 0, i32 17
  %368 = ptrtoint ptr %host_no.i595.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %host_no.i595.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev30.i593.i.i, ptr noundef nonnull @.str.49, i32 noundef %369, i32 noundef %363, i32 noundef %channel.0.ph.i.i) #17
  %370 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %device.i, align 4
  %channel34.i596.i.i = getelementptr inbounds %struct.scsi_device, ptr %371, i32 0, i32 17
  %372 = ptrtoint ptr %channel34.i596.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %channel34.i596.i.i, align 4
  %shl35.i597.i.i = shl nuw i32 1, %373
  %374 = ptrtoint ptr %flag.i563.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %flag.i563.i.i, align 4
  %or37.i598.i.i = or i32 %375, %shl35.i597.i.i
  store i32 %or37.i598.i.i, ptr %flag.i563.i.i, align 4
  br label %mega_prepare_passthru.exit.i.i

mega_prepare_passthru.exit.i.i:                   ; preds = %do.end.i599.i.i, %sw.bb.i591.i.i.mega_prepare_passthru.exit.i.i_crit_edge, %if.else331.i.i.mega_prepare_passthru.exit.i.i_crit_edge
  %dataxferaddr.i600.i.i = getelementptr inbounds %struct.mega_passthru, ptr %330, i32 0, i32 12
  %dataxferlen.i601.i.i = getelementptr inbounds %struct.mega_passthru, ptr %330, i32 0, i32 13
  %call.i602.i.i = tail call fastcc i32 @mega_build_sglist(ptr noundef %hostdata.i, ptr noundef nonnull %add.ptr.i542.i.i, ptr noundef %dataxferaddr.i600.i.i, ptr noundef %dataxferlen.i601.i.i) #14
  %conv38.i603.i.i = trunc i32 %call.i602.i.i to i8
  %numsgelements.i604.i.i = getelementptr inbounds %struct.mega_passthru, ptr %330, i32 0, i32 10
  %376 = ptrtoint ptr %numsgelements.i604.i.i to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 %conv38.i603.i.i, ptr %numsgelements.i604.i.i, align 1
  %has_64bit_addr333.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 49, i32 12, i32 8, i32 3
  %377 = ptrtoint ptr %has_64bit_addr333.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %has_64bit_addr333.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %378)
  %tobool334.not.i.i = icmp eq i32 %378, 0
  %.524.i.i = select i1 %tobool334.not.i.i, i8 3, i8 -61
  %379 = ptrtoint ptr %raw_mbox322.i.i to i32
  call void @__asan_store1_noabort(i32 %379)
  store i8 %.524.i.i, ptr %raw_mbox322.i.i, align 1
  %pthru_dma_addr342.i.i = getelementptr i8, ptr %262, i32 112
  %380 = ptrtoint ptr %pthru_dma_addr342.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %pthru_dma_addr342.i.i, align 4
  %xferaddr344.i.i = getelementptr i8, ptr %262, i32 16
  %382 = ptrtoint ptr %xferaddr344.i.i to i32
  call void @__asan_storeN_noabort(i32 %382, i32 4)
  store i32 %381, ptr %xferaddr344.i.i, align 1
  br label %if.end.i

mega_build_cmd.exit.thread.sink.split.i:          ; preds = %sw.bb292.i.i.mega_build_cmd.exit.thread.sink.split.i_crit_edge, %sg_page.exit.i.i, %sw.bb.i.i.mega_build_cmd.exit.thread.sink.split.i_crit_edge, %if.then56.i.i.mega_build_cmd.exit.thread.sink.split.i_crit_edge, %if.else46.i.i.mega_build_cmd.exit.thread.sink.split.i_crit_edge, %mega_get_ldrv_num.exit.i.i.mega_build_cmd.exit.thread.sink.split.i_crit_edge, %if.then32.i.i.mega_build_cmd.exit.thread.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 0, %sg_page.exit.i.i ], [ 262144, %if.then32.i.i.mega_build_cmd.exit.thread.sink.split.i_crit_edge ], [ 262144, %mega_get_ldrv_num.exit.i.i.mega_build_cmd.exit.thread.sink.split.i_crit_edge ], [ 262144, %if.else46.i.i.mega_build_cmd.exit.thread.sink.split.i_crit_edge ], [ 0, %sw.bb.i.i.mega_build_cmd.exit.thread.sink.split.i_crit_edge ], [ 262144, %sw.bb292.i.i.mega_build_cmd.exit.thread.sink.split.i_crit_edge ], [ 262144, %if.then56.i.i.mega_build_cmd.exit.thread.sink.split.i_crit_edge ]
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %383 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 %.sink.i, ptr %result.i.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #14
  br label %mega_build_cmd.exit.thread.i

mega_build_cmd.exit.thread.i:                     ; preds = %mega_build_cmd.exit.thread.sink.split.i, %mega_allocate_scb.exit554.i.i.mega_build_cmd.exit.thread.i_crit_edge, %if.else317.i.i.mega_build_cmd.exit.thread.i_crit_edge, %mega_allocate_scb.exit.i.mega_build_cmd.exit.thread.i_crit_edge, %if.end297.i.i.mega_build_cmd.exit.thread.i_crit_edge, %mega_allocate_scb.exit539.i.i.mega_build_cmd.exit.thread.i_crit_edge, %sw.bb133.i.i.mega_build_cmd.exit.thread.i_crit_edge, %mega_allocate_scb.exit.i.i.mega_build_cmd.exit.thread.i_crit_edge, %if.end103.i.i.mega_build_cmd.exit.thread.i_crit_edge, %mega_allocate_scb.exit41.i.mega_build_cmd.exit.thread.i_crit_edge, %if.end62.i.i.mega_build_cmd.exit.thread.i_crit_edge
  %busy.0.ph.i = phi i32 [ 1, %if.else317.i.i.mega_build_cmd.exit.thread.i_crit_edge ], [ 1, %mega_allocate_scb.exit554.i.i.mega_build_cmd.exit.thread.i_crit_edge ], [ 1, %mega_allocate_scb.exit.i.mega_build_cmd.exit.thread.i_crit_edge ], [ 1, %sw.bb133.i.i.mega_build_cmd.exit.thread.i_crit_edge ], [ 1, %mega_allocate_scb.exit539.i.i.mega_build_cmd.exit.thread.i_crit_edge ], [ 1, %if.end103.i.i.mega_build_cmd.exit.thread.i_crit_edge ], [ 1, %mega_allocate_scb.exit.i.i.mega_build_cmd.exit.thread.i_crit_edge ], [ 1, %mega_allocate_scb.exit41.i.mega_build_cmd.exit.thread.i_crit_edge ], [ 1, %if.end62.i.i.mega_build_cmd.exit.thread.i_crit_edge ], [ 1, %if.end297.i.i.mega_build_cmd.exit.thread.i_crit_edge ], [ 0, %mega_build_cmd.exit.thread.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seg.i.i) #14
  br label %megaraid_queue_lck.exit

if.end.i:                                         ; preds = %mega_prepare_passthru.exit.i.i, %mega_prepare_extpassthru.exit.i.i, %if.end301.i.i, %if.end275.i.i, %if.end107.i.i, %if.end66.i.i
  %retval.0.i.i = phi ptr [ %add.ptr.i22.i, %if.end301.i.i ], [ %add.ptr.i527.i.i, %if.end275.i.i ], [ %add.ptr.i.i.i, %if.end107.i.i ], [ %add.ptr.i29.i, %if.end66.i.i ], [ %add.ptr.i542.i.i, %mega_prepare_passthru.exit.i.i ], [ %add.ptr.i542.i.i, %mega_prepare_extpassthru.exit.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seg.i.i) #14
  %state.i = getelementptr inbounds %struct.scb_t, ptr %retval.0.i.i, i32 0, i32 1
  %384 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %state.i, align 4
  %or.i = or i32 %385, 2
  store i32 %or.i, ptr %state.i, align 4
  %list.i = getelementptr inbounds %struct.scb_t, ptr %retval.0.i.i, i32 0, i32 2
  %pending_list.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1, i32 1
  %prev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 4, i32 2
  %386 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %prev.i.i, align 4
  %call.i.i21.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %387, ptr noundef %pending_list.i) #14
  br i1 %call.i.i21.i, label %if.end.i.i.i, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %388 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %388)
  store ptr %list.i, ptr %prev.i.i, align 4
  %389 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %389)
  store ptr %pending_list.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.scb_t, ptr %retval.0.i.i, i32 0, i32 2, i32 1
  %390 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %390)
  store ptr %387, ptr %prev3.i.i.i, align 4
  %391 = ptrtoint ptr %387 to i32
  call void @__asan_store4_noabort(i32 %391)
  store volatile ptr %list.i, ptr %387, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_add_tail.exit.i_crit_edge
  %quiescent.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 49, i32 12, i32 10, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %quiescent.i, i32 noundef 4) #14
  %392 = ptrtoint ptr %quiescent.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load volatile i32, ptr %quiescent.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %393)
  %cmp7.i = icmp eq i32 %393, 0
  br i1 %cmp7.i, label %if.then9.i, label %list_add_tail.exit.i.megaraid_queue_lck.exit_crit_edge

list_add_tail.exit.i.megaraid_queue_lck.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %megaraid_queue_lck.exit

if.then9.i:                                       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @mega_runpendq(ptr noundef %hostdata.i) #14
  br label %megaraid_queue_lck.exit

megaraid_queue_lck.exit:                          ; preds = %if.then9.i, %list_add_tail.exit.i.megaraid_queue_lck.exit_crit_edge, %mega_build_cmd.exit.thread.i
  %busy.1.i = phi i32 [ %busy.0.ph.i, %mega_build_cmd.exit.thread.i ], [ 0, %if.then9.i ], [ 0, %list_add_tail.exit.i.megaraid_queue_lck.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #14
  %394 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %395, i32 noundef %call2) #14
  ret i32 %busy.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @megaraid_abort(ptr noundef %cmd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %call = tail call fastcc i32 @megaraid_abort_and_reset(ptr noundef %hostdata, ptr noundef %cmd, i32 noundef 8)
  %completed_list.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %completed_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %pos.08.i = load ptr, ptr %completed_list.i, align 4
  %cmp.i.not9.i = icmp eq ptr %pos.08.i, %completed_list.i
  br i1 %cmp.i.not9.i, label %entry.mega_rundoneq.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.mega_rundoneq.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_rundoneq.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %pos.010.i = phi ptr [ %pos.0.i, %for.body.i.for.body.i_crit_edge ], [ %pos.08.i, %entry.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %pos.010.i, i32 -232
  tail call void @scsi_done(ptr noundef %add.ptr.i) #14
  %5 = ptrtoint ptr %pos.010.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %pos.0.i = load ptr, ptr %pos.010.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %completed_list.i
  br i1 %cmp.i.not.i, label %for.body.i.mega_rundoneq.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.mega_rundoneq.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_rundoneq.exit

mega_rundoneq.exit:                               ; preds = %for.body.i.mega_rundoneq.exit_crit_edge, %entry.mega_rundoneq.exit_crit_edge
  %6 = ptrtoint ptr %completed_list.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %completed_list.i, ptr %completed_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %completed_list.i, ptr %prev.i.i, align 4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @megaraid_reset(ptr noundef %cmd) #5 align 64 {
entry:
  %mc = alloca %struct.megacmd_t, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %mc) #14
  %0 = getelementptr inbounds %struct.megacmd_t, ptr %mc, i32 0, i32 2
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %mc, i32 1
  %2 = call ptr @memset(ptr %1, i32 255, i32 17)
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 53
  %7 = ptrtoint ptr %mc to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 110, ptr %mc, align 1
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %0, align 1
  %call = call fastcc i32 @mega_internal_command(ptr noundef %hostdata, ptr noundef nonnull %mc, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  %dev6 = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 1, i32 3, i32 0, i32 0, i32 3
  %9 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev6, align 4
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  br i1 %cmp.not, label %do.end5, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7, ptr noundef nonnull @.str.62) #17
  br label %if.end

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.65) #17
  br label %if.end

if.end:                                           ; preds = %do.end5, %do.end
  %lock = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 1, i32 49, i32 12, i32 10, i32 3, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %call8 = tail call fastcc i32 @megaraid_abort_and_reset(ptr noundef %hostdata, ptr noundef %cmd, i32 noundef 16)
  %completed_list.i = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 1, i32 3, i32 0, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %completed_list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %pos.08.i = load ptr, ptr %completed_list.i, align 4
  %cmp.i.not9.i = icmp eq ptr %pos.08.i, %completed_list.i
  br i1 %cmp.i.not9.i, label %if.end.mega_rundoneq.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.mega_rundoneq.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_rundoneq.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %pos.010.i = phi ptr [ %pos.0.i, %for.body.i.for.body.i_crit_edge ], [ %pos.08.i, %if.end.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %pos.010.i, i32 -232
  tail call void @scsi_done(ptr noundef %add.ptr.i) #14
  %12 = ptrtoint ptr %pos.010.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %pos.0.i = load ptr, ptr %pos.010.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %completed_list.i
  br i1 %cmp.i.not.i, label %for.body.i.mega_rundoneq.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.mega_rundoneq.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_rundoneq.exit

mega_rundoneq.exit:                               ; preds = %for.body.i.mega_rundoneq.exit_crit_edge, %if.end.mega_rundoneq.exit_crit_edge
  %13 = ptrtoint ptr %completed_list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %completed_list.i, ptr %completed_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %completed_list.i, ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %mc) #14
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @megaraid_biosparam(ptr nocapture noundef readonly %sdev, ptr noundef %bdev, i64 noundef %capacity, ptr noundef %geom) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %mega_ch_class = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %mega_ch_class to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mega_ch_class, align 4
  %channel = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 17
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %6 = shl nuw i32 1, %5
  %7 = and i32 %6, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv = trunc i64 %capacity to i32
  %div59 = lshr i32 %conv, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %conv)
  %cmp = icmp ugt i32 %conv, 2097151
  %div6 = udiv i32 %conv, 16065
  %heads.0 = select i1 %cmp, i32 255, i32 64
  %sectors.0 = select i1 %cmp, i32 63, i32 32
  %cylinders.0 = select i1 %cmp, i32 %div6, i32 %div59
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %call = tail call zeroext i1 @scsi_partsize(ptr noundef %bdev, i64 noundef %capacity, ptr noundef %geom) #14
  br i1 %call, label %if.else.cleanup_crit_edge, label %do.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev11, ptr noundef nonnull @.str.70, i32 noundef %11) #17
  %conv13 = trunc i64 %capacity to i32
  %div1558 = lshr i32 %conv13, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %conv13)
  %cmp17 = icmp ugt i32 %conv13, 2097151
  %div22 = udiv i32 %conv13, 16065
  %heads.1 = select i1 %cmp17, i32 255, i32 64
  %sectors.1 = select i1 %cmp17, i32 63, i32 32
  %cylinders.1 = select i1 %cmp17, i32 %div22, i32 %div1558
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end, %if.then
  %heads.0.sink = phi i32 [ %heads.0, %if.then ], [ %heads.1, %do.end ]
  %sectors.0.sink = phi i32 [ %sectors.0, %if.then ], [ %sectors.1, %do.end ]
  %cylinders.0.sink = phi i32 [ %cylinders.0, %if.then ], [ %cylinders.1, %do.end ]
  %12 = ptrtoint ptr %geom to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %heads.0.sink, ptr %geom, align 4
  %arrayidx7 = getelementptr i32, ptr %geom, i32 1
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sectors.0.sink, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr i32, ptr %geom, i32 2
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cylinders.0.sink, ptr %arrayidx8, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mega_runpendq(ptr noundef %adapter) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %pending_list = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 11
  %0 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i = icmp eq ptr %1, %pending_list
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %for.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %mbox641.i.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 6
  %mbox2.i.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 7
  %pend_cmds.i.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 19
  %flag.i.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 1
  %mbox_dma.i.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 8
  %mmio_base.i.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 3
  %base.i.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.022.i = phi ptr [ %1, %for.body.lr.ph.i ], [ %next.023.i, %for.inc.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %pos.022.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %next.023.i = load ptr, ptr %pos.022.i, align 4
  %state.i = getelementptr i8, ptr %pos.022.i, i32 -4
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  %and.i = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %add.ptr.i = getelementptr i8, ptr %pos.022.i, i32 -8
  %5 = ptrtoint ptr %mbox641.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mbox641.i.i, align 4
  %7 = ptrtoint ptr %mbox2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mbox2.i.i, align 4
  %m_in.i.i = getelementptr inbounds %struct.mbox_t, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %m_in.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %m_in.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end14.i.i_crit_edge, label %if.then.i.do.body.i.i_crit_edge, !prof !549

if.then.i.do.body.i.i_crit_edge:                  ; preds = %if.then.i
  br label %do.body.i.i

if.then.i.if.end14.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i.i

do.body.i.i:                                      ; preds = %land.rhs.i.i.do.body.i.i_crit_edge, %if.then.i.do.body.i.i_crit_edge
  %i.0.i.i = phi i32 [ %inc.i.i, %land.rhs.i.i.do.body.i.i_crit_edge ], [ 0, %if.then.i.do.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #14
  %12 = ptrtoint ptr %m_in.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %m_in.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool7.not.i.i, label %do.body.i.i.do.end.i.i_crit_edge, label %land.rhs.i.i

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.i

land.rhs.i.i:                                     ; preds = %do.body.i.i
  %inc.i.i = add nuw nsw i32 %i.0.i.i, 1
  %14 = load i16, ptr @max_mbox_busy_wait, align 2
  %conv8.i.i = zext i16 %14 to i32
  %cmp.i17.i = icmp ult i32 %inc.i.i, %conv8.i.i
  br i1 %cmp.i17.i, label %land.rhs.i.i.do.body.i.i_crit_edge, label %land.rhs.i.i.do.end.i.i_crit_edge

land.rhs.i.i.do.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.i

land.rhs.i.i.do.body.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  %15 = ptrtoint ptr %m_in.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load volatile i8, ptr %m_in.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool12.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool12.not.i.i, label %do.end.i.i.if.end14.i.i_crit_edge, label %do.end.i.i.if.end_crit_edge

do.end.i.i.if.end_crit_edge:                      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end.i.i.if.end14.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %do.end.i.i.if.end14.i.i_crit_edge, %if.then.i.if.end14.i.i_crit_edge
  %raw_mbox.i.i = getelementptr i8, ptr %pos.022.i, i32 8
  %17 = call ptr @memcpy(ptr %8, ptr %raw_mbox.i.i, i32 15)
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  %conv15.i.i = trunc i32 %19 to i8
  %cmdid.i.i = getelementptr inbounds %struct.mbox_out, ptr %8, i32 0, i32 1
  %20 = ptrtoint ptr %cmdid.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store volatile i8 %conv15.i.i, ptr %cmdid.i.i, align 1
  %21 = ptrtoint ptr %m_in.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store volatile i8 1, ptr %m_in.i.i, align 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pend_cmds.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %pend_cmds.i.i, i32 1, i32 3, i32 1) #14
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pend_cmds.i.i, ptr %pend_cmds.i.i, i32 1, ptr elementtype(i32) %pend_cmds.i.i) #14, !srcloc !555
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load volatile i8, ptr %8, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.244)
  switch i8 %24, label %sw.default.i.i [
    i8 -89, label %if.end14.i.i.sw.bb.i.i_crit_edge
    i8 -88, label %if.end14.i.i.sw.bb.i.i_crit_edge2
    i8 -61, label %if.end14.i.i.sw.bb.i.i_crit_edge3
    i8 -29, label %if.end14.i.i.sw.bb.i.i_crit_edge4
  ]

if.end14.i.i.sw.bb.i.i_crit_edge4:                ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i

if.end14.i.i.sw.bb.i.i_crit_edge3:                ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i

if.end14.i.i.sw.bb.i.i_crit_edge2:                ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i

if.end14.i.i.sw.bb.i.i_crit_edge:                 ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %if.end14.i.i.sw.bb.i.i_crit_edge, %if.end14.i.i.sw.bb.i.i_crit_edge2, %if.end14.i.i.sw.bb.i.i_crit_edge3, %if.end14.i.i.sw.bb.i.i_crit_edge4
  %xferaddr.i.i = getelementptr inbounds %struct.mbox_out, ptr %8, i32 0, i32 4
  %26 = ptrtoint ptr %xferaddr.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load volatile i32, ptr %xferaddr.i.i, align 1
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store volatile i32 %27, ptr %6, align 1
  %xfer_segment_hi.i.i = getelementptr inbounds %struct.mbox64_t, ptr %6, i32 0, i32 1
  %29 = ptrtoint ptr %xfer_segment_hi.i.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store volatile i32 0, ptr %xfer_segment_hi.i.i, align 1
  store volatile i32 -1, ptr %xferaddr.i.i, align 1
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store volatile i32 0, ptr %6, align 1
  %xfer_segment_hi25.i.i = getelementptr inbounds %struct.mbox64_t, ptr %6, i32 0, i32 1
  %31 = ptrtoint ptr %xfer_segment_hi25.i.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store volatile i32 0, ptr %xfer_segment_hi25.i.i, align 1
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.default.i.i, %sw.bb.i.i
  %32 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state.i, align 4
  %or.i.i = or i32 %33, 4
  store i32 %or.i.i, ptr %state.i, align 4
  %34 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flag.i.i, align 4
  %and.i.i = and i32 %35, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool26.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool26.not.i.i, label %if.else.i.i, label %if.then33.i.i, !prof !556

if.then33.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %poll.i.i = getelementptr inbounds %struct.mbox_t, ptr %8, i32 0, i32 1, i32 4
  %36 = ptrtoint ptr %poll.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store volatile i8 0, ptr %poll.i.i, align 1
  %ack.i.i = getelementptr inbounds %struct.mbox_t, ptr %8, i32 0, i32 1, i32 5
  %37 = ptrtoint ptr %ack.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store volatile i8 0, ptr %ack.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !557
  tail call void @arm_heavy_mb() #14
  %38 = ptrtoint ptr %mbox_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mbox_dma.i.i, align 4
  %or39.i.i = or i32 %39, 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %or39.i.i) #14
  %41 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %40) #14, !srcloc !530
  br label %for.inc.i

if.else.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base.i.i, align 4
  %add.i.i = add i32 %44, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !540
  tail call void @arm_heavy_mb() #14
  %and.i.i.i = and i32 %add.i.i, 1048575
  %add.i.i.i = or i32 %and.i.i.i, -18874368
  %45 = inttoptr i32 %add.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 -64) #14, !srcloc !541
  %46 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !540
  tail call void @arm_heavy_mb() #14
  %and.i68.i.i = and i32 %47, 1048575
  %add.i69.i.i = or i32 %and.i68.i.i, -18874368
  %48 = inttoptr i32 %add.i69.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 16) #14, !srcloc !541
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i.i, %if.then33.i.i, %for.body.i.for.inc.i_crit_edge
  %cmp.i.not.i = icmp eq ptr %next.023.i, %pending_list
  br i1 %cmp.i.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %do.end.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mega_build_sglist(ptr nocapture noundef readonly %adapter, ptr nocapture noundef %scb, ptr nocapture noundef writeonly %buf, ptr nocapture noundef %len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.scb_t, ptr %scb, i32 0, i32 6
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %call = tail call i32 @scsi_dma_map(ptr noundef %1) #14
  %dma_type = getelementptr inbounds %struct.scb_t, ptr %scb, i32 0, i32 4
  %2 = ptrtoint ptr %dma_type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %dma_type, align 4
  %sglen = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 37
  %3 = ptrtoint ptr %sglen to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sglen, align 4
  %conv = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv)
  %5 = icmp ugt i32 %call, %conv
  br i1 %5, label %do.body6, label %do.end11, !prof !556

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/megaraid.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1728, 0\0A.popsection", ""() #14, !srcloc !558
  unreachable

do.end11:                                         ; preds = %entry
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %len, align 4
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %7 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp13 = icmp eq i32 %8, 1
  br i1 %cmp13, label %land.lhs.true, label %do.end11.if.end19_crit_edge

do.end11.if.end19_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

land.lhs.true:                                    ; preds = %do.end11
  %has_64bit_addr = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 24
  %9 = ptrtoint ptr %has_64bit_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %has_64bit_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool15.not = icmp eq i32 %10, 0
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdb.i, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_address, align 4
  %dma_h_bulkdata = getelementptr inbounds %struct.scb_t, ptr %scb, i32 0, i32 7
  %15 = ptrtoint ptr %dma_h_bulkdata to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %dma_h_bulkdata, align 4
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %buf, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %12, i32 0, i32 4
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %do.end11.if.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2176 = icmp sgt i32 %call, 0
  br i1 %cmp2176, label %for.body.lr.ph, label %if.end19.for.end_crit_edge

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end19
  %sdb.i75 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %17 = ptrtoint ptr %sdb.i75 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdb.i75, align 4
  %has_64bit_addr23 = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 24
  %sgl64 = getelementptr inbounds %struct.scb_t, ptr %scb, i32 0, i32 10
  %sgl = getelementptr inbounds %struct.scb_t, ptr %scb, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idx.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %sg.077 = phi ptr [ %18, %for.body.lr.ph ], [ %call40, %for.inc.for.body_crit_edge ]
  %19 = ptrtoint ptr %has_64bit_addr23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %has_64bit_addr23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool24.not = icmp eq i32 %20, 0
  %dma_address31 = getelementptr inbounds %struct.scatterlist, ptr %sg.077, i32 0, i32 3
  %21 = ptrtoint ptr %dma_address31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_address31, align 4
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %conv27 = zext i32 %22 to i64
  %23 = ptrtoint ptr %sgl64 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sgl64, align 4
  %arrayidx = getelementptr %struct.mega_sgl64, ptr %24, i32 %idx.079
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %conv27, ptr %arrayidx, align 1
  %dma_length28 = getelementptr inbounds %struct.scatterlist, ptr %sg.077, i32 0, i32 4
  %26 = ptrtoint ptr %dma_length28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_length28, align 4
  %28 = load ptr, ptr %sgl64, align 4
  %length = getelementptr %struct.mega_sgl64, ptr %28, i32 %idx.079, i32 1
  %29 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %27, ptr %length, align 1
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sgl, align 4
  %arrayidx32 = getelementptr %struct.mega_sglist, ptr %31, i32 %idx.079
  %32 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %22, ptr %arrayidx32, align 1
  %dma_length34 = getelementptr inbounds %struct.scatterlist, ptr %sg.077, i32 0, i32 4
  %33 = ptrtoint ptr %dma_length34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_length34, align 4
  %35 = load ptr, ptr %sgl, align 4
  %length37 = getelementptr %struct.mega_sglist, ptr %35, i32 %idx.079, i32 1
  %36 = ptrtoint ptr %length37 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %34, ptr %length37, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then25
  %.sink81 = phi i32 [ %27, %if.then25 ], [ %34, %if.else ]
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  %add = add i32 %38, %.sink81
  store i32 %add, ptr %len, align 4
  %inc = add nuw nsw i32 %idx.079, 1
  %call40 = tail call ptr @sg_next(ptr noundef %sg.077) #14
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end19.for.end_crit_edge
  %sgl_dma_addr = getelementptr inbounds %struct.scb_t, ptr %scb, i32 0, i32 11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then16
  %sgl_dma_addr.sink = phi ptr [ %sgl_dma_addr, %for.end ], [ %dma_length, %if.then16 ]
  %buf.sink = phi ptr [ %buf, %for.end ], [ %len, %if.then16 ]
  %retval.0 = phi i32 [ %call, %for.end ], [ 0, %if.then16 ]
  %39 = ptrtoint ptr %sgl_dma_addr.sink to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sgl_dma_addr.sink, align 4
  %41 = ptrtoint ptr %buf.sink to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %buf.sink, align 4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @megaraid_abort_and_reset(ptr noundef %adapter, ptr noundef %cmd, i32 noundef %aor) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 9
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %aor)
  %cmp = icmp eq i32 %aor, 8
  %cond = select i1 %cmp, ptr @.str.54, ptr @.str.55
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %2 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmnd, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %conv = zext i8 %5 to i32
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %channel = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 16
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 18
  %12 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %lun, align 8
  %conv4 = trunc i64 %13 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.52, ptr noundef nonnull %cond, i32 noundef %conv, i32 noundef %9, i32 noundef %11, i32 noundef %conv4) #17
  %pending_list = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 11
  %14 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not = icmp eq ptr %15, %pending_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %entry.for.cond_crit_edge

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %pos.0 = phi ptr [ %next.0, %for.body.for.cond_crit_edge ], [ %15, %entry.for.cond_crit_edge ]
  %cmp.i71.not = icmp eq ptr %pos.0, %pending_list
  br i1 %cmp.i71.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %16 = ptrtoint ptr %pos.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %next.0 = load ptr, ptr %pos.0, align 4
  %cmd11 = getelementptr i8, ptr %pos.0, i32 84
  %17 = ptrtoint ptr %cmd11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmd11, align 4
  %cmp12 = icmp eq ptr %18, %cmd
  br i1 %cmp12, label %if.then14, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.then14:                                        ; preds = %for.body
  %add.ptr.le = getelementptr i8, ptr %pos.0, i32 -8
  %state = getelementptr i8, ptr %pos.0, i32 -4
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %or = or i32 %20, %aor
  store i32 %or, ptr %state, align 4
  %and = and i32 %or, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %add.ptr.le to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.le, align 4
  br i1 %tobool16.not, label %do.end28, label %do.end20

do.end20:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev30, ptr noundef nonnull @.str.57, ptr noundef nonnull %cond, i32 noundef %24) #17
  br label %cleanup

do.end28:                                         ; preds = %if.then14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev30, ptr noundef nonnull @.str.60, ptr noundef nonnull %cond, i32 noundef %24) #17
  tail call fastcc void @mega_free_scb(ptr noundef %adapter, ptr noundef %add.ptr.le)
  %spec.select = select i1 %cmp, i32 327680, i32 524288
  %25 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.select, ptr %25, align 4
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22
  %completed_list = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 12, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %SCp, ptr noundef %28, ptr noundef %completed_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %do.end28.cleanup_crit_edge

do.end28.cleanup_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i:                                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %SCp, ptr %prev.i, align 4
  %30 = ptrtoint ptr %SCp to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %completed_list, ptr %SCp, align 4
  %prev3.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %SCp, ptr %28, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %do.end28.cleanup_crit_edge, %do.end20, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8195, %do.end20 ], [ 8195, %entry.cleanup_crit_edge ], [ 8194, %do.end28.cleanup_crit_edge ], [ 8194, %if.end.i.i ], [ 8195, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mega_free_scb(ptr noundef %adapter, ptr noundef %scb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_type = getelementptr inbounds %struct.scb_t, ptr %scb, i32 0, i32 4
  %0 = ptrtoint ptr %dma_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cond = icmp eq i32 %1, 2
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %cmd = getelementptr inbounds %struct.scb_t, ptr %scb, i32 0, i32 6
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd, align 4
  tail call void @scsi_dma_unmap(ptr noundef %3) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %list = getelementptr inbounds %struct.scb_t, ptr %scb, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #14
  br i1 %call.i.i, label %if.end.i.i, label %sw.epilog.list_del_init.exit_crit_edge

sw.epilog.list_del_init.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.scb_t, ptr %scb, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %sw.epilog.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.scb_t, ptr %scb, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i3.i, align 4
  %state = getelementptr inbounds %struct.scb_t, ptr %scb, i32 0, i32 1
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %state, align 4
  %cmd1 = getelementptr inbounds %struct.scb_t, ptr %scb, i32 0, i32 6
  %13 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %cmd1, align 4
  %free_list = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 10
  %14 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %free_list, align 4
  %call.i.i8 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %free_list, ptr noundef %15) #14
  br i1 %call.i.i8, label %if.end.i.i9, label %list_del_init.exit.list_add.exit_crit_edge

list_del_init.exit.list_add.exit_crit_edge:       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i9:                                      ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %prev1.i.i, align 4
  %17 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %list, align 4
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %free_list, ptr %prev.i3.i, align 4
  %19 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list, ptr %free_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i9, %list_del_init.exit.list_add.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mega_internal_command(ptr noundef %adapter, ptr nocapture noundef %mc, ptr noundef %pthru) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %int_mtx = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %int_mtx, i32 noundef 0) #14
  %int_scb = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 38
  %0 = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 38, i32 2
  %1 = call ptr @memset(ptr %0, i32 0, i32 124)
  %2 = ptrtoint ptr %int_scb to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 127, ptr %int_scb, align 4
  %state = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 38, i32 1
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %state, align 4
  %raw_mbox = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 38, i32 3
  %4 = call ptr @memcpy(ptr %raw_mbox, ptr %mc, i32 18)
  %5 = ptrtoint ptr %mc to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp = icmp eq i8 %6, 3
  br i1 %cmp, label %if.then, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pthru2 = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 38, i32 12
  %7 = ptrtoint ptr %pthru2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pthru, ptr %pthru2, align 4
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry.do.body3_crit_edge
  %lock = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 34
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %list = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 38, i32 2
  %pending_list = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i50 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %9, ptr noundef %pending_list) #14
  br i1 %call.i.i50, label %if.end.i.i, label %do.body3.list_add_tail.exit_crit_edge

do.body3.list_add_tail.exit_crit_edge:            ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %prev.i, align 4
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pending_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 38, i32 2, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body3.list_add_tail.exit_crit_edge
  %quiescent = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 33
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %quiescent, i32 noundef 4) #14
  %14 = ptrtoint ptr %quiescent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %quiescent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10 = icmp eq i32 %15, 0
  br i1 %cmp10, label %if.then12, label %list_add_tail.exit.if.end13_crit_edge

list_add_tail.exit.if.end13_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then12:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @mega_runpendq(ptr noundef %adapter)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %list_add_tail.exit.if.end13_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #14
  %int_waitq = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 41
  tail call void @wait_for_completion(ptr noundef %int_waitq) #14
  %int_status = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 40
  %16 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %int_status, align 4
  %conv15 = trunc i32 %17 to i8
  %status = getelementptr inbounds %struct.megacmd_t, ptr %mc, i32 0, i32 9
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv15, ptr %status, align 1
  tail call void @mutex_unlock(ptr noundef %int_mtx) #14
  ret i32 %17
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsi_partsize(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mega_cmd_done(ptr noundef %adapter, ptr nocapture noundef readonly %completed, i32 noundef %nstatus, i32 noundef %status) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nstatus)
  %cmp267 = icmp sgt i32 %nstatus, 0
  br i1 %cmp267, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %scb_list = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 18
  %dev19 = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 9
  %completed_list = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 12, i32 1
  %free_list.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 10
  %int_scb = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 38
  %list = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 38, i32 2
  %prev.i.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 38, i32 2, i32 1
  %state = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 38, i32 1
  %int_status = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 40
  %int_waitq = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 41
  %mega_ch_class = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0278 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %mbox.0276 = phi ptr [ null, %for.body.lr.ph ], [ %mbox.2, %for.inc.for.body_crit_edge ]
  %pthru.0274 = phi ptr [ null, %for.body.lr.ph ], [ %pthru.2, %for.inc.for.body_crit_edge ]
  %cmd.0272 = phi ptr [ null, %for.body.lr.ph ], [ %cmd.2, %for.inc.for.body_crit_edge ]
  %epthru.0270 = phi ptr [ null, %for.body.lr.ph ], [ %epthru.2, %for.inc.for.body_crit_edge ]
  %status.addr.0268 = phi i32 [ %status, %for.body.lr.ph ], [ %status.addr.2, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %completed, i32 %i.0278
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %1)
  %cmp1 = icmp eq i8 %1, 127
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %list, align 4
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %state, align 4
  %11 = ptrtoint ptr %int_status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %status.addr.0268, ptr %int_status, align 4
  tail call void @complete(ptr noundef %int_waitq) #14
  br label %if.end43

if.else:                                          ; preds = %for.body
  %12 = ptrtoint ptr %scb_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %scb_list, align 4
  %arrayidx3 = getelementptr %struct.scb_t, ptr %13, i32 %conv
  %state4 = getelementptr %struct.scb_t, ptr %13, i32 %conv, i32 1
  %14 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state4, align 4
  %and = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else.do.end_crit_edge, label %lor.lhs.false

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lor.lhs.false:                                    ; preds = %if.else
  %cmd5 = getelementptr %struct.scb_t, ptr %13, i32 %conv, i32 6
  %16 = ptrtoint ptr %cmd5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmd5, align 4
  %cmp6 = icmp eq ptr %17, null
  br i1 %cmp6, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.else.do.end_crit_edge
  %18 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev19, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %cmd11 = getelementptr %struct.scb_t, ptr %13, i32 %conv, i32 6
  %20 = ptrtoint ptr %cmd11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmd11, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev9, ptr noundef nonnull @.str.72, i32 noundef %conv, i32 noundef %15, ptr noundef %21) #17
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %and13 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end23, label %do.end18

do.end18:                                         ; preds = %if.end
  %22 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev19, align 4
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev20, ptr noundef nonnull @.str.76, i32 noundef %25) #17
  %26 = ptrtoint ptr %cmd5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd5, align 4
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %27, i32 0, i32 24
  %28 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 327680, ptr %result, align 4
  %29 = load ptr, ptr %cmd5, align 4
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %29, i32 0, i32 22
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i, align 4
  %call.i.i210 = tail call zeroext i1 @__list_add_valid(ptr noundef %SCp, ptr noundef %31, ptr noundef %completed_list) #14
  br i1 %call.i.i210, label %if.end.i.i211, label %do.end18.list_add_tail.exit_crit_edge

do.end18.list_add_tail.exit_crit_edge:            ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i211:                                    ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %SCp, ptr %prev.i, align 4
  %33 = ptrtoint ptr %SCp to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %completed_list, ptr %SCp, align 4
  %prev3.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %29, i32 0, i32 22, i32 1
  %34 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %SCp, ptr %31, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i211, %do.end18.list_add_tail.exit_crit_edge
  %dma_type.i = getelementptr %struct.scb_t, ptr %13, i32 %conv, i32 4
  %36 = ptrtoint ptr %dma_type.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cond.i = icmp eq i32 %37, 2
  br i1 %cond.i, label %sw.bb.i, label %list_add_tail.exit.sw.epilog.i_crit_edge

list_add_tail.exit.sw.epilog.i_crit_edge:         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %cmd5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cmd5, align 4
  tail call void @scsi_dma_unmap(ptr noundef %39) #14
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %list_add_tail.exit.sw.epilog.i_crit_edge
  %list.i = getelementptr %struct.scb_t, ptr %13, i32 %conv, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %sw.epilog.i.list_del_init.exit.i_crit_edge

sw.epilog.i.list_del_init.exit.i_crit_edge:       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr %struct.scb_t, ptr %13, i32 %conv, i32 2, i32 1
  %40 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i.i, align 4
  %42 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %sw.epilog.i.list_del_init.exit.i_crit_edge
  %46 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i3.i.i = getelementptr %struct.scb_t, ptr %13, i32 %conv, i32 2, i32 1
  %47 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %list.i, ptr %prev.i3.i.i, align 4
  %48 = ptrtoint ptr %state4 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %state4, align 4
  %49 = ptrtoint ptr %cmd5 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %cmd5, align 4
  %50 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %free_list.i, align 4
  %call.i.i8.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %free_list.i, ptr noundef %51) #14
  br i1 %call.i.i8.i, label %if.end.i.i9.i, label %list_del_init.exit.i.for.inc_crit_edge

list_del_init.exit.i.for.inc_crit_edge:           ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end.i.i9.i:                                    ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i212 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i212 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %list.i, ptr %prev1.i.i.i212, align 4
  %53 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %51, ptr %list.i, align 4
  %54 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %free_list.i, ptr %prev.i3.i.i, align 4
  %55 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %list.i, ptr %free_list.i, align 4
  br label %for.inc

if.end23:                                         ; preds = %if.end
  %and25 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end39, label %do.end30

do.end30:                                         ; preds = %if.end23
  %56 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev19, align 4
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %58 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev32, ptr noundef nonnull @.str.79, i32 noundef %59) #17
  %60 = ptrtoint ptr %cmd5 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cmd5, align 4
  %result35 = getelementptr inbounds %struct.scsi_cmnd, ptr %61, i32 0, i32 24
  %62 = ptrtoint ptr %result35 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 524288, ptr %result35, align 4
  %63 = load ptr, ptr %cmd5, align 4
  %SCp37 = getelementptr inbounds %struct.scsi_cmnd, ptr %63, i32 0, i32 22
  %64 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i, align 4
  %call.i.i214 = tail call zeroext i1 @__list_add_valid(ptr noundef %SCp37, ptr noundef %65, ptr noundef %completed_list) #14
  br i1 %call.i.i214, label %if.end.i.i216, label %do.end30.list_add_tail.exit217_crit_edge

do.end30.list_add_tail.exit217_crit_edge:         ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit217

if.end.i.i216:                                    ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #16
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %SCp37, ptr %prev.i, align 4
  %67 = ptrtoint ptr %SCp37 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %completed_list, ptr %SCp37, align 4
  %prev3.i.i215 = getelementptr inbounds %struct.scsi_cmnd, ptr %63, i32 0, i32 22, i32 1
  %68 = ptrtoint ptr %prev3.i.i215 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev3.i.i215, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %SCp37, ptr %65, align 4
  br label %list_add_tail.exit217

list_add_tail.exit217:                            ; preds = %if.end.i.i216, %do.end30.list_add_tail.exit217_crit_edge
  %dma_type.i218 = getelementptr %struct.scb_t, ptr %13, i32 %conv, i32 4
  %70 = ptrtoint ptr %dma_type.i218 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dma_type.i218, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %cond.i219 = icmp eq i32 %71, 2
  br i1 %cond.i219, label %sw.bb.i221, label %list_add_tail.exit217.sw.epilog.i224_crit_edge

list_add_tail.exit217.sw.epilog.i224_crit_edge:   ; preds = %list_add_tail.exit217
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i224

sw.bb.i221:                                       ; preds = %list_add_tail.exit217
  call void @__sanitizer_cov_trace_pc() #16
  %72 = ptrtoint ptr %cmd5 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cmd5, align 4
  tail call void @scsi_dma_unmap(ptr noundef %73) #14
  br label %sw.epilog.i224

sw.epilog.i224:                                   ; preds = %sw.bb.i221, %list_add_tail.exit217.sw.epilog.i224_crit_edge
  %list.i222 = getelementptr %struct.scb_t, ptr %13, i32 %conv, i32 2
  %call.i.i.i223 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i222) #14
  br i1 %call.i.i.i223, label %if.end.i.i.i227, label %sw.epilog.i224.list_del_init.exit.i233_crit_edge

sw.epilog.i224.list_del_init.exit.i233_crit_edge: ; preds = %sw.epilog.i224
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit.i233

if.end.i.i.i227:                                  ; preds = %sw.epilog.i224
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i225 = getelementptr %struct.scb_t, ptr %13, i32 %conv, i32 2, i32 1
  %74 = ptrtoint ptr %prev.i.i.i225 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i.i.i225, align 4
  %76 = ptrtoint ptr %list.i222 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %list.i222, align 4
  %prev1.i.i.i.i226 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %prev1.i.i.i.i226 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev1.i.i.i.i226, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %77, ptr %75, align 4
  br label %list_del_init.exit.i233

list_del_init.exit.i233:                          ; preds = %if.end.i.i.i227, %sw.epilog.i224.list_del_init.exit.i233_crit_edge
  %80 = ptrtoint ptr %list.i222 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %list.i222, ptr %list.i222, align 4
  %prev.i3.i.i228 = getelementptr %struct.scb_t, ptr %13, i32 %conv, i32 2, i32 1
  %81 = ptrtoint ptr %prev.i3.i.i228 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %list.i222, ptr %prev.i3.i.i228, align 4
  %82 = ptrtoint ptr %state4 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %state4, align 4
  %83 = ptrtoint ptr %cmd5 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %cmd5, align 4
  %84 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %free_list.i, align 4
  %call.i.i8.i232 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i222, ptr noundef %free_list.i, ptr noundef %85) #14
  br i1 %call.i.i8.i232, label %if.end.i.i9.i235, label %list_del_init.exit.i233.for.inc_crit_edge

list_del_init.exit.i233.for.inc_crit_edge:        ; preds = %list_del_init.exit.i233
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end.i.i9.i235:                                 ; preds = %list_del_init.exit.i233
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i234 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %prev1.i.i.i234 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %list.i222, ptr %prev1.i.i.i234, align 4
  %87 = ptrtoint ptr %list.i222 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %85, ptr %list.i222, align 4
  %88 = ptrtoint ptr %prev.i3.i.i228 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %free_list.i, ptr %prev.i3.i.i228, align 4
  %89 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %list.i222, ptr %free_list.i, align 4
  br label %for.inc

if.end39:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %pthru41 = getelementptr %struct.scb_t, ptr %13, i32 %conv, i32 12
  %90 = ptrtoint ptr %pthru41 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pthru41, align 4
  %epthru42 = getelementptr %struct.scb_t, ptr %13, i32 %conv, i32 14
  %92 = ptrtoint ptr %epthru42 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %epthru42, align 4
  %raw_mbox = getelementptr %struct.scb_t, ptr %13, i32 %conv, i32 3
  br label %if.end43

if.end43:                                         ; preds = %if.end39, %list_del_init.exit
  %epthru.1 = phi ptr [ %epthru.0270, %list_del_init.exit ], [ %93, %if.end39 ]
  %cmd.1 = phi ptr [ %cmd.0272, %list_del_init.exit ], [ %17, %if.end39 ]
  %pthru.1 = phi ptr [ %pthru.0274, %list_del_init.exit ], [ %91, %if.end39 ]
  %mbox.1 = phi ptr [ %mbox.0276, %list_del_init.exit ], [ %raw_mbox, %if.end39 ]
  %scb.0 = phi ptr [ %int_scb, %list_del_init.exit ], [ %arrayidx3, %if.end39 ]
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd.1, i32 0, i32 1
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd.1, i32 0, i32 16
  %94 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cmnd, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %95, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %97)
  %cmp48 = icmp eq i8 %97, 18
  br i1 %cmp48, label %land.lhs.true, label %if.end43.if.end75_crit_edge

if.end43.if.end75_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

land.lhs.true:                                    ; preds = %if.end43
  %98 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %device, align 4
  %channel = getelementptr inbounds %struct.scsi_device, ptr %99, i32 0, i32 17
  %100 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %channel, align 4
  %arrayidx44 = getelementptr %struct.adapter_t, ptr %adapter, i32 0, i32 35, i32 %101
  %102 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool50.not = icmp eq i8 %103, 0
  br i1 %tobool50.not, label %if.then51, label %land.lhs.true.if.end75_crit_edge

land.lhs.true.if.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

if.then51:                                        ; preds = %land.lhs.true
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd.1, i32 0, i32 17
  %104 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sdb.i, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 4
  %and.i.i = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !549

do.body2.i:                                       ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #14, !srcloc !550
  unreachable

sg_page.exit:                                     ; preds = %if.then51
  %and.i = and i32 %107, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool53.not = icmp eq i32 %and.i, 0
  br i1 %tobool53.not, label %do.end60, label %sg_virt.exit

sg_virt.exit:                                     ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  %108 = inttoptr i32 %and.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef nonnull %108) #14
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %105, i32 0, i32 1
  %109 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %110
  %111 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %add.ptr.i, align 1
  br label %if.end63

do.end60:                                         ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  %113 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev19, align 4
  %dev62 = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev62, ptr noundef nonnull @.str.82) #17
  br label %if.end63

if.end63:                                         ; preds = %do.end60, %sg_virt.exit
  %c.0 = phi i8 [ %112, %sg_virt.exit ], [ 0, %do.end60 ]
  %115 = ptrtoint ptr %mega_ch_class to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %mega_ch_class, align 4
  %117 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %device, align 4
  %channel65 = getelementptr inbounds %struct.scsi_device, ptr %118, i32 0, i32 17
  %119 = ptrtoint ptr %channel65 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %channel65, align 4
  %121 = shl nuw i32 1, %120
  %122 = and i32 %121, %116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool67.not = icmp ne i32 %122, 0
  %123 = and i8 %c.0, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %cmp71 = icmp eq i8 %123, 0
  %or.cond = select i1 %tobool67.not, i1 %cmp71, i1 false
  br i1 %or.cond, label %if.end75.thread, label %if.end63.if.end75_crit_edge

if.end63.if.end75_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

if.end75.thread:                                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  %result76263 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd.1, i32 0, i32 24
  %124 = ptrtoint ptr %result76263 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %result76263, align 4
  br label %sw.default

if.end75:                                         ; preds = %if.end63.if.end75_crit_edge, %land.lhs.true.if.end75_crit_edge, %if.end43.if.end75_crit_edge
  %result76 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd.1, i32 0, i32 24
  %125 = ptrtoint ptr %result76 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %result76, align 4
  %126 = zext i32 %status.addr.0268 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.245)
  switch i32 %status.addr.0268, label %if.end75.sw.default_crit_edge [
    i32 0, label %if.end75.sw.epilog_crit_edge
    i32 2, label %sw.bb78
    i32 8, label %sw.bb106
  ]

if.end75.sw.epilog_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end75.sw.default_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.default

sw.bb78:                                          ; preds = %if.end75
  %127 = ptrtoint ptr %mbox.1 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %mbox.1, align 1
  %129 = zext i8 %128 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.246)
  switch i8 %128, label %if.else103 [
    i8 3, label %sw.bb78.if.then89_crit_edge
    i8 -61, label %sw.bb78.if.then89_crit_edge279
    i8 -29, label %if.then98
  ]

sw.bb78.if.then89_crit_edge279:                   ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then89

sw.bb78.if.then89_crit_edge:                      ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then89

if.then89:                                        ; preds = %sw.bb78.if.then89_crit_edge, %sw.bb78.if.then89_crit_edge279
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd.1, i32 0, i32 21
  %130 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %sense_buffer, align 4
  %reqsensearea = getelementptr inbounds %struct.mega_passthru, ptr %pthru.1, i32 0, i32 9
  %132 = call ptr @memcpy(ptr %131, ptr %reqsensearea, i32 14)
  %133 = ptrtoint ptr %result76 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 2, ptr %result76, align 4
  br label %sw.epilog

if.then98:                                        ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #16
  %sense_buffer99 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd.1, i32 0, i32 21
  %134 = ptrtoint ptr %sense_buffer99 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %sense_buffer99, align 4
  %reqsensearea100 = getelementptr inbounds %struct.mega_ext_passthru, ptr %epthru.1, i32 0, i32 12
  %136 = call ptr @memcpy(ptr %135, ptr %reqsensearea100, i32 14)
  %137 = ptrtoint ptr %result76 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 2, ptr %result76, align 4
  br label %sw.epilog

if.else103:                                       ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @scsi_build_sense(ptr noundef %cmd.1, i32 noundef 0, i8 noundef zeroext 11, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  br label %sw.epilog

sw.bb106:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  %138 = ptrtoint ptr %result76 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 131080, ptr %result76, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end75.sw.default_crit_edge, %if.end75.thread
  %result76266 = phi ptr [ %result76263, %if.end75.thread ], [ %result76, %if.end75.sw.default_crit_edge ]
  %status.addr.1264 = phi i32 [ 240, %if.end75.thread ], [ %status.addr.0268, %if.end75.sw.default_crit_edge ]
  %139 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %cmnd, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %140, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %cmp113 = icmp eq i8 %142, 0
  br i1 %cmp113, label %if.then115, label %if.else118

if.then115:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  %143 = ptrtoint ptr %result76266 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 458776, ptr %result76266, align 4
  br label %sw.epilog

if.else118:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status.addr.1264)
  %cmp119 = icmp eq i32 %status.addr.1264, 1
  %144 = and i8 %142, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %144)
  %switch = icmp eq i8 %144, 22
  %or.cond209 = select i1 %cmp119, i1 %switch, i1 false
  br i1 %or.cond209, label %if.then133, label %if.else136

if.then133:                                       ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #16
  %145 = ptrtoint ptr %result76266 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 458776, ptr %result76266, align 4
  br label %sw.epilog

if.else136:                                       ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #16
  %or137 = or i32 %status.addr.1264, 262144
  %146 = ptrtoint ptr %result76266 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %or137, ptr %result76266, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else136, %if.then133, %if.then115, %sw.bb106, %if.else103, %if.then98, %if.then89, %if.end75.sw.epilog_crit_edge
  %status.addr.1265 = phi i32 [ %status.addr.1264, %if.then115 ], [ %status.addr.1264, %if.else136 ], [ 1, %if.then133 ], [ 2, %if.then89 ], [ 2, %if.else103 ], [ 2, %if.then98 ], [ 8, %sw.bb106 ], [ %status.addr.0268, %if.end75.sw.epilog_crit_edge ]
  %dma_type.i238 = getelementptr inbounds %struct.scb_t, ptr %scb.0, i32 0, i32 4
  %147 = ptrtoint ptr %dma_type.i238 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %dma_type.i238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %148)
  %cond.i239 = icmp eq i32 %148, 2
  br i1 %cond.i239, label %sw.bb.i241, label %sw.epilog.sw.epilog.i244_crit_edge

sw.epilog.sw.epilog.i244_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i244

sw.bb.i241:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %cmd.i240 = getelementptr inbounds %struct.scb_t, ptr %scb.0, i32 0, i32 6
  %149 = ptrtoint ptr %cmd.i240 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %cmd.i240, align 4
  tail call void @scsi_dma_unmap(ptr noundef %150) #14
  br label %sw.epilog.i244

sw.epilog.i244:                                   ; preds = %sw.bb.i241, %sw.epilog.sw.epilog.i244_crit_edge
  %list.i242 = getelementptr inbounds %struct.scb_t, ptr %scb.0, i32 0, i32 2
  %call.i.i.i243 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i242) #14
  br i1 %call.i.i.i243, label %if.end.i.i.i247, label %sw.epilog.i244.list_del_init.exit.i253_crit_edge

sw.epilog.i244.list_del_init.exit.i253_crit_edge: ; preds = %sw.epilog.i244
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit.i253

if.end.i.i.i247:                                  ; preds = %sw.epilog.i244
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i245 = getelementptr inbounds %struct.scb_t, ptr %scb.0, i32 0, i32 2, i32 1
  %151 = ptrtoint ptr %prev.i.i.i245 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %prev.i.i.i245, align 4
  %153 = ptrtoint ptr %list.i242 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %list.i242, align 4
  %prev1.i.i.i.i246 = getelementptr inbounds %struct.list_head, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %prev1.i.i.i.i246 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %152, ptr %prev1.i.i.i.i246, align 4
  %156 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile ptr %154, ptr %152, align 4
  br label %list_del_init.exit.i253

list_del_init.exit.i253:                          ; preds = %if.end.i.i.i247, %sw.epilog.i244.list_del_init.exit.i253_crit_edge
  %157 = ptrtoint ptr %list.i242 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile ptr %list.i242, ptr %list.i242, align 4
  %prev.i3.i.i248 = getelementptr inbounds %struct.scb_t, ptr %scb.0, i32 0, i32 2, i32 1
  %158 = ptrtoint ptr %prev.i3.i.i248 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %list.i242, ptr %prev.i3.i.i248, align 4
  %state.i249 = getelementptr inbounds %struct.scb_t, ptr %scb.0, i32 0, i32 1
  %159 = ptrtoint ptr %state.i249 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %state.i249, align 4
  %cmd1.i250 = getelementptr inbounds %struct.scb_t, ptr %scb.0, i32 0, i32 6
  %160 = ptrtoint ptr %cmd1.i250 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %cmd1.i250, align 4
  %161 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %free_list.i, align 4
  %call.i.i8.i252 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i242, ptr noundef %free_list.i, ptr noundef %162) #14
  br i1 %call.i.i8.i252, label %if.end.i.i9.i255, label %list_del_init.exit.i253.mega_free_scb.exit256_crit_edge

list_del_init.exit.i253.mega_free_scb.exit256_crit_edge: ; preds = %list_del_init.exit.i253
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_free_scb.exit256

if.end.i.i9.i255:                                 ; preds = %list_del_init.exit.i253
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i254 = getelementptr inbounds %struct.list_head, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %prev1.i.i.i254 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %list.i242, ptr %prev1.i.i.i254, align 4
  %164 = ptrtoint ptr %list.i242 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %162, ptr %list.i242, align 4
  %165 = ptrtoint ptr %prev.i3.i.i248 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %free_list.i, ptr %prev.i3.i.i248, align 4
  %166 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store volatile ptr %list.i242, ptr %free_list.i, align 4
  br label %mega_free_scb.exit256

mega_free_scb.exit256:                            ; preds = %if.end.i.i9.i255, %list_del_init.exit.i253.mega_free_scb.exit256_crit_edge
  %SCp142 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd.1, i32 0, i32 22
  %167 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %prev.i, align 4
  %call.i.i258 = tail call zeroext i1 @__list_add_valid(ptr noundef %SCp142, ptr noundef %168, ptr noundef %completed_list) #14
  br i1 %call.i.i258, label %if.end.i.i260, label %mega_free_scb.exit256.for.inc_crit_edge

mega_free_scb.exit256.for.inc_crit_edge:          ; preds = %mega_free_scb.exit256
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end.i.i260:                                    ; preds = %mega_free_scb.exit256
  call void @__sanitizer_cov_trace_pc() #16
  %169 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %SCp142, ptr %prev.i, align 4
  %170 = ptrtoint ptr %SCp142 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %completed_list, ptr %SCp142, align 4
  %prev3.i.i259 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd.1, i32 0, i32 22, i32 1
  %171 = ptrtoint ptr %prev3.i.i259 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %168, ptr %prev3.i.i259, align 4
  %172 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile ptr %SCp142, ptr %168, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i260, %mega_free_scb.exit256.for.inc_crit_edge, %if.end.i.i9.i235, %list_del_init.exit.i233.for.inc_crit_edge, %if.end.i.i9.i, %list_del_init.exit.i.for.inc_crit_edge, %do.end
  %status.addr.2 = phi i32 [ %status.addr.0268, %do.end ], [ %status.addr.0268, %list_del_init.exit.i.for.inc_crit_edge ], [ %status.addr.0268, %if.end.i.i9.i ], [ %status.addr.0268, %list_del_init.exit.i233.for.inc_crit_edge ], [ %status.addr.0268, %if.end.i.i9.i235 ], [ %status.addr.1265, %mega_free_scb.exit256.for.inc_crit_edge ], [ %status.addr.1265, %if.end.i.i260 ]
  %epthru.2 = phi ptr [ %epthru.0270, %do.end ], [ %epthru.0270, %list_del_init.exit.i.for.inc_crit_edge ], [ %epthru.0270, %if.end.i.i9.i ], [ %epthru.0270, %list_del_init.exit.i233.for.inc_crit_edge ], [ %epthru.0270, %if.end.i.i9.i235 ], [ %epthru.1, %mega_free_scb.exit256.for.inc_crit_edge ], [ %epthru.1, %if.end.i.i260 ]
  %cmd.2 = phi ptr [ %cmd.0272, %do.end ], [ %cmd.0272, %list_del_init.exit.i.for.inc_crit_edge ], [ %cmd.0272, %if.end.i.i9.i ], [ %cmd.0272, %list_del_init.exit.i233.for.inc_crit_edge ], [ %cmd.0272, %if.end.i.i9.i235 ], [ %cmd.1, %mega_free_scb.exit256.for.inc_crit_edge ], [ %cmd.1, %if.end.i.i260 ]
  %pthru.2 = phi ptr [ %pthru.0274, %do.end ], [ %pthru.0274, %list_del_init.exit.i.for.inc_crit_edge ], [ %pthru.0274, %if.end.i.i9.i ], [ %pthru.0274, %list_del_init.exit.i233.for.inc_crit_edge ], [ %pthru.0274, %if.end.i.i9.i235 ], [ %pthru.1, %mega_free_scb.exit256.for.inc_crit_edge ], [ %pthru.1, %if.end.i.i260 ]
  %mbox.2 = phi ptr [ %mbox.0276, %do.end ], [ %mbox.0276, %list_del_init.exit.i.for.inc_crit_edge ], [ %mbox.0276, %if.end.i.i9.i ], [ %mbox.0276, %list_del_init.exit.i233.for.inc_crit_edge ], [ %mbox.0276, %if.end.i.i9.i235 ], [ %mbox.1, %mega_free_scb.exit256.for.inc_crit_edge ], [ %mbox.1, %if.end.i.i260 ]
  %inc = add nuw nsw i32 %i.0278, 1
  %exitcond.not = icmp eq i32 %inc, %nstatus
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_build_sense(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @issue_scb_block(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %raw_mbox) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox641 = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 6
  %0 = ptrtoint ptr %mbox641 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox641, align 4
  %mbox2 = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 7
  %2 = ptrtoint ptr %mbox2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbox2, align 4
  %m_in.i = getelementptr inbounds %struct.mbox_t, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %m_in.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %m_in.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %counter.04.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %m_in.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %m_in.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end_crit_edge, label %if.end.i.i

for.body.i.i.if.end_crit_edge:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 21474800) #14
  tail call void @__might_resched(ptr noundef nonnull @.str.8, i32 noundef 1700, i32 noundef 0) #14
  %call.i.i.i = tail call i32 @__cond_resched() #14
  %inc.i.i = add nuw nsw i32 %counter.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10000
  br i1 %exitcond.not.i.i, label %do.end111, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

if.end:                                           ; preds = %for.body.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %9 = call ptr @memcpy(ptr %3, ptr %raw_mbox, i32 15)
  %cmdid = getelementptr inbounds %struct.mbox_out, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %cmdid to i32
  call void @__asan_store1_noabort(i32 %10)
  store volatile i8 -2, ptr %cmdid, align 1
  %11 = ptrtoint ptr %m_in.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store volatile i8 1, ptr %m_in.i, align 1
  %12 = ptrtoint ptr %raw_mbox to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %raw_mbox, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.247)
  switch i8 %13, label %sw.default [
    i8 -89, label %if.end.sw.bb_crit_edge
    i8 -88, label %if.end.sw.bb_crit_edge173
    i8 -61, label %if.end.sw.bb_crit_edge174
    i8 -29, label %if.end.sw.bb_crit_edge175
  ]

if.end.sw.bb_crit_edge175:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end.sw.bb_crit_edge174:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end.sw.bb_crit_edge173:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge173, %if.end.sw.bb_crit_edge174, %if.end.sw.bb_crit_edge175
  %xferaddr = getelementptr inbounds %struct.mbox_out, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %xferaddr to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load volatile i32, ptr %xferaddr, align 1
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store volatile i32 %16, ptr %1, align 1
  %xfer_segment_hi = getelementptr inbounds %struct.mbox64_t, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %xfer_segment_hi to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store volatile i32 0, ptr %xfer_segment_hi, align 1
  store volatile i32 -1, ptr %xferaddr, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store volatile i32 0, ptr %1, align 1
  %xfer_segment_hi7 = getelementptr inbounds %struct.mbox64_t, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %xfer_segment_hi7 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store volatile i32 0, ptr %xfer_segment_hi7, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %flag = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 1
  %21 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flag, align 4
  %and = and i32 %22, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.else, label %if.then11, !prof !556

if.then11:                                        ; preds = %sw.epilog
  %poll = getelementptr inbounds %struct.mbox_t, ptr %3, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %poll to i32
  call void @__asan_store1_noabort(i32 %23)
  store volatile i8 0, ptr %poll, align 1
  %ack = getelementptr inbounds %struct.mbox_t, ptr %3, i32 0, i32 1, i32 5
  %24 = ptrtoint ptr %ack to i32
  call void @__asan_store1_noabort(i32 %24)
  store volatile i8 0, ptr %ack, align 1
  %numstatus = getelementptr inbounds %struct.mbox_t, ptr %3, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %numstatus to i32
  call void @__asan_store1_noabort(i32 %25)
  store volatile i8 -1, ptr %numstatus, align 1
  %status = getelementptr inbounds %struct.mbox_t, ptr %3, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %26)
  store volatile i8 -1, ptr %status, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !559
  tail call void @arm_heavy_mb() #14
  %mbox_dma = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 8
  %27 = ptrtoint ptr %mbox_dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mbox_dma, align 4
  %or = or i32 %28, 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %or)
  %mmio_base = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 3
  %30 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio_base, align 4
  %add.ptr = getelementptr i8, ptr %31, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %29) #14, !srcloc !530
  %32 = ptrtoint ptr %numstatus to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load volatile i8, ptr %numstatus, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %cmp160 = icmp eq i8 %33, -1
  br i1 %cmp160, label %if.then11.do.end24_crit_edge, label %if.then11.while.end_crit_edge

if.then11.while.end_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.then11.do.end24_crit_edge:                     ; preds = %if.then11
  br label %do.end24

do.end24:                                         ; preds = %do.end24.do.end24_crit_edge, %if.then11.do.end24_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !560
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !561
  %34 = ptrtoint ptr %numstatus to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load volatile i8, ptr %numstatus, align 1
  %cmp = icmp eq i8 %35, -1
  br i1 %cmp, label %do.end24.do.end24_crit_edge, label %do.end24.while.end_crit_edge

do.end24.while.end_crit_edge:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

do.end24.do.end24_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24

while.end:                                        ; preds = %do.end24.while.end_crit_edge, %if.then11.while.end_crit_edge
  %36 = ptrtoint ptr %numstatus to i32
  call void @__asan_store1_noabort(i32 %36)
  store volatile i8 -1, ptr %numstatus, align 1
  %37 = ptrtoint ptr %poll to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load volatile i8, ptr %poll, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %38)
  %cmp35.not161 = icmp eq i8 %38, 119
  br i1 %cmp35.not161, label %while.end.while.end47_crit_edge, label %while.end.do.end42_crit_edge

while.end.do.end42_crit_edge:                     ; preds = %while.end
  br label %do.end42

while.end.while.end47_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end47

do.end42:                                         ; preds = %do.end42.do.end42_crit_edge, %while.end.do.end42_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !562
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !563
  %39 = ptrtoint ptr %poll to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load volatile i8, ptr %poll, align 1
  %cmp35.not = icmp eq i8 %40, 119
  br i1 %cmp35.not, label %do.end42.while.end47_crit_edge, label %do.end42.do.end42_crit_edge

do.end42.do.end42_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42

do.end42.while.end47_crit_edge:                   ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end47

while.end47:                                      ; preds = %do.end42.while.end47_crit_edge, %while.end.while.end47_crit_edge
  %41 = ptrtoint ptr %poll to i32
  call void @__asan_store1_noabort(i32 %41)
  store volatile i8 0, ptr %poll, align 1
  %42 = ptrtoint ptr %ack to i32
  call void @__asan_store1_noabort(i32 %42)
  store volatile i8 119, ptr %ack, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !564
  tail call void @arm_heavy_mb() #14
  %43 = ptrtoint ptr %mbox_dma to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mbox_dma, align 4
  %or56 = or i32 %44, 2
  %45 = tail call i32 @llvm.bswap.i32(i32 %or56)
  %46 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio_base, align 4
  %add.ptr58 = getelementptr i8, ptr %47, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %45) #14, !srcloc !530
  %48 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio_base, align 4
  %add.ptr61162 = getelementptr i8, ptr %49, i32 32
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61162) #14, !srcloc !527
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !565
  %51 = and i32 %50, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool65.not163 = icmp eq i32 %51, 0
  br i1 %tobool65.not163, label %while.end47.if.end105_crit_edge, label %while.end47.do.end71_crit_edge

while.end47.do.end71_crit_edge:                   ; preds = %while.end47
  br label %do.end71

while.end47.if.end105_crit_edge:                  ; preds = %while.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105

do.end71:                                         ; preds = %do.end71.do.end71_crit_edge, %while.end47.do.end71_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !566
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !567
  %52 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio_base, align 4
  %add.ptr61 = getelementptr i8, ptr %53, i32 32
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #14, !srcloc !527
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !565
  %55 = and i32 %54, 33554432
  %tobool65.not = icmp eq i32 %55, 0
  br i1 %tobool65.not, label %do.end71.if.end105_crit_edge, label %do.end71.do.end71_crit_edge

do.end71.do.end71_crit_edge:                      ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end71

do.end71.if.end105_crit_edge:                     ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105

if.else:                                          ; preds = %sw.epilog
  %base = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 2
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %base, align 4
  %add = add i32 %57, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !540
  tail call void @arm_heavy_mb() #14
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %58 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 0) #14, !srcloc !541
  %59 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !540
  tail call void @arm_heavy_mb() #14
  %and.i148 = and i32 %60, 1048575
  %add.i149 = or i32 %and.i148, -18874368
  %61 = inttoptr i32 %add.i149 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 16) #14, !srcloc !541
  %62 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %base, align 4
  %add81164 = add i32 %63, 10
  %and.i150165 = and i32 %add81164, 1048575
  %add.i151166 = or i32 %and.i150165, -18874368
  %64 = inttoptr i32 %add.i151166 to ptr
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %64) #14, !srcloc !538
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  %66 = and i8 %65, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool85.not167 = icmp eq i8 %66, 0
  br i1 %tobool85.not167, label %if.else.do.end93_crit_edge, label %if.else.while.end98_crit_edge

if.else.while.end98_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end98

if.else.do.end93_crit_edge:                       ; preds = %if.else
  br label %do.end93

do.end93:                                         ; preds = %do.end93.do.end93_crit_edge, %if.else.do.end93_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !568
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !569
  %67 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %base, align 4
  %add81 = add i32 %68, 10
  %and.i150 = and i32 %add81, 1048575
  %add.i151 = or i32 %and.i150, -18874368
  %69 = inttoptr i32 %add.i151 to ptr
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %69) #14, !srcloc !538
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  %71 = and i8 %70, 64
  %tobool85.not = icmp eq i8 %71, 0
  br i1 %tobool85.not, label %do.end93.do.end93_crit_edge, label %do.end93.while.end98_crit_edge

do.end93.while.end98_crit_edge:                   ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end98

do.end93.do.end93_crit_edge:                      ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end93

while.end98:                                      ; preds = %do.end93.while.end98_crit_edge, %if.else.while.end98_crit_edge
  %.lcssa = phi i8 [ %65, %if.else.while.end98_crit_edge ], [ %70, %do.end93.while.end98_crit_edge ]
  %72 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %base, align 4
  %add100 = add i32 %73, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !540
  tail call void @arm_heavy_mb() #14
  %and.i152 = and i32 %add100, 1048575
  %add.i153 = or i32 %and.i152, -18874368
  %74 = inttoptr i32 %add.i153 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 %.lcssa) #14, !srcloc !541
  %75 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %base, align 4
  %add102 = add i32 %76, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !540
  tail call void @arm_heavy_mb() #14
  %and.i154 = and i32 %add102, 1048575
  %add.i155 = or i32 %and.i154, -18874368
  %77 = inttoptr i32 %add.i155 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 -64) #14, !srcloc !541
  %78 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !540
  tail call void @arm_heavy_mb() #14
  %and.i156 = and i32 %79, 1048575
  %add.i157 = or i32 %and.i156, -18874368
  %80 = inttoptr i32 %add.i157 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 8) #14, !srcloc !541
  br label %if.end105

if.end105:                                        ; preds = %while.end98, %do.end71.if.end105_crit_edge, %while.end47.if.end105_crit_edge
  %status107 = getelementptr inbounds %struct.mbox_t, ptr %3, i32 0, i32 1, i32 2
  %81 = ptrtoint ptr %status107 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load volatile i8, ptr %status107, align 1
  %conv108 = zext i8 %82 to i32
  br label %cleanup

do.end111:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 9
  %83 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev, align 4
  %dev112 = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev112, ptr noundef nonnull @.str.93) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 214748000) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end111, %if.end105
  %retval.0 = phi i32 [ -1, %do.end111 ], [ %conv108, %if.end105 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_show_config(ptr noundef %m, ptr nocapture noundef readnone %v) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.127) #14
  %product_name = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 16, i32 4
  %2 = ptrtoint ptr %product_name to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %product_name, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.128, ptr noundef %product_name) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.129) #14
  %flag = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flag, align 4
  %and = and i32 %5, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %.str.131..str.130 = select i1 %tobool3.not, ptr @.str.131, ptr @.str.130
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.131..str.130) #14
  %6 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flag, align 4
  %and7 = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end10_crit_edge, label %if.then9

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.132) #14
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %8 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flag, align 4
  %and12 = and i32 %9, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end10.if.end15_crit_edge, label %if.then14

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.133) #14
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end10.if.end15_crit_edge
  %has_64bit_addr = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 24
  %10 = ptrtoint ptr %has_64bit_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %has_64bit_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool16.not = icmp eq i32 %11, 0
  %.str.135..str.134 = select i1 %tobool16.not, ptr @.str.135, ptr @.str.134
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.135..str.134) #14
  %base = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base, align 4
  %host = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host, align 4
  %irq = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 47
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.136, i32 noundef %13, i32 noundef %17) #14
  %numldrv = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 20
  %18 = ptrtoint ptr %numldrv to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %numldrv, align 4
  %conv = zext i8 %19 to i32
  %nchannels = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 16, i32 6
  %20 = ptrtoint ptr %nchannels to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %nchannels, align 1
  %conv21 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.137, i32 noundef %conv, i32 noundef %conv21) #14
  %fw_version = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 21
  %bios_version = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 22
  %dram_size = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 16, i32 10
  %22 = ptrtoint ptr %dram_size to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %dram_size, align 4
  %conv25 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.138, ptr noundef %fw_version, ptr noundef %bios_version, i32 noundef %conv25) #14
  %max_commands = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 16, i32 5
  %24 = ptrtoint ptr %max_commands to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %max_commands, align 4
  %conv27 = zext i8 %25 to i32
  %max_cmds = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 17
  %26 = ptrtoint ptr %max_cmds to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %max_cmds, align 4
  %conv28 = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.139, i32 noundef %conv27, i32 noundef %conv28) #14
  %support_ext_cdb = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 25
  %28 = ptrtoint ptr %support_ext_cdb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %support_ext_cdb, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.140, i32 noundef %29) #14
  %support_random_del = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 31
  %30 = ptrtoint ptr %support_random_del to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %support_random_del, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.141, i32 noundef %31) #14
  %boot_ldrv_enabled = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 26
  %32 = ptrtoint ptr %boot_ldrv_enabled to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %boot_ldrv_enabled, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.142, i32 noundef %33) #14
  %boot_ldrv = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 27
  %34 = ptrtoint ptr %boot_ldrv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %boot_ldrv, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.143, i32 noundef %35) #14
  %boot_pdrv_enabled = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 28
  %36 = ptrtoint ptr %boot_pdrv_enabled to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %boot_pdrv_enabled, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.144, i32 noundef %37) #14
  %boot_pdrv_ch = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 29
  %38 = ptrtoint ptr %boot_pdrv_ch to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %boot_pdrv_ch, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.145, i32 noundef %39) #14
  %boot_pdrv_tgt = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 30
  %40 = ptrtoint ptr %boot_pdrv_tgt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %boot_pdrv_tgt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.146, i32 noundef %41) #14
  %quiescent = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 33
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %quiescent, i32 noundef 4) #14
  %42 = ptrtoint ptr %quiescent to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %quiescent, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.147, i32 noundef %43) #14
  %has_cluster = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 42
  %44 = ptrtoint ptr %has_cluster to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %has_cluster, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.148, i32 noundef %45) #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.149) #14
  %46 = load i32, ptr @max_cmd_per_lun, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.150, i32 noundef %46) #14
  %47 = load i16, ptr @max_sectors_per_io, align 2
  %conv29 = zext i16 %47 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.151, i32 noundef %conv29) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_show_stat(ptr noundef %m, ptr nocapture noundef readnone %v) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.152) #14
  %pend_cmds = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pend_cmds, i32 noundef 4) #14
  %2 = ptrtoint ptr %pend_cmds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %pend_cmds, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.153, i32 noundef %3) #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.154) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_show_mbox(ptr noundef %m, ptr nocapture noundef readnone %v) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %mbox1 = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mbox1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbox1, align 4
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.155) #14
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %3, align 1
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.156, i32 noundef %conv) #14
  %cmdid = getelementptr inbounds %struct.mbox_out, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %cmdid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %cmdid, align 1
  %conv3 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.157, i32 noundef %conv3) #14
  %numsectors = getelementptr inbounds %struct.mbox_out, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %numsectors to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load volatile i16, ptr %numsectors, align 1
  %conv5 = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.158, i32 noundef %conv5) #14
  %lba = getelementptr inbounds %struct.mbox_out, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %lba to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load volatile i32, ptr %lba, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.159, i32 noundef %11) #14
  %xferaddr = getelementptr inbounds %struct.mbox_out, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %xferaddr to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load volatile i32, ptr %xferaddr, align 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.160, i32 noundef %13) #14
  %logdrv = getelementptr inbounds %struct.mbox_out, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %logdrv to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %logdrv, align 1
  %conv9 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.161, i32 noundef %conv9) #14
  %numsgelements = getelementptr inbounds %struct.mbox_out, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %numsgelements to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %numsgelements, align 1
  %conv11 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.162, i32 noundef %conv11) #14
  %m_in = getelementptr inbounds %struct.mbox_t, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %m_in to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %m_in, align 1
  %conv12 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.163, i32 noundef %conv12) #14
  %status = getelementptr inbounds %struct.mbox_t, ptr %3, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load volatile i8, ptr %status, align 1
  %conv14 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.164, i32 noundef %conv14) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_show_rebuild_rate(ptr noundef %m, ptr nocapture noundef readnone %v) #5 align 64 {
entry:
  %mc.i = alloca %struct.megacmd_t, align 1
  %dma_handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle) #14
  %2 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dma_handle, align 4, !annotation !526
  %call.i = tail call ptr @pci_alloc_dev(ptr noundef null) #14
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = call ptr @memcpy(ptr %call.i, ptr %4, i32 2040)
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 44
  %call2.i = tail call i32 @dma_set_mask(ptr noundef %dev1.i, i64 noundef 4294967295) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %if.end, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call.i) #14
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev1.i, i32 noundef 1024, ptr noundef nonnull %dma_handle, i32 noundef 3264, i32 noundef 0) #14
  %cmp2 = icmp eq ptr %call.i.i, null
  br i1 %cmp2, label %if.end.free_pdev_crit_edge, label %if.end4

if.end.free_pdev_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_pdev

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_handle, align 4
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %mc.i) #14
  %8 = call ptr @memset(ptr %mc.i, i32 0, i32 18)
  %flag.i = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flag.i, align 4
  %and.i = and i32 %10, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %11 = getelementptr inbounds %struct.megacmd_t, ptr %mc.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.megacmd_t, ptr %mc.i, i32 0, i32 2
  %13 = ptrtoint ptr %mc.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -95, ptr %mc.i, align 1
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 15, ptr %12, align 1
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %11, align 1
  br label %mega_adapinq.exit

if.else.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %mc.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %mc.i, align 1
  br label %mega_adapinq.exit

mega_adapinq.exit:                                ; preds = %if.else.i, %if.then.i
  %17 = getelementptr inbounds %struct.megacmd_t, ptr %mc.i, i32 0, i32 5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %7, ptr %17, align 1
  %call.i26 = call fastcc i32 @mega_internal_command(ptr noundef %1, ptr noundef nonnull %mc.i, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp.not.i.not = icmp eq i32 %call.i26, 0
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %mc.i) #14
  br i1 %cmp.not.i.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %mega_adapinq.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.165) #14
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8, ptr noundef nonnull @.str.166) #17
  br label %free_inquiry

if.end9:                                          ; preds = %mega_adapinq.exit
  %21 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flag.i, align 4
  %and = and i32 %22, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %rebuild_rate = getelementptr inbounds %struct.mega_inquiry3, ptr %call.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %rebuild_rate to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rebuild_rate, align 1
  %conv = zext i8 %24 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.168, i32 noundef %conv) #14
  br label %free_inquiry

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %rebuild_rate11 = getelementptr inbounds %struct.mega_adp_info, ptr %call.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %rebuild_rate11 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rebuild_rate11, align 1
  %conv12 = zext i8 %26 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.168, i32 noundef %conv12) #14
  br label %free_inquiry

free_inquiry:                                     ; preds = %if.else, %if.then10, %if.then7
  %27 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_handle, align 4
  call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef 1024, ptr noundef nonnull %call.i.i, i32 noundef %28, i32 noundef 0) #14
  br label %free_pdev

free_pdev:                                        ; preds = %free_inquiry, %if.end.free_pdev_crit_edge
  call void @kfree(ptr noundef nonnull %call.i) #14
  br label %cleanup

cleanup:                                          ; preds = %free_pdev, %if.then4.i, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_show_battery(ptr noundef %m, ptr nocapture noundef readnone %v) #5 align 64 {
entry:
  %mc.i = alloca %struct.megacmd_t, align 1
  %dma_handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle) #14
  %2 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dma_handle, align 4, !annotation !526
  %call.i = tail call ptr @pci_alloc_dev(ptr noundef null) #14
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = call ptr @memcpy(ptr %call.i, ptr %4, i32 2040)
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 44
  %call2.i = tail call i32 @dma_set_mask(ptr noundef %dev1.i, i64 noundef 4294967295) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %if.end, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call.i) #14
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev1.i, i32 noundef 1024, ptr noundef nonnull %dma_handle, i32 noundef 3264, i32 noundef 0) #14
  %cmp2 = icmp eq ptr %call.i.i, null
  br i1 %cmp2, label %if.end.free_pdev_crit_edge, label %if.end4

if.end.free_pdev_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_pdev

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_handle, align 4
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %mc.i) #14
  %8 = call ptr @memset(ptr %mc.i, i32 0, i32 18)
  %flag.i = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flag.i, align 4
  %and.i = and i32 %10, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %11 = getelementptr inbounds %struct.megacmd_t, ptr %mc.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.megacmd_t, ptr %mc.i, i32 0, i32 2
  %13 = ptrtoint ptr %mc.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -95, ptr %mc.i, align 1
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 15, ptr %12, align 1
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %11, align 1
  br label %mega_adapinq.exit

if.else.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %mc.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %mc.i, align 1
  br label %mega_adapinq.exit

mega_adapinq.exit:                                ; preds = %if.else.i, %if.then.i
  %17 = getelementptr inbounds %struct.megacmd_t, ptr %mc.i, i32 0, i32 5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %7, ptr %17, align 1
  %call.i83 = call fastcc i32 @mega_internal_command(ptr noundef %1, ptr noundef nonnull %mc.i, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %cmp.not.i.not = icmp eq i32 %call.i83, 0
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %mc.i) #14
  br i1 %cmp.not.i.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %mega_adapinq.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.165) #14
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8, ptr noundef nonnull @.str.166) #17
  br label %free_inquiry

if.end9:                                          ; preds = %mega_adapinq.exit
  %21 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flag.i, align 4
  %and = and i32 %22, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %battery_status11 = getelementptr inbounds %struct.mega_inquiry3, ptr %call.i.i, i32 0, i32 7
  %battery_status12 = getelementptr inbounds %struct.mega_adp_info, ptr %call.i.i, i32 0, i32 15
  %battery_status.0.in = select i1 %tobool.not, ptr %battery_status12, ptr %battery_status11
  %23 = ptrtoint ptr %battery_status.0.in to i32
  call void @__asan_load1_noabort(i32 %23)
  %battery_status.0 = load i8, ptr %battery_status.0.in, align 1
  %conv = zext i8 %battery_status.0 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.170, i32 noundef %conv) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %battery_status.0)
  %cmp15 = icmp eq i8 %battery_status.0, 0
  br i1 %cmp15, label %if.end9.if.end53.sink.split_crit_edge, label %if.end18

if.end9.if.end53.sink.split_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53.sink.split

if.end18:                                         ; preds = %if.end9
  %and20 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end18.if.end23_crit_edge, label %if.then22

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.172) #14
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end18.if.end23_crit_edge
  %and25 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.if.end28_crit_edge, label %if.then27

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.173) #14
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end23.if.end28_crit_edge
  %and30 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end28.if.end33_crit_edge, label %if.then32

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.174) #14
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28.if.end33_crit_edge
  %and35 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end33.if.end38_crit_edge, label %if.then37

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.175) #14
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end33.if.end38_crit_edge
  %and40 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end38.if.end43_crit_edge, label %if.then42

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.176) #14
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end38.if.end43_crit_edge
  %and45 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end43.if.end48_crit_edge, label %if.then47

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.177) #14
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end43.if.end48_crit_edge
  %and50 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end48.if.end53_crit_edge, label %if.end48.if.end53.sink.split_crit_edge

if.end48.if.end53.sink.split_crit_edge:           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53.sink.split

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.end53.sink.split:                              ; preds = %if.end48.if.end53.sink.split_crit_edge, %if.end9.if.end53.sink.split_crit_edge
  %.str.171.sink = phi ptr [ @.str.171, %if.end9.if.end53.sink.split_crit_edge ], [ @.str.178, %if.end48.if.end53.sink.split_crit_edge ]
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.171.sink) #14
  br label %if.end53

if.end53:                                         ; preds = %if.end53.sink.split, %if.end48.if.end53_crit_edge
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #14
  br label %free_inquiry

free_inquiry:                                     ; preds = %if.end53, %if.then7
  %24 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_handle, align 4
  call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef 1024, ptr noundef nonnull %call.i.i, i32 noundef %25, i32 noundef 0) #14
  br label %free_pdev

free_pdev:                                        ; preds = %free_inquiry, %if.end.free_pdev_crit_edge
  call void @kfree(ptr noundef nonnull %call.i) #14
  br label %cleanup

cleanup:                                          ; preds = %free_pdev, %if.then4.i, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_show_pdrv_ch0(ptr noundef %m, ptr nocapture noundef readnone %v) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call fastcc void @proc_show_pdrv(ptr noundef %m, ptr noundef %1, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_show_pdrv_ch1(ptr noundef %m, ptr nocapture noundef readnone %v) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call fastcc void @proc_show_pdrv(ptr noundef %m, ptr noundef %1, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_show_pdrv_ch2(ptr noundef %m, ptr nocapture noundef readnone %v) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call fastcc void @proc_show_pdrv(ptr noundef %m, ptr noundef %1, i32 noundef 2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_show_pdrv_ch3(ptr noundef %m, ptr nocapture noundef readnone %v) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call fastcc void @proc_show_pdrv(ptr noundef %m, ptr noundef %1, i32 noundef 3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_show_rdrv_10(ptr noundef %m, ptr nocapture noundef readnone %v) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call fastcc void @proc_show_rdrv(ptr noundef %m, ptr noundef %1, i32 noundef 0, i32 noundef 9)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_show_rdrv_20(ptr noundef %m, ptr nocapture noundef readnone %v) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call fastcc void @proc_show_rdrv(ptr noundef %m, ptr noundef %1, i32 noundef 10, i32 noundef 19)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_show_rdrv_30(ptr noundef %m, ptr nocapture noundef readnone %v) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call fastcc void @proc_show_rdrv(ptr noundef %m, ptr noundef %1, i32 noundef 20, i32 noundef 29)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_show_rdrv_40(ptr noundef %m, ptr nocapture noundef readnone %v) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call fastcc void @proc_show_rdrv(ptr noundef %m, ptr noundef %1, i32 noundef 30, i32 noundef 39)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_alloc_dev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @proc_show_pdrv(ptr noundef %m, ptr noundef %adapter, i32 noundef %channel) unnamed_addr #5 align 64 {
entry:
  %pthru_dma_handle.i = alloca i32, align 4
  %mc.i5 = alloca %struct.megacmd_t, align 1
  %mc.i = alloca %struct.megacmd_t, align 1
  %dma_handle = alloca i32, align 4
  %scsi_inq_dma_handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle) #14
  %0 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma_handle, align 4, !annotation !526
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scsi_inq_dma_handle) #14
  %1 = ptrtoint ptr %scsi_inq_dma_handle to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %scsi_inq_dma_handle, align 4, !annotation !526
  %call.i = tail call ptr @pci_alloc_dev(ptr noundef null) #14
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 9
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = call ptr @memcpy(ptr %call.i, ptr %3, i32 2040)
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 44
  %call2.i = tail call i32 @dma_set_mask(ptr noundef %dev1.i, i64 noundef 4294967295) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %if.end, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call.i) #14
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev1.i, i32 noundef 1024, ptr noundef nonnull %dma_handle, i32 noundef 3264, i32 noundef 0) #14
  %cmp2 = icmp eq ptr %call.i.i, null
  br i1 %cmp2, label %if.end.free_pdev_crit_edge, label %if.end4

if.end.free_pdev_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_pdev

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_handle, align 4
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %mc.i) #14
  %7 = call ptr @memset(ptr %mc.i, i32 0, i32 18)
  %flag.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 1
  %8 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flag.i, align 4
  %and.i = and i32 %9, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %10 = getelementptr inbounds %struct.megacmd_t, ptr %mc.i, i32 0, i32 3
  %11 = getelementptr inbounds %struct.megacmd_t, ptr %mc.i, i32 0, i32 2
  %12 = ptrtoint ptr %mc.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -95, ptr %mc.i, align 1
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 15, ptr %11, align 1
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %10, align 1
  br label %mega_adapinq.exit

if.else.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %mc.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %mc.i, align 1
  br label %mega_adapinq.exit

mega_adapinq.exit:                                ; preds = %if.else.i, %if.then.i
  %16 = getelementptr inbounds %struct.megacmd_t, ptr %mc.i, i32 0, i32 5
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %6, ptr %16, align 1
  %call.i2 = call fastcc i32 @mega_internal_command(ptr noundef %adapter, ptr noundef nonnull %mc.i, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %cmp.not.i.not = icmp eq i32 %call.i2, 0
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %mc.i) #14
  br i1 %cmp.not.i.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %mega_adapinq.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.165) #14
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8, ptr noundef nonnull @.str.166) #17
  br label %free_inquiry

if.end9:                                          ; preds = %mega_adapinq.exit
  %call.i4 = call ptr @dma_alloc_attrs(ptr noundef %dev1.i, i32 noundef 256, ptr noundef nonnull %scsi_inq_dma_handle, i32 noundef 3264, i32 noundef 0) #14
  %cmp12 = icmp eq ptr %call.i4, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.180) #14
  br label %free_inquiry

if.end14:                                         ; preds = %if.end9
  %20 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flag.i, align 4
  %and = and i32 %21, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %pdrv_state16 = getelementptr inbounds %struct.mega_inquiry3, ptr %call.i.i, i32 0, i32 14
  %pdrv_info = getelementptr inbounds %struct.mraid_inquiry, ptr %call.i.i, i32 0, i32 2
  %pdrv_state.0 = select i1 %tobool.not, ptr %pdrv_info, ptr %pdrv_state16
  %nchannels = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 16, i32 6
  %22 = ptrtoint ptr %nchannels to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nchannels, align 1
  %conv = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %channel)
  %cmp20.not = icmp sgt i32 %conv, %channel
  br i1 %cmp20.not, label %for.cond.preheader, label %if.end14.free_pci_crit_edge

if.end14.free_pci_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_pci

for.cond.preheader:                               ; preds = %if.end14
  %mul = shl i32 %channel, 4
  %conv31 = trunc i32 %channel to i8
  %24 = getelementptr inbounds %struct.megacmd_t, ptr %mc.i5, i32 0, i32 5
  %shl.i = shl i8 %conv31, 4
  %25 = getelementptr inbounds i8, ptr %mc.i5, i32 1
  %add.ptr.i = getelementptr i8, ptr %call.i4, i32 8
  %add.ptr1.i = getelementptr i8, ptr %call.i4, i32 16
  %add.ptr3.i = getelementptr i8, ptr %call.i4, i32 32
  %arrayidx6.i = getelementptr i8, ptr %call.i4, i32 2
  %arrayidx13.i = getelementptr i8, ptr %call.i4, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %tgt.030 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %add = add nuw nsw i32 %tgt.030, %mul
  %add.ptr = getelementptr i8, ptr %pdrv_state.0, i32 %add
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr, align 1
  %28 = and i8 %27, 15
  %and27 = zext i8 %28 to i32
  %switch.tableidx = add nsw i32 %and27, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %29 = icmp ult i32 %switch.tableidx, 4
  br i1 %29, label %switch.lookup, label %for.body.sw.epilog_crit_edge

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

switch.lookup:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.proc_show_pdrv, i32 0, i32 %switch.tableidx
  %30 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %for.body.sw.epilog_crit_edge
  %.str.185.sink = phi ptr [ %switch.load, %switch.lookup ], [ @.str.185, %for.body.sw.epilog_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.185.sink, i32 noundef %channel, i32 noundef %tgt.030) #14
  %31 = call ptr @memset(ptr %call.i4, i32 0, i32 256)
  %conv32 = trunc i32 %tgt.030 to i8
  %32 = ptrtoint ptr %scsi_inq_dma_handle to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %scsi_inq_dma_handle, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pthru_dma_handle.i) #14
  %34 = ptrtoint ptr %pthru_dma_handle.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %pthru_dma_handle.i, align 4, !annotation !526
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %mc.i5) #14
  %call.i.i6 = call ptr @pci_alloc_dev(ptr noundef null) #14
  %cmp.i.i = icmp eq ptr %call.i.i6, null
  br i1 %cmp.i.i, label %sw.epilog.mega_internal_dev_inquiry.exit.thread_crit_edge, label %if.end.i.i

sw.epilog.mega_internal_dev_inquiry.exit.thread_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_internal_dev_inquiry.exit.thread

if.end.i.i:                                       ; preds = %sw.epilog
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  %37 = call ptr @memcpy(ptr %call.i.i6, ptr %36, i32 2040)
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %call.i.i6, i32 0, i32 44
  %call2.i.i = call i32 @dma_set_mask(ptr noundef %dev1.i.i, i64 noundef 4294967295) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %cmp3.not.i.i, label %if.end.i7, label %if.end.i.i.mega_internal_dev_inquiry.exit.thread.sink.split_crit_edge

if.end.i.i.mega_internal_dev_inquiry.exit.thread.sink.split_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_internal_dev_inquiry.exit.thread.sink.split

if.end.i7:                                        ; preds = %if.end.i.i
  %call.i61.i = call ptr @dma_alloc_attrs(ptr noundef %dev1.i.i, i32 noundef 60, ptr noundef nonnull %pthru_dma_handle.i, i32 noundef 3264, i32 noundef 0) #14
  %cmp2.i = icmp eq ptr %call.i61.i, null
  br i1 %cmp2.i, label %if.end.i7.mega_internal_dev_inquiry.exit.thread.sink.split_crit_edge, label %mega_internal_dev_inquiry.exit

if.end.i7.mega_internal_dev_inquiry.exit.thread.sink.split_crit_edge: ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_internal_dev_inquiry.exit.thread.sink.split

mega_internal_dev_inquiry.exit.thread.sink.split: ; preds = %if.end.i7.mega_internal_dev_inquiry.exit.thread.sink.split_crit_edge, %if.end.i.i.mega_internal_dev_inquiry.exit.thread.sink.split_crit_edge
  call void @kfree(ptr noundef nonnull %call.i.i6) #14
  br label %mega_internal_dev_inquiry.exit.thread

mega_internal_dev_inquiry.exit.thread:            ; preds = %mega_internal_dev_inquiry.exit.thread.sink.split, %sw.epilog.mega_internal_dev_inquiry.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %mc.i5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pthru_dma_handle.i) #14
  br label %for.inc

mega_internal_dev_inquiry.exit:                   ; preds = %if.end.i7
  %38 = ptrtoint ptr %call.i61.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i = load i8, ptr %call.i61.i, align 1
  %reqsenselen.i = getelementptr inbounds %struct.mega_passthru, ptr %call.i61.i, i32 0, i32 8
  %39 = ptrtoint ptr %reqsenselen.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 14, ptr %reqsenselen.i, align 1
  %bf.set7.i = and i8 %bf.load.i, 14
  %bf.clear9.i = or i8 %bf.set7.i, 80
  store i8 %bf.clear9.i, ptr %call.i61.i, align 1
  %40 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flag.i, align 4
  %and.i9 = and i32 %41, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool.not.i10 = icmp eq i32 %and.i9, 0
  %spec.select.i = select i1 %tobool.not.i10, i8 %conv31, i8 0
  %channel.i = getelementptr inbounds %struct.mega_passthru, ptr %call.i61.i, i32 0, i32 2
  %42 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %spec.select.i, ptr %channel.i, align 1
  %43 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flag.i, align 4
  %and13.i = and i32 %44, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %or.i = select i1 %tobool14.not.i, i8 0, i8 %shl.i
  %cond21.i = or i8 %or.i, %conv32
  %target.i = getelementptr inbounds %struct.mega_passthru, ptr %call.i61.i, i32 0, i32 3
  %45 = ptrtoint ptr %target.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %cond21.i, ptr %target.i, align 1
  %cdblen.i = getelementptr inbounds %struct.mega_passthru, ptr %call.i61.i, i32 0, i32 7
  %46 = ptrtoint ptr %cdblen.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 6, ptr %cdblen.i, align 1
  %cdb.i = getelementptr inbounds %struct.mega_passthru, ptr %call.i61.i, i32 0, i32 6
  %47 = ptrtoint ptr %cdb.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 18, ptr %cdb.i, align 1
  %arrayidx24.i = getelementptr %struct.mega_passthru, ptr %call.i61.i, i32 0, i32 6, i32 1
  %48 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %arrayidx24.i, align 1
  %arrayidx26.i = getelementptr %struct.mega_passthru, ptr %call.i61.i, i32 0, i32 6, i32 2
  %49 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %arrayidx26.i, align 1
  %arrayidx28.i = getelementptr %struct.mega_passthru, ptr %call.i61.i, i32 0, i32 6, i32 3
  %50 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %arrayidx28.i, align 1
  %arrayidx30.i = getelementptr %struct.mega_passthru, ptr %call.i61.i, i32 0, i32 6, i32 4
  %51 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -1, ptr %arrayidx30.i, align 1
  %arrayidx32.i = getelementptr %struct.mega_passthru, ptr %call.i61.i, i32 0, i32 6, i32 5
  %52 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %arrayidx32.i, align 1
  %dataxferaddr.i = getelementptr inbounds %struct.mega_passthru, ptr %call.i61.i, i32 0, i32 12
  %53 = ptrtoint ptr %dataxferaddr.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %33, ptr %dataxferaddr.i, align 1
  %dataxferlen.i = getelementptr inbounds %struct.mega_passthru, ptr %call.i61.i, i32 0, i32 13
  %54 = ptrtoint ptr %dataxferlen.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 256, ptr %dataxferlen.i, align 1
  %55 = call ptr @memset(ptr %25, i32 0, i32 17)
  %56 = ptrtoint ptr %mc.i5 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 3, ptr %mc.i5, align 1
  %57 = ptrtoint ptr %pthru_dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pthru_dma_handle.i, align 4
  %59 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %58, ptr %24, align 1
  %call33.i = call fastcc i32 @mega_internal_command(ptr noundef %adapter, ptr noundef nonnull %mc.i5, ptr noundef nonnull %call.i61.i) #14
  %60 = ptrtoint ptr %pthru_dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pthru_dma_handle.i, align 4
  call void @dma_free_attrs(ptr noundef %dev1.i.i, i32 noundef 60, ptr noundef nonnull %call.i61.i, i32 noundef %61, i32 noundef 0) #14
  call void @kfree(ptr noundef nonnull %call.i.i6) #14
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %mc.i5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pthru_dma_handle.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not, label %lor.lhs.false, label %mega_internal_dev_inquiry.exit.for.inc_crit_edge

mega_internal_dev_inquiry.exit.for.inc_crit_edge: ; preds = %mega_internal_dev_inquiry.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.lhs.false:                                    ; preds = %mega_internal_dev_inquiry.exit
  %62 = ptrtoint ptr %call.i4 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %call.i4, align 1
  %64 = and i8 %63, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp37.not = icmp eq i8 %64, 0
  br i1 %cmp37.not, label %if.end40, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end40:                                         ; preds = %lor.lhs.false
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.186) #14
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.187) #14
  %call.i12 = call i32 @seq_write(ptr noundef %m, ptr noundef %add.ptr.i, i32 noundef 8) #14
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.188) #14
  %call2.i13 = call i32 @seq_write(ptr noundef %m, ptr noundef %add.ptr1.i, i32 noundef 16) #14
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.189) #14
  %call4.i = call i32 @seq_write(ptr noundef %m, ptr noundef %add.ptr3.i, i32 noundef 4) #14
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #14
  %65 = ptrtoint ptr %call.i4 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %call.i4, align 1
  %67 = and i8 %66, 31
  %and.i14 = zext i8 %67 to i32
  %call5.i = call ptr @scsi_device_type(i32 noundef %and.i14) #14
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.190, ptr noundef %call5.i) #14
  %68 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx6.i, align 1
  %70 = and i8 %69, 7
  %and8.i = zext i8 %70 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.191, i32 noundef %and8.i) #14
  %71 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx6.i, align 1
  %73 = and i8 %72, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %73)
  %cmp.i15 = icmp eq i8 %73, 1
  br i1 %cmp.i15, label %land.lhs.true.i, label %if.end40.if.else.i17_crit_edge

if.end40.if.else.i17_crit_edge:                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i17

land.lhs.true.i:                                  ; preds = %if.end40
  %74 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx13.i, align 1
  %76 = and i8 %75, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %76)
  %cmp16.i = icmp eq i8 %76, 1
  br i1 %cmp16.i, label %if.then.i16, label %land.lhs.true.i.if.else.i17_crit_edge

land.lhs.true.i.if.else.i17_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i17

if.then.i16:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.192) #14
  br label %for.inc

if.else.i17:                                      ; preds = %land.lhs.true.i.if.else.i17_crit_edge, %if.end40.if.else.i17_crit_edge
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #14
  br label %for.inc

for.inc:                                          ; preds = %if.else.i17, %if.then.i16, %lor.lhs.false.for.inc_crit_edge, %mega_internal_dev_inquiry.exit.for.inc_crit_edge, %mega_internal_dev_inquiry.exit.thread
  %inc = add nuw nsw i32 %tgt.030, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.free_pci_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.free_pci_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_pci

free_pci:                                         ; preds = %for.inc.free_pci_crit_edge, %if.end14.free_pci_crit_edge
  %77 = ptrtoint ptr %scsi_inq_dma_handle to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %scsi_inq_dma_handle, align 4
  call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef 256, ptr noundef nonnull %call.i4, i32 noundef %78, i32 noundef 0) #14
  br label %free_inquiry

free_inquiry:                                     ; preds = %free_pci, %if.then13, %if.then7
  %79 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dma_handle, align 4
  call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef 1024, ptr noundef nonnull %call.i.i, i32 noundef %80, i32 noundef 0) #14
  br label %free_pdev

free_pdev:                                        ; preds = %free_inquiry, %if.end.free_pdev_crit_edge
  call void @kfree(ptr noundef nonnull %call.i) #14
  br label %cleanup

cleanup:                                          ; preds = %free_pdev, %if.then4.i, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scsi_inq_dma_handle) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_type(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @proc_show_rdrv(ptr noundef %m, ptr noundef %adapter, i32 noundef %start, i32 noundef %end) unnamed_addr #5 align 64 {
entry:
  %mc.i = alloca %struct.megacmd_t, align 1
  %dma_handle = alloca i32, align 4
  %mc = alloca %struct.megacmd_t, align 1
  %disk_array_dma_handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle) #14
  %0 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma_handle, align 4, !annotation !526
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %mc) #14
  %1 = getelementptr inbounds %struct.megacmd_t, ptr %mc, i32 0, i32 2
  %2 = getelementptr inbounds %struct.megacmd_t, ptr %mc, i32 0, i32 5
  %3 = call ptr @memset(ptr %mc, i32 255, i32 18)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %disk_array_dma_handle) #14
  %4 = ptrtoint ptr %disk_array_dma_handle to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %disk_array_dma_handle, align 4, !annotation !526
  %call.i = tail call ptr @pci_alloc_dev(ptr noundef null) #14
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 9
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %7 = call ptr @memcpy(ptr %call.i, ptr %6, i32 2040)
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 44
  %call2.i = tail call i32 @dma_set_mask(ptr noundef %dev1.i, i64 noundef 4294967295) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %if.end, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call.i) #14
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev1.i, i32 noundef 1024, ptr noundef nonnull %dma_handle, i32 noundef 3264, i32 noundef 0) #14
  %cmp2 = icmp eq ptr %call.i.i, null
  br i1 %cmp2, label %if.end.free_pdev_crit_edge, label %if.end4

if.end.free_pdev_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_pdev

if.end4:                                          ; preds = %if.end
  %8 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_handle, align 4
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %mc.i) #14
  %10 = call ptr @memset(ptr %mc.i, i32 0, i32 18)
  %flag.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 1
  %11 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flag.i, align 4
  %and.i = and i32 %12, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %13 = getelementptr inbounds %struct.megacmd_t, ptr %mc.i, i32 0, i32 3
  %14 = getelementptr inbounds %struct.megacmd_t, ptr %mc.i, i32 0, i32 2
  %15 = ptrtoint ptr %mc.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -95, ptr %mc.i, align 1
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 15, ptr %14, align 1
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %13, align 1
  br label %mega_adapinq.exit

if.else.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %mc.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %mc.i, align 1
  br label %mega_adapinq.exit

mega_adapinq.exit:                                ; preds = %if.else.i, %if.then.i
  %19 = getelementptr inbounds %struct.megacmd_t, ptr %mc.i, i32 0, i32 5
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %9, ptr %19, align 1
  %call.i2 = call fastcc i32 @mega_internal_command(ptr noundef %adapter, ptr noundef nonnull %mc.i, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %cmp.not.i.not = icmp eq i32 %call.i2, 0
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %mc.i) #14
  br i1 %cmp.not.i.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %mega_adapinq.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.165) #14
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8, ptr noundef nonnull @.str.166) #17
  br label %free_inquiry

if.end9:                                          ; preds = %mega_adapinq.exit
  %23 = call ptr @memset(ptr %mc, i32 0, i32 18)
  %24 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flag.i, align 4
  %and = and i32 %25, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %ldrv_state = getelementptr inbounds %struct.mega_inquiry3, ptr %call.i.i, i32 0, i32 13
  %num_ldrv11 = getelementptr inbounds %struct.mega_inquiry3, ptr %call.i.i, i32 0, i32 8
  %logdrv_info = getelementptr inbounds %struct.mraid_inquiry, ptr %call.i.i, i32 0, i32 1
  %ldrv_state12 = getelementptr inbounds %struct.mraid_inquiry, ptr %call.i.i, i32 0, i32 1, i32 4
  %rdrv_state.0 = select i1 %tobool.not, ptr %ldrv_state12, ptr %ldrv_state
  %num_ldrv.0.in.in = select i1 %tobool.not, ptr %logdrv_info, ptr %num_ldrv11
  %array_sz.0 = select i1 %tobool.not, i32 2204, i32 23964
  %26 = ptrtoint ptr %num_ldrv.0.in.in to i32
  call void @__asan_load1_noabort(i32 %26)
  %num_ldrv.0.in = load i8, ptr %num_ldrv.0.in.in, align 1
  %num_ldrv.0 = zext i8 %num_ldrv.0.in to i32
  %call.i4 = call ptr @dma_alloc_attrs(ptr noundef %dev1.i, i32 noundef %array_sz.0, ptr noundef nonnull %disk_array_dma_handle, i32 noundef 3264, i32 noundef 0) #14
  %cmp21 = icmp eq ptr %call.i4, null
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.194) #14
  br label %free_inquiry

if.end24:                                         ; preds = %if.end9
  %27 = ptrtoint ptr %disk_array_dma_handle to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %disk_array_dma_handle, align 4
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %2, align 1
  %30 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flag.i, align 4
  %and26 = and i32 %31, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else33, label %if.then28

if.then28:                                        ; preds = %if.end24
  %32 = ptrtoint ptr %mc to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -95, ptr %mc, align 1
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 4, ptr %1, align 1
  %call29 = call fastcc i32 @mega_internal_command(ptr noundef %adapter, ptr noundef nonnull %mc, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.if.end44_crit_edge, label %if.then28.free_pci.sink.split_crit_edge

if.then28.free_pci.sink.split_crit_edge:          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_pci.sink.split

if.then28.if.end44_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.else33:                                        ; preds = %if.end24
  %34 = ptrtoint ptr %mc to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 103, ptr %mc, align 1
  %call35 = call fastcc i32 @mega_internal_command(ptr noundef %adapter, ptr noundef nonnull %mc, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.else33.if.end44_crit_edge, label %if.then37

if.else33.if.end44_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.then37:                                        ; preds = %if.else33
  %35 = ptrtoint ptr %mc to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 7, ptr %mc, align 1
  %call39 = call fastcc i32 @mega_internal_command(ptr noundef %adapter, ptr noundef nonnull %mc, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then37.if.end44_crit_edge, label %if.then37.free_pci.sink.split_crit_edge

if.then37.free_pci.sink.split_crit_edge:          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_pci.sink.split

if.then37.if.end44_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.end44:                                         ; preds = %if.then37.if.end44_crit_edge, %if.else33.if.end44_crit_edge, %if.then28.if.end44_crit_edge
  %add = add i32 %end, 1
  %36 = call i32 @llvm.smin.i32(i32 %add, i32 %num_ldrv.0)
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %start)
  %cmp4814 = icmp sgt i32 %36, %start
  br i1 %cmp4814, label %if.end44.for.body_crit_edge, label %if.end44.free_pci_crit_edge

if.end44.free_pci_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_pci

if.end44.for.body_crit_edge:                      ; preds = %if.end44
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end44.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %start, %if.end44.for.body_crit_edge ]
  %37 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flag.i, align 4
  %and51 = and i32 %38, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %arrayidx = getelementptr %struct.disk_array_40ld, ptr %call.i4, i32 0, i32 2, i32 %i.015
  %arrayidx57 = getelementptr %struct.disk_array_8ld, ptr %call.i4, i32 0, i32 2, i32 %i.015
  %lparam.0 = select i1 %tobool52.not, ptr %arrayidx57, ptr %arrayidx
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.197, i32 noundef %i.015) #14
  %arrayidx60 = getelementptr i8, ptr %rdrv_state.0, i32 %i.015
  %39 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx60, align 1
  %41 = and i8 %40, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %41)
  %42 = icmp ult i8 %41, 4
  br i1 %42, label %switch.lookup, label %for.body.sw.epilog_crit_edge

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

switch.lookup:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %and62 = zext i8 %41 to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.proc_show_rdrv, i32 0, i32 %and62
  %43 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %43)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %for.body.sw.epilog_crit_edge
  %.str.202.sink = phi ptr [ %switch.load, %switch.lookup ], [ @.str.202, %for.body.sw.epilog_crit_edge ]
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.202.sink) #14
  %44 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx60, align 1
  %46 = and i8 %45, -16
  %47 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.248)
  switch i8 %46, label %sw.epilog.if.end80_crit_edge [
    i8 32, label %sw.epilog.if.end80.sink.split_crit_edge
    i8 16, label %if.then78
  ]

sw.epilog.if.end80.sink.split_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80.sink.split

sw.epilog.if.end80_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80

if.then78:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80.sink.split

if.end80.sink.split:                              ; preds = %if.then78, %sw.epilog.if.end80.sink.split_crit_edge
  %.str.204.sink = phi ptr [ @.str.204, %if.then78 ], [ @.str.203, %sw.epilog.if.end80.sink.split_crit_edge ]
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.204.sink) #14
  br label %if.end80

if.end80:                                         ; preds = %if.end80.sink.split, %sw.epilog.if.end80_crit_edge
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #14
  %48 = ptrtoint ptr %lparam.0 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %lparam.0, align 1
  %conv81 = zext i8 %49 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.205, i32 noundef %conv81) #14
  %level = getelementptr inbounds %struct.logdrv_param, ptr %lparam.0, i32 0, i32 1
  %50 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %level, align 1
  %conv82 = zext i8 %51 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.206, i32 noundef %conv82) #14
  %stripe_sz = getelementptr inbounds %struct.logdrv_param, ptr %lparam.0, i32 0, i32 3
  %52 = ptrtoint ptr %stripe_sz to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %stripe_sz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool84.not = icmp eq i8 %53, 0
  %54 = lshr i8 %53, 1
  %narrow = select i1 %tobool84.not, i8 -128, i8 %54
  %cond90 = zext i8 %narrow to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.207, i32 noundef %cond90) #14
  %row_size = getelementptr inbounds %struct.logdrv_param, ptr %lparam.0, i32 0, i32 7
  %55 = ptrtoint ptr %row_size to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %row_size, align 1
  %conv91 = zext i8 %56 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.208, i32 noundef %conv91) #14
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.209) #14
  %read_ahead = getelementptr inbounds %struct.logdrv_param, ptr %lparam.0, i32 0, i32 2
  %57 = ptrtoint ptr %read_ahead to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %read_ahead, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %58)
  %59 = icmp ult i8 %58, 3
  br i1 %59, label %switch.lookup16, label %if.end80.sw.epilog96_crit_edge

if.end80.sw.epilog96_crit_edge:                   ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog96

switch.lookup16:                                  ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #16
  %60 = sext i8 %58 to i32
  %switch.gep17 = getelementptr inbounds [3 x ptr], ptr @switch.table.proc_show_rdrv.239, i32 0, i32 %60
  %61 = ptrtoint ptr %switch.gep17 to i32
  call void @__asan_load4_noabort(i32 %61)
  %switch.load18 = load ptr, ptr %switch.gep17, align 4
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull %switch.load18) #14
  br label %sw.epilog96

sw.epilog96:                                      ; preds = %switch.lookup16, %if.end80.sw.epilog96_crit_edge
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.213) #14
  %write_mode = getelementptr inbounds %struct.logdrv_param, ptr %lparam.0, i32 0, i32 5
  %62 = ptrtoint ptr %write_mode to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %write_mode, align 1
  %64 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.249)
  switch i8 %63, label %sw.epilog96.sw.epilog100_crit_edge [
    i8 0, label %sw.epilog96.sw.epilog100.sink.split_crit_edge
    i8 1, label %sw.bb99
  ]

sw.epilog96.sw.epilog100.sink.split_crit_edge:    ; preds = %sw.epilog96
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog100.sink.split

sw.epilog96.sw.epilog100_crit_edge:               ; preds = %sw.epilog96
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog100

sw.bb99:                                          ; preds = %sw.epilog96
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog100.sink.split

sw.epilog100.sink.split:                          ; preds = %sw.bb99, %sw.epilog96.sw.epilog100.sink.split_crit_edge
  %.str.215.sink = phi ptr [ @.str.215, %sw.bb99 ], [ @.str.214, %sw.epilog96.sw.epilog100.sink.split_crit_edge ]
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.215.sink) #14
  br label %sw.epilog100

sw.epilog100:                                     ; preds = %sw.epilog100.sink.split, %sw.epilog96.sw.epilog100_crit_edge
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.216) #14
  %direct_io = getelementptr inbounds %struct.logdrv_param, ptr %lparam.0, i32 0, i32 6
  %65 = ptrtoint ptr %direct_io to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %direct_io, align 1
  %67 = zext i8 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.250)
  switch i8 %66, label %sw.epilog100.for.inc_crit_edge [
    i8 0, label %sw.epilog100.for.inc.sink.split_crit_edge
    i8 1, label %sw.bb103
  ]

sw.epilog100.for.inc.sink.split_crit_edge:        ; preds = %sw.epilog100
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.sink.split

sw.epilog100.for.inc_crit_edge:                   ; preds = %sw.epilog100
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

sw.bb103:                                         ; preds = %sw.epilog100
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %sw.bb103, %sw.epilog100.for.inc.sink.split_crit_edge
  %.str.217.sink = phi ptr [ @.str.218, %sw.bb103 ], [ @.str.217, %sw.epilog100.for.inc.sink.split_crit_edge ]
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.217.sink) #14
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %sw.epilog100.for.inc_crit_edge
  %inc = add i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, %36
  br i1 %exitcond.not, label %for.inc.free_pci_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.free_pci_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_pci

free_pci.sink.split:                              ; preds = %if.then37.free_pci.sink.split_crit_edge, %if.then28.free_pci.sink.split_crit_edge
  %.str.196.sink = phi ptr [ @.str.195, %if.then28.free_pci.sink.split_crit_edge ], [ @.str.196, %if.then37.free_pci.sink.split_crit_edge ]
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.196.sink) #14
  br label %free_pci

free_pci:                                         ; preds = %free_pci.sink.split, %for.inc.free_pci_crit_edge, %if.end44.free_pci_crit_edge
  %68 = ptrtoint ptr %disk_array_dma_handle to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %disk_array_dma_handle, align 4
  call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef %array_sz.0, ptr noundef nonnull %call.i4, i32 noundef %69, i32 noundef 0) #14
  br label %free_inquiry

free_inquiry:                                     ; preds = %free_pci, %if.then23, %if.then7
  %70 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dma_handle, align 4
  call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef 1024, ptr noundef nonnull %call.i.i, i32 noundef %71, i32 noundef 0) #14
  br label %free_pdev

free_pdev:                                        ; preds = %free_inquiry, %if.end.free_pdev_crit_edge
  call void @kfree(ptr noundef nonnull %call.i) #14
  br label %cleanup

cleanup:                                          ; preds = %free_pdev, %if.then4.i, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %disk_array_dma_handle) #14
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %mc) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__megaraid_shutdown(ptr noundef %adapter) unnamed_addr #5 align 64 {
entry:
  %raw_mbox = alloca [15 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %raw_mbox) #14
  %0 = getelementptr inbounds i8, ptr %raw_mbox, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 14)
  %2 = ptrtoint ptr %raw_mbox to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 10, ptr %raw_mbox, align 1
  %host = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 13
  %3 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host, align 4
  %irq = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 8
  %call = tail call ptr @free_irq(i32 noundef %6, ptr noundef %adapter) #14
  %call2 = call fastcc i32 @issue_scb_block(ptr noundef %adapter, ptr noundef nonnull %raw_mbox)
  %7 = getelementptr inbounds i8, ptr %raw_mbox, i32 1
  %8 = call ptr @memset(ptr %7, i32 0, i32 14)
  %9 = ptrtoint ptr %raw_mbox to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -2, ptr %raw_mbox, align 1
  %call6 = call fastcc i32 @issue_scb_block(ptr noundef %adapter, ptr noundef nonnull %raw_mbox)
  %pend_cmds = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pend_cmds, i32 noundef 4) #14
  %10 = ptrtoint ptr %pend_cmds to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %pend_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %do.end, label %entry.while.body.preheader_crit_edge

entry.while.body.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 9
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8, ptr noundef nonnull @.str.219) #17
  br label %while.body.preheader

while.body.preheader:                             ; preds = %do.end, %entry.while.body.preheader_crit_edge
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %__ms.017 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 1000, %while.body.preheader ]
  %dec = add nsw i32 %__ms.017, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #14
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.body.1_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.while.body.1_crit_edge:                ; preds = %while.body
  br label %while.body.1

while.body.1:                                     ; preds = %while.body.1.while.body.1_crit_edge, %while.body.while.body.1_crit_edge
  %__ms.017.1 = phi i32 [ %dec.1, %while.body.1.while.body.1_crit_edge ], [ 1000, %while.body.while.body.1_crit_edge ]
  %dec.1 = add nsw i32 %__ms.017.1, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #14
  %tobool.not.1 = icmp eq i32 %dec.1, 0
  br i1 %tobool.not.1, label %while.body.1.while.body.2_crit_edge, label %while.body.1.while.body.1_crit_edge

while.body.1.while.body.1_crit_edge:              ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.1

while.body.1.while.body.2_crit_edge:              ; preds = %while.body.1
  br label %while.body.2

while.body.2:                                     ; preds = %while.body.2.while.body.2_crit_edge, %while.body.1.while.body.2_crit_edge
  %__ms.017.2 = phi i32 [ %dec.2, %while.body.2.while.body.2_crit_edge ], [ 1000, %while.body.1.while.body.2_crit_edge ]
  %dec.2 = add nsw i32 %__ms.017.2, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #14
  %tobool.not.2 = icmp eq i32 %dec.2, 0
  br i1 %tobool.not.2, label %while.body.2.while.body.3_crit_edge, label %while.body.2.while.body.2_crit_edge

while.body.2.while.body.2_crit_edge:              ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.2

while.body.2.while.body.3_crit_edge:              ; preds = %while.body.2
  br label %while.body.3

while.body.3:                                     ; preds = %while.body.3.while.body.3_crit_edge, %while.body.2.while.body.3_crit_edge
  %__ms.017.3 = phi i32 [ %dec.3, %while.body.3.while.body.3_crit_edge ], [ 1000, %while.body.2.while.body.3_crit_edge ]
  %dec.3 = add nsw i32 %__ms.017.3, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #14
  %tobool.not.3 = icmp eq i32 %dec.3, 0
  br i1 %tobool.not.3, label %while.body.3.while.body.4_crit_edge, label %while.body.3.while.body.3_crit_edge

while.body.3.while.body.3_crit_edge:              ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.3

while.body.3.while.body.4_crit_edge:              ; preds = %while.body.3
  br label %while.body.4

while.body.4:                                     ; preds = %while.body.4.while.body.4_crit_edge, %while.body.3.while.body.4_crit_edge
  %__ms.017.4 = phi i32 [ %dec.4, %while.body.4.while.body.4_crit_edge ], [ 1000, %while.body.3.while.body.4_crit_edge ]
  %dec.4 = add nsw i32 %__ms.017.4, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #14
  %tobool.not.4 = icmp eq i32 %dec.4, 0
  br i1 %tobool.not.4, label %while.body.4.while.body.5_crit_edge, label %while.body.4.while.body.4_crit_edge

while.body.4.while.body.4_crit_edge:              ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.4

while.body.4.while.body.5_crit_edge:              ; preds = %while.body.4
  br label %while.body.5

while.body.5:                                     ; preds = %while.body.5.while.body.5_crit_edge, %while.body.4.while.body.5_crit_edge
  %__ms.017.5 = phi i32 [ %dec.5, %while.body.5.while.body.5_crit_edge ], [ 1000, %while.body.4.while.body.5_crit_edge ]
  %dec.5 = add nsw i32 %__ms.017.5, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #14
  %tobool.not.5 = icmp eq i32 %dec.5, 0
  br i1 %tobool.not.5, label %while.body.5.while.body.6_crit_edge, label %while.body.5.while.body.5_crit_edge

while.body.5.while.body.5_crit_edge:              ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.5

while.body.5.while.body.6_crit_edge:              ; preds = %while.body.5
  br label %while.body.6

while.body.6:                                     ; preds = %while.body.6.while.body.6_crit_edge, %while.body.5.while.body.6_crit_edge
  %__ms.017.6 = phi i32 [ %dec.6, %while.body.6.while.body.6_crit_edge ], [ 1000, %while.body.5.while.body.6_crit_edge ]
  %dec.6 = add nsw i32 %__ms.017.6, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #14
  %tobool.not.6 = icmp eq i32 %dec.6, 0
  br i1 %tobool.not.6, label %while.body.6.while.body.7_crit_edge, label %while.body.6.while.body.6_crit_edge

while.body.6.while.body.6_crit_edge:              ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.6

while.body.6.while.body.7_crit_edge:              ; preds = %while.body.6
  br label %while.body.7

while.body.7:                                     ; preds = %while.body.7.while.body.7_crit_edge, %while.body.6.while.body.7_crit_edge
  %__ms.017.7 = phi i32 [ %dec.7, %while.body.7.while.body.7_crit_edge ], [ 1000, %while.body.6.while.body.7_crit_edge ]
  %dec.7 = add nsw i32 %__ms.017.7, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #14
  %tobool.not.7 = icmp eq i32 %dec.7, 0
  br i1 %tobool.not.7, label %while.body.7.while.body.8_crit_edge, label %while.body.7.while.body.7_crit_edge

while.body.7.while.body.7_crit_edge:              ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.7

while.body.7.while.body.8_crit_edge:              ; preds = %while.body.7
  br label %while.body.8

while.body.8:                                     ; preds = %while.body.8.while.body.8_crit_edge, %while.body.7.while.body.8_crit_edge
  %__ms.017.8 = phi i32 [ %dec.8, %while.body.8.while.body.8_crit_edge ], [ 1000, %while.body.7.while.body.8_crit_edge ]
  %dec.8 = add nsw i32 %__ms.017.8, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #14
  %tobool.not.8 = icmp eq i32 %dec.8, 0
  br i1 %tobool.not.8, label %while.body.8.while.body.9_crit_edge, label %while.body.8.while.body.8_crit_edge

while.body.8.while.body.8_crit_edge:              ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.8

while.body.8.while.body.9_crit_edge:              ; preds = %while.body.8
  br label %while.body.9

while.body.9:                                     ; preds = %while.body.9.while.body.9_crit_edge, %while.body.8.while.body.9_crit_edge
  %__ms.017.9 = phi i32 [ %dec.9, %while.body.9.while.body.9_crit_edge ], [ 1000, %while.body.8.while.body.9_crit_edge ]
  %dec.9 = add nsw i32 %__ms.017.9, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #14
  %tobool.not.9 = icmp eq i32 %dec.9, 0
  br i1 %tobool.not.9, label %while.body.9.while.body.10_crit_edge, label %while.body.9.while.body.9_crit_edge

while.body.9.while.body.9_crit_edge:              ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.9

while.body.9.while.body.10_crit_edge:             ; preds = %while.body.9
  br label %while.body.10

while.body.10:                                    ; preds = %while.body.10.while.body.10_crit_edge, %while.body.9.while.body.10_crit_edge
  %__ms.017.10 = phi i32 [ %dec.10, %while.body.10.while.body.10_crit_edge ], [ 1000, %while.body.9.while.body.10_crit_edge ]
  %dec.10 = add nsw i32 %__ms.017.10, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #14
  %tobool.not.10 = icmp eq i32 %dec.10, 0
  br i1 %tobool.not.10, label %while.end.10, label %while.body.10.while.body.10_crit_edge

while.body.10.while.body.10_crit_edge:            ; preds = %while.body.10
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.10

while.end.10:                                     ; preds = %while.body.10
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %raw_mbox) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_proc_subtree(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @megadev_unlocked_ioctl(ptr nocapture noundef readnone %filep, i32 noundef %cmd, i32 noundef %arg) #5 align 64 {
entry:
  %mc.i.i = alloca %struct.megacmd_t, align 1
  %uioc_mimd.i.i = alloca %struct.uioctl_t, align 4
  %signature.i.i = alloca [8 x i8], align 8
  %pthru_dma_hndl.i = alloca i32, align 4
  %data_dma_hndl.i = alloca i32, align 4
  %mc.i = alloca %struct.megacmd_t, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @megadev_mutex, i32 noundef 0) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pthru_dma_hndl.i) #14
  %0 = ptrtoint ptr %pthru_dma_hndl.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pthru_dma_hndl.i, align 4, !annotation !526
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_dma_hndl.i) #14
  %1 = ptrtoint ptr %data_dma_hndl.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %data_dma_hndl.i, align 4, !annotation !526
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %mc.i) #14
  %2 = getelementptr inbounds %struct.megacmd_t, ptr %mc.i, i32 0, i32 4
  %3 = getelementptr inbounds %struct.megacmd_t, ptr %mc.i, i32 0, i32 5
  %4 = getelementptr inbounds %struct.megacmd_t, ptr %mc.i, i32 0, i32 6
  %5 = call ptr @memset(ptr %mc.i, i32 255, i32 18)
  %6 = and i32 %cmd, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 27904, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 27904
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %cmd)
  %cmp1.not.i = icmp eq i32 %cmd, 224
  %or.cond.i = or i1 %cmp1.not.i, %cmp.not.i
  br i1 %or.cond.i, label %if.end.i, label %entry.megadev_ioctl.exit_crit_edge

entry.megadev_ioctl.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %megadev_ioctl.exit

if.end.i:                                         ; preds = %entry
  %7 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 110, ptr nonnull %uioc_mimd.i.i) #14
  %8 = call ptr @memset(ptr %uioc_mimd.i.i, i32 255, i32 110)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %signature.i.i) #14
  %9 = ptrtoint ptr %signature.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %signature.i.i, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.236, i32 noundef 156) #14
  %call.i.i.i136.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i136.i, label %if.end.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.if.then11.i.i.i.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 7, i32 -1226833920) #20, !srcloc !570
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !549

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %signature.i.i, i32 noundef 7) #14
  %11 = call i32 @llvm.read_register.i32(metadata !516) #14
  %and.i.i.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #9, !srcloc !571
  %and.i.i.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %signature.i.i, ptr noundef %7, i32 noundef 7) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !549

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i121.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 7, %if.end.i.if.then11.i.i.i.i_crit_edge ], [ 7, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 7, %res.0.i.i121.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %signature.i.i, i32 %sub.i.i.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i121.i.i)
  br label %mega_m_to_n.exit.i

if.end.i.i:                                       ; preds = %if.end.i.i.i.i
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %signature.i.i, ptr noundef nonnull dereferenceable(7) @.str.233, i32 7) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.mega_m_to_n.exit.i_crit_edge, label %if.end8.i.i99.i.i

if.end.i.i.mega_m_to_n.exit.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_m_to_n.exit.i

if.end8.i.i99.i.i:                                ; preds = %if.end.i.i
  call void @__might_fault(ptr noundef nonnull @.str.236, i32 noundef 156) #14
  %call.i.i100.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i100.i.i, label %if.end8.i.i99.i.i.if.then11.i.i116.i.i_crit_edge, label %land.lhs.true.i.i103.i.i

if.end8.i.i99.i.i.if.then11.i.i116.i.i_crit_edge: ; preds = %if.end8.i.i99.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i116.i.i

land.lhs.true.i.i103.i.i:                         ; preds = %if.end8.i.i99.i.i
  %15 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 110, i32 -1226833920) #20, !srcloc !570
  %asmresult.i.i101.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i101.i.i)
  %cmp.i6.i102.i.i = icmp eq i32 %asmresult.i.i101.i.i, 0
  br i1 %cmp.i6.i102.i.i, label %if.end.i.i113.i.i, label %land.lhs.true.i.i103.i.i.if.then11.i.i116.i.i_crit_edge, !prof !549

land.lhs.true.i.i103.i.i.if.then11.i.i116.i.i_crit_edge: ; preds = %land.lhs.true.i.i103.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i116.i.i

if.end.i.i113.i.i:                                ; preds = %land.lhs.true.i.i103.i.i
  %call.i.i.i104.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %uioc_mimd.i.i, i32 noundef 110) #14
  %16 = call i32 @llvm.read_register.i32(metadata !516) #14
  %and.i.i.i.i.i.i105.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i105.i.i to ptr
  %cpu_domain.i.i.i.i.i106.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i106.i.i) #9, !srcloc !571
  %and.i.i.i.i107.i.i = and i32 %18, -13
  %or.i.i.i.i108.i.i = or i32 %and.i.i.i.i107.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i108.i.i) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  %call1.i.i.i109.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %uioc_mimd.i.i, ptr noundef %7, i32 noundef 110) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i109.i.i)
  %tobool4.not.i.i112.i.i = icmp eq i32 %call1.i.i.i109.i.i, 0
  br i1 %tobool4.not.i.i112.i.i, label %if.end8.i.i, label %if.end.i.i113.i.i.if.then11.i.i116.i.i_crit_edge, !prof !549

if.end.i.i113.i.i.if.then11.i.i116.i.i_crit_edge: ; preds = %if.end.i.i113.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i116.i.i

if.then11.i.i116.i.i:                             ; preds = %if.end.i.i113.i.i.if.then11.i.i116.i.i_crit_edge, %land.lhs.true.i.i103.i.i.if.then11.i.i116.i.i_crit_edge, %if.end8.i.i99.i.i.if.then11.i.i116.i.i_crit_edge
  %res.0.i.i111126.i.i = phi i32 [ %call1.i.i.i109.i.i, %if.end.i.i113.i.i.if.then11.i.i116.i.i_crit_edge ], [ 110, %if.end8.i.i99.i.i.if.then11.i.i116.i.i_crit_edge ], [ 110, %land.lhs.true.i.i103.i.i.if.then11.i.i116.i.i_crit_edge ]
  %sub.i.i114.i.i = sub i32 110, %res.0.i.i111126.i.i
  %add.ptr.i.i115.i.i = getelementptr i8, ptr %uioc_mimd.i.i, i32 %sub.i.i114.i.i
  %19 = call ptr @memset(ptr %add.ptr.i.i115.i.i, i32 0, i32 %res.0.i.i111126.i.i)
  br label %mega_m_to_n.exit.i

if.end8.i.i:                                      ; preds = %if.end.i.i113.i.i
  %ui.i.i = getelementptr inbounds %struct.uioctl_t, ptr %uioc_mimd.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %ui.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ui.i.i, align 4
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.251)
  switch i8 %21, label %if.end8.i.i.mega_m_to_n.exit.i_crit_edge [
    i8 -126, label %sw.bb.i.i
    i8 -127, label %sw.bb26.i.i
    i8 -128, label %sw.bb43.i.i
  ]

if.end8.i.i.mega_m_to_n.exit.i_crit_edge:         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_m_to_n.exit.i

sw.bb.i.i:                                        ; preds = %if.end8.i.i
  %subopcode11.i.i = getelementptr inbounds %struct.uioctl_t, ptr %uioc_mimd.i.i, i32 0, i32 2, i32 0, i32 1
  %23 = ptrtoint ptr %subopcode11.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %subopcode11.i.i, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.252)
  switch i8 %24, label %sw.bb.i.i.mega_m_to_n.exit.i_crit_edge [
    i8 101, label %sw.bb.i
    i8 109, label %sw.bb9.i
    i8 103, label %sw.bb29.i
  ]

sw.bb.i.i.mega_m_to_n.exit.i_crit_edge:           ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_m_to_n.exit.i

sw.bb26.i.i:                                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %adapno29.i.i = getelementptr inbounds %struct.uioctl_t, ptr %uioc_mimd.i.i, i32 0, i32 2, i32 0, i32 2
  %26 = ptrtoint ptr %adapno29.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %adapno29.i.i, align 2
  %mbox.i.i = getelementptr inbounds %struct.uioctl_t, ptr %uioc_mimd.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %mbox.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %uioc.sroa.15.16.copyload147.i = load ptr, ptr %mbox.i.i, align 4
  %uioc.sroa.29.16.mbox.i.sroa_idx.i = getelementptr inbounds %struct.uioctl_t, ptr %uioc_mimd.i.i, i32 0, i32 3, i32 4
  %29 = ptrtoint ptr %uioc.sroa.29.16.mbox.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %uioc.sroa.29.16.copyload149.i = load i32, ptr %uioc.sroa.29.16.mbox.i.sroa_idx.i, align 4
  %uioc.sroa.29150.16.mbox.i.sroa_idx.i = getelementptr inbounds %struct.uioctl_t, ptr %uioc_mimd.i.i, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %uioc.sroa.29150.16.mbox.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %uioc.sroa.29150.16.copyload152.i = load i32, ptr %uioc.sroa.29150.16.mbox.i.sroa_idx.i, align 4
  %uioc.sroa.31.16.mbox.i.sroa_idx.i = getelementptr inbounds %struct.uioctl_t, ptr %uioc_mimd.i.i, i32 0, i32 3, i32 12
  %31 = ptrtoint ptr %uioc.sroa.31.16.mbox.i.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 6)
  %uioc.sroa.31.sroa.0.0.copyload282.i = load i48, ptr %uioc.sroa.31.16.mbox.i.sroa_idx.i, align 4
  %length.i.i = getelementptr inbounds %struct.uioctl_t, ptr %uioc_mimd.i.i, i32 0, i32 2, i32 0, i32 5
  %32 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length.i.i, align 4
  %outlen.i.i = getelementptr inbounds %struct.uioctl_t, ptr %uioc_mimd.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %outlen.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %outlen.i.i, align 4
  %36 = ptrtoint ptr %uioc_mimd.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %uioc_mimd.i.i, align 4
  br label %sw.bb39.i

sw.bb43.i.i:                                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %adapno46.i.i = getelementptr inbounds %struct.uioctl_t, ptr %uioc_mimd.i.i, i32 0, i32 2, i32 0, i32 2
  %38 = ptrtoint ptr %adapno46.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %adapno46.i.i, align 2
  %mbox51.i.i = getelementptr inbounds %struct.uioctl_t, ptr %uioc_mimd.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %mbox51.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %uioc.sroa.15.16.copyload146.i = load ptr, ptr %mbox51.i.i, align 4
  %uioc.sroa.29.16.mbox51.i.sroa_idx.i = getelementptr inbounds %struct.uioctl_t, ptr %uioc_mimd.i.i, i32 0, i32 3, i32 4
  %41 = ptrtoint ptr %uioc.sroa.29.16.mbox51.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %uioc.sroa.29.16.copyload148.i = load i32, ptr %uioc.sroa.29.16.mbox51.i.sroa_idx.i, align 4
  %uioc.sroa.29150.16.mbox51.i.sroa_idx.i = getelementptr inbounds %struct.uioctl_t, ptr %uioc_mimd.i.i, i32 0, i32 3, i32 8
  %42 = ptrtoint ptr %uioc.sroa.29150.16.mbox51.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %uioc.sroa.29150.16.copyload151.i = load i32, ptr %uioc.sroa.29150.16.mbox51.i.sroa_idx.i, align 4
  %uioc.sroa.31.16.mbox51.i.sroa_idx.i = getelementptr inbounds %struct.uioctl_t, ptr %uioc_mimd.i.i, i32 0, i32 3, i32 12
  %43 = ptrtoint ptr %uioc.sroa.31.16.mbox51.i.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 6)
  %uioc.sroa.31.sroa.0.0.copyload290.i = load i48, ptr %uioc.sroa.31.16.mbox51.i.sroa_idx.i, align 4
  %outlen53.i.i = getelementptr inbounds %struct.uioctl_t, ptr %uioc_mimd.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %outlen53.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %outlen53.i.i, align 4
  %46 = ptrtoint ptr %uioc_mimd.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %uioc_mimd.i.i, align 4
  %48 = call i32 @llvm.umax.i32(i32 %45, i32 %47) #14
  br label %sw.bb39.i

mega_m_to_n.exit.i:                               ; preds = %sw.bb.i.i.mega_m_to_n.exit.i_crit_edge, %if.end8.i.i.mega_m_to_n.exit.i_crit_edge, %if.then11.i.i116.i.i, %if.end.i.i.mega_m_to_n.exit.i_crit_edge, %if.then11.i.i.i.i
  %retval.0.i.i = phi i32 [ -22, %if.end.i.i.mega_m_to_n.exit.i_crit_edge ], [ -22, %sw.bb.i.i.mega_m_to_n.exit.i_crit_edge ], [ -22, %if.end8.i.i.mega_m_to_n.exit.i_crit_edge ], [ -14, %if.then11.i.i.i.i ], [ -14, %if.then11.i.i116.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %signature.i.i) #14
  call void @llvm.lifetime.end.p0(i64 110, ptr nonnull %uioc_mimd.i.i) #14
  br label %megadev_ioctl.exit

sw.bb.i:                                          ; preds = %sw.bb.i.i
  %data.i.i = getelementptr inbounds %struct.uioctl_t, ptr %uioc_mimd.i.i, i32 0, i32 5
  %49 = ptrtoint ptr %data.i.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load ptr, ptr %data.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %signature.i.i) #14
  call void @llvm.lifetime.end.p0(i64 110, ptr nonnull %uioc_mimd.i.i) #14
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 3005) #14
  %51 = call i32 @llvm.read_register.i32(metadata !516) #14
  %and.i.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 4
  %53 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #9, !srcloc !571
  %and.i.i = and i32 %53, -13
  %or.i.i = or i32 %and.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  %54 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %50, i32 33554432, i32 -1226833921) #14, !srcloc !574
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %sw.bb.i.megadev_ioctl.exit_crit_edge

sw.bb.i.megadev_ioctl.exit_crit_edge:             ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %megadev_ioctl.exit

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %sw.bb.i.i
  %data17.i.i = getelementptr inbounds %struct.uioctl_t, ptr %uioc_mimd.i.i, i32 0, i32 5
  %55 = ptrtoint ptr %data17.i.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load ptr, ptr %data17.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %signature.i.i) #14
  call void @llvm.lifetime.end.p0(i64 110, ptr nonnull %uioc_mimd.i.i) #14
  %57 = load i32, ptr @hba_count, align 4
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 3011) #14
  %58 = call i32 @llvm.read_register.i32(metadata !516) #14
  %and.i.i.i4.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i4.i to ptr
  %cpu_domain.i.i5.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 4
  %60 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i5.i) #9, !srcloc !571
  %and.i6.i = and i32 %60, -13
  %or.i7.i = or i32 %and.i6.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i7.i) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  %61 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %56, i32 %57, i32 -1226833921) #14, !srcloc !575
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %60) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool26.not.i = icmp eq i32 %61, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %sw.bb9.i.megadev_ioctl.exit_crit_edge

sw.bb9.i.megadev_ioctl.exit_crit_edge:            ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %megadev_ioctl.exit

if.end28.i:                                       ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #16
  %62 = load i32, ptr @hba_count, align 4
  br label %megadev_ioctl.exit

sw.bb29.i:                                        ; preds = %sw.bb.i.i
  %adapno.i.i = getelementptr inbounds %struct.uioctl_t, ptr %uioc_mimd.i.i, i32 0, i32 2, i32 0, i32 2
  %63 = ptrtoint ptr %adapno.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %adapno.i.i, align 2
  %data24.i.i = getelementptr inbounds %struct.uioctl_t, ptr %uioc_mimd.i.i, i32 0, i32 5
  %65 = ptrtoint ptr %data24.i.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load ptr, ptr %data24.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %signature.i.i) #14
  call void @llvm.lifetime.end.p0(i64 110, ptr nonnull %uioc_mimd.i.i) #14
  %67 = xor i16 %64, 27904
  %xor.i = zext i16 %67 to i32
  %68 = load i32, ptr @hba_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %xor.i)
  %cmp31.not.i = icmp sgt i32 %68, %xor.i
  br i1 %cmp31.not.i, label %if.end33.i, label %sw.bb29.i.megadev_ioctl.exit_crit_edge

sw.bb29.i.megadev_ioctl.exit_crit_edge:           ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %megadev_ioctl.exit

if.end33.i:                                       ; preds = %sw.bb29.i
  %add.ptr.i = getelementptr %struct.mcontroller, ptr @mcontroller, i32 %xor.i
  call void @__might_fault(ptr noundef nonnull @.str.236, i32 noundef 174) #14
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i, label %if.end33.i.megadev_ioctl.exit_crit_edge, label %if.end.i.i.i

if.end33.i.megadev_ioctl.exit_crit_edge:          ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %megadev_ioctl.exit

if.end.i.i.i:                                     ; preds = %if.end33.i
  %69 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %66, i32 32, i32 -1226833920) #20, !srcloc !576
  %asmresult.i.i.i = extractvalue { i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.megadev_ioctl.exit_crit_edge

if.end.i.i.i.megadev_ioctl.exit_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %megadev_ioctl.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef 32) #14
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %66, ptr noundef %add.ptr.i, i32 noundef 32) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool36.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool36.not.i, label %copy_to_user.exit.i.sw.epilog.i_crit_edge, label %copy_to_user.exit.i.megadev_ioctl.exit_crit_edge

copy_to_user.exit.i.megadev_ioctl.exit_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %megadev_ioctl.exit

copy_to_user.exit.i.sw.epilog.i_crit_edge:        ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb39.i:                                        ; preds = %sw.bb43.i.i, %sw.bb26.i.i
  %.sink.i = phi i32 [ %47, %sw.bb43.i.i ], [ %37, %sw.bb26.i.i ]
  %spec.select276.sink339.in.in.i = phi i32 [ %45, %sw.bb43.i.i ], [ %35, %sw.bb26.i.i ]
  %uioc.sroa.31.sroa.0.0.off16.ph.i = phi i48 [ %uioc.sroa.31.sroa.0.0.copyload290.i, %sw.bb43.i.i ], [ %uioc.sroa.31.sroa.0.0.copyload282.i, %sw.bb26.i.i ]
  %uioc.sroa.10.0.ph.shrunk.ph.i = phi i16 [ %39, %sw.bb43.i.i ], [ %27, %sw.bb26.i.i ]
  %uioc.sroa.15.0.ph.ph.i = phi ptr [ %uioc.sroa.15.16.copyload146.i, %sw.bb43.i.i ], [ %uioc.sroa.15.16.copyload147.i, %sw.bb26.i.i ]
  %uioc.sroa.29.0.ph.ph.i = phi i32 [ %uioc.sroa.29.16.copyload148.i, %sw.bb43.i.i ], [ %uioc.sroa.29.16.copyload149.i, %sw.bb26.i.i ]
  %uioc.sroa.29150.0.ph.ph.i = phi i32 [ %uioc.sroa.29150.16.copyload151.i, %sw.bb43.i.i ], [ %uioc.sroa.29150.16.copyload152.i, %sw.bb26.i.i ]
  %uioc.sroa.31154.0.ph.ph.i = phi i32 [ %48, %sw.bb43.i.i ], [ %33, %sw.bb26.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select276.sink339.in.in.i)
  %spec.select276.sink339.in.i = icmp ne i32 %spec.select276.sink339.in.in.i, 0
  %spec.select276.sink339.i = zext i1 %spec.select276.sink339.in.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.sink.i)
  %tobool66.not.i.i = icmp eq i32 %.sink.i, 0
  %or69.i.i = or i32 %spec.select276.sink339.i, 2
  %spec.select281.i = select i1 %tobool66.not.i.i, i32 %spec.select276.sink339.i, i32 %or69.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %signature.i.i) #14
  call void @llvm.lifetime.end.p0(i64 110, ptr nonnull %uioc_mimd.i.i) #14
  %70 = xor i16 %uioc.sroa.10.0.ph.shrunk.ph.i, 27904
  %xor41.i = zext i16 %70 to i32
  %71 = load i32, ptr @hba_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %xor41.i)
  %cmp42.not.i = icmp sgt i32 %71, %xor41.i
  br i1 %cmp42.not.i, label %if.end44.i, label %sw.bb39.i.megadev_ioctl.exit_crit_edge

sw.bb39.i.megadev_ioctl.exit_crit_edge:           ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %megadev_ioctl.exit

if.end44.i:                                       ; preds = %sw.bb39.i
  %arrayidx.i = getelementptr [32 x ptr], ptr @hba_soft_state, i32 0, i32 %xor41.i
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i, align 4
  %74 = ptrtoint ptr %uioc.sroa.15.0.ph.ph.i to i32
  %uioc.sroa.15.0.extract.shift.i = lshr i32 %74, 24
  %uioc.sroa.15.0.extract.trunc.i = trunc i32 %uioc.sroa.15.0.extract.shift.i to i8
  %75 = zext i8 %uioc.sroa.15.0.extract.trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.253)
  switch i8 %uioc.sroa.15.0.extract.trunc.i, label %if.end90.i [
    i8 -92, label %land.lhs.true49.i
    i8 -61, label %if.end44.i.do.end87.i_crit_edge
    i8 -29, label %if.end44.i.do.end87.i_crit_edge43
  ]

if.end44.i.do.end87.i_crit_edge43:                ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end87.i

if.end44.i.do.end87.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end87.i

land.lhs.true49.i:                                ; preds = %if.end44.i
  %76 = and i32 %74, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 7168, i32 %76)
  %cmp53.i = icmp eq i32 %76, 7168
  br i1 %cmp53.i, label %if.then55.i, label %if.end90.thread.i

if.then55.i:                                      ; preds = %land.lhs.true49.i
  %support_random_del.i = getelementptr inbounds %struct.adapter_t, ptr %73, i32 0, i32 31
  %77 = ptrtoint ptr %support_random_del.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %support_random_del.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool56.not.i = icmp eq i32 %78, 0
  br i1 %tobool56.not.i, label %do.end60.i, label %if.end62.i

do.end60.i:                                       ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.adapter_t, ptr %73, i32 0, i32 9
  %79 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i, align 4
  %dev61.i = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev61.i, ptr noundef nonnull @.str.228) #17
  br label %megadev_ioctl.exit

if.end62.i:                                       ; preds = %if.then55.i
  %quiescent.i = getelementptr inbounds %struct.adapter_t, ptr %73, i32 0, i32 33
  %call.i.i.i14 = call zeroext i1 @__kasan_check_write(ptr noundef %quiescent.i, i32 noundef 4) #14
  %81 = ptrtoint ptr %quiescent.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 1, ptr %quiescent.i, align 4
  %pending_list.i = getelementptr inbounds %struct.adapter_t, ptr %73, i32 0, i32 11
  %pend_cmds.i = getelementptr inbounds %struct.adapter_t, ptr %73, i32 0, i32 19
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %if.end62.i
  %call.i.i42.i = call zeroext i1 @__kasan_check_read(ptr noundef %pend_cmds.i, i32 noundef 4) #14
  %82 = ptrtoint ptr %pend_cmds.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %pend_cmds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.i15 = icmp sgt i32 %83, 0
  br i1 %cmp.i15, label %while.cond.i.while.body.i_crit_edge, label %lor.rhs.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

lor.rhs.i:                                        ; preds = %while.cond.i
  %84 = ptrtoint ptr %pending_list.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %pending_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %85, %pending_list.i
  br i1 %cmp.i.not.i, label %while.end.i, label %lor.rhs.i.while.body.i_crit_edge

lor.rhs.i.while.body.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i:                                     ; preds = %lor.rhs.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge
  call void @msleep(i32 noundef 1000) #14
  br label %while.cond.i

while.end.i:                                      ; preds = %lor.rhs.i
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %mc.i.i) #14
  %86 = getelementptr inbounds %struct.megacmd_t, ptr %mc.i.i, i32 0, i32 2
  %87 = getelementptr inbounds %struct.megacmd_t, ptr %mc.i.i, i32 0, i32 3
  %88 = getelementptr inbounds i8, ptr %mc.i.i, i32 1
  %89 = call ptr @memset(ptr %88, i32 0, i32 17)
  %90 = ptrtoint ptr %mc.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -92, ptr %mc.i.i, align 1
  %91 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 28, ptr %86, align 1
  %conv.i44.i = trunc i32 %74 to i8
  %92 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv.i44.i, ptr %87, align 1
  %call.i.i16 = call fastcc i32 @mega_internal_command(ptr noundef %73, ptr noundef nonnull %mc.i.i, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i16)
  %tobool.not.i.i = icmp eq i32 %call.i.i16, 0
  br i1 %tobool.not.i.i, label %if.end.i.i17, label %do.end.i.i

do.end.i.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv65.i = and i32 %74, 255
  %dev.i.i = getelementptr inbounds %struct.adapter_t, ptr %73, i32 0, i32 9
  %93 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.237, i32 noundef %conv65.i) #17
  br label %mega_do_del_logdrv.exit.i

if.end.i.i17:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %read_ldidmap.i.i = getelementptr inbounds %struct.adapter_t, ptr %73, i32 0, i32 32
  %95 = ptrtoint ptr %read_ldidmap.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %read_ldidmap.i.i, align 4
  br label %mega_do_del_logdrv.exit.i

mega_do_del_logdrv.exit.i:                        ; preds = %if.end.i.i17, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %mc.i.i) #14
  %lock.i = getelementptr inbounds %struct.adapter_t, ptr %73, i32 0, i32 34
  %call6.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %read_ldidmap.i = getelementptr inbounds %struct.adapter_t, ptr %73, i32 0, i32 32
  %96 = ptrtoint ptr %read_ldidmap.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %read_ldidmap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool9.not.i = icmp eq i32 %97, 0
  br i1 %tobool9.not.i, label %mega_do_del_logdrv.exit.i.mega_del_logdrv.exit_crit_edge, label %for.cond.preheader.i

mega_do_del_logdrv.exit.i.mega_del_logdrv.exit_crit_edge: ; preds = %mega_do_del_logdrv.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_del_logdrv.exit

for.cond.preheader.i:                             ; preds = %mega_do_del_logdrv.exit.i
  %98 = ptrtoint ptr %pending_list.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %pos.047.i = load ptr, ptr %pending_list.i, align 4
  %cmp.i45.not48.i = icmp eq ptr %pos.047.i, %pending_list.i
  br i1 %cmp.i45.not48.i, label %for.cond.preheader.i.mega_del_logdrv.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.mega_del_logdrv.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_del_logdrv.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %pos.049.i = phi ptr [ %pos.0.i, %for.inc.i.for.body.i_crit_edge ], [ %pos.047.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %pthru.i = getelementptr i8, ptr %pos.049.i, i32 108
  %99 = ptrtoint ptr %pthru.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pthru.i, align 4
  %logdrv16.i = getelementptr inbounds %struct.mega_passthru, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %logdrv16.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %logdrv16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %102)
  %cmp18.i = icmp sgt i8 %102, -1
  br i1 %cmp18.i, label %if.then20.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then20.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.i = xor i8 %102, -128
  %103 = ptrtoint ptr %logdrv16.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %add.i, ptr %logdrv16.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then20.i, %for.body.i.for.inc.i_crit_edge
  %104 = ptrtoint ptr %pos.049.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %pos.0.i = load ptr, ptr %pos.049.i, align 4
  %cmp.i45.not.i = icmp eq ptr %pos.0.i, %pending_list.i
  br i1 %cmp.i45.not.i, label %for.inc.i.mega_del_logdrv.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.mega_del_logdrv.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mega_del_logdrv.exit

mega_del_logdrv.exit:                             ; preds = %for.inc.i.mega_del_logdrv.exit_crit_edge, %for.cond.preheader.i.mega_del_logdrv.exit_crit_edge, %mega_do_del_logdrv.exit.i.mega_del_logdrv.exit_crit_edge
  %call.i.i43.i = call zeroext i1 @__kasan_check_write(ptr noundef %quiescent.i, i32 noundef 4) #14
  %105 = ptrtoint ptr %quiescent.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile i32 0, ptr %quiescent.i, align 4
  call fastcc void @mega_runpendq(ptr noundef %73) #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call6.i) #14
  br i1 %tobool.not.i.i, label %if.then69.i, label %mega_del_logdrv.exit.megadev_ioctl.exit_crit_edge

mega_del_logdrv.exit.megadev_ioctl.exit_crit_edge: ; preds = %mega_del_logdrv.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %megadev_ioctl.exit

if.then69.i:                                      ; preds = %mega_del_logdrv.exit
  call void @__sanitizer_cov_trace_pc() #16
  %106 = call ptr @memset(ptr %mc.i, i32 0, i32 18)
  %call71.i = call fastcc i32 @mega_n_to_m(ptr noundef %7, ptr noundef nonnull %mc.i) #14
  br label %megadev_ioctl.exit

do.end87.i:                                       ; preds = %if.end44.i.do.end87.i_crit_edge, %if.end44.i.do.end87.i_crit_edge43
  %dev88.i = getelementptr inbounds %struct.adapter_t, ptr %73, i32 0, i32 9
  %107 = ptrtoint ptr %dev88.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev88.i, align 4
  %dev89.i = getelementptr inbounds %struct.pci_dev, ptr %108, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev89.i, ptr noundef nonnull @.str.231) #17
  br label %megadev_ioctl.exit

if.end90.i:                                       ; preds = %if.end44.i
  %call.i4 = call ptr @pci_alloc_dev(ptr noundef null) #14
  %cmp.i5 = icmp eq ptr %call.i4, null
  br i1 %cmp.i5, label %if.end90.i.megadev_ioctl.exit_crit_edge, label %if.end.i10

if.end90.i.megadev_ioctl.exit_crit_edge:          ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %megadev_ioctl.exit

if.end.i10:                                       ; preds = %if.end90.i
  %dev.i6 = getelementptr inbounds %struct.adapter_t, ptr %73, i32 0, i32 9
  %109 = ptrtoint ptr %dev.i6 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i6, align 4
  %111 = call ptr @memcpy(ptr %call.i4, ptr %110, i32 2040)
  %dev1.i7 = getelementptr inbounds %struct.pci_dev, ptr %call.i4, i32 0, i32 44
  %call2.i8 = call i32 @dma_set_mask(ptr noundef %dev1.i7, i64 noundef 4294967295) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i8)
  %cmp3.not.i9 = icmp eq i32 %call2.i8, 0
  br i1 %cmp3.not.i9, label %if.end95.i, label %if.then4.i11

if.then4.i11:                                     ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call.i4) #14
  br label %megadev_ioctl.exit

if.end90.thread.i:                                ; preds = %land.lhs.true49.i
  %call.i = call ptr @pci_alloc_dev(ptr noundef null) #14
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.end90.thread.i.megadev_ioctl.exit_crit_edge, label %if.end.i2

if.end90.thread.i.megadev_ioctl.exit_crit_edge:   ; preds = %if.end90.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %megadev_ioctl.exit

if.end.i2:                                        ; preds = %if.end90.thread.i
  %dev.i1 = getelementptr inbounds %struct.adapter_t, ptr %73, i32 0, i32 9
  %112 = ptrtoint ptr %dev.i1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev.i1, align 4
  %114 = call ptr @memcpy(ptr %call.i, ptr %113, i32 2040)
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 44
  %call2.i = call i32 @dma_set_mask(ptr noundef %dev1.i, i64 noundef 4294967295) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %if.end.i2.if.else.i_crit_edge, label %if.then4.i

if.end.i2.if.else.i_crit_edge:                    ; preds = %if.end.i2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

if.then4.i:                                       ; preds = %if.end.i2
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call.i) #14
  br label %megadev_ioctl.exit

if.end95.i:                                       ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %uioc.sroa.15.0.extract.trunc.i)
  %cmp99.i = icmp eq i8 %uioc.sroa.15.0.extract.trunc.i, 3
  br i1 %cmp99.i, label %if.then101.i, label %if.end95.i.if.else.i_crit_edge

if.end95.i.if.else.i_crit_edge:                   ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

if.then101.i:                                     ; preds = %if.end95.i
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev1.i7, i32 noundef 60, ptr noundef nonnull %pthru_dma_hndl.i, i32 noundef 3264, i32 noundef 0) #14
  %cmp104.i = icmp eq ptr %call.i.i, null
  br i1 %cmp104.i, label %if.then106.i, label %if.end107.i

if.then106.i:                                     ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call.i4) #14
  br label %megadev_ioctl.exit

if.end107.i:                                      ; preds = %if.then101.i
  %115 = inttoptr i32 %uioc.sroa.29150.0.ph.ph.i to ptr
  call void @__might_fault(ptr noundef nonnull @.str.236, i32 noundef 156) #14
  %call.i.i12.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i12.i, label %if.end107.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end107.i.if.then11.i.i.i_crit_edge:            ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end107.i
  %116 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %115, i32 60, i32 -1226833920) #20, !srcloc !570
  %asmresult.i.i13.i = extractvalue { i32, i32 } %116, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i13.i)
  %cmp.i6.i14.i = icmp eq i32 %asmresult.i.i13.i, 0
  br i1 %cmp.i6.i14.i, label %if.end.i.i16.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !549

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i

if.end.i.i16.i:                                   ; preds = %land.lhs.true.i.i.i
  %call.i.i.i15.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i, i32 noundef 60) #14
  %117 = call i32 @llvm.read_register.i32(metadata !516) #14
  %and.i.i.i.i.i.i.i = and i32 %117, -16384
  %118 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 4
  %119 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #9, !srcloc !571
  %and.i.i.i.i.i = and i32 %119, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call.i.i, ptr noundef %115, i32 noundef 60) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %119) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end114.i, label %if.end.i.i16.i.if.then11.i.i.i_crit_edge, !prof !549

if.end.i.i16.i.if.then11.i.i.i_crit_edge:         ; preds = %if.end.i.i16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i16.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end107.i.if.then11.i.i.i_crit_edge
  %res.0.i.i215.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i16.i.if.then11.i.i.i_crit_edge ], [ 60, %if.end107.i.if.then11.i.i.i_crit_edge ], [ 60, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 60, %res.0.i.i215.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i, i32 %sub.i.i.i
  %120 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i215.i)
  %121 = ptrtoint ptr %pthru_dma_hndl.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %pthru_dma_hndl.i, align 4
  call void @dma_free_attrs(ptr noundef %dev1.i7, i32 noundef 60, ptr noundef nonnull %call.i.i, i32 noundef %122, i32 noundef 0) #14
  call void @kfree(ptr noundef nonnull %call.i4) #14
  br label %megadev_ioctl.exit

if.end114.i:                                      ; preds = %if.end.i.i16.i
  %dataxferlen.i = getelementptr inbounds %struct.mega_passthru, ptr %call.i.i, i32 0, i32 13
  %123 = ptrtoint ptr %dataxferlen.i to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %124 = load i32, ptr %dataxferlen.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool115.not.i = icmp eq i32 %124, 0
  br i1 %tobool115.not.i, label %if.end114.i.if.end138.i_crit_edge, label %if.then116.i

if.end114.i.if.end138.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end138.i

if.then116.i:                                     ; preds = %if.end114.i
  %call.i138.i = call ptr @dma_alloc_attrs(ptr noundef %dev1.i7, i32 noundef %124, ptr noundef nonnull %data_dma_hndl.i, i32 noundef 3264, i32 noundef 0) #14
  %cmp120.i = icmp eq ptr %call.i138.i, null
  br i1 %cmp120.i, label %if.then122.i, label %if.end126.i

if.then122.i:                                     ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #16
  %125 = ptrtoint ptr %pthru_dma_hndl.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %pthru_dma_hndl.i, align 4
  call void @dma_free_attrs(ptr noundef %dev1.i7, i32 noundef 60, ptr noundef nonnull %call.i.i, i32 noundef %126, i32 noundef 0) #14
  call void @kfree(ptr noundef nonnull %call.i4) #14
  br label %megadev_ioctl.exit

if.end126.i:                                      ; preds = %if.then116.i
  %dataxferaddr.i = getelementptr inbounds %struct.mega_passthru, ptr %call.i.i, i32 0, i32 12
  %127 = ptrtoint ptr %dataxferaddr.i to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %128 = load i32, ptr %dataxferaddr.i, align 1
  %129 = ptrtoint ptr %data_dma_hndl.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %data_dma_hndl.i, align 4
  store i32 %130, ptr %dataxferaddr.i, align 1
  %phi.cast1.i = inttoptr i32 %128 to ptr
  %131 = ptrtoint ptr %dataxferlen.i to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %.pr.i = load i32, ptr %dataxferlen.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool128.not.i = icmp eq i32 %.pr.i, 0
  %and130.i = and i32 %spec.select281.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130.i)
  %tobool131.not.i = icmp eq i32 %and130.i, 0
  %or.cond277.i = select i1 %tobool128.not.i, i1 true, i1 %tobool131.not.i
  br i1 %or.cond277.i, label %if.end126.i.if.end138.i_crit_edge, label %if.end8.i.i21.i

if.end126.i.if.end138.i_crit_edge:                ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end138.i

if.end8.i.i21.i:                                  ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp9.i.i.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end8.i.i21.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.freemem_and_return.i_crit_edge, label %if.then27.i.i.i, !prof !549

land.rhs16.i.i.i.freemem_and_return.i_crit_edge:  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %freemem_and_return.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.234, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %freemem_and_return.i

if.then.i.i.i.i:                                  ; preds = %if.end8.i.i21.i
  call void @__check_object_size(ptr noundef nonnull %call.i138.i, i32 noundef %.pr.i, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.236, i32 noundef 156) #14
  %call.i.i22.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i22.i, label %if.then.i.i.i.i.if.then11.i.i38.i_crit_edge, label %land.lhs.true.i.i25.i

if.then.i.i.i.i.if.then11.i.i38.i_crit_edge:      ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i38.i

land.lhs.true.i.i25.i:                            ; preds = %if.then.i.i.i.i
  %132 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %phi.cast1.i, i32 %.pr.i, i32 -1226833920) #20, !srcloc !570
  %asmresult.i.i23.i = extractvalue { i32, i32 } %132, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i23.i)
  %cmp.i6.i24.i = icmp eq i32 %asmresult.i.i23.i, 0
  br i1 %cmp.i6.i24.i, label %if.end.i.i35.i, label %land.lhs.true.i.i25.i.if.then11.i.i38.i_crit_edge, !prof !549

land.lhs.true.i.i25.i.if.then11.i.i38.i_crit_edge: ; preds = %land.lhs.true.i.i25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i38.i

if.end.i.i35.i:                                   ; preds = %land.lhs.true.i.i25.i
  %call.i.i.i26.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i138.i, i32 noundef %.pr.i) #14
  %133 = call i32 @llvm.read_register.i32(metadata !516) #14
  %and.i.i.i.i.i.i27.i = and i32 %133, -16384
  %134 = inttoptr i32 %and.i.i.i.i.i.i27.i to ptr
  %cpu_domain.i.i.i.i.i28.i = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 4
  %135 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i28.i) #9, !srcloc !571
  %and.i.i.i.i29.i = and i32 %135, -13
  %or.i.i.i.i30.i = or i32 %and.i.i.i.i29.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i30.i) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  %call1.i.i.i31.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call.i138.i, ptr noundef %phi.cast1.i, i32 noundef %.pr.i) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %135) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i31.i)
  %tobool4.not.i.i34.i = icmp eq i32 %call1.i.i.i31.i, 0
  br i1 %tobool4.not.i.i34.i, label %if.end.i.i35.i.if.end138.i_crit_edge, label %if.end.i.i35.i.if.then11.i.i38.i_crit_edge, !prof !549

if.end.i.i35.i.if.then11.i.i38.i_crit_edge:       ; preds = %if.end.i.i35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i38.i

if.end.i.i35.i.if.end138.i_crit_edge:             ; preds = %if.end.i.i35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end138.i

if.then11.i.i38.i:                                ; preds = %if.end.i.i35.i.if.then11.i.i38.i_crit_edge, %land.lhs.true.i.i25.i.if.then11.i.i38.i_crit_edge, %if.then.i.i.i.i.if.then11.i.i38.i_crit_edge
  %res.0.i.i33235.i = phi i32 [ %call1.i.i.i31.i, %if.end.i.i35.i.if.then11.i.i38.i_crit_edge ], [ %.pr.i, %if.then.i.i.i.i.if.then11.i.i38.i_crit_edge ], [ %.pr.i, %land.lhs.true.i.i25.i.if.then11.i.i38.i_crit_edge ]
  %sub.i.i36.i = sub i32 %.pr.i, %res.0.i.i33235.i
  %add.ptr.i.i37.i = getelementptr i8, ptr %call.i138.i, i32 %sub.i.i36.i
  %136 = call ptr @memset(ptr %add.ptr.i.i37.i, i32 0, i32 %res.0.i.i33235.i)
  br label %freemem_and_return.i

if.end138.i:                                      ; preds = %if.end.i.i35.i.if.end138.i_crit_edge, %if.end126.i.if.end138.i_crit_edge, %if.end114.i.if.end138.i_crit_edge
  %data.0225.i = phi ptr [ %call.i138.i, %if.end126.i.if.end138.i_crit_edge ], [ %call.i138.i, %if.end.i.i35.i.if.end138.i_crit_edge ], [ null, %if.end114.i.if.end138.i_crit_edge ]
  %uxferaddr.0221.i = phi ptr [ %phi.cast1.i, %if.end126.i.if.end138.i_crit_edge ], [ %phi.cast1.i, %if.end.i.i35.i.if.end138.i_crit_edge ], [ null, %if.end114.i.if.end138.i_crit_edge ]
  %137 = call ptr @memset(ptr %mc.i, i32 0, i32 18)
  %138 = ptrtoint ptr %mc.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 3, ptr %mc.i, align 4
  %139 = ptrtoint ptr %pthru_dma_hndl.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %pthru_dma_hndl.i, align 4
  %141 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %3, align 4
  %call141.i = call fastcc i32 @mega_internal_command(ptr noundef %73, ptr noundef nonnull %mc.i, ptr noundef nonnull %call.i.i) #14
  %call142.i = call fastcc i32 @mega_n_to_m(ptr noundef %7, ptr noundef nonnull %mc.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142.i)
  %tobool143.not.i = icmp eq i32 %call142.i, 0
  br i1 %tobool143.not.i, label %if.end145.i, label %if.end138.i.freemem_and_return.i_crit_edge

if.end138.i.freemem_and_return.i_crit_edge:       ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %freemem_and_return.i

if.end145.i:                                      ; preds = %if.end138.i
  %142 = ptrtoint ptr %dataxferlen.i to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %143 = load i32, ptr %dataxferlen.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool147.not.i = icmp eq i32 %143, 0
  %and150.i = and i32 %spec.select281.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150.i)
  %tobool151.not.i = icmp eq i32 %and150.i, 0
  %or.cond278.i = select i1 %tobool147.not.i, i1 true, i1 %tobool151.not.i
  br i1 %or.cond278.i, label %if.end145.i.if.end158.i_crit_edge, label %if.end8.i.i48.i

if.end145.i.if.end158.i_crit_edge:                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end158.i

if.end8.i.i48.i:                                  ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp9.i.i47.i = icmp slt i32 %143, 0
  br i1 %cmp9.i.i47.i, label %land.rhs16.i.i50.i, label %if.then.i.i.i53.i

land.rhs16.i.i50.i:                               ; preds = %if.end8.i.i48.i
  %.b71.i.i49.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i49.i, label %land.rhs16.i.i50.i.if.end158.i_crit_edge, label %if.then27.i.i51.i, !prof !549

land.rhs16.i.i50.i.if.end158.i_crit_edge:         ; preds = %land.rhs16.i.i50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end158.i

if.then27.i.i51.i:                                ; preds = %land.rhs16.i.i50.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.234, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %if.end158.i

if.then.i.i.i53.i:                                ; preds = %if.end8.i.i48.i
  call void @__check_object_size(ptr noundef %data.0225.i, i32 noundef %143, i1 noundef zeroext true) #14
  call void @__might_fault(ptr noundef nonnull @.str.236, i32 noundef 174) #14
  %call.i.i54.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i54.i, label %if.then.i.i.i53.i.if.end158.i_crit_edge, label %if.end.i.i58.i

if.then.i.i.i53.i.if.end158.i_crit_edge:          ; preds = %if.then.i.i.i53.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end158.i

if.end.i.i58.i:                                   ; preds = %if.then.i.i.i53.i
  %144 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %uxferaddr.0221.i, i32 %143, i32 -1226833920) #20, !srcloc !576
  %asmresult.i.i56.i = extractvalue { i32, i32 } %144, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i56.i)
  %cmp.i6.i57.i = icmp eq i32 %asmresult.i.i56.i, 0
  br i1 %cmp.i6.i57.i, label %copy_to_user.exit63.i, label %if.end.i.i58.i.if.end158.i_crit_edge

if.end.i.i58.i.if.end158.i_crit_edge:             ; preds = %if.end.i.i58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end158.i

copy_to_user.exit63.i:                            ; preds = %if.end.i.i58.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i59.i = call zeroext i1 @__kasan_check_read(ptr noundef %data.0225.i, i32 noundef %143) #14
  %call.i12.i.i60.i = call i32 @arm_copy_to_user(ptr noundef %uxferaddr.0221.i, ptr noundef %data.0225.i, i32 noundef %143) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i60.i)
  %tobool155.not.i = icmp eq i32 %call.i12.i.i60.i, 0
  %spec.select.i = select i1 %tobool155.not.i, i32 0, i32 -14
  br label %if.end158.i

if.end158.i:                                      ; preds = %copy_to_user.exit63.i, %if.end.i.i58.i.if.end158.i_crit_edge, %if.then.i.i.i53.i.if.end158.i_crit_edge, %if.then27.i.i51.i, %land.rhs16.i.i50.i.if.end158.i_crit_edge, %if.end145.i.if.end158.i_crit_edge
  %rval.1.i = phi i32 [ 0, %if.end145.i.if.end158.i_crit_edge ], [ -14, %if.then.i.i.i53.i.if.end158.i_crit_edge ], [ -14, %if.end.i.i58.i.if.end158.i_crit_edge ], [ -14, %if.then27.i.i51.i ], [ -14, %land.rhs16.i.i50.i.if.end158.i_crit_edge ], [ %spec.select.i, %copy_to_user.exit63.i ]
  %reqsensearea.i = getelementptr inbounds %struct.mega_passthru, ptr %115, i32 0, i32 9
  %reqsensearea159.i = getelementptr inbounds %struct.mega_passthru, ptr %call.i.i, i32 0, i32 9
  call void @__might_fault(ptr noundef nonnull @.str.236, i32 noundef 174) #14
  %call.i.i70.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i70.i, label %if.end158.i.freemem_and_return.i_crit_edge, label %if.end.i.i74.i

if.end158.i.freemem_and_return.i_crit_edge:       ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %freemem_and_return.i

if.end.i.i74.i:                                   ; preds = %if.end158.i
  %145 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %reqsensearea.i, i32 14, i32 -1226833920) #20, !srcloc !576
  %asmresult.i.i72.i = extractvalue { i32, i32 } %145, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i72.i)
  %cmp.i6.i73.i = icmp eq i32 %asmresult.i.i72.i, 0
  br i1 %cmp.i6.i73.i, label %copy_to_user.exit79.i, label %if.end.i.i74.i.freemem_and_return.i_crit_edge

if.end.i.i74.i.freemem_and_return.i_crit_edge:    ; preds = %if.end.i.i74.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %freemem_and_return.i

copy_to_user.exit79.i:                            ; preds = %if.end.i.i74.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i75.i = call zeroext i1 @__kasan_check_read(ptr noundef %reqsensearea159.i, i32 noundef 14) #14
  %call.i12.i.i76.i = call i32 @arm_copy_to_user(ptr noundef %reqsensearea.i, ptr noundef %reqsensearea159.i, i32 noundef 14) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i76.i)
  %tobool162.not.i = icmp eq i32 %call.i12.i.i76.i, 0
  %spec.select279.i = select i1 %tobool162.not.i, i32 %rval.1.i, i32 -14
  br label %freemem_and_return.i

freemem_and_return.i:                             ; preds = %copy_to_user.exit79.i, %if.end.i.i74.i.freemem_and_return.i_crit_edge, %if.end158.i.freemem_and_return.i_crit_edge, %if.end138.i.freemem_and_return.i_crit_edge, %if.then11.i.i38.i, %if.then27.i.i.i, %land.rhs16.i.i.i.freemem_and_return.i_crit_edge
  %data.0228.i = phi ptr [ %data.0225.i, %if.end138.i.freemem_and_return.i_crit_edge ], [ %call.i138.i, %land.rhs16.i.i.i.freemem_and_return.i_crit_edge ], [ %call.i138.i, %if.then27.i.i.i ], [ %call.i138.i, %if.then11.i.i38.i ], [ %data.0225.i, %if.end158.i.freemem_and_return.i_crit_edge ], [ %data.0225.i, %if.end.i.i74.i.freemem_and_return.i_crit_edge ], [ %data.0225.i, %copy_to_user.exit79.i ]
  %rval.2.i = phi i32 [ %call142.i, %if.end138.i.freemem_and_return.i_crit_edge ], [ -14, %land.rhs16.i.i.i.freemem_and_return.i_crit_edge ], [ -14, %if.then27.i.i.i ], [ -14, %if.then11.i.i38.i ], [ -14, %if.end158.i.freemem_and_return.i_crit_edge ], [ -14, %if.end.i.i74.i.freemem_and_return.i_crit_edge ], [ %spec.select279.i, %copy_to_user.exit79.i ]
  %146 = ptrtoint ptr %dataxferlen.i to i32
  call void @__asan_loadN_noabort(i32 %146, i32 4)
  %147 = load i32, ptr %dataxferlen.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool166.not.i = icmp eq i32 %147, 0
  br i1 %tobool166.not.i, label %freemem_and_return.i.if.end170.i_crit_edge, label %if.then167.i

freemem_and_return.i.if.end170.i_crit_edge:       ; preds = %freemem_and_return.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end170.i

if.then167.i:                                     ; preds = %freemem_and_return.i
  call void @__sanitizer_cov_trace_pc() #16
  %148 = ptrtoint ptr %data_dma_hndl.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %data_dma_hndl.i, align 4
  call void @dma_free_attrs(ptr noundef %dev1.i7, i32 noundef %147, ptr noundef %data.0228.i, i32 noundef %149, i32 noundef 0) #14
  br label %if.end170.i

if.end170.i:                                      ; preds = %if.then167.i, %freemem_and_return.i.if.end170.i_crit_edge
  %150 = ptrtoint ptr %pthru_dma_hndl.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %pthru_dma_hndl.i, align 4
  call void @dma_free_attrs(ptr noundef %dev1.i7, i32 noundef 60, ptr noundef nonnull %call.i.i, i32 noundef %151, i32 noundef 0) #14
  call void @kfree(ptr noundef nonnull %call.i4) #14
  br label %megadev_ioctl.exit

if.else.i:                                        ; preds = %if.end95.i.if.else.i_crit_edge, %if.end.i2.if.else.i_crit_edge
  %pdev.i.0 = phi ptr [ %call.i4, %if.end95.i.if.else.i_crit_edge ], [ %call.i, %if.end.i2.if.else.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uioc.sroa.31154.0.ph.ph.i)
  %tobool172.not.i = icmp eq i32 %uioc.sroa.31154.0.ph.ph.i, 0
  br i1 %tobool172.not.i, label %if.else.i.if.end199.i_crit_edge, label %if.then173.i

if.else.i.if.end199.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end199.i

if.then173.i:                                     ; preds = %if.else.i
  %dev174.i = getelementptr inbounds %struct.pci_dev, ptr %pdev.i.0, i32 0, i32 44
  %call.i139.i = call ptr @dma_alloc_attrs(ptr noundef %dev174.i, i32 noundef %uioc.sroa.31154.0.ph.ph.i, ptr noundef nonnull %data_dma_hndl.i, i32 noundef 3264, i32 noundef 0) #14
  %cmp177.i = icmp eq ptr %call.i139.i, null
  br i1 %cmp177.i, label %if.then179.i, label %land.lhs.true187.i

if.then179.i:                                     ; preds = %if.then173.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %pdev.i.0) #14
  br label %megadev_ioctl.exit

land.lhs.true187.i:                               ; preds = %if.then173.i
  %phi.cast.i = inttoptr i32 %uioc.sroa.29150.0.ph.ph.i to ptr
  %and189.i = and i32 %spec.select281.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189.i)
  %tobool190.not.i = icmp eq i32 %and189.i, 0
  br i1 %tobool190.not.i, label %land.lhs.true187.i.if.end199.i_crit_edge, label %if.end8.i.i87.i

land.lhs.true187.i.if.end199.i_crit_edge:         ; preds = %land.lhs.true187.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end199.i

if.end8.i.i87.i:                                  ; preds = %land.lhs.true187.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uioc.sroa.31154.0.ph.ph.i)
  %cmp9.i.i86.i = icmp slt i32 %uioc.sroa.31154.0.ph.ph.i, 0
  br i1 %cmp9.i.i86.i, label %land.rhs16.i.i89.i, label %if.then.i.i.i92.i

land.rhs16.i.i89.i:                               ; preds = %if.end8.i.i87.i
  %.b71.i.i88.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i88.i, label %land.rhs16.i.i89.i.if.then195.i_crit_edge, label %if.then27.i.i90.i, !prof !549

land.rhs16.i.i89.i.if.then195.i_crit_edge:        ; preds = %land.rhs16.i.i89.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then195.i

if.then27.i.i90.i:                                ; preds = %land.rhs16.i.i89.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.234, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %if.then195.i

if.then.i.i.i92.i:                                ; preds = %if.end8.i.i87.i
  call void @__check_object_size(ptr noundef nonnull %call.i139.i, i32 noundef %uioc.sroa.31154.0.ph.ph.i, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.236, i32 noundef 156) #14
  %call.i.i93.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i93.i, label %if.then.i.i.i92.i.if.then11.i.i110.i_crit_edge, label %land.lhs.true.i.i97.i

if.then.i.i.i92.i.if.then11.i.i110.i_crit_edge:   ; preds = %if.then.i.i.i92.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i110.i

land.lhs.true.i.i97.i:                            ; preds = %if.then.i.i.i92.i
  %152 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %phi.cast.i, i32 %uioc.sroa.31154.0.ph.ph.i, i32 -1226833920) #20, !srcloc !570
  %asmresult.i.i95.i = extractvalue { i32, i32 } %152, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i95.i)
  %cmp.i6.i96.i = icmp eq i32 %asmresult.i.i95.i, 0
  br i1 %cmp.i6.i96.i, label %if.end.i.i107.i, label %land.lhs.true.i.i97.i.if.then11.i.i110.i_crit_edge, !prof !549

land.lhs.true.i.i97.i.if.then11.i.i110.i_crit_edge: ; preds = %land.lhs.true.i.i97.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i110.i

if.end.i.i107.i:                                  ; preds = %land.lhs.true.i.i97.i
  %call.i.i.i98.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i139.i, i32 noundef %uioc.sroa.31154.0.ph.ph.i) #14
  %153 = call i32 @llvm.read_register.i32(metadata !516) #14
  %and.i.i.i.i.i.i99.i = and i32 %153, -16384
  %154 = inttoptr i32 %and.i.i.i.i.i.i99.i to ptr
  %cpu_domain.i.i.i.i.i100.i = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 4
  %155 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i100.i) #9, !srcloc !571
  %and.i.i.i.i101.i = and i32 %155, -13
  %or.i.i.i.i102.i = or i32 %and.i.i.i.i101.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i102.i) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  %call1.i.i.i103.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call.i139.i, ptr noundef %phi.cast.i, i32 noundef %uioc.sroa.31154.0.ph.ph.i) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %155) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i103.i)
  %tobool4.not.i.i106.i = icmp eq i32 %call1.i.i.i103.i, 0
  br i1 %tobool4.not.i.i106.i, label %if.end.i.i107.i.if.end199.i_crit_edge, label %if.end.i.i107.i.if.then11.i.i110.i_crit_edge, !prof !549

if.end.i.i107.i.if.then11.i.i110.i_crit_edge:     ; preds = %if.end.i.i107.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i110.i

if.end.i.i107.i.if.end199.i_crit_edge:            ; preds = %if.end.i.i107.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end199.i

if.then11.i.i110.i:                               ; preds = %if.end.i.i107.i.if.then11.i.i110.i_crit_edge, %land.lhs.true.i.i97.i.if.then11.i.i110.i_crit_edge, %if.then.i.i.i92.i.if.then11.i.i110.i_crit_edge
  %res.0.i.i105260.i = phi i32 [ %call1.i.i.i103.i, %if.end.i.i107.i.if.then11.i.i110.i_crit_edge ], [ %uioc.sroa.31154.0.ph.ph.i, %if.then.i.i.i92.i.if.then11.i.i110.i_crit_edge ], [ %uioc.sroa.31154.0.ph.ph.i, %land.lhs.true.i.i97.i.if.then11.i.i110.i_crit_edge ]
  %sub.i.i108.i = sub i32 %uioc.sroa.31154.0.ph.ph.i, %res.0.i.i105260.i
  %add.ptr.i.i109.i = getelementptr i8, ptr %call.i139.i, i32 %sub.i.i108.i
  %156 = call ptr @memset(ptr %add.ptr.i.i109.i, i32 0, i32 %res.0.i.i105260.i)
  br label %if.then195.i

if.then195.i:                                     ; preds = %if.then11.i.i110.i, %if.then27.i.i90.i, %land.rhs16.i.i89.i.if.then195.i_crit_edge
  %157 = ptrtoint ptr %data_dma_hndl.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %data_dma_hndl.i, align 4
  call void @dma_free_attrs(ptr noundef %dev174.i, i32 noundef %uioc.sroa.31154.0.ph.ph.i, ptr noundef nonnull %call.i139.i, i32 noundef %158, i32 noundef 0) #14
  call void @kfree(ptr noundef nonnull %pdev.i.0) #14
  br label %megadev_ioctl.exit

if.end199.i:                                      ; preds = %if.end.i.i107.i.if.end199.i_crit_edge, %land.lhs.true187.i.if.end199.i_crit_edge, %if.else.i.if.end199.i_crit_edge
  %data.1249.i = phi ptr [ %call.i139.i, %land.lhs.true187.i.if.end199.i_crit_edge ], [ %call.i139.i, %if.end.i.i107.i.if.end199.i_crit_edge ], [ null, %if.else.i.if.end199.i_crit_edge ]
  %uxferaddr.1245.i = phi ptr [ %phi.cast.i, %land.lhs.true187.i.if.end199.i_crit_edge ], [ %phi.cast.i, %if.end.i.i107.i.if.end199.i_crit_edge ], [ null, %if.else.i.if.end199.i_crit_edge ]
  %159 = ptrtoint ptr %mc.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %uioc.sroa.15.0.ph.ph.i, ptr %mc.i, align 4
  %160 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %uioc.sroa.29.0.ph.ph.i, ptr %2, align 4
  %161 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %161, i32 6)
  store i48 %uioc.sroa.31.sroa.0.0.off16.ph.i, ptr %4, align 4
  %162 = ptrtoint ptr %data_dma_hndl.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %data_dma_hndl.i, align 4
  %164 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %3, align 4
  %call203.i = call fastcc i32 @mega_internal_command(ptr noundef %73, ptr noundef nonnull %mc.i, ptr noundef null) #14
  %call204.i = call fastcc i32 @mega_n_to_m(ptr noundef %7, ptr noundef nonnull %mc.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204.i)
  %tobool205.not.i = icmp eq i32 %call204.i, 0
  br i1 %tobool205.not.i, label %if.end213.i, label %if.then206.i

if.then206.i:                                     ; preds = %if.end199.i
  br i1 %tobool172.not.i, label %if.then206.i.if.end212.i_crit_edge, label %if.then209.i

if.then206.i.if.end212.i_crit_edge:               ; preds = %if.then206.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end212.i

if.then209.i:                                     ; preds = %if.then206.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev210.i = getelementptr inbounds %struct.pci_dev, ptr %pdev.i.0, i32 0, i32 44
  %165 = ptrtoint ptr %data_dma_hndl.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %data_dma_hndl.i, align 4
  call void @dma_free_attrs(ptr noundef %dev210.i, i32 noundef %uioc.sroa.31154.0.ph.ph.i, ptr noundef %data.1249.i, i32 noundef %166, i32 noundef 0) #14
  br label %if.end212.i

if.end212.i:                                      ; preds = %if.then209.i, %if.then206.i.if.end212.i_crit_edge
  call void @kfree(ptr noundef nonnull %pdev.i.0) #14
  br label %megadev_ioctl.exit

if.end213.i:                                      ; preds = %if.end199.i
  br i1 %tobool172.not.i, label %if.end213.i.if.end232.i_crit_edge, label %land.lhs.true216.i

if.end213.i.if.end232.i_crit_edge:                ; preds = %if.end213.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end232.i

land.lhs.true216.i:                               ; preds = %if.end213.i
  %and218.i = and i32 %spec.select281.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218.i)
  %tobool219.not.i = icmp eq i32 %and218.i, 0
  br i1 %tobool219.not.i, label %land.lhs.true216.i.if.then229.i_crit_edge, label %if.end8.i.i120.i

land.lhs.true216.i.if.then229.i_crit_edge:        ; preds = %land.lhs.true216.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then229.i

if.end8.i.i120.i:                                 ; preds = %land.lhs.true216.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uioc.sroa.31154.0.ph.ph.i)
  %cmp9.i.i119.i = icmp slt i32 %uioc.sroa.31154.0.ph.ph.i, 0
  br i1 %cmp9.i.i119.i, label %land.rhs16.i.i122.i, label %if.then.i.i.i125.i

land.rhs16.i.i122.i:                              ; preds = %if.end8.i.i120.i
  %.b71.i.i121.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i121.i, label %land.rhs16.i.i122.i.if.then229.i_crit_edge, label %if.then27.i.i123.i, !prof !549

land.rhs16.i.i122.i.if.then229.i_crit_edge:       ; preds = %land.rhs16.i.i122.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then229.i

if.then27.i.i123.i:                               ; preds = %land.rhs16.i.i122.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.234, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %if.then229.i

if.then.i.i.i125.i:                               ; preds = %if.end8.i.i120.i
  call void @__check_object_size(ptr noundef %data.1249.i, i32 noundef %uioc.sroa.31154.0.ph.ph.i, i1 noundef zeroext true) #14
  call void @__might_fault(ptr noundef nonnull @.str.236, i32 noundef 174) #14
  %call.i.i126.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i126.i, label %if.then.i.i.i125.i.if.then229.i_crit_edge, label %if.end.i.i130.i

if.then.i.i.i125.i.if.then229.i_crit_edge:        ; preds = %if.then.i.i.i125.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then229.i

if.end.i.i130.i:                                  ; preds = %if.then.i.i.i125.i
  %167 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %uxferaddr.1245.i, i32 %uioc.sroa.31154.0.ph.ph.i, i32 -1226833920) #20, !srcloc !576
  %asmresult.i.i128.i = extractvalue { i32, i32 } %167, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i128.i)
  %cmp.i6.i129.i = icmp eq i32 %asmresult.i.i128.i, 0
  br i1 %cmp.i6.i129.i, label %if.then2.i.i133.i, label %if.end.i.i130.i.if.then229.i_crit_edge

if.end.i.i130.i.if.then229.i_crit_edge:           ; preds = %if.end.i.i130.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then229.i

if.then2.i.i133.i:                                ; preds = %if.end.i.i130.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i131.i = call zeroext i1 @__kasan_check_read(ptr noundef %data.1249.i, i32 noundef %uioc.sroa.31154.0.ph.ph.i) #14
  %call.i12.i.i132.i = call i32 @arm_copy_to_user(ptr noundef %uxferaddr.1245.i, ptr noundef %data.1249.i, i32 noundef %uioc.sroa.31154.0.ph.ph.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i132.i)
  %phi.cmp = icmp eq i32 %call.i12.i.i132.i, 0
  %phi.sel = select i1 %phi.cmp, i32 0, i32 -14
  br label %if.then229.i

if.then229.i:                                     ; preds = %if.then2.i.i133.i, %if.end.i.i130.i.if.then229.i_crit_edge, %if.then.i.i.i125.i.if.then229.i_crit_edge, %if.then27.i.i123.i, %land.rhs16.i.i122.i.if.then229.i_crit_edge, %land.lhs.true216.i.if.then229.i_crit_edge
  %rval.3.ph.i = phi i32 [ 0, %land.lhs.true216.i.if.then229.i_crit_edge ], [ -14, %if.then27.i.i123.i ], [ -14, %land.rhs16.i.i122.i.if.then229.i_crit_edge ], [ -14, %if.then.i.i.i125.i.if.then229.i_crit_edge ], [ %phi.sel, %if.then2.i.i133.i ], [ -14, %if.end.i.i130.i.if.then229.i_crit_edge ]
  %dev230.i = getelementptr inbounds %struct.pci_dev, ptr %pdev.i.0, i32 0, i32 44
  %168 = ptrtoint ptr %data_dma_hndl.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %data_dma_hndl.i, align 4
  call void @dma_free_attrs(ptr noundef %dev230.i, i32 noundef %uioc.sroa.31154.0.ph.ph.i, ptr noundef %data.1249.i, i32 noundef %169, i32 noundef 0) #14
  br label %if.end232.i

if.end232.i:                                      ; preds = %if.then229.i, %if.end213.i.if.end232.i_crit_edge
  %rval.3274.i = phi i32 [ %rval.3.ph.i, %if.then229.i ], [ 0, %if.end213.i.if.end232.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %pdev.i.0) #14
  br label %megadev_ioctl.exit

sw.epilog.i:                                      ; preds = %copy_to_user.exit.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  br label %megadev_ioctl.exit

megadev_ioctl.exit:                               ; preds = %sw.epilog.i, %if.end232.i, %if.end212.i, %if.then195.i, %if.then179.i, %if.end170.i, %if.then122.i, %if.then11.i.i.i, %if.then106.i, %if.then4.i, %if.end90.thread.i.megadev_ioctl.exit_crit_edge, %if.then4.i11, %if.end90.i.megadev_ioctl.exit_crit_edge, %do.end87.i, %if.then69.i, %mega_del_logdrv.exit.megadev_ioctl.exit_crit_edge, %do.end60.i, %sw.bb39.i.megadev_ioctl.exit_crit_edge, %copy_to_user.exit.i.megadev_ioctl.exit_crit_edge, %if.end.i.i.i.megadev_ioctl.exit_crit_edge, %if.end33.i.megadev_ioctl.exit_crit_edge, %sw.bb29.i.megadev_ioctl.exit_crit_edge, %if.end28.i, %sw.bb9.i.megadev_ioctl.exit_crit_edge, %sw.bb.i.megadev_ioctl.exit_crit_edge, %mega_m_to_n.exit.i, %entry.megadev_ioctl.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end60.i ], [ -22, %do.end87.i ], [ -12, %if.then106.i ], [ -14, %if.then11.i.i.i ], [ -12, %if.then122.i ], [ %rval.2.i, %if.end170.i ], [ -12, %if.then179.i ], [ -14, %if.then195.i ], [ %call204.i, %if.end212.i ], [ %rval.3274.i, %if.end232.i ], [ 0, %sw.epilog.i ], [ %62, %if.end28.i ], [ -22, %entry.megadev_ioctl.exit_crit_edge ], [ %retval.0.i.i, %mega_m_to_n.exit.i ], [ -14, %sw.bb.i.megadev_ioctl.exit_crit_edge ], [ -14, %sw.bb9.i.megadev_ioctl.exit_crit_edge ], [ -19, %sw.bb29.i.megadev_ioctl.exit_crit_edge ], [ -14, %copy_to_user.exit.i.megadev_ioctl.exit_crit_edge ], [ -19, %sw.bb39.i.megadev_ioctl.exit_crit_edge ], [ %call71.i, %if.then69.i ], [ %call.i.i16, %mega_del_logdrv.exit.megadev_ioctl.exit_crit_edge ], [ -14, %if.end33.i.megadev_ioctl.exit_crit_edge ], [ -14, %if.end.i.i.i.megadev_ioctl.exit_crit_edge ], [ -5, %if.then4.i11 ], [ -5, %if.end90.i.megadev_ioctl.exit_crit_edge ], [ -5, %if.then4.i ], [ -5, %if.end90.thread.i.megadev_ioctl.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %mc.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_dma_hndl.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pthru_dma_hndl.i) #14
  call void @mutex_unlock(ptr noundef nonnull @megadev_mutex) #14
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @megadev_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %filep) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #14
  %. = select i1 %call, i32 0, i32 -13
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mega_n_to_m(ptr noundef %arg, ptr nocapture noundef readonly %mc) unnamed_addr #5 align 64 {
entry:
  %signature = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %signature) #14
  %0 = ptrtoint ptr %signature to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %signature, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.236, i32 noundef 156) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 7, i32 -1226833920) #20, !srcloc !570
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !549

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %signature, i32 noundef 7) #14
  %2 = call i32 @llvm.read_register.i32(metadata !516) #14
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !571
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %signature, ptr noundef %arg, i32 noundef 7) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !549

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i150 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 7, %entry.if.then11.i.i_crit_edge ], [ 7, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 7, %res.0.i.i150
  %add.ptr.i.i = getelementptr i8, ptr %signature, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i150)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %signature, ptr noundef nonnull dereferenceable(7) @.str.233, i32 7) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %status = getelementptr inbounds %struct.nitioctl_t, ptr %arg, i32 0, i32 3, i32 1, i32 13
  %status4 = getelementptr inbounds %struct.megacmd_t, ptr %mc, i32 0, i32 9
  %6 = ptrtoint ptr %status4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status4, align 1
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 3521) #14
  %8 = call i32 @llvm.read_register.i32(metadata !516) #14
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !571
  %and.i = and i32 %10, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  %11 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %status, i8 %7, i32 -1226833921) #14, !srcloc !577
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %if.end9, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.then3
  %12 = ptrtoint ptr %mc to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp10 = icmp eq i8 %13, 3
  br i1 %cmp10, label %if.then12, label %if.end9.if.end112_crit_edge

if.end9.if.end112_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end112

if.then12:                                        ; preds = %if.end9
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 3528) #14
  %xferaddr = getelementptr inbounds %struct.nitioctl_t, ptr %arg, i32 0, i32 3, i32 1, i32 4
  %14 = call i32 @llvm.read_register.i32(metadata !516) #14
  %and.i.i.i128 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i128 to ptr
  %cpu_domain.i.i129 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i129) #9, !srcloc !571
  %and.i130 = and i32 %16, -13
  %or.i131 = or i32 %and.i130, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i131) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  %17 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %xferaddr, i32 -1226833921) #14, !srcloc !578
  %asmresult = extractvalue { i32, i32 } %17, 0
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool25.not = icmp eq i32 %asmresult, 0
  br i1 %tobool25.not, label %if.end27, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end27:                                         ; preds = %if.then12
  %asmresult23 = extractvalue { i32, i32 } %17, 1
  %18 = inttoptr i32 %asmresult23 to ptr
  %scsistatus = getelementptr inbounds %struct.mega_passthru, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %status4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %status4, align 1
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 3531) #14
  %21 = call i32 @llvm.read_register.i32(metadata !516) #14
  %and.i.i.i132 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i132 to ptr
  %cpu_domain.i.i133 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i133) #9, !srcloc !571
  %and.i134 = and i32 %23, -13
  %or.i135 = or i32 %and.i134, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i135) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  %24 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %scsistatus, i8 %20, i32 -1226833921) #14, !srcloc !579
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool44.not = icmp eq i32 %24, 0
  br i1 %tobool44.not, label %if.end27.if.end112_crit_edge, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end27.if.end112_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end112

if.else:                                          ; preds = %if.end
  %arrayidx51 = getelementptr %struct.uioctl_t, ptr %arg, i32 0, i32 3, i32 17
  %status53 = getelementptr inbounds %struct.megacmd_t, ptr %mc, i32 0, i32 9
  %25 = ptrtoint ptr %status53 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %status53, align 1
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 3538) #14
  %27 = call i32 @llvm.read_register.i32(metadata !516) #14
  %and.i.i.i136 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i136 to ptr
  %cpu_domain.i.i137 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 4
  %29 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i137) #9, !srcloc !571
  %and.i138 = and i32 %29, -13
  %or.i139 = or i32 %and.i138, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i139) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  %30 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arrayidx51, i8 %26, i32 -1226833921) #14, !srcloc !580
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool65.not = icmp eq i32 %30, 0
  br i1 %tobool65.not, label %if.end67, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end67:                                         ; preds = %if.else
  %31 = ptrtoint ptr %mc to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %cmp70 = icmp eq i8 %32, 3
  br i1 %cmp70, label %if.then72, label %if.end67.if.end112_crit_edge

if.end67.if.end112_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end112

if.then72:                                        ; preds = %if.end67
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 3545) #14
  %xferaddr78 = getelementptr inbounds %struct.uioctl_t, ptr %arg, i32 0, i32 3, i32 8
  %33 = call i32 @llvm.read_register.i32(metadata !516) #14
  %and.i.i.i140 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i140 to ptr
  %cpu_domain.i.i141 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 4
  %35 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i141) #9, !srcloc !571
  %and.i142 = and i32 %35, -13
  %or.i143 = or i32 %and.i142, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i143) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  %36 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %xferaddr78, i32 -1226833921) #14, !srcloc !581
  %asmresult85 = extractvalue { i32, i32 } %36, 0
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult85)
  %tobool88.not = icmp eq i32 %asmresult85, 0
  br i1 %tobool88.not, label %if.end90, label %if.then72.cleanup_crit_edge

if.then72.cleanup_crit_edge:                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end90:                                         ; preds = %if.then72
  %asmresult86 = extractvalue { i32, i32 } %36, 1
  %37 = inttoptr i32 %asmresult86 to ptr
  %scsistatus94 = getelementptr inbounds %struct.mega_passthru, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %status53 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %status53, align 1
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 3548) #14
  %40 = call i32 @llvm.read_register.i32(metadata !516) #14
  %and.i.i.i144 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i144 to ptr
  %cpu_domain.i.i145 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 4
  %42 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i145) #9, !srcloc !571
  %and.i146 = and i32 %42, -13
  %or.i147 = or i32 %and.i146, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i147) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  %43 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %scsistatus94, i8 %39, i32 -1226833921) #14, !srcloc !582
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #14, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool108.not = icmp eq i32 %43, 0
  br i1 %tobool108.not, label %if.end90.if.end112_crit_edge, label %if.end90.cleanup_crit_edge

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end90.if.end112_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end112

if.end112:                                        ; preds = %if.end90.if.end112_crit_edge, %if.end67.if.end112_crit_edge, %if.end27.if.end112_crit_edge, %if.end9.if.end112_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end112, %if.end90.cleanup_crit_edge, %if.then72.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %if.end112 ], [ -14, %if.then3.cleanup_crit_edge ], [ -14, %if.then12.cleanup_crit_edge ], [ -14, %if.end27.cleanup_crit_edge ], [ -14, %if.else.cleanup_crit_edge ], [ -14, %if.then72.cleanup_crit_edge ], [ -14, %if.end90.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %signature) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 258)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 258)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind readnone }
attributes #21 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !21, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40, !41, !43, !44, !46, !47, !49, !51, !53, !55, !57, !58, !59, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !83, !85, !86, !88, !89, !90, !92, !94, !96, !97, !98, !100, !102, !104, !106, !107, !108, !110, !111, !113, !114, !115, !117, !119, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !169, !170, !171, !172, !174, !175, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !195, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !210, !212, !213, !214, !216, !218, !219, !220, !221, !223, !224, !225, !227, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !242, !244, !245, !247, !249, !250, !251, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !359, !360, !361, !363, !365, !366, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !388, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !418, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !474, !475, !476, !478, !479, !480, !481, !483, !484, !485, !487, !489, !490, !491, !493, !494, !495, !496, !498, !499, !500, !502, !504, !506, !507, !509, !511, !513, !514, !515}
!llvm.named.register.sp = !{!516}
!llvm.module.flags = !{!517, !518, !519, !520, !521, !522, !523, !524}
!llvm.ident = !{!525}

!0 = !{ptr @__UNIQUE_ID_author287, !1, !"__UNIQUE_ID_author287", i1 false, i1 false}
!1 = !{!"../drivers/scsi/megaraid.c", i32 56, i32 1}
!2 = !{ptr @__UNIQUE_ID_description288, !3, !"__UNIQUE_ID_description288", i1 false, i1 false}
!3 = !{!"../drivers/scsi/megaraid.c", i32 57, i32 1}
!4 = !{ptr @__UNIQUE_ID_file289, !5, !"__UNIQUE_ID_file289", i1 false, i1 false}
!5 = !{!"../drivers/scsi/megaraid.c", i32 58, i32 1}
!6 = !{ptr @__UNIQUE_ID_license290, !5, !"__UNIQUE_ID_license290", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version291, !8, !"__UNIQUE_ID_version291", i1 false, i1 false}
!8 = !{!"../drivers/scsi/megaraid.c", i32 59, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_max_cmd_per_lun, !14, !"__param_max_cmd_per_lun", i1 false, i1 false}
!14 = !{!"../drivers/scsi/megaraid.c", i32 63, i32 1}
!15 = !{ptr @__UNIQUE_ID_max_cmd_per_luntype292, !14, !"__UNIQUE_ID_max_cmd_per_luntype292", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_max_cmd_per_lun293, !17, !"__UNIQUE_ID_max_cmd_per_lun293", i1 false, i1 false}
!17 = !{!"../drivers/scsi/megaraid.c", i32 64, i32 1}
!18 = !{ptr @__param_max_sectors_per_io, !19, !"__param_max_sectors_per_io", i1 false, i1 false}
!19 = !{!"../drivers/scsi/megaraid.c", i32 67, i32 1}
!20 = !{ptr @__UNIQUE_ID_max_sectors_per_iotype294, !19, !"__UNIQUE_ID_max_sectors_per_iotype294", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_max_sectors_per_io295, !22, !"__UNIQUE_ID_max_sectors_per_io295", i1 false, i1 false}
!22 = !{!"../drivers/scsi/megaraid.c", i32 68, i32 1}
!23 = !{ptr @__param_max_mbox_busy_wait, !24, !"__param_max_mbox_busy_wait", i1 false, i1 false}
!24 = !{!"../drivers/scsi/megaraid.c", i32 72, i32 1}
!25 = !{ptr @__UNIQUE_ID_max_mbox_busy_waittype296, !24, !"__UNIQUE_ID_max_mbox_busy_waittype296", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_max_mbox_busy_wait297, !27, !"__UNIQUE_ID_max_mbox_busy_wait297", i1 false, i1 false}
!27 = !{!"../drivers/scsi/megaraid.c", i32 73, i32 1}
!28 = !{ptr @megaraid_info.buffer, !29, !"buffer", i1 false, i1 false}
!29 = !{!"../drivers/scsi/megaraid.c", i32 1842, i32 14}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/megaraid.c", i32 1848, i32 4}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/megaraid.c", i32 4624, i32 27}
!34 = !{ptr @__initcall__kmod_megaraid__299_4633_megaraid_init6, !35, !"__initcall__kmod_megaraid__299_4633_megaraid_init6", i1 false, i1 false}
!35 = !{!"../drivers/scsi/megaraid.c", i32 4633, i32 1}
!36 = !{ptr @__exitcall_megaraid_exit, !37, !"__exitcall_megaraid_exit", i1 false, i1 false}
!37 = !{!"../drivers/scsi/megaraid.c", i32 4634, i32 1}
!38 = !{ptr @major, !39, !"major", i1 false, i1 false}
!39 = !{!"../drivers/scsi/megaraid.c", i32 115, i32 12}
!40 = !{ptr @__param_str_max_cmd_per_lun, !14, !"__param_str_max_cmd_per_lun", i1 false, i1 false}
!41 = !{ptr @max_cmd_per_lun, !42, !"max_cmd_per_lun", i1 false, i1 false}
!42 = !{!"../drivers/scsi/megaraid.c", i32 62, i32 21}
!43 = !{ptr @__param_str_max_sectors_per_io, !19, !"__param_str_max_sectors_per_io", i1 false, i1 false}
!44 = !{ptr @max_sectors_per_io, !45, !"max_sectors_per_io", i1 false, i1 false}
!45 = !{!"../drivers/scsi/megaraid.c", i32 66, i32 27}
!46 = !{ptr @__param_str_max_mbox_busy_wait, !24, !"__param_str_max_mbox_busy_wait", i1 false, i1 false}
!47 = !{ptr @max_mbox_busy_wait, !48, !"max_mbox_busy_wait", i1 false, i1 false}
!48 = !{!"../drivers/scsi/megaraid.c", i32 71, i32 27}
!49 = !{ptr @.str.5, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/megaraid.c", i32 4573, i32 11}
!51 = !{ptr @megaraid_pci_driver, !52, !"megaraid_pci_driver", i1 false, i1 false}
!52 = !{!"../drivers/scsi/megaraid.c", i32 4572, i32 26}
!53 = !{ptr @megaraid_pci_tbl, !54, !"megaraid_pci_tbl", i1 false, i1 false}
!54 = !{!"../drivers/scsi/megaraid.c", i32 4561, i32 29}
!55 = !{ptr @.str.6, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/megaraid.c", i32 4182, i32 2}
!57 = !{ptr @.str.7, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.8, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.9, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.10, !56, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @megaraid_probe_one._entry, !56, !"_entry", i1 false, i1 false}
!62 = !{ptr @megaraid_probe_one._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.12, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/megaraid.c", i32 4194, i32 4}
!65 = !{ptr @.str.13, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @megaraid_probe_one._entry.11, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @megaraid_probe_one._entry_ptr.14, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/megaraid.c", i32 4200, i32 4}
!70 = !{ptr @megaraid_probe_one._entry.15, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @megaraid_probe_one._entry_ptr.17, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.19, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/megaraid.c", i32 4219, i32 2}
!74 = !{ptr @megaraid_probe_one._entry.18, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @megaraid_probe_one._entry_ptr.20, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @megaraid_probe_one.__key, !77, !"__key", i1 false, i1 false}
!77 = !{!"../drivers/scsi/megaraid.c", i32 4232, i32 2}
!78 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/megaraid.c", i32 4259, i32 3}
!81 = !{ptr @megaraid_probe_one._entry.22, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @megaraid_probe_one._entry_ptr.24, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @megaraid_probe_one._entry.25, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/scsi/megaraid.c", i32 4266, i32 3}
!85 = !{ptr @megaraid_probe_one._entry_ptr.26, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/megaraid.c", i32 4273, i32 3}
!88 = !{ptr @megaraid_probe_one._entry.27, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @megaraid_probe_one._entry_ptr.29, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/megaraid.c", i32 4290, i32 36}
!92 = !{ptr @.str.31, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/megaraid.c", i32 4291, i32 34}
!94 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/megaraid.c", i32 4293, i32 4}
!96 = !{ptr @megaraid_probe_one._entry.32, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @megaraid_probe_one._entry_ptr.34, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/megaraid.c", i32 4323, i32 36}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/megaraid.c", i32 4324, i32 36}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/megaraid.c", i32 4325, i32 36}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/megaraid.c", i32 4326, i32 4}
!106 = !{ptr @megaraid_probe_one._entry.38, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @megaraid_probe_one._entry_ptr.40, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @megaraid_probe_one.__key.41, !109, !"__key", i1 false, i1 false}
!109 = !{!"../drivers/scsi/megaraid.c", i32 4423, i32 2}
!110 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/megaraid.c", i32 4439, i32 3}
!113 = !{ptr @megaraid_probe_one._entry.43, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @megaraid_probe_one._entry_ptr.45, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @hba_count, !116, !"hba_count", i1 false, i1 false}
!116 = !{!"../drivers/scsi/megaraid.c", i32 84, i32 12}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/megaraid.c", i32 4107, i32 13}
!119 = !{ptr @megaraid_template, !120, !"megaraid_template", i1 false, i1 false}
!120 = !{!"../drivers/scsi/megaraid.c", i32 4105, i32 34}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/megaraid.c", i32 676, i32 5}
!123 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @mega_build_cmd._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @mega_build_cmd._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/megaraid.c", i32 1044, i32 4}
!128 = !{ptr @.str.50, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @mega_prepare_extpassthru._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @mega_prepare_extpassthru._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.51, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/megaraid.c", i32 981, i32 4}
!133 = !{ptr @mega_prepare_passthru._entry, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @mega_prepare_passthru._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.52, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/megaraid.c", i32 1929, i32 2}
!137 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @megaraid_abort_and_reset._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @megaraid_abort_and_reset._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.54, !136, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.57, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/megaraid.c", i32 1953, i32 5}
!144 = !{ptr @megaraid_abort_and_reset._entry.56, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @megaraid_abort_and_reset._entry_ptr.58, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.60, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/megaraid.c", i32 1966, i32 5}
!148 = !{ptr @megaraid_abort_and_reset._entry.59, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @megaraid_abort_and_reset._entry_ptr.61, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.62, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/megaraid.c", i32 1893, i32 3}
!152 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @megaraid_reset._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @megaraid_reset._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.65, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/megaraid.c", i32 1896, i32 3}
!157 = !{ptr @.str.66, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @megaraid_reset._entry.64, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @megaraid_reset._entry_ptr.67, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.68, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/megaraid.c", i32 4097, i32 3}
!162 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @mega_internal_command._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @mega_internal_command._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = distinct !{null, !166, !"trace_level", i1 false, i1 false}
!166 = !{!"../drivers/scsi/megaraid.c", i32 123, i32 12}
!167 = !{ptr @.str.70, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/megaraid.c", i32 2825, i32 3}
!169 = !{ptr @.str.71, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @megaraid_biosparam._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @megaraid_biosparam._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.72, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/scsi/megaraid.c", i32 1453, i32 5}
!174 = !{ptr @.str.73, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.74, !173, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @mega_cmd_done._entry, !173, !"_entry", i1 false, i1 false}
!177 = !{ptr @mega_cmd_done._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.76, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/scsi/megaraid.c", i32 1465, i32 5}
!180 = !{ptr @mega_cmd_done._entry.75, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @mega_cmd_done._entry_ptr.77, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.79, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/megaraid.c", i32 1484, i32 5}
!184 = !{ptr @mega_cmd_done._entry.78, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @mega_cmd_done._entry_ptr.80, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.82, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/scsi/megaraid.c", i32 1551, i32 5}
!188 = !{ptr @mega_cmd_done._entry.81, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @mega_cmd_done._entry_ptr.83, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.84, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/megaraid.c", i32 269, i32 4}
!192 = !{ptr @.str.85, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @mega_query_adapter._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @mega_query_adapter._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.86, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/megaraid.c", i32 313, i32 5}
!197 = !{ptr @.str.88, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/megaraid.c", i32 337, i32 2}
!199 = !{ptr @mega_query_adapter._entry.87, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @mega_query_adapter._entry_ptr.89, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.91, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/megaraid.c", i32 345, i32 3}
!203 = !{ptr @mega_query_adapter._entry.90, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @mega_query_adapter._entry_ptr.92, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.93, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/megaraid.c", i32 1240, i32 2}
!207 = !{ptr @.str.94, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @issue_scb_block._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @issue_scb_block._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = distinct !{null, !211, !"__already_done", i1 false, i1 false}
!211 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!212 = !{ptr @.str.95, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.96, !211, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @mega_hbas, !215, !"mega_hbas", i1 false, i1 false}
!215 = !{!"../drivers/scsi/megaraid.c", i32 89, i32 25}
!216 = !{ptr @.str.97, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/megaraid.c", i32 3628, i32 4}
!218 = !{ptr @.str.98, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @mega_enum_raid_scsi._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @mega_enum_raid_scsi._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.100, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/scsi/megaraid.c", i32 3632, i32 4}
!223 = !{ptr @mega_enum_raid_scsi._entry.99, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @mega_enum_raid_scsi._entry_ptr.101, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.102, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/scsi/megaraid.c", i32 2887, i32 4}
!227 = !{ptr @.str.103, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @mega_init_scb._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @mega_init_scb._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.105, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/scsi/megaraid.c", i32 2897, i32 4}
!232 = !{ptr @mega_init_scb._entry.104, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @mega_init_scb._entry_ptr.106, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.108, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/megaraid.c", i32 2907, i32 4}
!236 = !{ptr @mega_init_scb._entry.107, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @mega_init_scb._entry_ptr.109, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @hba_soft_state, !239, !"hba_soft_state", i1 false, i1 false}
!239 = !{!"../drivers/scsi/megaraid.c", i32 85, i32 19}
!240 = !{ptr @mcontroller, !241, !"mcontroller", i1 false, i1 false}
!241 = !{!"../drivers/scsi/megaraid.c", i32 109, i32 27}
!242 = !{ptr @init_completion.__key, !243, !"__key", i1 false, i1 false}
!243 = !{!"../include/linux/completion.h", i32 87, i32 2}
!244 = !{ptr @.str.110, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.111, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/scsi/megaraid.c", i32 2739, i32 18}
!247 = !{ptr @.str.112, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/scsi/megaraid.c", i32 2742, i32 3}
!249 = !{ptr @.str.113, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @mega_create_proc_entry._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @mega_create_proc_entry._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.114, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/scsi/megaraid.c", i32 2746, i32 26}
!254 = !{ptr @.str.115, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/scsi/megaraid.c", i32 2748, i32 26}
!256 = !{ptr @.str.116, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/scsi/megaraid.c", i32 2750, i32 26}
!258 = !{ptr @.str.117, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/scsi/megaraid.c", i32 2753, i32 26}
!260 = !{ptr @.str.118, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/scsi/megaraid.c", i32 2755, i32 26}
!262 = !{ptr @.str.119, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/scsi/megaraid.c", i32 2757, i32 26}
!264 = !{ptr @.str.120, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/scsi/megaraid.c", i32 2759, i32 26}
!266 = !{ptr @.str.121, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/scsi/megaraid.c", i32 2761, i32 26}
!268 = !{ptr @.str.122, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/scsi/megaraid.c", i32 2763, i32 26}
!270 = !{ptr @.str.123, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/scsi/megaraid.c", i32 2765, i32 26}
!272 = !{ptr @.str.124, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/scsi/megaraid.c", i32 2767, i32 26}
!274 = !{ptr @.str.125, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/scsi/megaraid.c", i32 2769, i32 26}
!276 = !{ptr @.str.126, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/scsi/megaraid.c", i32 2771, i32 26}
!278 = !{ptr @.str.127, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/scsi/megaraid.c", i32 2053, i32 14}
!280 = !{ptr @.str.128, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/scsi/megaraid.c", i32 2055, i32 17}
!282 = !{ptr @.str.129, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/scsi/megaraid.c", i32 2057, i32 14}
!284 = !{ptr @.str.130, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/scsi/megaraid.c", i32 2060, i32 15}
!286 = !{ptr @.str.131, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/scsi/megaraid.c", i32 2062, i32 15}
!288 = !{ptr @.str.132, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/scsi/megaraid.c", i32 2065, i32 15}
!290 = !{ptr @.str.133, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/scsi/megaraid.c", i32 2068, i32 15}
!292 = !{ptr @.str.134, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/scsi/megaraid.c", i32 2070, i32 15}
!294 = !{ptr @.str.135, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/scsi/megaraid.c", i32 2072, i32 15}
!296 = !{ptr @.str.136, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/scsi/megaraid.c", i32 2074, i32 16}
!298 = !{ptr @.str.137, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/scsi/megaraid.c", i32 2077, i32 16}
!300 = !{ptr @.str.138, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/scsi/megaraid.c", i32 2080, i32 16}
!302 = !{ptr @.str.139, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/scsi/megaraid.c", i32 2084, i32 16}
!304 = !{ptr @.str.140, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/scsi/megaraid.c", i32 2087, i32 16}
!306 = !{ptr @.str.141, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/scsi/megaraid.c", i32 2088, i32 16}
!308 = !{ptr @.str.142, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/scsi/megaraid.c", i32 2089, i32 16}
!310 = !{ptr @.str.143, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/scsi/megaraid.c", i32 2090, i32 16}
!312 = !{ptr @.str.144, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/scsi/megaraid.c", i32 2091, i32 16}
!314 = !{ptr @.str.145, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/scsi/megaraid.c", i32 2092, i32 16}
!316 = !{ptr @.str.146, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/scsi/megaraid.c", i32 2093, i32 16}
!318 = !{ptr @.str.147, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/scsi/megaraid.c", i32 2094, i32 16}
!320 = !{ptr @.str.148, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/scsi/megaraid.c", i32 2096, i32 16}
!322 = !{ptr @.str.149, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/scsi/megaraid.c", i32 2098, i32 14}
!324 = !{ptr @.str.150, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/scsi/megaraid.c", i32 2099, i32 16}
!326 = !{ptr @.str.151, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/scsi/megaraid.c", i32 2100, i32 16}
!328 = !{ptr @.str.152, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/scsi/megaraid.c", i32 2119, i32 14}
!330 = !{ptr @.str.153, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/scsi/megaraid.c", i32 2120, i32 16}
!332 = !{ptr @.str.154, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/scsi/megaraid.c", i32 2132, i32 14}
!334 = !{ptr @.str.155, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/scsi/megaraid.c", i32 2152, i32 14}
!336 = !{ptr @.str.156, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/scsi/megaraid.c", i32 2153, i32 16}
!338 = !{ptr @.str.157, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/scsi/megaraid.c", i32 2154, i32 16}
!340 = !{ptr @.str.158, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/scsi/megaraid.c", i32 2155, i32 16}
!342 = !{ptr @.str.159, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/scsi/megaraid.c", i32 2156, i32 16}
!344 = !{ptr @.str.160, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/scsi/megaraid.c", i32 2157, i32 16}
!346 = !{ptr @.str.161, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/scsi/megaraid.c", i32 2158, i32 16}
!348 = !{ptr @.str.162, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/scsi/megaraid.c", i32 2159, i32 16}
!350 = !{ptr @.str.163, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/scsi/megaraid.c", i32 2160, i32 16}
!352 = !{ptr @.str.164, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/scsi/megaraid.c", i32 2161, i32 16}
!354 = !{ptr @.str.165, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/scsi/megaraid.c", i32 2188, i32 15}
!356 = !{ptr @.str.166, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/scsi/megaraid.c", i32 2189, i32 3}
!358 = !{ptr @.str.167, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @proc_show_rebuild_rate._entry, !357, !"_entry", i1 false, i1 false}
!360 = !{ptr @proc_show_rebuild_rate._entry_ptr, !357, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.168, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/scsi/megaraid.c", i32 2194, i32 17}
!363 = !{ptr @.str.169, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/scsi/megaraid.c", i32 2233, i32 3}
!365 = !{ptr @proc_show_battery._entry, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @proc_show_battery._entry_ptr, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.170, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/scsi/megaraid.c", i32 2248, i32 16}
!369 = !{ptr @.str.171, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/scsi/megaraid.c", i32 2251, i32 15}
!371 = !{ptr @.str.172, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/scsi/megaraid.c", i32 2254, i32 15}
!373 = !{ptr @.str.173, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/scsi/megaraid.c", i32 2257, i32 15}
!375 = !{ptr @.str.174, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/scsi/megaraid.c", i32 2260, i32 15}
!377 = !{ptr @.str.175, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/scsi/megaraid.c", i32 2263, i32 15}
!379 = !{ptr @.str.176, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/scsi/megaraid.c", i32 2266, i32 15}
!381 = !{ptr @.str.177, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/scsi/megaraid.c", i32 2269, i32 15}
!383 = !{ptr @.str.178, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/scsi/megaraid.c", i32 2272, i32 15}
!385 = !{ptr @.str.179, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/scsi/megaraid.c", i32 2342, i32 3}
!387 = !{ptr @proc_show_pdrv._entry, !386, !"_entry", i1 false, i1 false}
!388 = !{ptr @proc_show_pdrv._entry_ptr, !386, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.180, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/scsi/megaraid.c", i32 2350, i32 15}
!391 = !{ptr @.str.181, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/scsi/megaraid.c", i32 2375, i32 18}
!393 = !{ptr @.str.182, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/scsi/megaraid.c", i32 2380, i32 18}
!395 = !{ptr @.str.183, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/scsi/megaraid.c", i32 2385, i32 18}
!397 = !{ptr @.str.184, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/scsi/megaraid.c", i32 2390, i32 18}
!399 = !{ptr @.str.185, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/scsi/megaraid.c", i32 2395, i32 18}
!401 = !{ptr @.str.186, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/scsi/megaraid.c", i32 2416, i32 15}
!403 = !{ptr @.str.187, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/scsi/megaraid.c", i32 2292, i32 14}
!405 = !{ptr @.str.188, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/scsi/megaraid.c", i32 2294, i32 14}
!407 = !{ptr @.str.189, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/scsi/megaraid.c", i32 2296, i32 14}
!409 = !{ptr @.str.190, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/scsi/megaraid.c", i32 2301, i32 16}
!411 = !{ptr @.str.191, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/scsi/megaraid.c", i32 2303, i32 16}
!413 = !{ptr @.str.192, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/scsi/megaraid.c", i32 2307, i32 15}
!415 = !{ptr @.str.193, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/scsi/megaraid.c", i32 2518, i32 3}
!417 = !{ptr @proc_show_rdrv._entry, !416, !"_entry", i1 false, i1 false}
!418 = !{ptr @proc_show_rdrv._entry_ptr, !416, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @.str.194, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/scsi/megaraid.c", i32 2545, i32 15}
!421 = !{ptr @.str.195, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/scsi/megaraid.c", i32 2556, i32 16}
!423 = !{ptr @.str.196, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/scsi/megaraid.c", i32 2567, i32 17}
!425 = !{ptr @.str.197, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/scsi/megaraid.c", i32 2588, i32 17}
!427 = !{ptr @.str.198, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/scsi/megaraid.c", i32 2592, i32 16}
!429 = !{ptr @.str.199, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/scsi/megaraid.c", i32 2595, i32 16}
!431 = !{ptr @.str.200, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/scsi/megaraid.c", i32 2598, i32 16}
!433 = !{ptr @.str.201, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/scsi/megaraid.c", i32 2601, i32 16}
!435 = !{ptr @.str.202, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/scsi/megaraid.c", i32 2604, i32 16}
!437 = !{ptr @.str.203, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/scsi/megaraid.c", i32 2613, i32 16}
!439 = !{ptr @.str.204, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/scsi/megaraid.c", i32 2615, i32 16}
!441 = !{ptr @.str.205, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/scsi/megaraid.c", i32 2619, i32 17}
!443 = !{ptr @.str.206, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/scsi/megaraid.c", i32 2620, i32 17}
!445 = !{ptr @.str.207, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/scsi/megaraid.c", i32 2621, i32 17}
!447 = !{ptr @.str.208, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/scsi/megaraid.c", i32 2623, i32 17}
!449 = !{ptr @.str.209, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/scsi/megaraid.c", i32 2625, i32 15}
!451 = !{ptr @.str.210, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/scsi/megaraid.c", i32 2628, i32 16}
!453 = !{ptr @.str.211, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/scsi/megaraid.c", i32 2631, i32 16}
!455 = !{ptr @.str.212, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/scsi/megaraid.c", i32 2634, i32 16}
!457 = !{ptr @.str.213, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/scsi/megaraid.c", i32 2639, i32 15}
!459 = !{ptr @.str.214, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/scsi/megaraid.c", i32 2642, i32 16}
!461 = !{ptr @.str.215, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/scsi/megaraid.c", i32 2645, i32 16}
!463 = !{ptr @.str.216, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/scsi/megaraid.c", i32 2649, i32 15}
!465 = !{ptr @.str.217, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/scsi/megaraid.c", i32 2652, i32 16}
!467 = !{ptr @.str.218, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/scsi/megaraid.c", i32 2655, i32 16}
!469 = !{ptr @mega_proc_dir_entry, !470, !"mega_proc_dir_entry", i1 false, i1 false}
!470 = !{!"../drivers/scsi/megaraid.c", i32 86, i32 31}
!471 = !{ptr @.str.219, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/scsi/megaraid.c", i32 4507, i32 3}
!473 = !{ptr @.str.220, !472, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @__megaraid_shutdown._entry, !472, !"_entry", i1 false, i1 false}
!475 = !{ptr @__megaraid_shutdown._entry_ptr, !472, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @.str.221, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/scsi/megaraid.c", i32 4592, i32 3}
!478 = !{ptr @.str.222, !477, !"<string literal>", i1 false, i1 false}
!479 = !{ptr @megaraid_init._entry, !477, !"_entry", i1 false, i1 false}
!480 = !{ptr @megaraid_init._entry_ptr, !477, !"_entry_ptr", i1 false, i1 false}
!481 = !{ptr @.str.224, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/scsi/megaraid.c", i32 4612, i32 3}
!483 = !{ptr @megaraid_init._entry.223, !482, !"_entry", i1 false, i1 false}
!484 = !{ptr @megaraid_init._entry_ptr.225, !482, !"_entry_ptr", i1 false, i1 false}
!485 = !{ptr @megadev_fops, !486, !"megadev_fops", i1 false, i1 false}
!486 = !{!"../drivers/scsi/megaraid.c", i32 97, i32 37}
!487 = !{ptr @.str.226, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/scsi/megaraid.c", i32 61, i32 8}
!489 = !{ptr @.str.227, !488, !"<string literal>", i1 false, i1 false}
!490 = !{ptr @megadev_mutex, !488, !"megadev_mutex", i1 false, i1 false}
!491 = !{ptr @.str.228, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/scsi/megaraid.c", i32 3103, i32 5}
!493 = !{ptr @.str.229, !492, !"<string literal>", i1 false, i1 false}
!494 = !{ptr @megadev_ioctl._entry, !492, !"_entry", i1 false, i1 false}
!495 = !{ptr @megadev_ioctl._entry_ptr, !492, !"_entry_ptr", i1 false, i1 false}
!496 = !{ptr @.str.231, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/scsi/megaraid.c", i32 3128, i32 4}
!498 = !{ptr @megadev_ioctl._entry.230, !497, !"_entry", i1 false, i1 false}
!499 = !{ptr @megadev_ioctl._entry_ptr.232, !497, !"_entry_ptr", i1 false, i1 false}
!500 = !{ptr @.str.233, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/scsi/megaraid.c", i32 3395, i32 24}
!502 = distinct !{null, !503, !"driver_ver", i1 false, i1 false}
!503 = !{!"../drivers/scsi/megaraid.c", i32 112, i32 12}
!504 = distinct !{null, !505, !"__already_done", i1 false, i1 false}
!505 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!506 = !{ptr @.str.234, !505, !"<string literal>", i1 false, i1 false}
!507 = !{ptr @.str.235, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!509 = !{ptr @.str.236, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!511 = !{ptr @.str.237, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/scsi/megaraid.c", i32 3832, i32 3}
!513 = !{ptr @.str.238, !512, !"<string literal>", i1 false, i1 false}
!514 = !{ptr @mega_do_del_logdrv._entry, !512, !"_entry", i1 false, i1 false}
!515 = !{ptr @mega_do_del_logdrv._entry_ptr, !512, !"_entry_ptr", i1 false, i1 false}
!516 = !{!"sp"}
!517 = !{i32 1, !"wchar_size", i32 2}
!518 = !{i32 1, !"min_enum_size", i32 4}
!519 = !{i32 8, !"branch-target-enforcement", i32 0}
!520 = !{i32 8, !"sign-return-address", i32 0}
!521 = !{i32 8, !"sign-return-address-all", i32 0}
!522 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!523 = !{i32 7, !"uwtable", i32 1}
!524 = !{i32 7, !"frame-pointer", i32 2}
!525 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!526 = !{!"auto-init"}
!527 = !{i64 6054206}
!528 = !{i64 2155191363}
!529 = !{i64 2155191658}
!530 = !{i64 6053788}
!531 = !{i64 2155192141}
!532 = !{i64 2155191983}
!533 = !{i64 2148772847, i64 2148772873, i64 2148772902, i64 2148772936, i64 2148772967, i64 2148772990}
!534 = !{i64 2155192422}
!535 = !{i64 2155193186}
!536 = !{i64 2155193461}
!537 = !{i64 2155193303}
!538 = !{i64 6053986}
!539 = !{i64 2153587662}
!540 = !{i64 2153589647}
!541 = !{i64 6053591}
!542 = !{i64 2155190314}
!543 = !{i64 2155190156}
!544 = !{i64 2155162132}
!545 = !{i64 2155162533}
!546 = !{i64 2155162935}
!547 = !{i64 2155163337}
!548 = !{i64 2155163716}
!549 = !{!"branch_weights", i32 2000, i32 1}
!550 = !{i64 2154861561, i64 2154862053, i64 2154861598, i64 2154861654, i64 2154861688, i64 2154861712, i64 2154861753, i64 2154861774, i64 2154861802, i64 2154861836}
!551 = !{i64 2153810400}
!552 = !{i64 2152833429}
!553 = !{i64 2152833636}
!554 = !{i64 2153813171}
!555 = !{i64 2148770382, i64 2148770408, i64 2148770437, i64 2148770471, i64 2148770502, i64 2148770525}
!556 = !{!"branch_weights", i32 1, i32 2000}
!557 = !{i64 2155183467}
!558 = !{i64 2155203063, i64 2155203552, i64 2155203100, i64 2155203156, i64 2155203190, i64 2155203214, i64 2155203255, i64 2155203276, i64 2155203304, i64 2155203338}
!559 = !{i64 2155184444}
!560 = !{i64 2155184966}
!561 = !{i64 2155184808}
!562 = !{i64 2155185241}
!563 = !{i64 2155185083}
!564 = !{i64 2155185562}
!565 = !{i64 2155186386}
!566 = !{i64 2155186661}
!567 = !{i64 2155186503}
!568 = !{i64 2155187149}
!569 = !{i64 2155186991}
!570 = !{i64 2152830612, i64 2152830637}
!571 = !{i64 5326167}
!572 = !{i64 5326364}
!573 = !{i64 2152811597}
!574 = !{i64 2155237972, i64 2155238252, i64 2155238586, i64 2155238920}
!575 = !{i64 2155246925, i64 2155247205, i64 2155247539, i64 2155247873}
!576 = !{i64 2152831293, i64 2152831318}
!577 = !{i64 2155256884, i64 2155257164, i64 2155257498, i64 2155257832}
!578 = !{i64 2155272546, i64 2155272826, i64 2155273160, i64 2155273494}
!579 = !{i64 2155278239, i64 2155278519, i64 2155278853, i64 2155279187}
!580 = !{i64 2155287178, i64 2155287458, i64 2155287792, i64 2155288126}
!581 = !{i64 2155302782, i64 2155303062, i64 2155303396, i64 2155303730}
!582 = !{i64 2155308475, i64 2155308755, i64 2155309089, i64 2155309423}
