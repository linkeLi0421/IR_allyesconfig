; ModuleID = '/llk/IR_all_yes/drivers/scsi/mvumi.c_pt.bc'
source_filename = "../drivers/scsi/mvumi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mvumi_instance_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timezone = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.78 = type { ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.mvumi_hba = type { [6 x ptr], [6 x i32], ptr, %struct.list_head, ptr, %struct.wait_queue_head, ptr, i32, %struct.atomic_t, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mvumi_tag, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t }
%struct.mvumi_tag = type { ptr, i16, i16 }
%struct.mvumi_hw_regs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mvumi_cmd = type { %struct.list_head, ptr, i32, ptr, %struct.atomic_t, ptr, i16, i8 }
%struct.mvumi_events_wq = type { %struct.work_struct, ptr, i32, ptr }
%struct.mvumi_rsp_frame = type { i16, i16, i8, i8, i16, [1 x i32] }
%struct.mvumi_ob_data = type { %struct.list_head, [0 x i8] }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.mvumi_msg_frame = type { i16, i16, i8, i8, i8, i8, i32, i16, i16, [16 x i8], [1 x i32] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mvumi_sgl = type { i32, i32, i32, i32 }
%struct.mvumi_res = type { %struct.list_head, i32, ptr, i32, i16 }
%struct.mvumi_dyn_list_entry = type { i32, i32, i32, i32 }
%struct.mvumi_hs_page1 = type { i8, i8, i16, i16, i16, i16, i16, i32, %struct.version_info, i8, i8, i8, i8, i16, i16 }
%struct.version_info = type { i32, i32, i32, i32 }
%struct.mvumi_hs_header = type { i8, i8, i16, [1 x i32] }
%struct.mvumi_hs_page2 = type { i8, i8, i16, i8, i8, [2 x i8], %struct.version_info, i32, i32, i32, i32, i64 }
%struct.mvumi_hs_page4 = type { i8, i8, i16, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.mvumi_event_req = type { i8, [3 x i8], [6 x %struct.mvumi_driver_event] }
%struct.mvumi_driver_event = type { i32, i32, i32, i8, i8, i16, [4 x i32], i8, i8, [30 x i8] }
%struct.mvumi_hotplug_event = type { i16, [2 x i8], [0 x i8] }
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
%struct.mvumi_device = type { %struct.list_head, ptr, i64, i8, i32 }

@__UNIQUE_ID_file287 = internal constant [30 x i8] c"mvumi.file=drivers/scsi/mvumi\00", section ".modinfo", align 1
@__UNIQUE_ID_license288 = internal constant [18 x i8] c"mvumi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author289 = internal constant [30 x i8] c"mvumi.author=jyli@marvell.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [37 x i8] c"mvumi.description=Marvell UMI Driver\00", section ".modinfo", align 1
@__initcall__kmod_mvumi__329_2631_mvumi_pci_driver_init6 = internal global ptr @mvumi_pci_driver_init, section ".initcall6.init", align 4
@mvumi_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @mvumi_pci_table, ptr @mvumi_probe_one, ptr @mvumi_detach_one, ptr null, ptr null, ptr @mvumi_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mvumi_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mvumi_pci_driver_exit = internal global ptr @mvumi_pci_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mvumi\00", [26 x i8] zeroinitializer }, align 32
@mvumi_pci_table = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 6987, i32 37187, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6987, i32 38272, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@mvumi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mvumi_suspend, ptr @mvumi_resume, ptr @mvumi_suspend, ptr @mvumi_resume, ptr @mvumi_suspend, ptr @mvumi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mvumi_probe_one.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 2, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mvumi_probe_one\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/scsi/mvumi.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c" %#4.04x:%#4.04x:%#4.04x:%#4.04x: \00", [61 x i8] zeroinitializer }, align 32
@mvumi_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @mvumi_queue_command, ptr null, ptr null, ptr @.str.16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mvumi_host_reset, ptr null, ptr @mvumi_slave_configure, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mvumi_bios_param, ptr null, ptr null, ptr null, ptr @mvumi_timed_out, ptr null, ptr null, ptr null, ptr null, i32 0, i32 -1, i16 0, i16 0, i32 0, i32 0, i32 4095, i32 0, i16 0, i8 0, i32 0, i8 0, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@mvumi_probe_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 2472, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"scsi_host_alloc failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mvumi_probe_one._entry_ptr = internal global ptr @mvumi_probe_one._entry, section ".printk_index", align 4
@mvumi_probe_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&mhba->device_lock\00", [45 x i8] zeroinitializer }, align 32
@mvumi_probe_one.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&mhba->int_cmd_wait_q\00", [42 x i8] zeroinitializer }, align 32
@mvumi_probe_one.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&mhba->sas_discovery_mutex\00", [37 x i8] zeroinitializer }, align 32
@mvumi_probe_one._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 2501, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to register IRQ\0A\00", [40 x i8] zeroinitializer }, align 32
@mvumi_probe_one._entry_ptr.14 = internal global ptr @mvumi_probe_one._entry.12, section ".printk_index", align 4
@mvumi_probe_one.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.15, i8 2, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"probe mvumi driver successfully.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Marvell Storage Controller\00", [37 x i8] zeroinitializer }, align 32
@mvumi_get_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 325, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"command pool is empty!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mvumi_get_cmd\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mvumi_get_cmd._entry_ptr = internal global ptr @mvumi_get_cmd._entry, section ".printk_index", align 4
@mvumi_build_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 2050, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unexpected data direction[%d] cmd[0x%x]\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mvumi_build_frame\00", [46 x i8] zeroinitializer }, align 32
@mvumi_build_frame._entry_ptr = internal global ptr @mvumi_build_frame._entry, section ".printk_index", align 4
@mvumi_make_sgl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 203, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sg count[0x%x] is bigger than max sg[0x%x].\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mvumi_make_sgl\00", [17 x i8] zeroinitializer }, align 32
@mvumi_make_sgl._entry_ptr = internal global ptr @mvumi_make_sgl._entry, section ".printk_index", align 4
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RESET -%u cmd=%x retries=%x\0A\00", [35 x i8] zeroinitializer }, align 32
@mvumi_init_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 2312, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IO memory region busy!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mvumi_init_fw\00", [18 x i8] zeroinitializer }, align 32
@mvumi_init_fw._entry_ptr = internal global ptr @mvumi_init_fw._entry, section ".printk_index", align 4
@mvumi_instance_9143 = internal global { %struct.mvumi_instance_template, [32 x i8] } { %struct.mvumi_instance_template { ptr @mvumi_fire_cmd, ptr @mvumi_enable_intr, ptr @mvumi_disable_intr, ptr @mvumi_clear_intr, ptr @mvumi_read_fw_status_reg, ptr @mvumi_check_ib_list_9143, ptr @mvumi_check_ob_list_9143, ptr @mvumi_reset_host_9143 }, [32 x i8] zeroinitializer }, align 32
@mvumi_instance_9580 = internal global { %struct.mvumi_instance_template, [32 x i8] } { %struct.mvumi_instance_template { ptr @mvumi_fire_cmd, ptr @mvumi_enable_intr, ptr @mvumi_disable_intr, ptr @mvumi_clear_intr, ptr @mvumi_read_fw_status_reg, ptr @mvumi_check_ib_list_9580, ptr @mvumi_check_ob_list_9580, ptr @mvumi_reset_host_9580 }, [32 x i8] zeroinitializer }, align 32
@mvumi_init_fw._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 2333, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"device 0x%x not supported!\0A\00", [36 x i8] zeroinitializer }, align 32
@mvumi_init_fw._entry_ptr.30 = internal global ptr @mvumi_init_fw._entry.28, section ".printk_index", align 4
@mvumi_init_fw.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.31, i8 2, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"device id : %04X is found.\0A\00", [36 x i8] zeroinitializer }, align 32
@mvumi_init_fw._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.27, ptr @.str.2, i32 2343, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to allocate memory for reg\0A\00", [61 x i8] zeroinitializer }, align 32
@mvumi_init_fw._entry_ptr.34 = internal global ptr @mvumi_init_fw._entry.32, section ".printk_index", align 4
@mvumi_init_fw._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.27, ptr @.str.2, i32 2351, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to allocate memory for handshake\0A\00", [55 x i8] zeroinitializer }, align 32
@mvumi_init_fw._entry_ptr.37 = internal global ptr @mvumi_init_fw._entry.35, section ".printk_index", align 4
@mvumi_map_pci_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 93, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to map Bar[%d]\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mvumi_map_pci_addr\00", [45 x i8] zeroinitializer }, align 32
@mvumi_map_pci_addr._entry_ptr = internal global ptr @mvumi_map_pci_addr._entry, section ".printk_index", align 4
@mvumi_map_pci_addr.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bar %d : %p.\0A\00", [18 x i8] zeroinitializer }, align 32
@mvumi_send_command.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 1, i8 -55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mvumi_send_command\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"firmware not ready.\0A\00", [43 x i8] zeroinitializer }, align 32
@mvumi_send_command.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.43, i8 1, i8 -54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no free tag.\0A\00", [18 x i8] zeroinitializer }, align 32
@mvumi_check_ib_list_9143._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 413, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no free slot to use.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mvumi_check_ib_list_9143\00", [39 x i8] zeroinitializer }, align 32
@mvumi_check_ib_list_9143._entry_ptr = internal global ptr @mvumi_check_ib_list_9143._entry, section ".printk_index", align 4
@mvumi_check_ib_list_9143._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 417, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"firmware io overflow.\0A\00", [41 x i8] zeroinitializer }, align 32
@mvumi_check_ib_list_9143._entry_ptr.48 = internal global ptr @mvumi_check_ib_list_9143._entry.46, section ".printk_index", align 4
@mvumi_reset_host_9580._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 679, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"enable device failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mvumi_reset_host_9580\00", [42 x i8] zeroinitializer }, align 32
@mvumi_reset_host_9580._entry_ptr = internal global ptr @mvumi_reset_host_9580._entry, section ".printk_index", align 4
@mvumi_reset_host_9580._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 683, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set master failed\0A\00", [45 x i8] zeroinitializer }, align 32
@mvumi_reset_host_9580._entry_ptr.53 = internal global ptr @mvumi_reset_host_9580._entry.51, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mvumi_wait_for_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 618, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"FW reset failed [0x%x].\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mvumi_wait_for_fw\00", [46 x i8] zeroinitializer }, align 32
@mvumi_wait_for_fw._entry_ptr = internal global ptr @mvumi_wait_for_fw._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mvumi_check_handshake._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 1251, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid signature [0x%x].\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mvumi_check_handshake\00", [42 x i8] zeroinitializer }, align 32
@mvumi_check_handshake._entry_ptr = internal global ptr @mvumi_check_handshake._entry, section ".printk_index", align 4
@mvumi_check_handshake.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 1, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"start firmware handshake...\0A\00", [35 x i8] zeroinitializer }, align 32
@mvumi_check_handshake._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.57, ptr @.str.2, i32 1265, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"handshake failed at state 0x%x.\0A\00", [63 x i8] zeroinitializer }, align 32
@mvumi_check_handshake._entry_ptr.61 = internal global ptr @mvumi_check_handshake._entry.59, section ".printk_index", align 4
@mvumi_check_handshake.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.62, i8 1, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"firmware handshake done\0A\00", [39 x i8] zeroinitializer }, align 32
@mvumi_handshake_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 1225, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"no handshake response at state 0x%x.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mvumi_handshake_event\00", [42 x i8] zeroinitializer }, align 32
@mvumi_handshake_event._entry_ptr = internal global ptr @mvumi_handshake_event._entry, section ".printk_index", align 4
@mvumi_handshake_event._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 1228, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"isr : global=0x%x,status=0x%x.\0A\00", [32 x i8] zeroinitializer }, align 32
@mvumi_handshake_event._entry_ptr.67 = internal global ptr @mvumi_handshake_event._entry.65, section ".printk_index", align 4
@mvumi_handshake.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 1, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mvumi_handshake\00", [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"handshake state[0x%x].\0A\00", [40 x i8] zeroinitializer }, align 32
@mvumi_handshake._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 1204, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unknown handshake state [0x%x].\0A\00", [63 x i8] zeroinitializer }, align 32
@mvumi_handshake._entry_ptr = internal global ptr @mvumi_handshake._entry, section ".printk_index", align 4
@mvumi_hs_process_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 1046, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"checksum error\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mvumi_hs_process_page\00", [42 x i8] zeroinitializer }, align 32
@mvumi_hs_process_page._entry_ptr = internal global ptr @mvumi_hs_process_page._entry, section ".printk_index", align 4
@mvumi_hs_process_page.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.73, i8 1, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FW version:%d\0A\00", [17 x i8] zeroinitializer }, align 32
@mvumi_hs_process_page._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.72, ptr @.str.2, i32 1076, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"handshake: page code error\0A\00", [36 x i8] zeroinitializer }, align 32
@mvumi_hs_process_page._entry_ptr.76 = internal global ptr @mvumi_hs_process_page._entry.74, section ".printk_index", align 4
@mvumi_init_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 930, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to allocate memory for inbound list\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mvumi_init_data\00", [16 x i8] zeroinitializer }, align 32
@mvumi_init_data._entry_ptr = internal global ptr @mvumi_init_data._entry, section ".printk_index", align 4
@mvumi_init_data._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 994, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"failed to allocate memory for outbound data buffer\0A\00", [44 x i8] zeroinitializer }, align 32
@mvumi_init_data._entry_ptr.81 = internal global ptr @mvumi_init_data._entry.79, section ".printk_index", align 4
@mvumi_init_data._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.2, i32 1014, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to allocate memory for tag and target map\0A\00", [46 x i8] zeroinitializer }, align 32
@mvumi_init_data._entry_ptr.84 = internal global ptr @mvumi_init_data._entry.82, section ".printk_index", align 4
@mvumi_alloc_mem_resource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 113, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to allocate memory for resource manager.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mvumi_alloc_mem_resource\00", [39 x i8] zeroinitializer }, align 32
@mvumi_alloc_mem_resource._entry_ptr = internal global ptr @mvumi_alloc_mem_resource._entry, section ".printk_index", align 4
@mvumi_alloc_mem_resource._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.2, i32 122, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to allocate memory,size = %d.\0A\00", [58 x i8] zeroinitializer }, align 32
@mvumi_alloc_mem_resource._entry_ptr.89 = internal global ptr @mvumi_alloc_mem_resource._entry.87, section ".printk_index", align 4
@mvumi_alloc_mem_resource._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.86, ptr @.str.2, i32 136, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"unable to allocate consistent mem,size = %d.\0A\00", [50 x i8] zeroinitializer }, align 32
@mvumi_alloc_mem_resource._entry_ptr.92 = internal global ptr @mvumi_alloc_mem_resource._entry.90, section ".printk_index", align 4
@mvumi_alloc_mem_resource._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.86, ptr @.str.2, i32 143, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unknown resource type %d.\0A\00", [37 x i8] zeroinitializer }, align 32
@mvumi_alloc_mem_resource._entry_ptr.95 = internal global ptr @mvumi_alloc_mem_resource._entry.93, section ".printk_index", align 4
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@mvumi_hs_build_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 899, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot build page, code[0x%x]\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mvumi_hs_build_page\00", [44 x i8] zeroinitializer }, align 32
@mvumi_hs_build_page._entry_ptr = internal global ptr @mvumi_hs_build_page._entry, section ".printk_index", align 4
@mvumi_alloc_cmds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 390, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to allocate memory for cmd[0x%x].\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mvumi_alloc_cmds\00", [47 x i8] zeroinitializer }, align 32
@mvumi_alloc_cmds._entry_ptr = internal global ptr @mvumi_alloc_cmds._entry, section ".printk_index", align 4
@mvumi_release_mem_resource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 171, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unknown resource type %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mvumi_release_mem_resource\00", [37 x i8] zeroinitializer }, align 32
@mvumi_release_mem_resource._entry_ptr = internal global ptr @mvumi_release_mem_resource._entry, section ".printk_index", align 4
@mvumi_isr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 1805, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enter handshake again!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mvumi_isr_handler\00", [46 x i8] zeroinitializer }, align 32
@mvumi_isr_handler._entry_ptr = internal global ptr @mvumi_isr_handler._entry, section ".printk_index", align 4
@mvumi_launch_events.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.104 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&mu_ev->work_q)\00", [62 x i8] zeroinitializer }, align 32
@mvumi_get_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 1723, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"get event failed, status=0x%x.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mvumi_get_event\00", [16 x i8] zeroinitializer }, align 32
@mvumi_get_event._entry_ptr = internal global ptr @mvumi_get_event._entry, section ".printk_index", align 4
@mvumi_create_internal_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.2, i32 257, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to create a internal cmd\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mvumi_create_internal_cmd\00", [38 x i8] zeroinitializer }, align 32
@mvumi_create_internal_cmd._entry_ptr = internal global ptr @mvumi_create_internal_cmd._entry, section ".printk_index", align 4
@mvumi_create_internal_cmd._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.2, i32 266, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to allocate memory for FW frame,size = %d.\0A\00", [45 x i8] zeroinitializer }, align 32
@mvumi_create_internal_cmd._entry_ptr.111 = internal global ptr @mvumi_create_internal_cmd._entry.109, section ".printk_index", align 4
@mvumi_create_internal_cmd._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.108, ptr @.str.2, i32 274, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to allocate memory for internal frame\0A\00", [50 x i8] zeroinitializer }, align 32
@mvumi_create_internal_cmd._entry_ptr.114 = internal global ptr @mvumi_create_internal_cmd._entry.112, section ".printk_index", align 4
@mvumi_issue_blocked_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 720, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"last blocked cmd not finished, sync_cmd = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mvumi_issue_blocked_cmd\00", [40 x i8] zeroinitializer }, align 32
@mvumi_issue_blocked_cmd._entry_ptr = internal global ptr @mvumi_issue_blocked_cmd._entry, section ".printk_index", align 4
@mvumi_issue_blocked_cmd._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.2, i32 740, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TIMEOUT:release tag [%d]\0A\00", [38 x i8] zeroinitializer }, align 32
@mvumi_issue_blocked_cmd._entry_ptr.119 = internal global ptr @mvumi_issue_blocked_cmd._entry.117, section ".printk_index", align 4
@mvumi_issue_blocked_cmd._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.2, i32 745, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"TIMEOUT:A internal command doesn't send!\0A\00", [54 x i8] zeroinitializer }, align 32
@mvumi_issue_blocked_cmd._entry_ptr.122 = internal global ptr @mvumi_issue_blocked_cmd._entry.120, section ".printk_index", align 4
@mvumi_notification._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.2, i32 1687, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"event count[0x%x] is bigger than max event count[0x%x].\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mvumi_notification\00", [45 x i8] zeroinitializer }, align 32
@mvumi_notification._entry_ptr = internal global ptr @mvumi_notification._entry, section ".printk_index", align 4
@mvumi_show_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.2, i32 1360, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Event[0x%x] id[0x%x] severity[0x%x] device id[0x%x]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mvumi_show_event\00", [47 x i8] zeroinitializer }, align 32
@mvumi_show_event._entry_ptr = internal global ptr @mvumi_show_event._entry, section ".printk_index", align 4
@mvumi_show_event._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.2, i32 1363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014Event param(len 0x%x): \00", [38 x i8] zeroinitializer }, align 32
@mvumi_show_event._entry_ptr.129 = internal global ptr @mvumi_show_event._entry.127, section ".printk_index", align 4
@mvumi_show_event._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.126, ptr @.str.2, i32 1365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0140x%x \00", [24 x i8] zeroinitializer }, align 32
@mvumi_show_event._entry_ptr.132 = internal global ptr @mvumi_show_event._entry.130, section ".printk_index", align 4
@mvumi_show_event._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.126, ptr @.str.2, i32 1367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\014\0A\00", [28 x i8] zeroinitializer }, align 32
@mvumi_show_event._entry_ptr.135 = internal global ptr @mvumi_show_event._entry.133, section ".printk_index", align 4
@mvumi_show_event._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.126, ptr @.str.2, i32 1372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014Event sense data(len 0x%x): \00", [33 x i8] zeroinitializer }, align 32
@mvumi_show_event._entry_ptr.138 = internal global ptr @mvumi_show_event._entry.136, section ".printk_index", align 4
@mvumi_show_event._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.126, ptr @.str.2, i32 1374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mvumi_show_event._entry_ptr.140 = internal global ptr @mvumi_show_event._entry.139, section ".printk_index", align 4
@mvumi_show_event._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.126, ptr @.str.2, i32 1375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mvumi_show_event._entry_ptr.142 = internal global ptr @mvumi_show_event._entry.141, section ".printk_index", align 4
@mvumi_handle_hotplug.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.143, ptr @.str.2, ptr @.str.144, i8 1, i8 91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mvumi_handle_hotplug\00", [43 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"remove disk %d-%d-%d.\0A\00", [41 x i8] zeroinitializer }, align 32
@mvumi_handle_hotplug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.143, ptr @.str.2, i32 1394, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c" no disk[%d] to remove\0A\00", [40 x i8] zeroinitializer }, align 32
@mvumi_handle_hotplug._entry_ptr = internal global ptr @mvumi_handle_hotplug._entry, section ".printk_index", align 4
@mvumi_handle_hotplug.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.143, ptr @.str.2, ptr @.str.146, i8 1, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" add disk %d-%d-%d.\0A\00", [43 x i8] zeroinitializer }, align 32
@mvumi_handle_hotplug._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.143, ptr @.str.2, i32 1404, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c" don't add disk %d-%d-%d.\0A\00", [37 x i8] zeroinitializer }, align 32
@mvumi_handle_hotplug._entry_ptr.149 = internal global ptr @mvumi_handle_hotplug._entry.147, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mvumi_check_ob_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.2, i32 472, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ob frame data error\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mvumi_check_ob_frame\00", [43 x i8] zeroinitializer }, align 32
@mvumi_check_ob_frame._entry_ptr = internal global ptr @mvumi_check_ob_frame._entry, section ".printk_index", align 4
@mvumi_check_ob_frame._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.151, ptr @.str.2, i32 476, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tag[0x%x] with NO command\0A\00", [37 x i8] zeroinitializer }, align 32
@mvumi_check_ob_frame._entry_ptr.154 = internal global ptr @mvumi_check_ob_frame._entry.152, section ".printk_index", align 4
@mvumi_check_ob_frame._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.151, ptr @.str.2, i32 482, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"request ID from FW:0x%x,cmd request ID:0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@mvumi_check_ob_frame._entry_ptr.157 = internal global ptr @mvumi_check_ob_frame._entry.155, section ".printk_index", align 4
@mvumi_io_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.2, i32 2403, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"scsi_add_host failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mvumi_io_attach\00", [16 x i8] zeroinitializer }, align 32
@mvumi_io_attach._entry_ptr = internal global ptr @mvumi_io_attach._entry, section ".printk_index", align 4
@mvumi_io_attach._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.159, ptr @.str.2, i32 2414, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"add virtual device failed\0A\00", [37 x i8] zeroinitializer }, align 32
@mvumi_io_attach._entry_ptr.162 = internal global ptr @mvumi_io_attach._entry.160, section ".printk_index", align 4
@.str.163 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mvumi_scanthread\00", [47 x i8] zeroinitializer }, align 32
@mvumi_io_attach._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.159, ptr @.str.2, i32 2423, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to create device scan thread\0A\00", [59 x i8] zeroinitializer }, align 32
@mvumi_io_attach._entry_ptr.166 = internal global ptr @mvumi_io_attach._entry.164, section ".printk_index", align 4
@mvumi_rescan_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.2, i32 1631, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s add device(0:%d:0) failedwwid(%llx) has exist\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mvumi_rescan_bus\00", [47 x i8] zeroinitializer }, align 32
@mvumi_rescan_bus._entry_ptr = internal global ptr @mvumi_rescan_bus._entry, section ".printk_index", align 4
@mvumi_probe_devices._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.2, i32 1580, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s alloc mv_dev failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mvumi_probe_devices\00", [44 x i8] zeroinitializer }, align 32
@mvumi_probe_devices._entry_ptr = internal global ptr @mvumi_probe_devices._entry, section ".printk_index", align 4
@mvumi_probe_devices.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.171, ptr @.str.2, ptr @.str.172, i8 1, i8 -115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.172 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"probe a new device(0:%d:0) wwid(%llx)\0A\00", [57 x i8] zeroinitializer }, align 32
@mvumi_inquiry.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.173, ptr @.str.2, ptr @.str.174, i8 1, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.173 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mvumi_inquiry\00", [18 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"inquiry device(0:%d:0) wwid(%llx)\0A\00", [61 x i8] zeroinitializer }, align 32
@mvumi_remove_devices.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.175, ptr @.str.2, ptr @.str.176, i8 1, i8 -127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.175 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mvumi_remove_devices\00", [43 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"detach device(0:%d:0) wwid(%llx) from HOST\0A\00", [52 x i8] zeroinitializer }, align 32
@mvumi_match_devices._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.2, i32 1518, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s has same wwid[%llx] , but different id[%d %d]\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mvumi_match_devices\00", [44 x i8] zeroinitializer }, align 32
@mvumi_match_devices._entry_ptr = internal global ptr @mvumi_match_devices._entry, section ".printk_index", align 4
@mvumi_detach_one.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.179, ptr @.str.2, ptr @.str.180, i8 2, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.179 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mvumi_detach_one\00", [47 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"driver is removed!\0A\00", [44 x i8] zeroinitializer }, align 32
@mvumi_detach_devices.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.181, ptr @.str.2, ptr @.str.182, i8 1, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.181 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mvumi_detach_devices\00", [43 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"release device(0:%d:0) wwid(%llx)\0A\00", [61 x i8] zeroinitializer }, align 32
@mvumi_detach_devices.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.181, ptr @.str.2, ptr @.str.182, i8 1, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mvumi_flush_cache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.2, i32 782, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"failed to get memory for internal flush cache cmd for device %d\00", [32 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mvumi_flush_cache\00", [46 x i8] zeroinitializer }, align 32
@mvumi_flush_cache._entry_ptr = internal global ptr @mvumi_flush_cache._entry, section ".printk_index", align 4
@mvumi_flush_cache._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.184, ptr @.str.2, i32 806, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"device %d flush cache failed, status=0x%x.\0A\00", [52 x i8] zeroinitializer }, align 32
@mvumi_flush_cache._entry_ptr.187 = internal global ptr @mvumi_flush_cache._entry.185, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 37187, i64 38272]
@__sancov_gen_cov_switch_values.188 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 8]
@__sancov_gen_cov_switch_values.189 = internal global [4 x i64] [i64 2, i64 16, i64 37187, i64 38272]
@__sancov_gen_cov_switch_values.190 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.191 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.192 = internal global [4 x i64] [i64 2, i64 32, i64 1437227685, i64 1437246810]
@__sancov_gen_cov_switch_values.193 = internal global [8 x i64] [i64 6, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 16, i64 3, i64 4]
@__sancov_gen_cov_switch_values.195 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.196 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.197 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.198 = private unnamed_addr constant [17 x i8] c"mvumi_pci_driver\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2621, i32 26 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2631, i32 1 }
@___asan_gen_.204 = private unnamed_addr constant [16 x i8] c"mvumi_pci_table\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 36, i32 35 }
@___asan_gen_.207 = private unnamed_addr constant [13 x i8] c"mvumi_pm_ops\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2619, i32 8 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2458, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [15 x i8] c"mvumi_template\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2171, i32 34 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2472, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2483, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2487, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2488, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2501, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2513, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2174, i32 10 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 325, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2049, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 201, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 704, i32 14 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 704, i32 33 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2312, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant [20 x i8] c"mvumi_instance_9143\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1981, i32 39 }
@___asan_gen_.312 = private unnamed_addr constant [20 x i8] c"mvumi_instance_9580\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1992, i32 39 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2332, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2338, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2342, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2350, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 92, i32 5 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 100, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1831, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1835, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 413, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 417, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 679, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 683, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 617, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1250, i32 4 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1260, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1263, i32 4 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1270, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1223, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1226, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1102, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1203, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1046, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1065, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1076, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 929, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 993, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1013, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 112, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 121, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 134, i32 4 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 143, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 898, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 389, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 170, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1805, i32 4 }
@___asan_gen_.546 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1754, i32 4 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1722, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 257, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 265, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 273, i32 4 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 718, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 739, i32 4 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 744, i32 4 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1685, i32 4 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1358, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1362, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1365, i32 4 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1367, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1371, i32 3 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1374, i32 4 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1375, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1387, i32 4 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1393, i32 4 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1399, i32 4 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1403, i32 4 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 472, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 476, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 480, i32 4 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2403, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2414, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2419, i32 20 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2422, i32 3 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1627, i32 6 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1578, i32 6 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1589, i32 5 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1450, i32 3 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1538, i32 4 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1515, i32 5 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2553, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1473, i32 3 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 780, i32 5 }
@___asan_gen_.780 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.783 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.784 = private constant [24 x i8] c"../drivers/scsi/mvumi.c\00", align 1
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 804, i32 4 }
@llvm.compiler.used = appending global [264 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file287, ptr @__UNIQUE_ID_license288, ptr @__exitcall_mvumi_pci_driver_exit, ptr @__initcall__kmod_mvumi__329_2631_mvumi_pci_driver_init6, ptr @mvumi_alloc_cmds._entry, ptr @mvumi_alloc_cmds._entry_ptr, ptr @mvumi_alloc_mem_resource._entry, ptr @mvumi_alloc_mem_resource._entry.87, ptr @mvumi_alloc_mem_resource._entry.90, ptr @mvumi_alloc_mem_resource._entry.93, ptr @mvumi_alloc_mem_resource._entry_ptr, ptr @mvumi_alloc_mem_resource._entry_ptr.89, ptr @mvumi_alloc_mem_resource._entry_ptr.92, ptr @mvumi_alloc_mem_resource._entry_ptr.95, ptr @mvumi_build_frame._entry, ptr @mvumi_build_frame._entry_ptr, ptr @mvumi_check_handshake._entry, ptr @mvumi_check_handshake._entry.59, ptr @mvumi_check_handshake._entry_ptr, ptr @mvumi_check_handshake._entry_ptr.61, ptr @mvumi_check_ib_list_9143._entry, ptr @mvumi_check_ib_list_9143._entry.46, ptr @mvumi_check_ib_list_9143._entry_ptr, ptr @mvumi_check_ib_list_9143._entry_ptr.48, ptr @mvumi_check_ob_frame._entry, ptr @mvumi_check_ob_frame._entry.152, ptr @mvumi_check_ob_frame._entry.155, ptr @mvumi_check_ob_frame._entry_ptr, ptr @mvumi_check_ob_frame._entry_ptr.154, ptr @mvumi_check_ob_frame._entry_ptr.157, ptr @mvumi_create_internal_cmd._entry, ptr @mvumi_create_internal_cmd._entry.109, ptr @mvumi_create_internal_cmd._entry.112, ptr @mvumi_create_internal_cmd._entry_ptr, ptr @mvumi_create_internal_cmd._entry_ptr.111, ptr @mvumi_create_internal_cmd._entry_ptr.114, ptr @mvumi_flush_cache._entry, ptr @mvumi_flush_cache._entry.185, ptr @mvumi_flush_cache._entry_ptr, ptr @mvumi_flush_cache._entry_ptr.187, ptr @mvumi_get_cmd._entry, ptr @mvumi_get_cmd._entry_ptr, ptr @mvumi_get_event._entry, ptr @mvumi_get_event._entry_ptr, ptr @mvumi_handle_hotplug._entry, ptr @mvumi_handle_hotplug._entry.147, ptr @mvumi_handle_hotplug._entry_ptr, ptr @mvumi_handle_hotplug._entry_ptr.149, ptr @mvumi_handshake._entry, ptr @mvumi_handshake._entry_ptr, ptr @mvumi_handshake_event._entry, ptr @mvumi_handshake_event._entry.65, ptr @mvumi_handshake_event._entry_ptr, ptr @mvumi_handshake_event._entry_ptr.67, ptr @mvumi_hs_build_page._entry, ptr @mvumi_hs_build_page._entry_ptr, ptr @mvumi_hs_process_page._entry, ptr @mvumi_hs_process_page._entry.74, ptr @mvumi_hs_process_page._entry_ptr, ptr @mvumi_hs_process_page._entry_ptr.76, ptr @mvumi_init_data._entry, ptr @mvumi_init_data._entry.79, ptr @mvumi_init_data._entry.82, ptr @mvumi_init_data._entry_ptr, ptr @mvumi_init_data._entry_ptr.81, ptr @mvumi_init_data._entry_ptr.84, ptr @mvumi_init_fw._entry, ptr @mvumi_init_fw._entry.28, ptr @mvumi_init_fw._entry.32, ptr @mvumi_init_fw._entry.35, ptr @mvumi_init_fw._entry_ptr, ptr @mvumi_init_fw._entry_ptr.30, ptr @mvumi_init_fw._entry_ptr.34, ptr @mvumi_init_fw._entry_ptr.37, ptr @mvumi_io_attach._entry, ptr @mvumi_io_attach._entry.160, ptr @mvumi_io_attach._entry.164, ptr @mvumi_io_attach._entry_ptr, ptr @mvumi_io_attach._entry_ptr.162, ptr @mvumi_io_attach._entry_ptr.166, ptr @mvumi_isr_handler._entry, ptr @mvumi_isr_handler._entry_ptr, ptr @mvumi_issue_blocked_cmd._entry, ptr @mvumi_issue_blocked_cmd._entry.117, ptr @mvumi_issue_blocked_cmd._entry.120, ptr @mvumi_issue_blocked_cmd._entry_ptr, ptr @mvumi_issue_blocked_cmd._entry_ptr.119, ptr @mvumi_issue_blocked_cmd._entry_ptr.122, ptr @mvumi_make_sgl._entry, ptr @mvumi_make_sgl._entry_ptr, ptr @mvumi_map_pci_addr._entry, ptr @mvumi_map_pci_addr._entry_ptr, ptr @mvumi_match_devices._entry, ptr @mvumi_match_devices._entry_ptr, ptr @mvumi_notification._entry, ptr @mvumi_notification._entry_ptr, ptr @mvumi_pci_driver_exit, ptr @mvumi_probe_devices._entry, ptr @mvumi_probe_devices._entry_ptr, ptr @mvumi_probe_one._entry, ptr @mvumi_probe_one._entry.12, ptr @mvumi_probe_one._entry_ptr, ptr @mvumi_probe_one._entry_ptr.14, ptr @mvumi_release_mem_resource._entry, ptr @mvumi_release_mem_resource._entry_ptr, ptr @mvumi_rescan_bus._entry, ptr @mvumi_rescan_bus._entry_ptr, ptr @mvumi_reset_host_9580._entry, ptr @mvumi_reset_host_9580._entry.51, ptr @mvumi_reset_host_9580._entry_ptr, ptr @mvumi_reset_host_9580._entry_ptr.53, ptr @mvumi_show_event._entry, ptr @mvumi_show_event._entry.127, ptr @mvumi_show_event._entry.130, ptr @mvumi_show_event._entry.133, ptr @mvumi_show_event._entry.136, ptr @mvumi_show_event._entry.139, ptr @mvumi_show_event._entry.141, ptr @mvumi_show_event._entry_ptr, ptr @mvumi_show_event._entry_ptr.129, ptr @mvumi_show_event._entry_ptr.132, ptr @mvumi_show_event._entry_ptr.135, ptr @mvumi_show_event._entry_ptr.138, ptr @mvumi_show_event._entry_ptr.140, ptr @mvumi_show_event._entry_ptr.142, ptr @mvumi_wait_for_fw._entry, ptr @mvumi_wait_for_fw._entry_ptr, ptr @mvumi_pci_driver, ptr @.str, ptr @mvumi_pci_table, ptr @mvumi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mvumi_template, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mvumi_probe_one.__key, ptr @.str.7, ptr @mvumi_probe_one.__key.8, ptr @.str.9, ptr @mvumi_probe_one.__key.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @mvumi_instance_9143, ptr @mvumi_instance_9580, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @mvumi_launch_events.__key, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.151, ptr @.str.153, ptr @.str.156, ptr @.str.158, ptr @.str.159, ptr @.str.161, ptr @.str.163, ptr @.str.165, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.186], section "llvm.metadata"
@0 = internal global [196 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_pci_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_probe_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_probe_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_probe_one.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_probe_one.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_probe_one._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_get_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_build_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_make_sgl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_init_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_instance_9143 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_instance_9580 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_init_fw._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_init_fw._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_init_fw._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_map_pci_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_check_ib_list_9143._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_check_ib_list_9143._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_reset_host_9580._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_reset_host_9580._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_wait_for_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_check_handshake._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_check_handshake._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_handshake_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_handshake_event._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_handshake._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_hs_process_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_hs_process_page._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_init_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_init_data._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_init_data._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_alloc_mem_resource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_alloc_mem_resource._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_alloc_mem_resource._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_alloc_mem_resource._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_hs_build_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_alloc_cmds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_release_mem_resource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_isr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_launch_events.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_get_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_create_internal_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_create_internal_cmd._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_create_internal_cmd._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_issue_blocked_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_issue_blocked_cmd._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_issue_blocked_cmd._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_notification._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_show_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_show_event._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_show_event._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_show_event._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_show_event._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_show_event._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_show_event._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_handle_hotplug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_handle_hotplug._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_check_ob_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_check_ob_frame._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_check_ob_frame._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_io_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_io_attach._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_io_attach._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_rescan_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_probe_devices._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_match_devices._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_flush_cache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvumi_flush_cache._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mvumi_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @mvumi_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mvumi_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @mvumi_pci_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvumi_probe_one(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvumi_probe_one.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvumi_probe_one, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !392

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor, align 8
  %conv = zext i16 %1 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %conv3 = zext i16 %3 to i32
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %4 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %subsystem_vendor, align 4
  %conv4 = zext i16 %5 to i32
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %6 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subsystem_device, align 2
  %conv5 = zext i16 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvumi_probe_one.__UNIQUE_ID_ddebug326, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call6 = tail call i32 @pci_enable_device(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %do.end
  tail call void @pci_set_master(ptr noundef %pdev) #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev.i, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.fail_set_dma_mask_crit_edge

if.end9.fail_set_dma_mask_crit_edge:              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_set_dma_mask

if.end13:                                         ; preds = %if.end9
  %call14 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @mvumi_template, i32 noundef 500) #12
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.4) #15
  br label %fail_set_dma_mask

if.end21:                                         ; preds = %if.end13
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 0, i32 53
  %cmd_pool = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 3, i32 0, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %cmd_pool to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %cmd_pool, ptr %cmd_pool, align 4
  %prev.i = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 3, i32 0, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cmd_pool, ptr %prev.i, align 4
  %ob_data_list = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 13, i32 13, i32 1
  %10 = ptrtoint ptr %ob_data_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %ob_data_list, ptr %ob_data_list, align 4
  %prev.i126 = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 13, i32 13, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i126 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ob_data_list, ptr %prev.i126, align 4
  %free_ob_list = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 13, i32 13, i32 1, i32 2
  %12 = ptrtoint ptr %free_ob_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %free_ob_list, ptr %free_ob_list, align 4
  %prev.i127 = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 13, i32 13, i32 1, i32 3
  %13 = ptrtoint ptr %prev.i127 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %free_ob_list, ptr %prev.i127, align 4
  %res_list = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 13, i32 13, i32 1, i32 4
  %14 = ptrtoint ptr %res_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %res_list, ptr %res_list, align 4
  %prev.i128 = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 13, i32 13, i32 1, i32 4, i32 1
  %15 = ptrtoint ptr %prev.i128 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %res_list, ptr %prev.i128, align 4
  %waiting_req_list = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 13, i32 13, i32 1, i32 4, i32 1, i32 1
  %16 = ptrtoint ptr %waiting_req_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %waiting_req_list, ptr %waiting_req_list, align 4
  %prev.i129 = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 13, i32 13, i32 1, i32 4, i32 2
  %17 = ptrtoint ptr %prev.i129 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %waiting_req_list, ptr %prev.i129, align 4
  %device_lock = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 13, i32 13, i32 3
  tail call void @__mutex_init(ptr noundef %device_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @mvumi_probe_one.__key) #12
  %mhba_dev_list = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 24
  %18 = ptrtoint ptr %mhba_dev_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %mhba_dev_list, ptr %mhba_dev_list, align 4
  %prev.i130 = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 25
  %19 = ptrtoint ptr %prev.i130 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %mhba_dev_list, ptr %prev.i130, align 4
  %shost_dev_list = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 26
  %20 = ptrtoint ptr %shost_dev_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %shost_dev_list, ptr %shost_dev_list, align 4
  %prev.i131 = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 27
  %21 = ptrtoint ptr %prev.i131 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %shost_dev_list, ptr %prev.i131, align 4
  %fw_outstanding = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 5, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fw_outstanding, i32 noundef 4) #12
  %22 = ptrtoint ptr %fw_outstanding to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %fw_outstanding, align 4
  %int_cmd_wait_q = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %int_cmd_wait_q, ptr noundef nonnull @.str.9, ptr noundef nonnull @mvumi_probe_one.__key.8) #12
  %sas_discovery_mutex = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 12
  tail call void @__mutex_init(ptr noundef %sas_discovery_mutex, ptr noundef nonnull @.str.11, ptr noundef nonnull @mvumi_probe_one.__key.10) #12
  %pdev32 = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 5, i32 1, i32 4, i32 7
  %23 = ptrtoint ptr %pdev32 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %pdev, ptr %pdev32, align 4
  %shost = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %24 = ptrtoint ptr %shost to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call14, ptr %shost, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %25 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %number, align 4
  %conv33 = zext i8 %28 to i32
  %shl = shl nuw nsw i32 %conv33, 8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %29 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %devfn, align 4
  %or = or i32 %shl, %30
  %unique_id = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 5, i32 2
  %31 = ptrtoint ptr %unique_id to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or, ptr %unique_id, align 4
  %call34 = tail call fastcc i32 @mvumi_init_fw(ptr noundef %hostdata.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end21.fail_init_fw_crit_edge

if.end21.fail_init_fw_crit_edge:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_init_fw

if.end37:                                         ; preds = %if.end21
  %32 = ptrtoint ptr %pdev32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev32, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 46
  %34 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq, align 4
  %call.i132 = tail call i32 @request_threaded_irq(i32 noundef %35, ptr noundef nonnull @mvumi_isr_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %hostdata.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool40.not = icmp eq i32 %call.i132, 0
  br i1 %tobool40.not, label %if.end46, label %do.end44

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13) #15
  br label %fail_init_irq

if.end46:                                         ; preds = %if.end37
  %instancet = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 5, i32 3, i32 1
  %36 = ptrtoint ptr %instancet to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %instancet, align 4
  %enable_intr = getelementptr inbounds %struct.mvumi_instance_template, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %enable_intr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %enable_intr, align 4
  tail call void %39(ptr noundef %hostdata.i) #12
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %hostdata.i, ptr %driver_data.i.i, align 4
  %41 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %shost, align 4
  %ib_max_size.i = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4
  %43 = ptrtoint ptr %ib_max_size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ib_max_size.i, align 4
  %sub.i = add i32 %44, -32
  %div133.i = lshr i32 %sub.i, 4
  %45 = ptrtoint ptr %pdev32 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev32, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 46
  %47 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq.i, align 4
  %irq1.i = getelementptr inbounds %struct.Scsi_Host, ptr %42, i32 0, i32 47
  %49 = ptrtoint ptr %irq1.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %irq1.i, align 8
  %50 = ptrtoint ptr %unique_id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %unique_id, align 4
  %unique_id2.i = getelementptr inbounds %struct.Scsi_Host, ptr %42, i32 0, i32 23
  %52 = ptrtoint ptr %unique_id2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %unique_id2.i, align 8
  %max_io.i = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 10, i32 0, i32 0, i32 0, i32 2
  %53 = ptrtoint ptr %max_io.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_io.i, align 4
  %sub3.i = add i32 %54, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.i)
  %tobool.not.i = icmp eq i32 %sub3.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 1, i32 %sub3.i
  %can_queue.i = getelementptr inbounds %struct.Scsi_Host, ptr %42, i32 0, i32 26
  %55 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %spec.select.i, ptr %can_queue.i, align 4
  %max_sge.i = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 10
  %56 = ptrtoint ptr %max_sge.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %max_sge.i, align 4
  %conv.i = zext i16 %57 to i32
  %58 = tail call i32 @llvm.umin.i32(i32 %div133.i, i32 %conv.i) #12
  %conv13.i = trunc i32 %58 to i16
  %sg_tablesize.i = getelementptr inbounds %struct.Scsi_Host, ptr %42, i32 0, i32 28
  %59 = ptrtoint ptr %sg_tablesize.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv13.i, ptr %sg_tablesize.i, align 2
  %max_transfer_size.i = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 3
  %60 = ptrtoint ptr %max_transfer_size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_transfer_size.i, align 4
  %div14134.i = lshr i32 %61, 9
  %max_sectors.i = getelementptr inbounds %struct.Scsi_Host, ptr %42, i32 0, i32 30
  %62 = ptrtoint ptr %max_sectors.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %div14134.i, ptr %max_sectors.i, align 8
  %63 = ptrtoint ptr %max_io.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max_io.i, align 4
  %sub16.i = add i32 %64, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub16.i)
  %tobool17.not.i = icmp eq i32 %sub16.i, 0
  %phi.cast.i = trunc i32 %sub16.i to i16
  %cond23.i = select i1 %tobool17.not.i, i16 1, i16 %phi.cast.i
  %cmd_per_lun.i = getelementptr inbounds %struct.Scsi_Host, ptr %42, i32 0, i32 27
  %65 = ptrtoint ptr %cmd_per_lun.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %cond23.i, ptr %cmd_per_lun.i, align 8
  %max_target_id.i = getelementptr inbounds %struct.mvumi_hba, ptr %hostdata.i, i32 0, i32 25
  %66 = ptrtoint ptr %max_target_id.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %max_target_id.i, align 2
  %conv25.i = zext i16 %67 to i32
  %max_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %42, i32 0, i32 21
  %68 = ptrtoint ptr %max_id.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv25.i, ptr %max_id.i, align 4
  %max_cmd_len.i = getelementptr inbounds %struct.Scsi_Host, ptr %42, i32 0, i32 24
  %69 = ptrtoint ptr %max_cmd_len.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 16, ptr %max_cmd_len.i, align 4
  %70 = ptrtoint ptr %pdev32 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev32, align 4
  %dev.i133 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  %call.i.i134 = tail call i32 @scsi_add_host_with_dma(ptr noundef %42, ptr noundef %dev.i133, ptr noundef %dev.i133) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i134)
  %tobool27.not.i = icmp eq i32 %call.i.i134, 0
  br i1 %tobool27.not.i, label %if.end.i, label %mvumi_io_attach.exit.thread139

mvumi_io_attach.exit.thread139:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %pdev32 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev32, align 4
  %dev29.i = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i, ptr noundef nonnull @.str.158) #15
  br label %fail_io_attach

if.end.i:                                         ; preds = %if.end46
  %fw_flag.i = getelementptr inbounds %struct.mvumi_hba, ptr %hostdata.i, i32 0, i32 35
  %74 = ptrtoint ptr %fw_flag.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %fw_flag.i, align 1
  %76 = or i8 %75, 2
  store i8 %76, ptr %fw_flag.i, align 1
  tail call void @mutex_lock_nested(ptr noundef %sas_discovery_mutex, i32 noundef 0) #12
  %77 = ptrtoint ptr %pdev32 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pdev32, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 8
  %79 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -27264, i16 %80)
  %cmp34.i = icmp eq i16 %80, -27264
  br i1 %cmp34.i, label %if.end41.i, label %if.end.i.if.end50.i_crit_edge

if.end.i.if.end50.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

if.end41.i:                                       ; preds = %if.end.i
  %81 = ptrtoint ptr %max_target_id.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %max_target_id.i, align 2
  %conv38.i = zext i16 %82 to i32
  %sub39.i = add nsw i32 %conv38.i, -1
  %call40.i = tail call i32 @scsi_add_device(ptr noundef %42, i32 noundef 0, i32 noundef %sub39.i, i64 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool42.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool42.not.i, label %if.end41.i.if.end50.i_crit_edge, label %mvumi_io_attach.exit.thread143

if.end41.i.if.end50.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

mvumi_io_attach.exit.thread143:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %pdev32 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pdev32, align 4
  %dev48.i = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48.i, ptr noundef nonnull @.str.161) #15
  tail call void @mutex_unlock(ptr noundef %sas_discovery_mutex) #12
  %85 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %shost, align 4
  tail call void @scsi_remove_host(ptr noundef %86) #12
  br label %fail_io_attach

if.end50.i:                                       ; preds = %if.end41.i.if.end50.i_crit_edge, %if.end.i.if.end50.i_crit_edge
  %call51.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @mvumi_rescan_bus, ptr noundef %hostdata.i, i32 noundef -1, ptr noundef nonnull @.str.163) #12
  %dm_thread.i = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 29
  %87 = ptrtoint ptr %dm_thread.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call51.i, ptr %dm_thread.i, align 4
  %cmp.i.i = icmp ugt ptr %call51.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end57.i, label %mvumi_io_attach.exit.thread

do.end57.i:                                       ; preds = %if.end50.i
  %88 = ptrtoint ptr %pdev32 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pdev32, align 4
  %dev59.i = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev59.i, ptr noundef nonnull @.str.165) #15
  %90 = ptrtoint ptr %dm_thread.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dm_thread.i, align 4
  %92 = ptrtoint ptr %91 to i32
  tail call void @mutex_unlock(ptr noundef %sas_discovery_mutex) #12
  %93 = ptrtoint ptr %pdev32 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdev32, align 4
  %device68.i = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 8
  %95 = ptrtoint ptr %device68.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %device68.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -27264, i16 %96)
  %cmp70.i = icmp eq i16 %96, -27264
  br i1 %cmp70.i, label %if.end78.i, label %do.end57.i.mvumi_io_attach.exit_crit_edge

do.end57.i.mvumi_io_attach.exit_crit_edge:        ; preds = %do.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_io_attach.exit

mvumi_io_attach.exit.thread:                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  %pnp_count.i = getelementptr inbounds %struct.Scsi_Host, ptr %call14, i32 1, i32 30
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pnp_count.i, i32 noundef 4) #12
  %97 = ptrtoint ptr %pnp_count.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 1, ptr %pnp_count.i, align 4
  %98 = ptrtoint ptr %dm_thread.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dm_thread.i, align 4
  %call65.i = tail call i32 @wake_up_process(ptr noundef %99) #12
  tail call void @mutex_unlock(ptr noundef %sas_discovery_mutex) #12
  br label %if.end50

if.end78.i:                                       ; preds = %do.end57.i
  %100 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %shost, align 4
  %102 = ptrtoint ptr %max_target_id.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %max_target_id.i, align 2
  %conv75.i = zext i16 %103 to i32
  %sub76.i = add nsw i32 %conv75.i, -1
  %call77.i = tail call ptr @scsi_device_lookup(ptr noundef %101, i32 noundef 0, i32 noundef %sub76.i, i64 noundef 0) #12
  %tobool79.not.i = icmp eq ptr %call77.i, null
  br i1 %tobool79.not.i, label %if.end78.i.mvumi_io_attach.exit_crit_edge, label %if.then80.i

if.end78.i.mvumi_io_attach.exit_crit_edge:        ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_io_attach.exit

if.then80.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_remove_device(ptr noundef nonnull %call77.i) #12
  tail call void @scsi_device_put(ptr noundef nonnull %call77.i) #12
  br label %mvumi_io_attach.exit

mvumi_io_attach.exit:                             ; preds = %if.then80.i, %if.end78.i.mvumi_io_attach.exit_crit_edge, %do.end57.i.mvumi_io_attach.exit_crit_edge
  %104 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %shost, align 4
  tail call void @scsi_remove_host(ptr noundef %105) #12
  %tobool48.not = icmp eq ptr %91, null
  br i1 %tobool48.not, label %mvumi_io_attach.exit.if.end50_crit_edge, label %mvumi_io_attach.exit.fail_io_attach_crit_edge

mvumi_io_attach.exit.fail_io_attach_crit_edge:    ; preds = %mvumi_io_attach.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_io_attach

mvumi_io_attach.exit.if.end50_crit_edge:          ; preds = %mvumi_io_attach.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.end50:                                         ; preds = %mvumi_io_attach.exit.if.end50_crit_edge, %mvumi_io_attach.exit.thread
  tail call fastcc void @mvumi_backup_bar_addr(ptr noundef %hostdata.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvumi_probe_one.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvumi_probe_one, %if.then63)) #12
          to label %cleanup [label %if.then63], !srcloc !392

if.then63:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvumi_probe_one.__UNIQUE_ID_ddebug327, ptr noundef %dev.i, ptr noundef nonnull @.str.15) #12
  br label %cleanup

fail_io_attach:                                   ; preds = %mvumi_io_attach.exit.fail_io_attach_crit_edge, %mvumi_io_attach.exit.thread143, %mvumi_io_attach.exit.thread139
  %retval.0.i135142 = phi i32 [ %call.i.i134, %mvumi_io_attach.exit.thread139 ], [ %92, %mvumi_io_attach.exit.fail_io_attach_crit_edge ], [ %call40.i, %mvumi_io_attach.exit.thread143 ]
  %106 = ptrtoint ptr %instancet to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %instancet, align 4
  %disable_intr = getelementptr inbounds %struct.mvumi_instance_template, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %disable_intr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %disable_intr, align 4
  tail call void %109(ptr noundef %hostdata.i) #12
  %110 = ptrtoint ptr %pdev32 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdev32, align 4
  %irq70 = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 46
  %112 = ptrtoint ptr %irq70 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %irq70, align 4
  %call71 = tail call ptr @free_irq(i32 noundef %113, ptr noundef %hostdata.i) #12
  br label %fail_init_irq

fail_init_irq:                                    ; preds = %fail_io_attach, %do.end44
  %ret.0 = phi i32 [ %call.i132, %do.end44 ], [ %retval.0.i135142, %fail_io_attach ]
  tail call fastcc void @mvumi_release_fw(ptr noundef %hostdata.i)
  br label %fail_init_fw

fail_init_fw:                                     ; preds = %fail_init_irq, %if.end21.fail_init_fw_crit_edge
  %ret.1 = phi i32 [ %call34, %if.end21.fail_init_fw_crit_edge ], [ %ret.0, %fail_init_irq ]
  tail call void @scsi_host_put(ptr noundef nonnull %call14) #12
  br label %fail_set_dma_mask

fail_set_dma_mask:                                ; preds = %fail_init_fw, %do.end19, %if.end9.fail_set_dma_mask_crit_edge
  %ret.2 = phi i32 [ %call.i, %if.end9.fail_set_dma_mask_crit_edge ], [ %ret.1, %fail_init_fw ], [ -12, %do.end19 ]
  tail call void @pci_disable_device(ptr noundef %pdev) #12
  br label %cleanup

cleanup:                                          ; preds = %fail_set_dma_mask, %if.then63, %if.end50, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %fail_set_dma_mask ], [ %call6, %do.end.cleanup_crit_edge ], [ 0, %if.then63 ], [ 0, %if.end50 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvumi_detach_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dm_thread = getelementptr inbounds %struct.mvumi_hba, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %dm_thread to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dm_thread, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 @kthread_stop(ptr noundef nonnull %3) #12
  %4 = ptrtoint ptr %dm_thread to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dm_thread, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @mvumi_detach_devices(ptr noundef %1)
  %shost = getelementptr inbounds %struct.mvumi_hba, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %shost, align 4
  tail call void @scsi_remove_host(ptr noundef %6) #12
  tail call fastcc void @mvumi_flush_cache(ptr noundef %1)
  %instancet = getelementptr inbounds %struct.mvumi_hba, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %instancet to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %instancet, align 4
  %disable_intr = getelementptr inbounds %struct.mvumi_instance_template, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %disable_intr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disable_intr, align 4
  tail call void %10(ptr noundef %1) #12
  %pdev6 = getelementptr inbounds %struct.mvumi_hba, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev6, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 46
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  %call7 = tail call ptr @free_irq(i32 noundef %14, ptr noundef %1) #12
  tail call fastcc void @mvumi_release_fw(ptr noundef %1)
  tail call void @scsi_host_put(ptr noundef %6) #12
  tail call void @pci_disable_device(ptr noundef %pdev) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvumi_detach_one.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvumi_detach_one, %if.then12)) #12
          to label %do.end [label %if.then12], !srcloc !392

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvumi_detach_one.__UNIQUE_ID_ddebug328, ptr noundef %dev, ptr noundef nonnull @.str.180) #12
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvumi_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @mvumi_flush_cache(ptr noundef %1)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvumi_init_fw(ptr noundef %mhba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %call = tail call i32 @pci_request_regions(ptr noundef %1, ptr noundef nonnull @.str) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @mvumi_map_pci_addr(ptr noundef %3, ptr noundef %mhba)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.fail_ioremap_crit_edge

if.end.fail_ioremap_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_ioremap

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %do.end14 [
    i16 -28349, label %sw.bb
    i16 -27264, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %instancet = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 9
  %9 = ptrtoint ptr %instancet to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mvumi_instance_9143, ptr %instancet, align 4
  %io_seq = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 39
  %10 = ptrtoint ptr %io_seq to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %io_seq, align 2
  %max_sge = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 24
  %11 = ptrtoint ptr %max_sge to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 32, ptr %max_sge, align 4
  %request_id_enabled = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 36
  %12 = ptrtoint ptr %request_id_enabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %request_id_enabled, align 2
  br label %do.body21

sw.bb8:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %instancet9 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 9
  %13 = ptrtoint ptr %instancet9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mvumi_instance_9580, ptr %instancet9, align 4
  %io_seq10 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 39
  %14 = ptrtoint ptr %io_seq10 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %io_seq10, align 2
  %max_sge11 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 24
  %15 = ptrtoint ptr %max_sge11 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 32, ptr %max_sge11, align 4
  br label %do.body21

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %7 to i32
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.29, i32 noundef %conv) #15
  %instancet20 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 9
  %16 = ptrtoint ptr %instancet20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %instancet20, align 4
  br label %fail_alloc_mem

do.body21:                                        ; preds = %sw.bb8, %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvumi_init_fw.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvumi_init_fw, %if.then26)) #12
          to label %do.end34 [label %if.then26], !srcloc !392

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 4
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %device30 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %device30 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device30, align 2
  %conv31 = zext i16 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvumi_init_fw.__UNIQUE_ID_ddebug313, ptr noundef %dev28, ptr noundef nonnull @.str.31, i32 noundef %conv31) #12
  br label %do.end34

do.end34:                                         ; preds = %if.then26, %do.body21
  %call35 = tail call fastcc i32 @mvumi_cfg_hw_reg(ptr noundef %mhba)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 4
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  br i1 %tobool36.not, label %if.end43, label %do.end40

do.end40:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.33) #15
  br label %fail_alloc_mem

if.end43:                                         ; preds = %do.end34
  %handshake_page_phys = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 21
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev45, i32 noundef 48, ptr noundef %handshake_page_phys, i32 noundef 3264, i32 noundef 0) #12
  %handshake_page = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 20
  %23 = ptrtoint ptr %handshake_page to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %handshake_page, align 4
  %tobool51.not = icmp eq ptr %call.i, null
  br i1 %tobool51.not, label %do.end55, label %if.end58

do.end55:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 4
  %dev57 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev57, ptr noundef nonnull @.str.36) #15
  br label %fail_alloc_page

if.end58:                                         ; preds = %if.end43
  %regs1.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 50
  %26 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs1.i, align 4
  %arm_to_pciea_drbl_reg.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %arm_to_pciea_drbl_reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arm_to_pciea_drbl_reg.i, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #12, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %31 = ptrtoint ptr %arm_to_pciea_drbl_reg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arm_to_pciea_drbl_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #12, !srcloc !396
  %int_drbl_int_mask.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %27, i32 0, i32 36
  %33 = ptrtoint ptr %int_drbl_int_mask.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %int_drbl_int_mask.i, align 4
  %arm_to_pciea_mask_reg.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %27, i32 0, i32 9
  %35 = ptrtoint ptr %arm_to_pciea_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arm_to_pciea_mask_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  %37 = tail call i32 @llvm.bswap.i32(i32 %34) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %37) #12, !srcloc !396
  %enpointa_mask_reg.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %27, i32 0, i32 1
  %38 = ptrtoint ptr %enpointa_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %enpointa_mask_reg.i, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #12, !srcloc !393
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %int_dl_cpu2pciea.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %27, i32 0, i32 34
  %42 = ptrtoint ptr %int_dl_cpu2pciea.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %int_dl_cpu2pciea.i, align 4
  %or.i = or i32 %43, %41
  %44 = ptrtoint ptr %enpointa_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %enpointa_mask_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  %46 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %46) #12, !srcloc !396
  tail call void @msleep(i32 noundef 100) #12
  %call5.i = tail call fastcc zeroext i8 @mvumi_check_handshake(ptr noundef %mhba) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call5.i)
  %tobool.not.i.not = icmp eq i8 %call5.i, 0
  br i1 %tobool.not.i.not, label %if.end62, label %if.end58.fail_ready_state_crit_edge

if.end58.fail_ready_state_crit_edge:              ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_ready_state

if.end62:                                         ; preds = %if.end58
  %max_io.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 27
  %47 = ptrtoint ptr %max_io.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_io.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp60.not.i = icmp eq i32 %48, 0
  br i1 %cmp60.not.i, label %if.end62.cleanup_crit_edge, label %for.body.lr.ph.i

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end62
  %cmd_pool.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 3
  %prev.i52.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 3, i32 1
  %hba_capability.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 38
  %ib_frame.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 12
  %ib_max_size.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 29
  %ib_frame_phys.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.061.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3520, i32 noundef 32) #16
  %tobool.not.i126 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i126, label %for.body.i.do.end.i_crit_edge, label %if.end.i

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.end.i:                                         ; preds = %for.body.i
  %50 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %52 = ptrtoint ptr %prev.i52.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i52.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %53, ptr noundef %cmd_pool.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %prev.i52.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i.i.i, ptr %prev.i52.i, align 4
  %55 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %cmd_pool.i, ptr %call7.i.i.i, align 8
  %56 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %call7.i.i.i, ptr %53, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_add_tail.exit.i_crit_edge
  %58 = ptrtoint ptr %hba_capability.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %hba_capability.i, align 4
  %60 = and i16 %59, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool2.not.i = icmp eq i16 %60, 0
  br i1 %tobool2.not.i, label %if.end8.i.i.i, label %if.then3.i

if.then3.i:                                       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %ib_frame.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ib_frame.i, align 4
  %63 = ptrtoint ptr %ib_max_size.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ib_max_size.i, align 4
  %mul.i = mul i32 %64, %i.061.i
  %add.ptr.i = getelementptr i8, ptr %62, i32 %mul.i
  %frame.i = getelementptr inbounds %struct.mvumi_cmd, ptr %call7.i.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %frame.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr.i, ptr %frame.i, align 8
  %66 = ptrtoint ptr %ib_frame_phys.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ib_frame_phys.i, align 4
  %add.i = add i32 %67, %mul.i
  %frame_phys.i = getelementptr inbounds %struct.mvumi_cmd, ptr %call7.i.i.i, i32 0, i32 2
  %68 = ptrtoint ptr %frame_phys.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add.i, ptr %frame_phys.i, align 4
  br label %if.end9.i

if.end8.i.i.i:                                    ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %ib_max_size.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ib_max_size.i, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %70, i32 noundef 3520) #17
  %frame8.i = getelementptr inbounds %struct.mvumi_cmd, ptr %call7.i.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %frame8.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call9.i.i.i, ptr %frame8.i, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end8.i.i.i, %if.then3.i
  %frame10.i = getelementptr inbounds %struct.mvumi_cmd, ptr %call7.i.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %frame10.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %frame10.i, align 8
  %tobool11.not.i = icmp eq ptr %73, null
  br i1 %tobool11.not.i, label %if.end9.i.do.end.i_crit_edge, label %for.inc.i

if.end9.i.do.end.i_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

for.inc.i:                                        ; preds = %if.end9.i
  %inc.i = add nuw i32 %i.061.i, 1
  %74 = ptrtoint ptr %max_io.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %max_io.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %75
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.end.i:                                         ; preds = %if.end9.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  %76 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.98, i32 noundef %i.061.i) #15
  %78 = ptrtoint ptr %cmd_pool.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %cmd_pool.i, align 4
  %cmp.i.not62.i = icmp eq ptr %79, %cmd_pool.i
  br i1 %cmp.i.not62.i, label %do.end.i.fail_ready_state_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  br label %while.body.i

do.end.i.fail_ready_state_crit_edge:              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_ready_state

while.body.i:                                     ; preds = %if.end26.i.while.body.i_crit_edge, %do.end.i.while.body.i_crit_edge
  %80 = phi ptr [ %95, %if.end26.i.while.body.i_crit_edge ], [ %79, %do.end.i.while.body.i_crit_edge ]
  %call.i.i55.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %80) #12
  br i1 %call.i.i55.i, label %if.end.i.i56.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i56.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i.i.i, align 4
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %80, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev1.i.i.i.i, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %84, ptr %82, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i56.i, %while.body.i.list_del.exit.i_crit_edge
  %87 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr inttoptr (i32 256 to ptr), ptr %80, align 4
  %prev.i57.i = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %88 = ptrtoint ptr %prev.i57.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i57.i, align 4
  %89 = ptrtoint ptr %hba_capability.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %hba_capability.i, align 4
  %91 = and i16 %90, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool23.not.i = icmp eq i16 %91, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %list_del.exit.i.if.end26.i_crit_edge

list_del.exit.i.if.end26.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.then24.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %frame25.i = getelementptr inbounds %struct.mvumi_cmd, ptr %80, i32 0, i32 1
  %92 = ptrtoint ptr %frame25.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %frame25.i, align 4
  tail call void @kfree(ptr noundef %93) #12
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %list_del.exit.i.if.end26.i_crit_edge
  tail call void @kfree(ptr noundef %80) #12
  %94 = ptrtoint ptr %cmd_pool.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile ptr, ptr %cmd_pool.i, align 4
  %cmp.i.not.i = icmp eq ptr %95, %cmd_pool.i
  br i1 %cmp.i.not.i, label %if.end26.i.fail_ready_state_crit_edge, label %if.end26.i.while.body.i_crit_edge

if.end26.i.while.body.i_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end26.i.fail_ready_state_crit_edge:            ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_ready_state

fail_ready_state:                                 ; preds = %if.end26.i.fail_ready_state_crit_edge, %do.end.i.fail_ready_state_crit_edge, %if.end58.fail_ready_state_crit_edge
  %ret.0 = phi i32 [ -22, %if.end58.fail_ready_state_crit_edge ], [ -12, %do.end.i.fail_ready_state_crit_edge ], [ -12, %if.end26.i.fail_ready_state_crit_edge ]
  tail call fastcc void @mvumi_release_mem_resource(ptr noundef %mhba)
  %96 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pdev, align 4
  %dev68 = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44
  %98 = ptrtoint ptr %handshake_page to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %handshake_page, align 4
  %100 = ptrtoint ptr %handshake_page_phys to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %handshake_page_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev68, i32 noundef 48, ptr noundef %99, i32 noundef %101, i32 noundef 0) #12
  br label %fail_alloc_page

fail_alloc_page:                                  ; preds = %fail_ready_state, %do.end55
  %ret.1 = phi i32 [ %ret.0, %fail_ready_state ], [ -12, %do.end55 ]
  %regs = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 50
  %102 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs, align 4
  tail call void @kfree(ptr noundef %103) #12
  br label %fail_alloc_mem

fail_alloc_mem:                                   ; preds = %fail_alloc_page, %do.end40, %do.end14
  %ret.2 = phi i32 [ -22, %do.end14 ], [ -12, %do.end40 ], [ %ret.1, %fail_alloc_page ]
  %104 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pdev, align 4
  tail call fastcc void @mvumi_unmap_pci_addr(ptr noundef %105, ptr noundef %mhba)
  br label %fail_ioremap

fail_ioremap:                                     ; preds = %fail_alloc_mem, %if.end.fail_ioremap_crit_edge
  %ret.3 = phi i32 [ %call3, %if.end.fail_ioremap_crit_edge ], [ %ret.2, %fail_alloc_mem ]
  %106 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pdev, align 4
  tail call void @pci_release_regions(ptr noundef %107) #12
  br label %cleanup

cleanup:                                          ; preds = %fail_ioremap, %for.inc.i.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ %ret.3, %fail_ioremap ], [ 0, %if.end62.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvumi_isr_handler(i32 noundef %irq, ptr noundef %devp) #2 align 64 {
entry:
  %cur_obf.i = alloca i32, align 4
  %assign_obf_end.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %shost = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 4
  %0 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %instancet = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 9
  %4 = ptrtoint ptr %instancet to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %instancet, align 4
  %clear_intr = getelementptr inbounds %struct.mvumi_instance_template, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %clear_intr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clear_intr, align 4
  %call5 = tail call i32 %7(ptr noundef %devp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.if.then_crit_edge, !prof !397

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.rhs:                                          ; preds = %entry
  %global_isr = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 22
  %8 = ptrtoint ptr %global_isr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %global_isr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %lor.rhs.if.then_crit_edge, label %if.end, !prof !398

lor.rhs.if.then_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.rhs.if.then_crit_edge, %entry.if.then_crit_edge
  %10 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shost, align 4
  %host_lock11 = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %host_lock11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host_lock11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %call2) #12
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  %regs = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 50
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %int_dl_cpu2pciea = getelementptr inbounds %struct.mvumi_hw_regs, ptr %15, i32 0, i32 34
  %16 = ptrtoint ptr %int_dl_cpu2pciea to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %int_dl_cpu2pciea, align 4
  %and = and i32 %17, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end.if.end29_crit_edge, label %if.then14

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then14:                                        ; preds = %if.end
  %isr_status = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 23
  %18 = ptrtoint ptr %isr_status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %isr_status, align 4
  %and15 = and i32 %19, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then14.if.end19_crit_edge, label %while.body.lr.ph.i

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

while.body.lr.ph.i:                               ; preds = %if.then14
  %pnp_count.i = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 55
  %dm_thread.i = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 54
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %isr_status.addr.034.i = phi i32 [ %19, %while.body.lr.ph.i ], [ %isr_status.addr.0.be.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %and1.i = and i32 %isr_status.addr.034.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pnp_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %pnp_count.i, i32 1, i32 3, i32 1) #12
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pnp_count.i, ptr %pnp_count.i, i32 1, ptr elementtype(i32) %pnp_count.i) #12, !srcloc !399
  %21 = ptrtoint ptr %dm_thread.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dm_thread.i, align 4
  %call.i = tail call i32 @wake_up_process(ptr noundef %22) #12
  %and3.i = and i32 %isr_status.addr.034.i, -5
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %do.body.i, %if.end.i.while.cond.backedge.i_crit_edge, %if.then.i
  %isr_status.addr.0.be.i = phi i32 [ %and3.i, %if.then.i ], [ %and13.i, %do.body.i ], [ %isr_status.addr.034.i, %if.end.i.while.cond.backedge.i_crit_edge ]
  %and.i = and i32 %isr_status.addr.0.be.i, 12
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.cond.backedge.i.if.end19_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.cond.backedge.i.if.end19_crit_edge:         ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 2848, i32 noundef 56) #16
  %tobool5.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not.i, label %if.end.i.while.cond.backedge.i_crit_edge, label %do.body.i

if.end.i.while.cond.backedge.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__init_work(ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #12
  %24 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -64, ptr %call7.i.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.104, ptr noundef nonnull @mvumi_launch_events.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry10.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %entry10.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %entry10.i, ptr %entry10.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %entry10.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @mvumi_scan_events, ptr %func.i, align 4
  %mhba12.i = getelementptr inbounds %struct.mvumi_events_wq, ptr %call7.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %mhba12.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %devp, ptr %mhba12.i, align 4
  %event.i = getelementptr inbounds %struct.mvumi_events_wq, ptr %call7.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %event.i, align 8
  %and13.i = and i32 %isr_status.addr.034.i, -9
  %param.i = getelementptr inbounds %struct.mvumi_events_wq, ptr %call7.i.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %param.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %31 = load ptr, ptr @system_wq, align 4
  %call.i.i31.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %31, ptr noundef nonnull %call7.i.i.i) #12
  br label %while.cond.backedge.i

if.end19:                                         ; preds = %while.cond.backedge.i.if.end19_crit_edge, %if.then14.if.end19_crit_edge
  %32 = ptrtoint ptr %isr_status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %isr_status, align 4
  %and21 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.if.end29_crit_edge, label %do.end26

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 6
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.102) #15
  tail call fastcc void @mvumi_handshake(ptr noundef %devp)
  br label %if.end29

if.end29:                                         ; preds = %do.end26, %if.end19.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %36 = ptrtoint ptr %global_isr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %global_isr, align 4
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %int_comaout = getelementptr inbounds %struct.mvumi_hw_regs, ptr %39, i32 0, i32 32
  %40 = ptrtoint ptr %int_comaout to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %int_comaout, align 4
  %and32 = and i32 %41, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end29.if.end35_crit_edge, label %if.then34

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then34:                                        ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_obf.i) #12
  %42 = ptrtoint ptr %cur_obf.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %cur_obf.i, align 4, !annotation !400
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %assign_obf_end.i) #12
  %43 = ptrtoint ptr %assign_obf_end.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %assign_obf_end.i, align 4, !annotation !400
  %44 = ptrtoint ptr %instancet to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %instancet, align 4
  %check_ob_list.i = getelementptr inbounds %struct.mvumi_instance_template, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %check_ob_list.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %check_ob_list.i, align 4
  %call.i66 = call i32 %47(ptr noundef %devp, ptr noundef nonnull %cur_obf.i, ptr noundef nonnull %assign_obf_end.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool.not.i67 = icmp eq i32 %call.i66, 0
  br i1 %tobool.not.i67, label %if.end.i68, label %if.then34.mvumi_receive_ob_list_entry.exit_crit_edge

if.then34.mvumi_receive_ob_list_entry.exit_crit_edge: ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_receive_ob_list_entry.exit

if.end.i68:                                       ; preds = %if.then34
  %48 = ptrtoint ptr %assign_obf_end.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %assign_obf_end.i, align 4
  %50 = ptrtoint ptr %cur_obf.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cur_obf.i, align 4
  %sub.i = sub i32 %49, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.not98.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not98.i, label %if.end.i68.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i68.for.end.i_crit_edge:                   ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i68
  %list_num_io.i = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 28
  %cl_pointer_toggle.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %39, i32 0, i32 38
  %ob_cur_slot.i = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 41
  %ob_list.i = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 14
  %ob_max_size.i = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 30
  %size.i = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 48, i32 2
  %tag_cmd.i = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 49
  %ob_data_list.i = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 44
  %free_ob_list.i = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 45
  %prev.i.i69 = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 45, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.099.i = phi i32 [ %sub.i, %for.body.lr.ph.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %52 = ptrtoint ptr %cur_obf.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cur_obf.i, align 4
  %inc.i = add i32 %53, 1
  store i32 %inc.i, ptr %cur_obf.i, align 4
  %54 = ptrtoint ptr %list_num_io.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %list_num_io.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %55)
  %cmp2.not.i = icmp ult i32 %inc.i, %55
  br i1 %cmp2.not.i, label %for.body.i.if.end6.i_crit_edge, label %if.then3.i

for.body.i.if.end6.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then3.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub5.i = sub i32 %inc.i, %55
  %56 = ptrtoint ptr %cur_obf.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub5.i, ptr %cur_obf.i, align 4
  %57 = ptrtoint ptr %cl_pointer_toggle.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cl_pointer_toggle.i, align 4
  %59 = ptrtoint ptr %ob_cur_slot.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ob_cur_slot.i, align 4
  %xor.i = xor i32 %60, %58
  store i32 %xor.i, ptr %ob_cur_slot.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %for.body.i.if.end6.i_crit_edge
  %61 = ptrtoint ptr %ob_list.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ob_list.i, align 4
  %63 = ptrtoint ptr %cur_obf.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cur_obf.i, align 4
  %65 = ptrtoint ptr %ob_max_size.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ob_max_size.i, align 4
  %mul.i = mul i32 %66, %64
  %add.ptr.i = getelementptr i8, ptr %62, i32 %mul.i
  %tag.i = getelementptr inbounds %struct.mvumi_rsp_frame, ptr %add.ptr.i, i32 0, i32 1
  %67 = ptrtoint ptr %tag.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %tag.i, align 2
  %69 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %size.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %68, i16 %70)
  %cmp8.i = icmp ugt i16 %68, %70
  br i1 %cmp8.i, label %if.end6.i.if.then24.i_crit_edge, label %lor.lhs.false.i, !prof !398

if.end6.i.if.then24.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24.i

lor.lhs.false.i:                                  ; preds = %if.end6.i
  %conv.i = zext i16 %68 to i32
  %71 = ptrtoint ptr %tag_cmd.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tag_cmd.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %72, i32 %conv.i
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i, align 4
  %cmp11.i = icmp eq ptr %74, null
  br i1 %cmp11.i, label %lor.lhs.false.i.if.then24.i_crit_edge, label %lor.rhs.i, !prof !398

lor.lhs.false.i.if.then24.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %request_id.i = getelementptr inbounds %struct.mvumi_rsp_frame, ptr %add.ptr.i, i32 0, i32 4
  %75 = ptrtoint ptr %request_id.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %request_id.i, align 2
  %request_id18.i = getelementptr inbounds %struct.mvumi_cmd, ptr %74, i32 0, i32 6
  %77 = ptrtoint ptr %request_id18.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %request_id18.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %76, i16 %78)
  %cmp20.not.i = icmp eq i16 %76, %78
  br i1 %cmp20.not.i, label %lor.rhs.i.if.end29.i_crit_edge, label %lor.rhs.i.if.then24.i_crit_edge, !prof !397

lor.rhs.i.if.then24.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24.i

lor.rhs.i.if.end29.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.then24.i:                                      ; preds = %lor.rhs.i.if.then24.i_crit_edge, %lor.lhs.false.i.if.then24.i_crit_edge, %if.end6.i.if.then24.i_crit_edge
  %call25.i = call fastcc zeroext i8 @mvumi_check_ob_frame(ptr noundef %devp, i32 noundef %64) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call25.i)
  %tobool26.not.i = icmp eq i8 %call25.i, 0
  br i1 %tobool26.not.i, label %if.then24.i.if.end29.i_crit_edge, label %if.then24.i.for.inc.i_crit_edge

if.then24.i.for.inc.i_crit_edge:                  ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then24.i.if.end29.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then24.i.if.end29.i_crit_edge, %lor.rhs.i.if.end29.i_crit_edge
  %79 = ptrtoint ptr %ob_data_list.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %ob_data_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %80, %ob_data_list.i
  br i1 %cmp.i.not.i, label %if.else.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.end29.i
  %call.i.i.i70 = call zeroext i1 @__list_del_entry_valid(ptr noundef %80) #12
  br i1 %call.i.i.i70, label %if.end.i.i.i, label %if.then32.i.list_del_init.exit.i_crit_edge

if.then32.i.list_del_init.exit.i_crit_edge:       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i.i.i, align 4
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %80, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev1.i.i.i.i, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %84, ptr %82, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then32.i.list_del_init.exit.i_crit_edge
  %87 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %80, ptr %80, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %88 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %80, ptr %prev.i3.i.i, align 4
  %data.i = getelementptr inbounds %struct.mvumi_ob_data, ptr %80, i32 0, i32 1
  %89 = ptrtoint ptr %ob_max_size.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ob_max_size.i, align 4
  %91 = call ptr @memcpy(ptr %data.i, ptr %add.ptr.i, i32 %90)
  %92 = ptrtoint ptr %tag.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 255, ptr %tag.i, align 2
  %93 = ptrtoint ptr %prev.i.i69 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i.i69, align 4
  %call.i.i96.i = call zeroext i1 @__list_add_valid(ptr noundef %80, ptr noundef %94, ptr noundef %free_ob_list.i) #12
  br i1 %call.i.i96.i, label %if.end.i.i97.i, label %list_del_init.exit.i.for.inc.i_crit_edge

list_del_init.exit.i.for.inc.i_crit_edge:         ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i.i97.i:                                   ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %prev.i.i69 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %80, ptr %prev.i.i69, align 4
  %96 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %free_ob_list.i, ptr %80, align 4
  %97 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev.i3.i.i, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %80, ptr %94, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end29.i
  %99 = ptrtoint ptr %cur_obf.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cur_obf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp35.i = icmp eq i32 %100, 0
  br i1 %cmp35.i, label %if.then37.i, label %if.else43.i

if.then37.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %list_num_io.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %list_num_io.i, align 4
  %sub39.i = add i32 %102, -1
  %103 = ptrtoint ptr %cur_obf.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %sub39.i, ptr %cur_obf.i, align 4
  %104 = ptrtoint ptr %cl_pointer_toggle.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cl_pointer_toggle.i, align 4
  %106 = ptrtoint ptr %ob_cur_slot.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ob_cur_slot.i, align 4
  %xor42.i = xor i32 %107, %105
  store i32 %xor42.i, ptr %ob_cur_slot.i, align 4
  br label %for.end.i

if.else43.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub44.i = add i32 %100, -1
  %108 = ptrtoint ptr %cur_obf.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %sub44.i, ptr %cur_obf.i, align 4
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end.i.i97.i, %list_del_init.exit.i.for.inc.i_crit_edge, %if.then24.i.for.inc.i_crit_edge
  %dec.i = add i32 %i.099.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.else43.i, %if.then37.i, %if.end.i68.for.end.i_crit_edge
  %cl_slot_num_mask.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %39, i32 0, i32 39
  %109 = ptrtoint ptr %cl_slot_num_mask.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cl_slot_num_mask.i, align 4
  %neg.i = xor i32 %110, -1
  %ob_cur_slot50.i = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 41
  %111 = ptrtoint ptr %ob_cur_slot50.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ob_cur_slot50.i, align 4
  %and.i71 = and i32 %112, %neg.i
  store i32 %and.i71, ptr %ob_cur_slot50.i, align 4
  %113 = ptrtoint ptr %cur_obf.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cur_obf.i, align 4
  %115 = load i32, ptr %cl_slot_num_mask.i, align 4
  %and52.i = and i32 %115, %114
  %or.i = or i32 %and52.i, %and.i71
  store i32 %or.i, ptr %ob_cur_slot50.i, align 4
  %outb_read_pointer.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %39, i32 0, i32 27
  %116 = ptrtoint ptr %outb_read_pointer.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %outb_read_pointer.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  call void @arm_heavy_mb() #12
  %118 = call i32 @llvm.bswap.i32(i32 %or.i) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %118) #12, !srcloc !396
  br label %mvumi_receive_ob_list_entry.exit

mvumi_receive_ob_list_entry.exit:                 ; preds = %for.end.i, %if.then34.mvumi_receive_ob_list_entry.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %assign_obf_end.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_obf.i) #12
  br label %if.end35

if.end35:                                         ; preds = %mvumi_receive_ob_list_entry.exit, %if.end29.if.end35_crit_edge
  %119 = ptrtoint ptr %global_isr to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %global_isr, align 4
  %isr_status37 = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 23
  %120 = ptrtoint ptr %isr_status37 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %isr_status37, align 4
  %fw_state = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 42
  %121 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %122)
  %cmp38 = icmp eq i32 %122, 3
  br i1 %cmp38, label %if.then40, label %if.end35.if.end41_crit_edge

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then40:                                        ; preds = %if.end35
  %free_ob_list.i72 = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 45
  %123 = ptrtoint ptr %free_ob_list.i72 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile ptr, ptr %free_ob_list.i72, align 4
  %cmp.i.not40.i = icmp eq ptr %124, %free_ob_list.i72
  br i1 %cmp.i.not40.i, label %if.then40.mvumi_handle_clob.exit_crit_edge, label %while.body.lr.ph.i76

if.then40.mvumi_handle_clob.exit_crit_edge:       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_handle_clob.exit

while.body.lr.ph.i76:                             ; preds = %if.then40
  %ob_data_list.i73 = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 44
  %prev.i.i74 = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 44, i32 1
  %tag_cmd.i75 = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 49
  %fw_outstanding.i = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 8
  %top.i.i = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 48, i32 1
  %size.i.i = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 48, i32 2
  %tag_pool.i = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 48
  %pdev.i.i = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 6
  %cmd_pool.i.i.i = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 3
  %prev.i.i.i.i = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 3, i32 1
  %int_cmd_wait_q.i.i = getelementptr inbounds %struct.mvumi_hba, ptr %devp, i32 0, i32 5
  br label %while.body.i77

while.body.i77:                                   ; preds = %if.end.i89.while.body.i77_crit_edge, %while.body.lr.ph.i76
  %125 = phi ptr [ %124, %while.body.lr.ph.i76 ], [ %211, %if.end.i89.while.body.i77_crit_edge ]
  %call.i.i29.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %125) #12
  br i1 %call.i.i29.i, label %if.end.i.i.i80, label %while.body.i77.list_del_init.exit.i82_crit_edge

while.body.i77.list_del_init.exit.i82_crit_edge:  ; preds = %while.body.i77
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i82

if.end.i.i.i80:                                   ; preds = %while.body.i77
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i78 = getelementptr inbounds %struct.list_head, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %prev.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %prev.i.i.i78, align 4
  %128 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %125, align 4
  %prev1.i.i.i.i79 = getelementptr inbounds %struct.list_head, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %prev1.i.i.i.i79 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %127, ptr %prev1.i.i.i.i79, align 4
  %131 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %129, ptr %127, align 4
  br label %list_del_init.exit.i82

list_del_init.exit.i82:                           ; preds = %if.end.i.i.i80, %while.body.i77.list_del_init.exit.i82_crit_edge
  %132 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %125, ptr %125, align 4
  %prev.i3.i.i81 = getelementptr inbounds %struct.list_head, ptr %125, i32 0, i32 1
  %133 = ptrtoint ptr %prev.i3.i.i81 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %125, ptr %prev.i3.i.i81, align 4
  %134 = ptrtoint ptr %prev.i.i74 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %prev.i.i74, align 4
  %call.i.i30.i = call zeroext i1 @__list_add_valid(ptr noundef %125, ptr noundef %135, ptr noundef %ob_data_list.i73) #12
  br i1 %call.i.i30.i, label %if.end.i.i31.i, label %list_del_init.exit.i82.list_add_tail.exit.i_crit_edge

list_del_init.exit.i82.list_add_tail.exit.i_crit_edge: ; preds = %list_del_init.exit.i82
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i31.i:                                   ; preds = %list_del_init.exit.i82
  call void @__sanitizer_cov_trace_pc() #14
  %136 = ptrtoint ptr %prev.i.i74 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %125, ptr %prev.i.i74, align 4
  %137 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %ob_data_list.i73, ptr %125, align 4
  %138 = ptrtoint ptr %prev.i3.i.i81 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %135, ptr %prev.i3.i.i81, align 4
  %139 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %125, ptr %135, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i31.i, %list_del_init.exit.i82.list_add_tail.exit.i_crit_edge
  %data.i83 = getelementptr inbounds %struct.mvumi_ob_data, ptr %125, i32 0, i32 1
  %140 = ptrtoint ptr %tag_cmd.i75 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %tag_cmd.i75, align 4
  %tag.i84 = getelementptr inbounds %struct.mvumi_rsp_frame, ptr %data.i83, i32 0, i32 1
  %142 = ptrtoint ptr %tag.i84 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %tag.i84, align 2
  %idxprom.i = zext i16 %143 to i32
  %arrayidx3.i = getelementptr ptr, ptr %141, i32 %idxprom.i
  %144 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx3.i, align 4
  %call.i.i.i85 = call zeroext i1 @__kasan_check_write(ptr noundef %fw_outstanding.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %fw_outstanding.i, i32 1, i32 3, i32 1) #12
  %146 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fw_outstanding.i, ptr %fw_outstanding.i, i32 1, ptr elementtype(i32) %fw_outstanding.i) #12, !srcloc !401
  %147 = ptrtoint ptr %tag_cmd.i75 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %tag_cmd.i75, align 4
  %149 = ptrtoint ptr %tag.i84 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %tag.i84, align 2
  %idxprom6.i = zext i16 %150 to i32
  %arrayidx7.i = getelementptr ptr, ptr %148, i32 %idxprom6.i
  %151 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr null, ptr %arrayidx7.i, align 4
  %152 = ptrtoint ptr %top.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %top.i.i, align 4
  %154 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %size.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %153, i16 %155)
  %cmp.not.i.i = icmp ult i16 %153, %155
  br i1 %cmp.not.i.i, label %tag_release_one.exit.i, label %do.body4.i.i, !prof !397

do.body4.i.i:                                     ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/mvumi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #12, !srcloc !402
  unreachable

tag_release_one.exit.i:                           ; preds = %list_add_tail.exit.i
  %156 = ptrtoint ptr %tag.i84 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %tag.i84, align 2
  %conv.i32.i = zext i16 %153 to i32
  %158 = ptrtoint ptr %tag_pool.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %tag_pool.i, align 4
  %inc.i.i = add nuw i16 %153, 1
  %160 = ptrtoint ptr %top.i.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %inc.i.i, ptr %top.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %159, i32 %conv.i32.i
  %161 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %157, ptr %arrayidx.i.i, align 2
  %scmd.i = getelementptr inbounds %struct.mvumi_cmd, ptr %145, i32 0, i32 3
  %162 = ptrtoint ptr %scmd.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %scmd.i, align 4
  %tobool9.not.i = icmp eq ptr %163, null
  br i1 %tobool9.not.i, label %if.else.i87, label %if.then.i86

if.then.i86:                                      ; preds = %tag_release_one.exit.i
  %SCp.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %163, i32 0, i32 22
  %164 = ptrtoint ptr %SCp.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr null, ptr %SCp.i.i, align 4
  %req_status.i.i = getelementptr inbounds %struct.mvumi_ob_data, ptr %125, i32 1, i32 0, i32 1
  %165 = ptrtoint ptr %req_status.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %req_status.i.i, align 4
  %conv.i33.i = zext i8 %166 to i32
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %163, i32 0, i32 24
  %167 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %conv.i33.i, ptr %result.i.i, align 4
  %168 = load i8, ptr %req_status.i.i, align 4
  %169 = zext i8 %168 to i64
  call void @__sanitizer_cov_trace_switch(i64 %169, ptr @__sancov_gen_cov_switch_values.188)
  switch i8 %168, label %sw.default.i.i [
    i8 0, label %if.then.i86.sw.epilog.i.i_crit_edge
    i8 8, label %sw.bb6.i.i
    i8 2, label %sw.bb9.i.i
  ]

if.then.i86.sw.epilog.i.i_crit_edge:              ; preds = %if.then.i86
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb6.i.i:                                       ; preds = %if.then.i86
  call void @__sanitizer_cov_trace_pc() #14
  %or8.i.i = or i32 %conv.i33.i, 131072
  %170 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %or8.i.i, ptr %result.i.i, align 4
  br label %sw.epilog.i.i

sw.bb9.i.i:                                       ; preds = %if.then.i86
  %rsp_flag.i.i = getelementptr inbounds %struct.mvumi_rsp_frame, ptr %data.i83, i32 0, i32 3
  %171 = ptrtoint ptr %rsp_flag.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %rsp_flag.i.i, align 1
  %173 = and i8 %172, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool.not.i.i = icmp eq i8 %173, 0
  br i1 %tobool.not.i.i, label %sw.bb9.i.i.sw.epilog.i.i_crit_edge, label %if.then.i.i

sw.bb9.i.i.sw.epilog.i.i_crit_edge:               ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

if.then.i.i:                                      ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %174 = ptrtoint ptr %scmd.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %scmd.i, align 4
  %sense_buffer.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %175, i32 0, i32 21
  %176 = ptrtoint ptr %sense_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %sense_buffer.i.i, align 4
  %payload.i.i = getelementptr inbounds %struct.mvumi_ob_data, ptr %125, i32 2
  %178 = call ptr @memcpy(ptr %177, ptr %payload.i.i, i32 18)
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %if.then.i86
  call void @__sanitizer_cov_trace_pc() #14
  %or15.i.i = or i32 %conv.i33.i, 327680
  %179 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %or15.i.i, ptr %result.i.i, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.default.i.i, %if.then.i.i, %sw.bb9.i.i.sw.epilog.i.i_crit_edge, %sw.bb6.i.i, %if.then.i86.sw.epilog.i.i_crit_edge
  %length.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %163, i32 0, i32 17, i32 1
  %180 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %length.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool16.not.i.i = icmp eq i32 %181, 0
  br i1 %tobool16.not.i.i, label %sw.epilog.i.i.if.end20.i.i_crit_edge, label %if.then17.i.i

sw.epilog.i.i.if.end20.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i.i

if.then17.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %182 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %183, i32 0, i32 44
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %163, i32 0, i32 17
  %184 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %sdb.i.i.i, align 4
  %nents.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %163, i32 0, i32 17, i32 0, i32 1
  %186 = ptrtoint ptr %nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %nents.i.i.i, align 4
  %sc_data_direction.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %163, i32 0, i32 15
  %188 = ptrtoint ptr %sc_data_direction.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %sc_data_direction.i.i, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %dev.i.i, ptr noundef %185, i32 noundef %187, i32 noundef %189, i32 noundef 0) #12
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then17.i.i, %sw.epilog.i.i.if.end20.i.i_crit_edge
  call void @scsi_done(ptr noundef nonnull %163) #12
  %190 = ptrtoint ptr %scmd.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr null, ptr %scmd.i, align 4
  %191 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %145, ptr noundef %192, ptr noundef %cmd_pool.i.i.i) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end20.i.i.if.end.i89_crit_edge

if.end20.i.i.if.end.i89_crit_edge:                ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i89

if.end.i.i.i.i.i:                                 ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %193 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %145, ptr %prev.i.i.i.i, align 4
  %194 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %cmd_pool.i.i.i, ptr %145, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %145, i32 0, i32 1
  %195 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %192, ptr %prev3.i.i.i.i.i, align 4
  %196 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %196)
  store volatile ptr %145, ptr %192, align 4
  br label %if.end.i89

if.else.i87:                                      ; preds = %tag_release_one.exit.i
  %sync_cmd.i.i = getelementptr inbounds %struct.mvumi_cmd, ptr %145, i32 0, i32 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sync_cmd.i.i, i32 noundef 4) #12
  %197 = ptrtoint ptr %sync_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %sync_cmd.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool.not.i34.i = icmp eq i32 %198, 0
  br i1 %tobool.not.i34.i, label %if.else.i87.if.end.i89_crit_edge, label %if.then.i37.i

if.else.i87.if.end.i89_crit_edge:                 ; preds = %if.else.i87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i89

if.then.i37.i:                                    ; preds = %if.else.i87
  %req_status.i35.i = getelementptr inbounds %struct.mvumi_ob_data, ptr %125, i32 1, i32 0, i32 1
  %199 = ptrtoint ptr %req_status.i35.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %req_status.i35.i, align 4
  %cmd_status.i.i = getelementptr inbounds %struct.mvumi_cmd, ptr %145, i32 0, i32 7
  %201 = ptrtoint ptr %cmd_status.i.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %200, ptr %cmd_status.i.i, align 2
  %202 = load i8, ptr %req_status.i35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %202)
  %cmp.i36.i = icmp eq i8 %202, 2
  br i1 %cmp.i36.i, label %land.lhs.true.i.i, label %if.then.i37.i.if.end.i.i_crit_edge

if.then.i37.i.if.end.i.i_crit_edge:               ; preds = %if.then.i37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i37.i
  %rsp_flag.i38.i = getelementptr inbounds %struct.mvumi_rsp_frame, ptr %data.i83, i32 0, i32 3
  %203 = ptrtoint ptr %rsp_flag.i38.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %rsp_flag.i38.i, align 1
  %205 = and i8 %204, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool4.not.i.i = icmp eq i8 %205, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %data_buf.i.i = getelementptr inbounds %struct.mvumi_cmd, ptr %145, i32 0, i32 5
  %206 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %data_buf.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %207, null
  br i1 %tobool6.not.i.i, label %land.lhs.true5.i.i.if.end.i.i_crit_edge, label %if.then7.i.i

land.lhs.true5.i.i.if.end.i.i_crit_edge:          ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %payload.i39.i = getelementptr inbounds %struct.mvumi_ob_data, ptr %125, i32 2
  %208 = call ptr @memcpy(ptr %207, ptr %payload.i39.i, i32 18)
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then7.i.i, %land.lhs.true5.i.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i37.i.if.end.i.i_crit_edge
  %call.i.i18.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sync_cmd.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %sync_cmd.i.i, i32 1, i32 3, i32 1) #12
  %209 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sync_cmd.i.i, ptr %sync_cmd.i.i, i32 1, ptr elementtype(i32) %sync_cmd.i.i) #12, !srcloc !401
  call void @__wake_up(ptr noundef %int_cmd_wait_q.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %if.end.i89

if.end.i89:                                       ; preds = %if.end.i.i, %if.else.i87.if.end.i89_crit_edge, %if.end.i.i.i.i.i, %if.end20.i.i.if.end.i89_crit_edge
  %210 = ptrtoint ptr %free_ob_list.i72 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load volatile ptr, ptr %free_ob_list.i72, align 4
  %cmp.i.not.i88 = icmp eq ptr %211, %free_ob_list.i72
  br i1 %cmp.i.not.i88, label %if.end.i89.mvumi_handle_clob.exit_crit_edge, label %if.end.i89.while.body.i77_crit_edge

if.end.i89.while.body.i77_crit_edge:              ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i77

if.end.i89.mvumi_handle_clob.exit_crit_edge:      ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_handle_clob.exit

mvumi_handle_clob.exit:                           ; preds = %if.end.i89.mvumi_handle_clob.exit_crit_edge, %if.then40.mvumi_handle_clob.exit_crit_edge
  %212 = ptrtoint ptr %instancet to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %instancet, align 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %213, align 4
  call void %215(ptr noundef %devp, ptr noundef null) #12
  br label %if.end41

if.end41:                                         ; preds = %mvumi_handle_clob.exit, %if.end35.if.end41_crit_edge
  %216 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %shost, align 4
  %host_lock43 = getelementptr inbounds %struct.Scsi_Host, ptr %217, i32 0, i32 4
  %218 = ptrtoint ptr %host_lock43 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %host_lock43, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %219, i32 noundef %call2) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvumi_backup_bar_addr(ptr noundef %mhba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %arrayidx = getelementptr %struct.mvumi_hba, ptr %mhba, i32 0, i32 1, i32 0
  %call = tail call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 16, ptr noundef %arrayidx) #12
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %arrayidx.1 = getelementptr %struct.mvumi_hba, ptr %mhba, i32 0, i32 1, i32 1
  %call.1 = tail call i32 @pci_read_config_dword(ptr noundef %3, i32 noundef 20, ptr noundef %arrayidx.1) #12
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %arrayidx.2 = getelementptr %struct.mvumi_hba, ptr %mhba, i32 0, i32 1, i32 2
  %call.2 = tail call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 24, ptr noundef %arrayidx.2) #12
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %arrayidx.3 = getelementptr %struct.mvumi_hba, ptr %mhba, i32 0, i32 1, i32 3
  %call.3 = tail call i32 @pci_read_config_dword(ptr noundef %7, i32 noundef 28, ptr noundef %arrayidx.3) #12
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %arrayidx.4 = getelementptr %struct.mvumi_hba, ptr %mhba, i32 0, i32 1, i32 4
  %call.4 = tail call i32 @pci_read_config_dword(ptr noundef %9, i32 noundef 32, ptr noundef %arrayidx.4) #12
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %arrayidx.5 = getelementptr %struct.mvumi_hba, ptr %mhba, i32 0, i32 1, i32 5
  %call.5 = tail call i32 @pci_read_config_dword(ptr noundef %11, i32 noundef 36, ptr noundef %arrayidx.5) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvumi_release_fw(ptr noundef %mhba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_pool.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 3
  %0 = ptrtoint ptr %cmd_pool.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cmd_pool.i, align 4
  %cmp.i.not7.i = icmp eq ptr %1, %cmd_pool.i
  br i1 %cmp.i.not7.i, label %entry.mvumi_free_cmds.exit_crit_edge, label %while.body.lr.ph.i

entry.mvumi_free_cmds.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_free_cmds.exit

while.body.lr.ph.i:                               ; preds = %entry
  %hba_capability.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 38
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %2 = phi ptr [ %1, %while.body.lr.ph.i ], [ %17, %if.end.i.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %hba_capability.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hba_capability.i, align 4
  %13 = and i16 %12, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool2.not.i = icmp eq i16 %13, 0
  br i1 %tobool2.not.i, label %if.then.i, label %list_del.exit.i.if.end.i_crit_edge

list_del.exit.i.if.end.i_crit_edge:               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %frame.i = getelementptr inbounds %struct.mvumi_cmd, ptr %2, i32 0, i32 1
  %14 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %frame.i, align 4
  tail call void @kfree(ptr noundef %15) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %list_del.exit.i.if.end.i_crit_edge
  tail call void @kfree(ptr noundef %2) #12
  %16 = ptrtoint ptr %cmd_pool.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %cmd_pool.i, align 4
  %cmp.i.not.i = icmp eq ptr %17, %cmd_pool.i
  br i1 %cmp.i.not.i, label %if.end.i.mvumi_free_cmds.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end.i.mvumi_free_cmds.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_free_cmds.exit

mvumi_free_cmds.exit:                             ; preds = %if.end.i.mvumi_free_cmds.exit_crit_edge, %entry.mvumi_free_cmds.exit_crit_edge
  tail call fastcc void @mvumi_release_mem_resource(ptr noundef %mhba)
  %pdev = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 4
  tail call fastcc void @mvumi_unmap_pci_addr(ptr noundef %19, ptr noundef %mhba)
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %handshake_page = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 20
  %22 = ptrtoint ptr %handshake_page to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %handshake_page, align 4
  %handshake_page_phys = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 21
  %24 = ptrtoint ptr %handshake_page_phys to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %handshake_page_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 48, ptr noundef %23, i32 noundef %25, i32 noundef 0) #12
  %regs = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 50
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  tail call void @kfree(ptr noundef %27) #12
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 4
  tail call void @pci_release_regions(ptr noundef %29) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvumi_queue_command(ptr noundef %shost, ptr noundef %scmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #12
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %result, align 4
  %cmd_pool.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 3, i32 0, i32 0, i32 4, i32 2
  %3 = ptrtoint ptr %cmd_pool.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %cmd_pool.i, align 4
  %cmp.i.not.i = icmp eq ptr %4, %cmd_pool.i
  br i1 %cmp.i.not.i, label %mvumi_get_cmd.exit.thread, label %if.then.i, !prof !398

if.then.i:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.mvumi_get_cmd.exit_crit_edge

if.then.i.mvumi_get_cmd.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_get_cmd.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %mvumi_get_cmd.exit

mvumi_get_cmd.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 1, i32 4, i32 7
  %11 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.17) #15
  br label %cleanup

mvumi_get_cmd.exit:                               ; preds = %if.end.i.i.i, %if.then.i.mvumi_get_cmd.exit_crit_edge
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %4, ptr %4, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %4, ptr %prev.i3.i.i, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %mvumi_get_cmd.exit.cleanup_crit_edge, label %if.end, !prof !398

mvumi_get_cmd.exit.cleanup_crit_edge:             ; preds = %mvumi_get_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %mvumi_get_cmd.exit
  %scmd1.i = getelementptr inbounds %struct.mvumi_cmd, ptr %4, i32 0, i32 3
  %15 = ptrtoint ptr %scmd1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %scmd, ptr %scmd1.i, align 4
  %cmd_status.i = getelementptr inbounds %struct.mvumi_cmd, ptr %4, i32 0, i32 7
  %16 = ptrtoint ptr %cmd_status.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -128, ptr %cmd_status.i, align 2
  %frame.i = getelementptr inbounds %struct.mvumi_cmd, ptr %4, i32 0, i32 1
  %17 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %frame.i, align 4
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 1
  %19 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device.i, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id.i, align 8
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %20, i32 0, i32 18
  %23 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %lun.i, align 8
  %conv4.i = trunc i64 %24 to i32
  %conv5.i = shl i32 %conv4.i, 8
  %or.i = or i32 %conv5.i, %22
  %conv6.i = trunc i32 %or.i to i16
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv6.i, ptr %18, align 4
  %cmd_flag.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %18, i32 0, i32 2
  %26 = ptrtoint ptr %cmd_flag.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %cmd_flag.i, align 4
  %sc_data_direction.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 15
  %27 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sc_data_direction.i, align 4
  %switch.tableidx = add i32 %28, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %29 = icmp ult i32 %switch.tableidx, 3
  br i1 %29, label %switch.lookup, label %do.end.i46

do.end.i46:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i44 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 1, i32 4, i32 7
  %30 = ptrtoint ptr %pdev.i44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i44, align 4
  %dev.i45 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 16
  %32 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cmnd.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  %conv23.i = zext i8 %35 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i45, ptr noundef nonnull @.str.20, i32 noundef %28, i32 noundef %conv23.i) #15
  br label %out_return_cmd

switch.lookup:                                    ; preds = %if.end
  %switch.cast = trunc i32 %switch.tableidx to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 67600, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %36 = ptrtoint ptr %cmd_flag.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %switch.masked, ptr %cmd_flag.i, align 4
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 14
  %37 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %cmd_len.i, align 4
  %conv24.i = trunc i16 %38 to i8
  %cdb_length.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %18, i32 0, i32 4
  %39 = ptrtoint ptr %cdb_length.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv24.i, ptr %cdb_length.i, align 2
  %cdb.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %18, i32 0, i32 9
  %cmnd25.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 16
  %40 = ptrtoint ptr %cmnd25.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cmnd25.i, align 4
  %conv24.mask.i = and i16 %38, 255
  %conv27.i = zext i16 %conv24.mask.i to i32
  %42 = call ptr @memcpy(ptr %cdb.i, ptr %41, i32 %conv27.i)
  %req_function.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %18, i32 0, i32 3
  %43 = ptrtoint ptr %req_function.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %req_function.i, align 1
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17, i32 1
  %44 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i47

if.then.i47:                                      ; preds = %switch.lookup
  %payload.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %18, i32 0, i32 10
  %sg_counts.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %18, i32 0, i32 5
  %nents.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17, i32 0, i32 1
  %46 = ptrtoint ptr %nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nents.i.i.i, align 4
  %pdev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 1, i32 4, i32 7
  %48 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17
  %50 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sdb.i.i.i, align 4
  %52 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sc_data_direction.i, align 4
  %call2.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %dev.i.i, ptr noundef %51, i32 noundef %47, i32 noundef %53, i32 noundef 0) #12
  %conv.i.i = trunc i32 %call2.i.i to i8
  %54 = ptrtoint ptr %sg_counts.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv.i.i, ptr %sg_counts.i, align 1
  %conv3.i.i = and i32 %call2.i.i, 255
  %max_sge.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 10
  %55 = ptrtoint ptr %max_sge.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %max_sge.i.i, align 4
  %conv4.i.i = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i.i, i32 %conv4.i.i)
  %cmp.i.i = icmp ugt i32 %conv3.i.i, %conv4.i.i
  br i1 %cmp.i.i, label %mvumi_make_sgl.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i)
  %cmp1792.not.i.i = icmp eq i8 %conv.i.i, 0
  br i1 %cmp1792.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %57 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sdb.i.i.i, align 4
  %hba_capability.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 7
  %eot_flag.i.i = getelementptr inbounds %struct.mvumi_hba, ptr %hostdata, i32 0, i32 37
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.body42.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.096.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add.i.i, %do.body42.i.i.for.body.i.i_crit_edge ]
  %m_sg.095.i.i = phi ptr [ %payload.i, %for.body.lr.ph.i.i ], [ %m_sg.1.i.i, %do.body42.i.i.for.body.i.i_crit_edge ]
  %sg.093.i.i = phi ptr [ %58, %for.body.lr.ph.i.i ], [ %call53.i.i, %do.body42.i.i.for.body.i.i_crit_edge ]
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.093.i.i, i32 0, i32 3
  %59 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dma_address.i.i, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #12
  %62 = ptrtoint ptr %m_sg.095.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %m_sg.095.i.i, align 4
  %baseaddr_h.i.i = getelementptr inbounds %struct.mvumi_sgl, ptr %m_sg.095.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %baseaddr_h.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %baseaddr_h.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.mvumi_sgl, ptr %m_sg.095.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %flags.i.i, align 4
  %65 = ptrtoint ptr %hba_capability.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %hba_capability.i.i, align 4
  %67 = and i16 %66, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool.not.i.i = icmp eq i16 %67, 0
  %dma_length30.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.093.i.i, i32 0, i32 4
  %68 = ptrtoint ptr %dma_length30.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dma_length30.i.i, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #12
  %size.i.i = getelementptr inbounds %struct.mvumi_sgl, ptr %m_sg.095.i.i, i32 0, i32 3
  %size.i.sink.i = select i1 %tobool.not.i.i, ptr %size.i.i, ptr %flags.i.i
  %71 = ptrtoint ptr %size.i.sink.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %size.i.sink.i, align 4
  %add.i.i = add nuw nsw i32 %i.096.i.i, 1
  %72 = ptrtoint ptr %sg_counts.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %sg_counts.i, align 1
  %conv34.i.i = zext i8 %73 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv34.i.i)
  %cmp35.i.i = icmp eq i32 %add.i.i, %conv34.i.i
  br i1 %cmp35.i.i, label %if.then37.i.i, label %for.body.i.i.do.body42.i.i_crit_edge

for.body.i.i.do.body42.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body42.i.i

if.then37.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %eot_flag.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %eot_flag.i.i, align 1
  %conv38.i.i = zext i8 %75 to i32
  %shl.i.i = shl nuw i32 1, %conv38.i.i
  %76 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags.i.i, align 4
  %or40.i.i = or i32 %shl.i.i, %77
  store i32 %or40.i.i, ptr %flags.i.i, align 4
  br label %do.body42.i.i

do.body42.i.i:                                    ; preds = %if.then37.i.i, %for.body.i.i.do.body42.i.i_crit_edge
  %78 = ptrtoint ptr %hba_capability.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %hba_capability.i.i, align 4
  %80 = and i16 %79, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool46.not.i.i = icmp eq i16 %80, 0
  %m_sg.1.v.i.i = select i1 %tobool46.not.i.i, i32 16, i32 12
  %m_sg.1.i.i = getelementptr i8, ptr %m_sg.095.i.i, i32 %m_sg.1.v.i.i
  %call53.i.i = tail call ptr @sg_next(ptr noundef %sg.093.i.i) #12
  %81 = ptrtoint ptr %sg_counts.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %sg_counts.i, align 1
  %conv16.i.i = zext i8 %82 to i32
  %cmp17.i.i = icmp ult i32 %add.i.i, %conv16.i.i
  br i1 %cmp17.i.i, label %do.body42.i.i.for.body.i.i_crit_edge, label %do.body42.i.i.if.end.i_crit_edge

do.body42.i.i.if.end.i_crit_edge:                 ; preds = %do.body42.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.body42.i.i.for.body.i.i_crit_edge:             ; preds = %do.body42.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

mvumi_make_sgl.exit.i:                            ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pdev.i.i, align 4
  %dev7.i.i = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i.i, ptr noundef nonnull @.str.22, i32 noundef %conv3.i.i, i32 noundef %conv4.i.i) #15
  %85 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pdev.i.i, align 4
  %dev12.i.i = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  %87 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sdb.i.i.i, align 4
  %89 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sc_data_direction.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev12.i.i, ptr noundef %88, i32 noundef %47, i32 noundef %90, i32 noundef 0) #12
  br label %out_return_cmd

if.end.i:                                         ; preds = %do.body42.i.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  %91 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %length.i.i, align 4
  br label %if.end19

if.else.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  %sg_counts33.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %18, i32 0, i32 5
  %93 = ptrtoint ptr %sg_counts33.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %sg_counts33.i, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.else.i, %if.end.i
  %.sink = phi i32 [ 0, %if.else.i ], [ %92, %if.end.i ]
  %data_transfer_length34.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %18, i32 0, i32 6
  %94 = ptrtoint ptr %data_transfer_length34.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %.sink, ptr %data_transfer_length34.i, align 4
  %95 = ptrtoint ptr %scmd1.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %scmd, ptr %scmd1.i, align 4
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 22
  %96 = ptrtoint ptr %SCp to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %4, ptr %SCp, align 4
  %instancet = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 3, i32 1
  %97 = ptrtoint ptr %instancet to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %instancet, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  tail call void %100(ptr noundef %hostdata, ptr noundef nonnull %4) #12
  br label %cleanup

out_return_cmd:                                   ; preds = %mvumi_make_sgl.exit.i, %do.end.i46
  tail call void @scsi_build_sense(ptr noundef %scmd, i32 noundef 0, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #12
  %101 = ptrtoint ptr %scmd1.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %scmd1.i, align 4
  %prev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 3, i32 0, i32 0, i32 4, i32 3
  %102 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i49 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %4, ptr noundef %103, ptr noundef %cmd_pool.i) #12
  br i1 %call.i.i.i49, label %if.end.i.i.i50, label %out_return_cmd.mvumi_return_cmd.exit_crit_edge

out_return_cmd.mvumi_return_cmd.exit_crit_edge:   ; preds = %out_return_cmd
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_return_cmd.exit

if.end.i.i.i50:                                   ; preds = %out_return_cmd
  call void @__sanitizer_cov_trace_pc() #14
  %104 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %4, ptr %prev.i.i, align 4
  %105 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %cmd_pool.i, ptr %4, align 4
  %106 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %103, ptr %prev.i3.i.i, align 4
  %107 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %4, ptr %103, align 4
  br label %mvumi_return_cmd.exit

mvumi_return_cmd.exit:                            ; preds = %if.end.i.i.i50, %out_return_cmd.mvumi_return_cmd.exit_crit_edge
  tail call void @scsi_done(ptr noundef %scmd) #12
  br label %cleanup

cleanup:                                          ; preds = %mvumi_return_cmd.exit, %if.end19, %mvumi_get_cmd.exit.cleanup_crit_edge, %mvumi_get_cmd.exit.thread
  %retval.0 = phi i32 [ 0, %mvumi_return_cmd.exit ], [ 0, %if.end19 ], [ 4181, %mvumi_get_cmd.exit.thread ], [ 4181, %mvumi_get_cmd.exit.cleanup_crit_edge ]
  %108 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %109, i32 noundef %call2) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvumi_host_reset(ptr noundef %scmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %tag = getelementptr i8, ptr %scmd, i32 -172
  %4 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tag, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 16
  %6 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmnd, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv = zext i8 %9 to i32
  %retries = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 8
  %10 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %retries, align 4
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.24, ptr noundef %scmd, ptr noundef nonnull @.str.25, i32 noundef %5, i32 noundef %conv, i32 noundef %11) #12
  %instancet = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 3, i32 1
  %12 = ptrtoint ptr %instancet to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %instancet, align 4
  %reset_host = getelementptr inbounds %struct.mvumi_instance_template, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %reset_host to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reset_host, align 4
  %call1 = tail call i32 %15(ptr noundef %hostdata) #12
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mvumi_slave_configure(ptr nocapture noundef readonly %sdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %id = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %max_target_id = getelementptr inbounds %struct.mvumi_hba, ptr %hostdata, i32 0, i32 25
  %4 = ptrtoint ptr %max_target_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %max_target_id, align 2
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp ult i32 %3, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rem = and i32 %3, 7
  %shl = shl nuw nsw i32 1, %rem
  %target_map = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 10, i32 0, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %target_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %target_map, align 4
  %div14 = lshr i32 %3, 3
  %arrayidx = getelementptr i8, ptr %7, i32 %div14
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = trunc i32 %shl to i8
  %conv7 = or i8 %9, %10
  store i8 %conv7, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @mvumi_bios_param(ptr nocapture noundef readnone %sdev, ptr nocapture noundef readnone %bdev, i64 noundef %capacity, ptr nocapture noundef writeonly %geom) #6 align 64 {
if.end180:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i64 %capacity, 11
  %extract.t580 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 2097151, i64 %capacity)
  %cmp182 = icmp ugt i64 %capacity, 2097151
  br i1 %cmp182, label %if.end376, label %if.end180.if.end407_crit_edge

if.end180.if.end407_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end407

if.end376:                                        ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9040225091336153120, i64 %capacity, i32 0) #18, !srcloc !403
  %asmresult.i586 = extractvalue { i64, i32 } %0, 0
  %asmresult4.i587 = extractvalue { i64, i32 } %0, 1
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9040225091336153120, i64 %capacity, i64 %asmresult.i586, i32 %asmresult4.i587) #18, !srcloc !404
  %asmresult10.i588 = extractvalue { i64, i32 } %1, 0
  %extract584 = lshr i64 %asmresult10.i588, 13
  %extract.t585 = trunc i64 %extract584 to i32
  br label %if.end407

if.end407:                                        ; preds = %if.end376, %if.end180.if.end407_crit_edge
  %cylinders.2.off0 = phi i32 [ %extract.t580, %if.end180.if.end407_crit_edge ], [ %extract.t585, %if.end376 ]
  %sectors.0 = phi i32 [ 32, %if.end180.if.end407_crit_edge ], [ 63, %if.end376 ]
  %heads.0 = phi i32 [ 64, %if.end180.if.end407_crit_edge ], [ 255, %if.end376 ]
  %2 = ptrtoint ptr %geom to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %heads.0, ptr %geom, align 4
  %arrayidx408 = getelementptr i32, ptr %geom, i32 1
  %3 = ptrtoint ptr %arrayidx408 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sectors.0, ptr %arrayidx408, align 4
  %arrayidx410 = getelementptr i32, ptr %geom, i32 2
  %4 = ptrtoint ptr %arrayidx410 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cylinders.2.off0, ptr %arrayidx410, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvumi_timed_out(ptr nocapture noundef %scmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 22
  %0 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %SCp, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %shost = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shost, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #12
  %tag_cmd = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 13, i32 13, i32 1, i32 4, i32 7
  %10 = ptrtoint ptr %tag_cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tag_cmd, align 4
  %frame = getelementptr inbounds %struct.mvumi_cmd, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %frame, align 4
  %tag = getelementptr inbounds %struct.mvumi_msg_frame, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %tag to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %tag, align 2
  %idxprom = zext i16 %15 to i32
  %arrayidx = getelementptr ptr, ptr %11, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx, align 4
  %tag_pool = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 13, i32 13, i32 1, i32 4, i32 3
  %top.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 13, i32 13, i32 1, i32 4, i32 6
  %19 = ptrtoint ptr %top.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %top.i, align 4
  %size.i = getelementptr inbounds %struct.mvumi_tag, ptr %tag_pool, i32 0, i32 2
  %21 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %size.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %22)
  %cmp.not.i = icmp ult i16 %20, %22
  br i1 %cmp.not.i, label %tag_release_one.exit, label %do.body4.i, !prof !397

do.body4.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/mvumi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #12, !srcloc !402
  unreachable

tag_release_one.exit:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %frame, align 4
  %tag13 = getelementptr inbounds %struct.mvumi_msg_frame, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %tag13 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %tag13, align 2
  %conv.i = zext i16 %20 to i32
  %27 = ptrtoint ptr %tag_pool to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tag_pool, align 4
  %inc.i = add nuw i16 %20, 1
  %29 = ptrtoint ptr %top.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %inc.i, ptr %top.i, align 4
  %arrayidx.i = getelementptr i16, ptr %28, i32 %conv.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %26, ptr %arrayidx.i, align 2
  br label %if.end

if.end:                                           ; preds = %tag_release_one.exit, %entry.if.end_crit_edge
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %1, align 4
  %cmp.i.not = icmp eq ptr %32, %1
  br i1 %cmp.i.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end
  %call.i.i50 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #12
  br i1 %call.i.i50, label %if.end.i.i, label %if.then16.list_del_init.exit_crit_edge

if.then16.list_del_init.exit_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then16.list_del_init.exit_crit_edge
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %1, ptr %prev.i3.i, align 4
  br label %if.end18

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %fw_outstanding = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 5, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fw_outstanding, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %fw_outstanding, i32 1, i32 3, i32 1) #12
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fw_outstanding, ptr %fw_outstanding, i32 1, ptr elementtype(i32) %fw_outstanding) #12, !srcloc !401
  br label %if.end18

if.end18:                                         ; preds = %if.else, %list_del_init.exit
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %42 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 327680, ptr %result, align 4
  %43 = ptrtoint ptr %SCp to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %SCp, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17, i32 1
  %44 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool22.not = icmp eq i32 %45, 0
  br i1 %tobool22.not, label %if.end18.if.end26_crit_edge, label %if.then23

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 5, i32 1, i32 4, i32 7
  %46 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17
  %48 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sdb.i, align 4
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17, i32 0, i32 1
  %50 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nents.i, align 4
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 15
  %52 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sc_data_direction, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef 0) #12
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end18.if.end26_crit_edge
  %scmd.i = getelementptr inbounds %struct.mvumi_cmd, ptr %1, i32 0, i32 3
  %54 = ptrtoint ptr %scmd.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %scmd.i, align 4
  %cmd_pool.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 4, i32 2
  %prev.i.i51 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 4, i32 3
  %55 = ptrtoint ptr %prev.i.i51 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i.i51, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %56, ptr noundef %cmd_pool.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end26.mvumi_return_cmd.exit_crit_edge

if.end26.mvumi_return_cmd.exit_crit_edge:         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_return_cmd.exit

if.end.i.i.i:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %prev.i.i51 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %1, ptr %prev.i.i51, align 4
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %cmd_pool.i, ptr %1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %59 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev3.i.i.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %1, ptr %56, align 4
  br label %mvumi_return_cmd.exit

mvumi_return_cmd.exit:                            ; preds = %if.end.i.i.i, %if.end26.mvumi_return_cmd.exit_crit_edge
  %61 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %shost, align 4
  %host_lock28 = getelementptr inbounds %struct.Scsi_Host, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %host_lock28 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %host_lock28, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %64, i32 noundef %call4) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_build_sense(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmd_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvumi_map_pci_addr(ptr noundef %dev, ptr nocapture noundef %addr_array) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.038 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %flags = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %i.038, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %call = tail call ptr @pci_iomap(ptr noundef %dev, i32 noundef %i.038, i32 noundef 0) #12
  %arrayidx1 = getelementptr ptr, ptr %addr_array, i32 %i.038
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %arrayidx1, align 4
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %do.end, label %if.then.do.body8_crit_edge

if.then.do.body8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body8

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.38, i32 noundef %i.038) #15
  tail call fastcc void @mvumi_unmap_pci_addr(ptr noundef %dev, ptr noundef %addr_array)
  br label %cleanup

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx6 = getelementptr ptr, ptr %addr_array, i32 %i.038
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %arrayidx6, align 4
  br label %do.body8

do.body8:                                         ; preds = %if.else, %if.then.do.body8_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvumi_map_pci_addr.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvumi_map_pci_addr, %if.then13)) #12
          to label %for.inc [label %if.then13], !srcloc !392

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx15 = getelementptr ptr, ptr %addr_array, i32 %i.038
  %4 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx15, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvumi_map_pci_addr.__UNIQUE_ID_ddebug291, ptr noundef %dev14, ptr noundef nonnull @.str.40, i32 noundef %i.038, ptr noundef %5) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %do.body8
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvumi_cfg_hw_reg(ptr nocapture noundef %mhba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.189)
  switch i16 %3, label %entry.cleanup_crit_edge [
    i16 -28349, label %sw.bb
    i16 -27264, label %sw.bb37
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %mhba to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mhba, align 4
  %mmio = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 2
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %mmio, align 4
  %regs2 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 50
  %8 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs2, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then, label %sw.bb.if.end7_crit_edge

sw.bb.if.end7_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then:                                          ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 172) #16
  %11 = ptrtoint ptr %regs2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %regs2, align 4
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %sw.bb.if.end7_crit_edge
  %12 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs2, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 131332
  %ctrl_sts_reg = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ctrl_sts_reg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %ctrl_sts_reg, align 4
  %add.ptr9 = getelementptr i8, ptr %6, i32 131336
  %rstoutn_mask_reg = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 5
  %15 = ptrtoint ptr %rstoutn_mask_reg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr9, ptr %rstoutn_mask_reg, align 4
  %add.ptr10 = getelementptr i8, ptr %6, i32 131340
  %sys_soft_rst_reg = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 6
  %16 = ptrtoint ptr %sys_soft_rst_reg to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr10, ptr %sys_soft_rst_reg, align 4
  %add.ptr11 = getelementptr i8, ptr %6, i32 131584
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr11, ptr %13, align 4
  %add.ptr12 = getelementptr i8, ptr %6, i32 131596
  %enpointa_mask_reg = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %enpointa_mask_reg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr12, ptr %enpointa_mask_reg, align 4
  %add.ptr13 = getelementptr i8, ptr %6, i32 988160
  %rstoutn_en_reg = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 3
  %19 = ptrtoint ptr %rstoutn_en_reg to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr13, ptr %rstoutn_en_reg, align 4
  %add.ptr14 = getelementptr i8, ptr %6, i32 132096
  %pciea_to_arm_drbl_reg = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 7
  %20 = ptrtoint ptr %pciea_to_arm_drbl_reg to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr14, ptr %pciea_to_arm_drbl_reg, align 4
  %add.ptr15 = getelementptr i8, ptr %6, i32 132104
  %arm_to_pciea_drbl_reg = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 8
  %21 = ptrtoint ptr %arm_to_pciea_drbl_reg to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr15, ptr %arm_to_pciea_drbl_reg, align 4
  %add.ptr16 = getelementptr i8, ptr %6, i32 132108
  %arm_to_pciea_mask_reg = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 9
  %22 = ptrtoint ptr %arm_to_pciea_mask_reg to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr16, ptr %arm_to_pciea_mask_reg, align 4
  %add.ptr17 = getelementptr i8, ptr %6, i32 132144
  %pciea_to_arm_msg0 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 10
  %23 = ptrtoint ptr %pciea_to_arm_msg0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr17, ptr %pciea_to_arm_msg0, align 4
  %add.ptr18 = getelementptr i8, ptr %6, i32 132148
  %pciea_to_arm_msg1 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 11
  %24 = ptrtoint ptr %pciea_to_arm_msg1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr18, ptr %pciea_to_arm_msg1, align 4
  %add.ptr19 = getelementptr i8, ptr %6, i32 132152
  %arm_to_pciea_msg0 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 12
  %25 = ptrtoint ptr %arm_to_pciea_msg0 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr19, ptr %arm_to_pciea_msg0, align 4
  %add.ptr20 = getelementptr i8, ptr %6, i32 132156
  %arm_to_pciea_msg1 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 13
  %26 = ptrtoint ptr %arm_to_pciea_msg1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr20, ptr %arm_to_pciea_msg1, align 4
  %add.ptr21 = getelementptr i8, ptr %6, i32 1288
  %inb_aval_count_basel = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 18
  %27 = ptrtoint ptr %inb_aval_count_basel to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr21, ptr %inb_aval_count_basel, align 4
  %add.ptr22 = getelementptr i8, ptr %6, i32 1292
  %inb_aval_count_baseh = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 19
  %28 = ptrtoint ptr %inb_aval_count_baseh to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr22, ptr %inb_aval_count_baseh, align 4
  %add.ptr23 = getelementptr i8, ptr %6, i32 1304
  %inb_write_pointer = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 20
  %29 = ptrtoint ptr %inb_write_pointer to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr23, ptr %inb_write_pointer, align 4
  %add.ptr24 = getelementptr i8, ptr %6, i32 1308
  %inb_read_pointer = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 21
  %30 = ptrtoint ptr %inb_read_pointer to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr24, ptr %inb_read_pointer, align 4
  %add.ptr25 = getelementptr i8, ptr %6, i32 1384
  %outb_coal_cfg = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 30
  %add.ptr26 = getelementptr i8, ptr %6, i32 1456
  %outb_copy_basel = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 24
  %31 = ptrtoint ptr %outb_copy_basel to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr26, ptr %outb_copy_basel, align 4
  %add.ptr27 = getelementptr i8, ptr %6, i32 1460
  %outb_copy_baseh = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 25
  %32 = ptrtoint ptr %outb_copy_baseh to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr27, ptr %outb_copy_baseh, align 4
  %add.ptr28 = getelementptr i8, ptr %6, i32 1348
  %outb_copy_pointer = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 26
  %33 = ptrtoint ptr %outb_copy_pointer to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr28, ptr %outb_copy_pointer, align 4
  %add.ptr29 = getelementptr i8, ptr %6, i32 1352
  %outb_read_pointer = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 27
  %34 = ptrtoint ptr %outb_read_pointer to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr29, ptr %outb_read_pointer, align 4
  %add.ptr30 = getelementptr i8, ptr %6, i32 1376
  %outb_isr_cause = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 29
  %35 = ptrtoint ptr %outb_isr_cause to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr30, ptr %outb_isr_cause, align 4
  %36 = ptrtoint ptr %outb_coal_cfg to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr25, ptr %outb_coal_cfg, align 4
  %int_comaout = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 32
  %37 = ptrtoint ptr %int_comaout to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 256, ptr %int_comaout, align 4
  %int_comaerr = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 33
  %38 = ptrtoint ptr %int_comaerr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 64, ptr %int_comaerr, align 4
  %int_dl_cpu2pciea = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 34
  %39 = ptrtoint ptr %int_dl_cpu2pciea to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %int_dl_cpu2pciea, align 4
  %cl_pointer_toggle = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 38
  %40 = ptrtoint ptr %cl_pointer_toggle to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 4096, ptr %cl_pointer_toggle, align 4
  %clic_irq = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 40
  %41 = ptrtoint ptr %clic_irq to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %clic_irq, align 4
  %clic_in_err = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 41
  %42 = ptrtoint ptr %clic_in_err to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 256, ptr %clic_in_err, align 4
  %clic_out_err = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 42
  %43 = ptrtoint ptr %clic_out_err to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4096, ptr %clic_out_err, align 4
  %cl_slot_num_mask = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 39
  %44 = ptrtoint ptr %cl_slot_num_mask to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4095, ptr %cl_slot_num_mask, align 4
  br label %cleanup.sink.split

sw.bb37:                                          ; preds = %entry
  %arrayidx39 = getelementptr [6 x ptr], ptr %mhba, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx39, align 4
  %mmio40 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 2
  %47 = ptrtoint ptr %mmio40 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %mmio40, align 4
  %regs42 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 50
  %48 = ptrtoint ptr %regs42 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs42, align 4
  %tobool43.not = icmp eq ptr %49, null
  br i1 %tobool43.not, label %if.then44, label %sw.bb37.if.end52_crit_edge

sw.bb37.if.end52_crit_edge:                       ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then44:                                        ; preds = %sw.bb37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %50 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i249 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3520, i32 noundef 172) #16
  %51 = ptrtoint ptr %regs42 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i249, ptr %regs42, align 4
  %cmp48 = icmp eq ptr %call7.i.i249, null
  br i1 %cmp48, label %if.then44.cleanup_crit_edge, label %if.then44.if.end52_crit_edge

if.then44.if.end52_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end52:                                         ; preds = %if.then44.if.end52_crit_edge, %sw.bb37.if.end52_crit_edge
  %52 = ptrtoint ptr %regs42 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs42, align 4
  %add.ptr54 = getelementptr i8, ptr %46, i32 131332
  %ctrl_sts_reg55 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %ctrl_sts_reg55 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr54, ptr %ctrl_sts_reg55, align 4
  %add.ptr56 = getelementptr i8, ptr %46, i32 65804
  %rstoutn_mask_reg57 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 5
  %55 = ptrtoint ptr %rstoutn_mask_reg57 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr56, ptr %rstoutn_mask_reg57, align 4
  %add.ptr58 = getelementptr i8, ptr %46, i32 65800
  %sys_soft_rst_reg59 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 6
  %56 = ptrtoint ptr %sys_soft_rst_reg59 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr58, ptr %sys_soft_rst_reg59, align 4
  %add.ptr60 = getelementptr i8, ptr %46, i32 66048
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr60, ptr %53, align 4
  %add.ptr62 = getelementptr i8, ptr %46, i32 66060
  %enpointa_mask_reg63 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 1
  %58 = ptrtoint ptr %enpointa_mask_reg63 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr62, ptr %enpointa_mask_reg63, align 4
  %add.ptr64 = getelementptr i8, ptr %46, i32 988160
  %rstoutn_en_reg65 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 3
  %59 = ptrtoint ptr %rstoutn_en_reg65 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr64, ptr %rstoutn_en_reg65, align 4
  %add.ptr66 = getelementptr i8, ptr %46, i32 66656
  %pciea_to_arm_drbl_reg67 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 7
  %60 = ptrtoint ptr %pciea_to_arm_drbl_reg67 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr66, ptr %pciea_to_arm_drbl_reg67, align 4
  %add.ptr68 = getelementptr i8, ptr %46, i32 66688
  %arm_to_pciea_drbl_reg69 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 8
  %61 = ptrtoint ptr %arm_to_pciea_drbl_reg69 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr68, ptr %arm_to_pciea_drbl_reg69, align 4
  %add.ptr70 = getelementptr i8, ptr %46, i32 66692
  %arm_to_pciea_mask_reg71 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 9
  %62 = ptrtoint ptr %arm_to_pciea_mask_reg71 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr70, ptr %arm_to_pciea_mask_reg71, align 4
  %add.ptr72 = getelementptr i8, ptr %46, i32 66560
  %pciea_to_arm_msg073 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 10
  %63 = ptrtoint ptr %pciea_to_arm_msg073 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr72, ptr %pciea_to_arm_msg073, align 4
  %add.ptr74 = getelementptr i8, ptr %46, i32 66564
  %pciea_to_arm_msg175 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 11
  %64 = ptrtoint ptr %pciea_to_arm_msg175 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr74, ptr %pciea_to_arm_msg175, align 4
  %add.ptr76 = getelementptr i8, ptr %46, i32 66592
  %arm_to_pciea_msg077 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 12
  %65 = ptrtoint ptr %arm_to_pciea_msg077 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr76, ptr %arm_to_pciea_msg077, align 4
  %add.ptr78 = getelementptr i8, ptr %46, i32 66596
  %arm_to_pciea_msg179 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 13
  %66 = ptrtoint ptr %arm_to_pciea_msg179 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr78, ptr %arm_to_pciea_msg179, align 4
  %reset_request = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 14
  %67 = ptrtoint ptr %reset_request to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr58, ptr %reset_request, align 4
  %reset_enable = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 15
  %68 = ptrtoint ptr %reset_enable to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr56, ptr %reset_enable, align 4
  %add.ptr82 = getelementptr i8, ptr %46, i32 16392
  %inb_aval_count_basel83 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 18
  %69 = ptrtoint ptr %inb_aval_count_basel83 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr82, ptr %inb_aval_count_basel83, align 4
  %add.ptr84 = getelementptr i8, ptr %46, i32 16396
  %inb_aval_count_baseh85 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 19
  %70 = ptrtoint ptr %inb_aval_count_baseh85 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr84, ptr %inb_aval_count_baseh85, align 4
  %add.ptr86 = getelementptr i8, ptr %46, i32 16408
  %inb_write_pointer87 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 20
  %71 = ptrtoint ptr %inb_write_pointer87 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %add.ptr86, ptr %inb_write_pointer87, align 4
  %add.ptr88 = getelementptr i8, ptr %46, i32 16412
  %inb_read_pointer89 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 21
  %72 = ptrtoint ptr %inb_read_pointer89 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %add.ptr88, ptr %inb_read_pointer89, align 4
  %add.ptr90 = getelementptr i8, ptr %46, i32 16472
  %outb_copy_basel91 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 24
  %73 = ptrtoint ptr %outb_copy_basel91 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %add.ptr90, ptr %outb_copy_basel91, align 4
  %add.ptr92 = getelementptr i8, ptr %46, i32 16476
  %outb_copy_baseh93 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 25
  %74 = ptrtoint ptr %outb_copy_baseh93 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr92, ptr %outb_copy_baseh93, align 4
  %add.ptr94 = getelementptr i8, ptr %46, i32 16492
  %outb_copy_pointer95 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 26
  %75 = ptrtoint ptr %outb_copy_pointer95 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %add.ptr94, ptr %outb_copy_pointer95, align 4
  %add.ptr96 = getelementptr i8, ptr %46, i32 16496
  %outb_read_pointer97 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 27
  %76 = ptrtoint ptr %outb_read_pointer97 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %add.ptr96, ptr %outb_read_pointer97, align 4
  %add.ptr98 = getelementptr i8, ptr %46, i32 16512
  %outb_coal_cfg99 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 30
  %77 = ptrtoint ptr %outb_coal_cfg99 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr98, ptr %outb_coal_cfg99, align 4
  %add.ptr100 = getelementptr i8, ptr %46, i32 16520
  %outb_isr_cause101 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 29
  %78 = ptrtoint ptr %outb_isr_cause101 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr100, ptr %outb_isr_cause101, align 4
  %int_comaout102 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 32
  %79 = ptrtoint ptr %int_comaout102 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 16, ptr %int_comaout102, align 4
  %int_dl_cpu2pciea103 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 34
  %80 = ptrtoint ptr %int_dl_cpu2pciea103 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 4096, ptr %int_dl_cpu2pciea103, align 4
  %int_comaerr104 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 33
  %81 = ptrtoint ptr %int_comaerr104 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 536870912, ptr %int_comaerr104, align 4
  %cl_pointer_toggle105 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 38
  %82 = ptrtoint ptr %cl_pointer_toggle105 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 16384, ptr %cl_pointer_toggle105, align 4
  %cl_slot_num_mask106 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 39
  %83 = ptrtoint ptr %cl_slot_num_mask106 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 16383, ptr %cl_slot_num_mask106, align 4
  %clic_irq107 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 40
  %84 = ptrtoint ptr %clic_irq107 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %clic_irq107, align 4
  %clic_out_err108 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %53, i32 0, i32 42
  %85 = ptrtoint ptr %clic_out_err108 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 2, ptr %clic_out_err108, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end52, %if.end7
  %.sink251 = phi ptr [ %13, %if.end7 ], [ %53, %if.end52 ]
  %.sink = phi i32 [ 322, %if.end7 ], [ 4112, %if.end52 ]
  %int_drbl_int_mask = getelementptr inbounds %struct.mvumi_hw_regs, ptr %.sink251, i32 0, i32 36
  %86 = ptrtoint ptr %int_drbl_int_mask to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1073741823, ptr %int_drbl_int_mask, align 4
  %int_mu = getelementptr inbounds %struct.mvumi_hw_regs, ptr %.sink251, i32 0, i32 35
  %87 = ptrtoint ptr %int_mu to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %.sink, ptr %int_mu, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then44.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ -12, %if.then44.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvumi_release_mem_resource(ptr noundef %mhba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %res_list = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 46
  %0 = ptrtoint ptr %res_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_list, align 4
  %cmp.not38 = icmp eq ptr %1, %res_list
  br i1 %cmp.not38, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pdev = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %res.039 = phi ptr [ %1, %for.body.lr.ph ], [ %tmp.041, %list_del.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %res.039 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.041 = load ptr, ptr %res.039, align 4
  %type = getelementptr inbounds %struct.mvumi_res, ptr %res.039, i32 0, i32 4
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %type, align 4
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.190)
  switch i16 %4, label %do.end [
    i16 1, label %sw.bb
    i16 0, label %sw.bb9
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %size = getelementptr inbounds %struct.mvumi_res, ptr %res.039, i32 0, i32 3
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %virt_addr = getelementptr inbounds %struct.mvumi_res, ptr %res.039, i32 0, i32 2
  %10 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %virt_addr, align 4
  %bus_addr = getelementptr inbounds %struct.mvumi_res, ptr %res.039, i32 0, i32 1
  %12 = ptrtoint ptr %bus_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bus_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef 0) #12
  br label %sw.epilog

sw.bb9:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %virt_addr10 = getelementptr inbounds %struct.mvumi_res, ptr %res.039, i32 0, i32 2
  %14 = ptrtoint ptr %virt_addr10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virt_addr10, align 4
  tail call void @kfree(ptr noundef %15) #12
  br label %sw.epilog

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %4 to i32
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 4
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.100, i32 noundef %conv) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb9, %sw.bb
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %res.039) #12
  br i1 %call.i.i, label %if.end.i.i, label %sw.epilog.list_del.exit_crit_edge

sw.epilog.list_del.exit_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %res.039, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %res.039 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %res.039, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %sw.epilog.list_del.exit_crit_edge
  %24 = ptrtoint ptr %res.039 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %res.039, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %res.039, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %res.039) #12
  %cmp.not = icmp eq ptr %tmp.041, %res_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %fw_flag = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 35
  %26 = ptrtoint ptr %fw_flag to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fw_flag, align 1
  %28 = and i8 %27, -5
  store i8 %28, ptr %fw_flag, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvumi_unmap_pci_addr(ptr noundef %dev, ptr nocapture noundef readonly %addr_array) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %land.lhs.true

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %addr_array to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr_array, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef nonnull %3) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %flags.1 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1, i32 3
  %4 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.1, align 4
  %and.1 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %arrayidx1.1 = getelementptr ptr, ptr %addr_array, i32 1
  %6 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1.1, align 4
  %tobool2.not.1 = icmp eq ptr %7, null
  br i1 %tobool2.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %if.then.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then.1:                                        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef nonnull %7) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %flags.2 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 2, i32 3
  %8 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.2, align 4
  %and.2 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %arrayidx1.2 = getelementptr ptr, ptr %addr_array, i32 2
  %10 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1.2, align 4
  %tobool2.not.2 = icmp eq ptr %11, null
  br i1 %tobool2.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %if.then.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then.2:                                        ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef nonnull %11) #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %flags.3 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 3, i32 3
  %12 = ptrtoint ptr %flags.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.3, align 4
  %and.3 = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %arrayidx1.3 = getelementptr ptr, ptr %addr_array, i32 3
  %14 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx1.3, align 4
  %tobool2.not.3 = icmp eq ptr %15, null
  br i1 %tobool2.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %if.then.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.then.3:                                        ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef nonnull %15) #12
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %flags.4 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 4, i32 3
  %16 = ptrtoint ptr %flags.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.4, align 4
  %and.4 = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %arrayidx1.4 = getelementptr ptr, ptr %addr_array, i32 4
  %18 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx1.4, align 4
  %tobool2.not.4 = icmp eq ptr %19, null
  br i1 %tobool2.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %if.then.4

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.then.4:                                        ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef nonnull %19) #12
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %flags.5 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 5, i32 3
  %20 = ptrtoint ptr %flags.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.5, align 4
  %and.5 = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %arrayidx1.5 = getelementptr ptr, ptr %addr_array, i32 5
  %22 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx1.5, align 4
  %tobool2.not.5 = icmp eq ptr %23, null
  br i1 %tobool2.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %if.then.5

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.then.5:                                        ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef nonnull %23) #12
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvumi_fire_cmd(ptr noundef %mhba, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cmd, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %waiting_req_list = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 47
  %prev.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 47, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %cmd, ptr noundef %1, ptr noundef %waiting_req_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cmd, ptr %prev.i, align 4
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %waiting_req_list, ptr %cmd, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %cmd, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %instancet = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 9
  %6 = ptrtoint ptr %instancet to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %instancet, align 4
  %check_ib_list = getelementptr inbounds %struct.mvumi_instance_template, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %check_ib_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %check_ib_list, align 4
  %call = tail call i32 %9(ptr noundef %mhba) #12
  %waiting_req_list1 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 47
  %10 = ptrtoint ptr %waiting_req_list1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %waiting_req_list1, align 4
  %cmp.i = icmp eq ptr %11, %waiting_req_list1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  %or.cond = select i1 %cmp.i, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end.do.body_crit_edge
  %count.0 = phi i32 [ %dec, %do.cond.do.body_crit_edge ], [ %call, %if.end.do.body_crit_edge ]
  %num_of_cl_sent.0 = phi i16 [ %num_of_cl_sent.1, %do.cond.do.body_crit_edge ], [ 0, %if.end.do.body_crit_edge ]
  %12 = ptrtoint ptr %waiting_req_list1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %waiting_req_list1, align 4
  %call.i.i44 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %13) #12
  br i1 %call.i.i44, label %if.end.i.i45, label %do.body.list_del_init.exit_crit_edge

do.body.list_del_init.exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i45:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i45, %do.body.list_del_init.exit_crit_edge
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %13, ptr %13, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %13, ptr %prev.i3.i, align 4
  %call9 = tail call fastcc i32 @mvumi_send_command(ptr noundef %mhba, ptr noundef %13)
  %22 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %call9, label %list_del_init.exit.do.cond_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
  ]

list_del_init.exit.do.cond_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond

sw.bb:                                            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i16 %num_of_cl_sent.0, 1
  br label %do.cond

sw.bb10:                                          ; preds = %list_del_init.exit
  %23 = ptrtoint ptr %waiting_req_list1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %waiting_req_list1, align 4
  %call.i.i46 = tail call zeroext i1 @__list_add_valid(ptr noundef %13, ptr noundef %waiting_req_list1, ptr noundef %24) #12
  br i1 %call.i.i46, label %if.end.i.i48, label %sw.bb10.list_add.exit_crit_edge

sw.bb10.list_add.exit_crit_edge:                  ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i48:                                     ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i3.i.le = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %13, ptr %prev1.i.i, align 4
  %26 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %13, align 4
  %27 = ptrtoint ptr %prev.i3.i.le to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %waiting_req_list1, ptr %prev.i3.i.le, align 4
  %28 = ptrtoint ptr %waiting_req_list1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %13, ptr %waiting_req_list1, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i48, %sw.bb10.list_add.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %num_of_cl_sent.0)
  %cmp.not = icmp eq i16 %num_of_cl_sent.0, 0
  br i1 %cmp.not, label %list_add.exit.cleanup_crit_edge, label %if.then14

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then14:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  %ib_shadow.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 16
  %29 = ptrtoint ptr %ib_shadow.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ib_shadow.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 -65536) #12, !srcloc !396
  %ib_cur_slot.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 40
  %31 = ptrtoint ptr %ib_cur_slot.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ib_cur_slot.i, align 4
  %regs.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 50
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %inb_write_pointer.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %34, i32 0, i32 20
  %35 = ptrtoint ptr %inb_write_pointer.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %inb_write_pointer.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  %37 = tail call i32 @llvm.bswap.i32(i32 %32) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %37) #12, !srcloc !396
  br label %cleanup

do.cond:                                          ; preds = %sw.bb, %list_del_init.exit.do.cond_crit_edge
  %num_of_cl_sent.1 = phi i16 [ %num_of_cl_sent.0, %list_del_init.exit.do.cond_crit_edge ], [ %inc, %sw.bb ]
  %38 = ptrtoint ptr %waiting_req_list1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %waiting_req_list1, align 4
  %cmp.i49 = icmp eq ptr %39, %waiting_req_list1
  %dec = add i32 %count.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0)
  %tobool19.not = icmp eq i32 %count.0, 0
  %or.cond43 = select i1 %cmp.i49, i1 true, i1 %tobool19.not
  br i1 %or.cond43, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %num_of_cl_sent.1)
  %cmp21.not = icmp eq i16 %num_of_cl_sent.1, 0
  br i1 %cmp21.not, label %do.end.cleanup_crit_edge, label %if.then23

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then23:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %ib_shadow.i51 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 16
  %40 = ptrtoint ptr %ib_shadow.i51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ib_shadow.i51, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 -65536) #12, !srcloc !396
  %ib_cur_slot.i52 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 40
  %42 = ptrtoint ptr %ib_cur_slot.i52 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ib_cur_slot.i52, align 4
  %regs.i53 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 50
  %44 = ptrtoint ptr %regs.i53 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i53, align 4
  %inb_write_pointer.i54 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %45, i32 0, i32 20
  %46 = ptrtoint ptr %inb_write_pointer.i54 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %inb_write_pointer.i54, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  %48 = tail call i32 @llvm.bswap.i32(i32 %43) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %48) #12, !srcloc !396
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %do.end.cleanup_crit_edge, %if.then14, %list_add.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvumi_enable_intr(ptr nocapture noundef readonly %mhba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 50
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %int_drbl_int_mask = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %int_drbl_int_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %int_drbl_int_mask, align 4
  %arm_to_pciea_mask_reg = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %arm_to_pciea_mask_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arm_to_pciea_mask_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  %6 = tail call i32 @llvm.bswap.i32(i32 %3) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %6) #12, !srcloc !396
  %enpointa_mask_reg = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %enpointa_mask_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %enpointa_mask_reg, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #12, !srcloc !393
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %int_dl_cpu2pciea = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 34
  %11 = ptrtoint ptr %int_dl_cpu2pciea to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %int_dl_cpu2pciea, align 4
  %int_comaout = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 32
  %13 = ptrtoint ptr %int_comaout to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %int_comaout, align 4
  %int_comaerr = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 33
  %15 = ptrtoint ptr %int_comaerr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %int_comaerr, align 4
  %or = or i32 %12, %10
  %or2 = or i32 %or, %14
  %or3 = or i32 %or2, %16
  %17 = ptrtoint ptr %enpointa_mask_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %enpointa_mask_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  %19 = tail call i32 @llvm.bswap.i32(i32 %or3) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %19) #12, !srcloc !396
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvumi_disable_intr(ptr nocapture noundef readonly %mhba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 50
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %arm_to_pciea_mask_reg = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %arm_to_pciea_mask_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arm_to_pciea_mask_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #12, !srcloc !396
  %enpointa_mask_reg = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %enpointa_mask_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enpointa_mask_reg, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !393
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %int_dl_cpu2pciea = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 34
  %8 = ptrtoint ptr %int_dl_cpu2pciea to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %int_dl_cpu2pciea, align 4
  %int_comaout = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 32
  %10 = ptrtoint ptr %int_comaout to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %int_comaout, align 4
  %or = or i32 %11, %9
  %int_comaerr = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 33
  %12 = ptrtoint ptr %int_comaerr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %int_comaerr, align 4
  %or2 = or i32 %or, %13
  %neg = xor i32 %or2, -1
  %and = and i32 %7, %neg
  %14 = ptrtoint ptr %enpointa_mask_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enpointa_mask_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  %16 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %16) #12, !srcloc !396
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvumi_clear_intr(ptr nocapture noundef %extend) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvumi_hba, ptr %extend, i32 0, i32 50
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #12, !srcloc !393
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %int_mu = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 35
  %6 = ptrtoint ptr %int_mu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %int_mu, align 4
  %and = and i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %int_comaerr = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 33
  %8 = ptrtoint ptr %int_comaerr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %int_comaerr, align 4
  %and2 = and i32 %9, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end31_crit_edge, label %if.then6, !prof !397

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then6:                                         ; preds = %if.end
  %outb_isr_cause = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 29
  %10 = ptrtoint ptr %outb_isr_cause to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %outb_isr_cause, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #12, !srcloc !393
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %pdev = getelementptr inbounds %struct.mvumi_hba, ptr %extend, i32 0, i32 6
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -27264, i16 %17)
  %cmp8 = icmp eq i16 %17, -27264
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then6
  %clic_out_err = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 42
  %18 = ptrtoint ptr %clic_out_err to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clic_out_err, align 4
  %and11 = and i32 %19, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then10.if.end28_crit_edge, label %if.then13

if.then10.if.end28_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %outb_isr_cause to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %outb_isr_cause, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  %22 = tail call i32 @llvm.bswap.i32(i32 %and11) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %22) #12, !srcloc !396
  br label %if.end28

if.else:                                          ; preds = %if.then6
  %clic_in_err = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 41
  %23 = ptrtoint ptr %clic_in_err to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clic_in_err, align 4
  %clic_out_err18 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 42
  %25 = ptrtoint ptr %clic_out_err18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clic_out_err18, align 4
  %or = or i32 %26, %24
  %and19 = and i32 %or, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else.if.end28_crit_edge, label %if.then21

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %outb_isr_cause to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %outb_isr_cause, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  %29 = tail call i32 @llvm.bswap.i32(i32 %and19) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %29) #12, !srcloc !396
  br label %if.end28

if.end28:                                         ; preds = %if.then21, %if.else.if.end28_crit_edge, %if.then13, %if.then10.if.end28_crit_edge
  %30 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs1, align 4
  %int_comaerr30 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %31, i32 0, i32 33
  %32 = ptrtoint ptr %int_comaerr30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %int_comaerr30, align 4
  %xor = xor i32 %33, %5
  br label %if.end31

if.end31:                                         ; preds = %if.end28, %if.end.if.end31_crit_edge
  %status.0 = phi i32 [ %xor, %if.end28 ], [ %5, %if.end.if.end31_crit_edge ]
  %int_comaout = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 32
  %34 = ptrtoint ptr %int_comaout to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %int_comaout, align 4
  %and32 = and i32 %35, %status.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end44_crit_edge, label %if.then34

if.end31.if.end44_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then34:                                        ; preds = %if.end31
  %outb_isr_cause35 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 29
  %36 = ptrtoint ptr %outb_isr_cause35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %outb_isr_cause35, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #12, !srcloc !393
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %clic_irq = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 40
  %40 = ptrtoint ptr %clic_irq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %clic_irq, align 4
  %and37 = and i32 %41, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.then34.if.end44_crit_edge, label %if.then39

if.then34.if.end44_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then39:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %outb_isr_cause35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %outb_isr_cause35, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  %44 = tail call i32 @llvm.bswap.i32(i32 %and37) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %44) #12, !srcloc !396
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %if.then34.if.end44_crit_edge, %if.end31.if.end44_crit_edge
  %int_dl_cpu2pciea = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 34
  %45 = ptrtoint ptr %int_dl_cpu2pciea to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %int_dl_cpu2pciea, align 4
  %and45 = and i32 %46, %status.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end53_crit_edge, label %if.then47

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then47:                                        ; preds = %if.end44
  %arm_to_pciea_drbl_reg = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 8
  %47 = ptrtoint ptr %arm_to_pciea_drbl_reg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arm_to_pciea_drbl_reg, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #12, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool49.not = icmp eq i32 %49, 0
  br i1 %tobool49.not, label %if.then47.if.end53_crit_edge, label %if.then50

if.then47.if.end53_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then50:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #12
  %51 = ptrtoint ptr %arm_to_pciea_drbl_reg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arm_to_pciea_drbl_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %49) #12, !srcloc !396
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.then47.if.end53_crit_edge, %if.end44.if.end53_crit_edge
  %isr_status.0 = phi i32 [ %50, %if.then50 ], [ 0, %if.then47.if.end53_crit_edge ], [ 0, %if.end44.if.end53_crit_edge ]
  %global_isr = getelementptr inbounds %struct.mvumi_hba, ptr %extend, i32 0, i32 22
  %53 = ptrtoint ptr %global_isr to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %status.0, ptr %global_isr, align 4
  %isr_status54 = getelementptr inbounds %struct.mvumi_hba, ptr %extend, i32 0, i32 23
  %54 = ptrtoint ptr %isr_status54 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %isr_status.0, ptr %isr_status54, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end53 ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvumi_read_fw_status_reg(ptr nocapture noundef readonly %mhba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 50
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %arm_to_pciea_drbl_reg = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %arm_to_pciea_drbl_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arm_to_pciea_drbl_reg, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #12, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %arm_to_pciea_drbl_reg2 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %arm_to_pciea_drbl_reg2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arm_to_pciea_drbl_reg2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %4) #12, !srcloc !396
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvumi_check_ib_list_9143(ptr noundef %mhba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 50
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %inb_read_pointer = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %inb_read_pointer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inb_read_pointer, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #12, !srcloc !393
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %cl_slot_num_mask = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 39
  %6 = ptrtoint ptr %cl_slot_num_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cl_slot_num_mask, align 4
  %ib_cur_slot = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 40
  %8 = ptrtoint ptr %ib_cur_slot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ib_cur_slot, align 4
  %10 = xor i32 %9, %5
  %11 = and i32 %10, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %land.rhs, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %cl_pointer_toggle = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 38
  %12 = ptrtoint ptr %cl_pointer_toggle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cl_pointer_toggle, align 4
  %14 = and i32 %13, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp9.not = icmp eq i32 %14, 0
  br i1 %cmp9.not, label %land.rhs.if.end_crit_edge, label %do.end, !prof !397

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.44) #15
  br label %cleanup

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %fw_outstanding = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fw_outstanding, i32 noundef 4) #12
  %17 = ptrtoint ptr %fw_outstanding to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %fw_outstanding, align 4
  %max_io = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 27
  %19 = ptrtoint ptr %max_io to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_io, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp12.not = icmp ult i32 %18, %20
  br i1 %cmp12.not, label %if.else, label %do.end16

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pdev17 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %21 = ptrtoint ptr %pdev17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev17, align 4
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev18, ptr noundef nonnull @.str.47) #15
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i36 = tail call zeroext i1 @__kasan_check_read(ptr noundef %fw_outstanding, i32 noundef 4) #12
  %23 = ptrtoint ptr %fw_outstanding to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %fw_outstanding, align 4
  %sub = sub i32 %20, %24
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end16, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end16 ], [ %sub, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvumi_check_ob_list_9143(ptr nocapture noundef readonly %mhba, ptr nocapture noundef writeonly %cur_obf, ptr nocapture noundef writeonly %assign_obf_end) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 50
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %outb_copy_pointer = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 26
  %ob_shadow = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 18
  %cl_slot_num_mask = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 39
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %2 = ptrtoint ptr %outb_copy_pointer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %outb_copy_pointer, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #12, !srcloc !393
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %6 = ptrtoint ptr %ob_shadow to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ob_shadow, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #12, !srcloc !393
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %10 = ptrtoint ptr %cl_slot_num_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cl_slot_num_mask, align 4
  %and = and i32 %11, %5
  %cmp.not = icmp eq i32 %and, %9
  br i1 %cmp.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %do.body
  %ob_cur_slot = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 41
  %12 = ptrtoint ptr %ob_cur_slot to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ob_cur_slot, align 4
  %14 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs1, align 4
  %cl_slot_num_mask4 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %15, i32 0, i32 39
  %16 = ptrtoint ptr %cl_slot_num_mask4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cl_slot_num_mask4, align 4
  %and5 = and i32 %17, %13
  %18 = ptrtoint ptr %cur_obf to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and5, ptr %cur_obf, align 4
  %19 = load ptr, ptr %regs1, align 4
  %cl_slot_num_mask7 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %19, i32 0, i32 39
  %20 = ptrtoint ptr %cl_slot_num_mask7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cl_slot_num_mask7, align 4
  %and8 = and i32 %21, %5
  %22 = ptrtoint ptr %assign_obf_end to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and8, ptr %assign_obf_end, align 4
  %cl_pointer_toggle = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 38
  %23 = ptrtoint ptr %cl_pointer_toggle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cl_pointer_toggle, align 4
  %25 = load i32, ptr %ob_cur_slot, align 4
  %26 = xor i32 %25, %5
  %27 = and i32 %26, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp13.not = icmp eq i32 %27, 0
  br i1 %cmp13.not, label %do.end.if.end_crit_edge, label %if.then

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %list_num_io = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 28
  %28 = ptrtoint ptr %list_num_io to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %list_num_io, align 4
  %add = add i32 %29, %and8
  %30 = ptrtoint ptr %assign_obf_end to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %assign_obf_end, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvumi_reset_host_9143(ptr noundef %mhba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mvumi_wait_for_outstanding(ptr noundef %mhba)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvumi_send_command(ptr noundef %mhba, ptr noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frame = getelementptr inbounds %struct.mvumi_cmd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frame, align 4
  %fw_state = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 42
  %2 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end10, label %do.body, !prof !397

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvumi_send_command.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvumi_send_command, %if.then9)) #12
          to label %cleanup [label %if.then9], !srcloc !392

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvumi_send_command.__UNIQUE_ID_ddebug311, ptr noundef %dev, ptr noundef nonnull @.str.42) #12
  br label %cleanup

if.end10:                                         ; preds = %entry
  %tag_pool = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 48
  %top.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 48, i32 1
  %6 = ptrtoint ptr %top.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %top.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.i = icmp eq i16 %7, 0
  br i1 %cmp.i, label %do.body13, label %if.end31

do.body13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvumi_send_command.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvumi_send_command, %if.then25)) #12
          to label %cleanup [label %if.then25], !srcloc !392

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  %pdev26 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %8 = ptrtoint ptr %pdev26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev26, align 4
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvumi_send_command.__UNIQUE_ID_ddebug312, ptr noundef %dev27, ptr noundef nonnull @.str.43) #12
  br label %cleanup

if.end31:                                         ; preds = %if.end10
  %ib_cur_slot.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 40
  %10 = ptrtoint ptr %ib_cur_slot.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ib_cur_slot.i, align 4
  %regs.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 50
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %cl_slot_num_mask.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 39
  %14 = ptrtoint ptr %cl_slot_num_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cl_slot_num_mask.i, align 4
  %and.i = and i32 %15, %11
  %inc.i = add i32 %and.i, 1
  %list_num_io.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 28
  %16 = ptrtoint ptr %list_num_io.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %list_num_io.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %17)
  %cmp.not.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.not.i, label %if.end31.if.end.i_crit_edge, label %if.then.i

if.end31.if.end.i_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = sub i32 %inc.i, %17
  %cl_pointer_toggle.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %13, i32 0, i32 38
  %18 = ptrtoint ptr %cl_pointer_toggle.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cl_pointer_toggle.i, align 4
  %xor.i = xor i32 %19, %11
  %20 = ptrtoint ptr %ib_cur_slot.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %xor.i, ptr %ib_cur_slot.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end31.if.end.i_crit_edge
  %cur_ib_entry.0.i = phi i32 [ %sub.i, %if.then.i ], [ %inc.i, %if.end31.if.end.i_crit_edge ]
  %21 = ptrtoint ptr %cl_slot_num_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cl_slot_num_mask.i, align 4
  %neg.i = xor i32 %22, -1
  %23 = ptrtoint ptr %ib_cur_slot.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ib_cur_slot.i, align 4
  %and7.i = and i32 %24, %neg.i
  store i32 %and7.i, ptr %ib_cur_slot.i, align 4
  %25 = load i32, ptr %cl_slot_num_mask.i, align 4
  %and10.i = and i32 %25, %cur_ib_entry.0.i
  %or.i = or i32 %and10.i, %and7.i
  store i32 %or.i, ptr %ib_cur_slot.i, align 4
  %hba_capability.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 38
  %26 = ptrtoint ptr %hba_capability.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %hba_capability.i, align 4
  %28 = and i16 %27, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool.not.i = icmp eq i16 %28, 0
  %ib_list14.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 10
  %29 = ptrtoint ptr %ib_list14.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ib_list14.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i = shl i32 %cur_ib_entry.0.i, 4
  br label %mvumi_get_ib_list_entry.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %ib_max_size.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 29
  %31 = ptrtoint ptr %ib_max_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ib_max_size.i, align 4
  %mul15.i = mul i32 %32, %cur_ib_entry.0.i
  br label %mvumi_get_ib_list_entry.exit

mvumi_get_ib_list_entry.exit:                     ; preds = %if.else.i, %if.then13.i
  %mul15.sink.i = phi i32 [ %mul15.i, %if.else.i ], [ %mul.i, %if.then13.i ]
  %add.ptr16.i = getelementptr i8, ptr %30, i32 %mul15.sink.i
  %fw_outstanding.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fw_outstanding.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %fw_outstanding.i, i32 1, i32 3, i32 1) #12
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fw_outstanding.i, ptr %fw_outstanding.i, i32 1, ptr elementtype(i32) %fw_outstanding.i) #12, !srcloc !399
  %34 = ptrtoint ptr %top.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %top.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %cmp.i77 = icmp eq i16 %35, 0
  br i1 %cmp.i77, label %do.body3.i, label %tag_get_one.exit, !prof !398

do.body3.i:                                       ; preds = %mvumi_get_ib_list_entry.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/mvumi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 55, 0\0A.popsection", ""() #12, !srcloc !405
  unreachable

tag_get_one.exit:                                 ; preds = %mvumi_get_ib_list_entry.exit
  %36 = ptrtoint ptr %tag_pool to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tag_pool, align 4
  %dec.i = add i16 %35, -1
  %38 = ptrtoint ptr %top.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %dec.i, ptr %top.i, align 4
  %idxprom.i = zext i16 %dec.i to i32
  %arrayidx.i = getelementptr i16, ptr %37, i32 %idxprom.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.i, align 2
  %41 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %frame, align 4
  %tag = getelementptr inbounds %struct.mvumi_msg_frame, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %tag to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %40, ptr %tag, align 2
  %io_seq = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 39
  %44 = ptrtoint ptr %io_seq to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %io_seq, align 2
  %inc = add i16 %45, 1
  store i16 %inc, ptr %io_seq, align 2
  %46 = load ptr, ptr %frame, align 4
  %request_id = getelementptr inbounds %struct.mvumi_msg_frame, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %request_id to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %45, ptr %request_id, align 4
  %48 = load ptr, ptr %frame, align 4
  %request_id37 = getelementptr inbounds %struct.mvumi_msg_frame, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %request_id37 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %request_id37, align 4
  %request_id38 = getelementptr inbounds %struct.mvumi_cmd, ptr %cmd, i32 0, i32 6
  %51 = ptrtoint ptr %request_id38 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %request_id38, align 4
  %tag_cmd = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 49
  %52 = ptrtoint ptr %tag_cmd to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tag_cmd, align 4
  %tag40 = getelementptr inbounds %struct.mvumi_msg_frame, ptr %48, i32 0, i32 1
  %54 = ptrtoint ptr %tag40 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %tag40, align 2
  %idxprom = zext i16 %55 to i32
  %arrayidx = getelementptr ptr, ptr %53, i32 %idxprom
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %cmd, ptr %arrayidx, align 4
  %sg_counts = getelementptr inbounds %struct.mvumi_msg_frame, ptr %1, i32 0, i32 5
  %57 = ptrtoint ptr %sg_counts to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %sg_counts, align 1
  %conv = zext i8 %58 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %add = add nuw nsw i32 %mul, 32
  %59 = ptrtoint ptr %hba_capability.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %hba_capability.i, align 4
  %61 = and i16 %60, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool42.not = icmp eq i16 %61, 0
  br i1 %tobool42.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %tag_get_one.exit
  call void @__sanitizer_cov_trace_pc() #14
  %frame_phys = getelementptr inbounds %struct.mvumi_cmd, ptr %cmd, i32 0, i32 2
  %62 = ptrtoint ptr %frame_phys to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %frame_phys, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %65 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %add.ptr16.i, align 4
  %src_high_addr = getelementptr inbounds %struct.mvumi_dyn_list_entry, ptr %add.ptr16.i, i32 0, i32 1
  %66 = ptrtoint ptr %src_high_addr to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %src_high_addr, align 4
  %shr47 = lshr exact i32 %add, 2
  %if_length = getelementptr inbounds %struct.mvumi_dyn_list_entry, ptr %add.ptr16.i, i32 0, i32 2
  %67 = ptrtoint ptr %if_length to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %shr47, ptr %if_length, align 4
  br label %cleanup

if.else:                                          ; preds = %tag_get_one.exit
  call void @__sanitizer_cov_trace_pc() #14
  %68 = call ptr @memcpy(ptr %add.ptr16.i, ptr %1, i32 %add)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then43, %if.then25, %do.body13, %if.then9, %do.body
  %retval.0 = phi i32 [ 1, %if.then9 ], [ 1, %if.then25 ], [ 0, %if.else ], [ 0, %if.then43 ], [ 1, %do.body ], [ 1, %do.body13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvumi_wait_for_outstanding(ptr noundef %mhba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_state = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 42
  %0 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %fw_state, align 4
  %regs1.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 50
  %1 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs1.i, align 4
  %enpointa_mask_reg.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %enpointa_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %enpointa_mask_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #12, !srcloc !396
  %arm_to_pciea_msg1.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %2, i32 0, i32 13
  %5 = ptrtoint ptr %arm_to_pciea_msg1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arm_to_pciea_msg1.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #12, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  call void @__sanitizer_cov_trace_const_cmp4(i32 1520806485, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 1520806485
  br i1 %cmp.not.i, label %if.end.i, label %entry.mvumi_reset.exit_crit_edge

entry.mvumi_reset.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_reset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pciea_to_arm_drbl_reg.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %2, i32 0, i32 7
  %8 = ptrtoint ptr %pciea_to_arm_drbl_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pciea_to_arm_drbl_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 33554432) #12, !srcloc !396
  br label %mvumi_reset.exit

mvumi_reset.exit:                                 ; preds = %if.end.i, %entry.mvumi_reset.exit_crit_edge
  %10 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs1.i, align 4
  %arm_to_pciea_drbl_reg.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %arm_to_pciea_drbl_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arm_to_pciea_drbl_reg.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #12, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %15 = ptrtoint ptr %arm_to_pciea_drbl_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arm_to_pciea_drbl_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #12, !srcloc !396
  %int_drbl_int_mask.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %11, i32 0, i32 36
  %17 = ptrtoint ptr %int_drbl_int_mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %int_drbl_int_mask.i, align 4
  %arm_to_pciea_mask_reg.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %11, i32 0, i32 9
  %19 = ptrtoint ptr %arm_to_pciea_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arm_to_pciea_mask_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  %21 = tail call i32 @llvm.bswap.i32(i32 %18) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %21) #12, !srcloc !396
  %enpointa_mask_reg.i4 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %11, i32 0, i32 1
  %22 = ptrtoint ptr %enpointa_mask_reg.i4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %enpointa_mask_reg.i4, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #12, !srcloc !393
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %int_dl_cpu2pciea.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %11, i32 0, i32 34
  %26 = ptrtoint ptr %int_dl_cpu2pciea.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %int_dl_cpu2pciea.i, align 4
  %or.i = or i32 %27, %25
  %28 = ptrtoint ptr %enpointa_mask_reg.i4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %enpointa_mask_reg.i4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %30) #12, !srcloc !396
  tail call void @msleep(i32 noundef 100) #12
  %call5.i = tail call fastcc zeroext i8 @mvumi_check_handshake(ptr noundef %mhba) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call5.i)
  %tobool.not.i.not = icmp eq i8 %call5.i, 0
  %. = select i1 %tobool.not.i.not, i32 8194, i32 8195
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvumi_check_ib_list_9580(ptr noundef %mhba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_outstanding = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fw_outstanding, i32 noundef 4) #12
  %0 = ptrtoint ptr %fw_outstanding to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %fw_outstanding, align 4
  %max_io = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 27
  %2 = ptrtoint ptr %max_io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_io, align 4
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub)
  %cmp.not = icmp ult i32 %1, %sub
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ib_shadow = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 16
  %4 = ptrtoint ptr %ib_shadow to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ib_shadow, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !393
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %6)
  %cmp2 = icmp eq i32 %6, -65536
  %.call1 = select i1 %cmp2, i32 0, i32 %7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %.call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvumi_check_ob_list_9580(ptr nocapture noundef readonly %mhba, ptr nocapture noundef %cur_obf, ptr nocapture noundef writeonly %assign_obf_end) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 50
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %outb_read_pointer = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %outb_read_pointer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %outb_read_pointer, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #12, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %outb_copy_pointer = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 26
  %5 = ptrtoint ptr %outb_copy_pointer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %outb_copy_pointer, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #12, !srcloc !393
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %ob_cur_slot = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 41
  %9 = ptrtoint ptr %ob_cur_slot to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ob_cur_slot, align 4
  %11 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs1, align 4
  %cl_slot_num_mask = getelementptr inbounds %struct.mvumi_hw_regs, ptr %12, i32 0, i32 39
  %13 = ptrtoint ptr %cl_slot_num_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cl_slot_num_mask, align 4
  %and = and i32 %14, %10
  %15 = ptrtoint ptr %cur_obf to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and, ptr %cur_obf, align 4
  %16 = load ptr, ptr %regs1, align 4
  %cl_slot_num_mask5 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %16, i32 0, i32 39
  %17 = ptrtoint ptr %cl_slot_num_mask5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cl_slot_num_mask5, align 4
  %and6 = and i32 %18, %8
  %19 = ptrtoint ptr %assign_obf_end to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and6, ptr %assign_obf_end, align 4
  %20 = load i32, ptr %cur_obf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and6, i32 %20)
  %cmp = icmp ult i32 %and6, %20
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %list_num_io = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 28
  %21 = ptrtoint ptr %list_num_io to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %list_num_io, align 4
  %add = add i32 %22, %and6
  %23 = ptrtoint ptr %assign_obf_end to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add, ptr %assign_obf_end, align 4
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %and6, i32 %20)
  %cmp7 = icmp eq i32 %and6, %20
  br i1 %cmp7, label %if.else.cleanup_crit_edge, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.else.if.end9_crit_edge, %if.then
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -1, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvumi_reset_host_9580(ptr noundef %mhba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_state = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 42
  %0 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %fw_state, align 4
  %regs = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 50
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %reset_enable = getelementptr inbounds %struct.mvumi_hw_regs, ptr %2, i32 0, i32 15
  %3 = ptrtoint ptr %reset_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reset_enable, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #12, !srcloc !396
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %reset_request = getelementptr inbounds %struct.mvumi_hw_regs, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %reset_request to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reset_request, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 251658240) #12, !srcloc !396
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %reset_enable3 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %reset_enable3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reset_enable3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 268435456) #12, !srcloc !396
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %reset_request5 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %reset_request5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reset_request5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 268435456) #12, !srcloc !396
  tail call void @msleep(i32 noundef 100) #12
  %pdev = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 4
  tail call void @pci_disable_device(ptr noundef %18) #12
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 4
  %call = tail call i32 @pci_enable_device(ptr noundef %20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 4
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #15
  br label %return

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %22) #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev.i, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end16, label %do.end13

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 4
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.52) #15
  br label %return

if.end16:                                         ; preds = %if.end
  %arrayidx.i = getelementptr %struct.mvumi_hba, ptr %mhba, i32 0, i32 1, i32 0
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %if.end16.for.inc.i_crit_edge, label %if.then.i

if.end16.for.inc.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 4
  %call.i33 = tail call i32 @pci_write_config_dword(ptr noundef %28, i32 noundef 16, i32 noundef %26) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.end16.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.mvumi_hba, ptr %mhba, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.1.i = icmp eq i32 %30, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 4
  %call.1.i = tail call i32 @pci_write_config_dword(ptr noundef %32, i32 noundef 20, i32 noundef %30) #12
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.mvumi_hba, ptr %mhba, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.2.i = icmp eq i32 %34, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev, align 4
  %call.2.i = tail call i32 @pci_write_config_dword(ptr noundef %36, i32 noundef 24, i32 noundef %34) #12
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.mvumi_hba, ptr %mhba, i32 0, i32 1, i32 3
  %37 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.3.i = icmp eq i32 %38, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev, align 4
  %call.3.i = tail call i32 @pci_write_config_dword(ptr noundef %40, i32 noundef 28, i32 noundef %38) #12
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %arrayidx.4.i = getelementptr %struct.mvumi_hba, ptr %mhba, i32 0, i32 1, i32 4
  %41 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.4.i = icmp eq i32 %42, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev, align 4
  %call.4.i = tail call i32 @pci_write_config_dword(ptr noundef %44, i32 noundef 32, i32 noundef %42) #12
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %arrayidx.5.i = getelementptr %struct.mvumi_hba, ptr %mhba, i32 0, i32 1, i32 5
  %45 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.5.i = icmp eq i32 %46, 0
  br i1 %tobool.not.5.i, label %for.inc.4.i.mvumi_restore_bar_addr.exit_crit_edge, label %if.then.5.i

for.inc.4.i.mvumi_restore_bar_addr.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_restore_bar_addr.exit

if.then.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev, align 4
  %call.5.i = tail call i32 @pci_write_config_dword(ptr noundef %48, i32 noundef 36, i32 noundef %46) #12
  br label %mvumi_restore_bar_addr.exit

mvumi_restore_bar_addr.exit:                      ; preds = %if.then.5.i, %for.inc.4.i.mvumi_restore_bar_addr.exit_crit_edge
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %enpointa_mask_reg.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %50, i32 0, i32 1
  %52 = ptrtoint ptr %enpointa_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %enpointa_mask_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 0) #12, !srcloc !396
  %arm_to_pciea_msg1.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %50, i32 0, i32 13
  %54 = ptrtoint ptr %arm_to_pciea_msg1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arm_to_pciea_msg1.i, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #12, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1520784811, i32 %56)
  %cmp.not13.i = icmp eq i32 %56, -1520784811
  br i1 %cmp.not13.i, label %mvumi_restore_bar_addr.exit.if.end19_crit_edge, label %while.body.lr.ph.i

mvumi_restore_bar_addr.exit.if.end19_crit_edge:   ; preds = %mvumi_restore_bar_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

while.body.lr.ph.i:                               ; preds = %mvumi_restore_bar_addr.exit
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #12
  %pciea_to_arm_drbl_reg.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %50, i32 0, i32 7
  %add.i = add i32 %51, 3000
  %58 = ptrtoint ptr %pciea_to_arm_drbl_reg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pciea_to_arm_drbl_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 268435456) #12, !srcloc !396
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %sub.i40 = sub i32 %add.i, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i40)
  %cmp2.i41 = icmp slt i32 %sub.i40, 0
  br i1 %cmp2.i41, label %while.body.lr.ph.i.mvumi_wait_for_fw.exit_crit_edge, label %while.body.lr.ph.i.if.end.i_crit_edge

while.body.lr.ph.i.if.end.i_crit_edge:            ; preds = %while.body.lr.ph.i
  br label %if.end.i

while.body.lr.ph.i.mvumi_wait_for_fw.exit_crit_edge: ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_wait_for_fw.exit

while.body.i:                                     ; preds = %if.end.i
  %61 = ptrtoint ptr %pciea_to_arm_drbl_reg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pciea_to_arm_drbl_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 268435456) #12, !srcloc !396
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %63
  %cmp2.i = icmp slt i32 %sub.i, 0
  br i1 %cmp2.i, label %mvumi_wait_for_fw.exit.loopexit, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %while.body.i.if.end.i_crit_edge, %while.body.lr.ph.i.if.end.i_crit_edge
  tail call void @msleep(i32 noundef 500) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !406
  %64 = ptrtoint ptr %arm_to_pciea_msg1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arm_to_pciea_msg1.i, align 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #12, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1520784811, i32 %66)
  %cmp.not.i = icmp eq i32 %66, -1520784811
  br i1 %cmp.not.i, label %if.end.i.if.end19_crit_edge, label %while.body.i

if.end.i.if.end19_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

mvumi_wait_for_fw.exit.loopexit:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #12
  br label %mvumi_wait_for_fw.exit

mvumi_wait_for_fw.exit:                           ; preds = %mvumi_wait_for_fw.exit.loopexit, %while.body.lr.ph.i.mvumi_wait_for_fw.exit_crit_edge
  %tmp.014.i.lcssa = phi i32 [ %57, %while.body.lr.ph.i.mvumi_wait_for_fw.exit_crit_edge ], [ %67, %mvumi_wait_for_fw.exit.loopexit ]
  %68 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev, align 4
  %dev.i35 = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i35, ptr noundef nonnull @.str.54, i32 noundef %tmp.014.i.lcssa) #15
  br label %return

if.end19:                                         ; preds = %if.end.i.if.end19_crit_edge, %mvumi_restore_bar_addr.exit.if.end19_crit_edge
  %call20 = tail call fastcc i32 @mvumi_wait_for_outstanding(ptr noundef %mhba)
  br label %return

return:                                           ; preds = %if.end19, %mvumi_wait_for_fw.exit, %do.end13, %do.end
  %retval.0 = phi i32 [ 8195, %do.end ], [ 8195, %do.end13 ], [ %call20, %if.end19 ], [ 8195, %mvumi_wait_for_fw.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @mvumi_check_handshake(ptr noundef %mhba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %regs = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 50
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %arm_to_pciea_msg1 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %arm_to_pciea_msg1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arm_to_pciea_msg1, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #12, !srcloc !393
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %add = add i32 %0, 3000
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %entry
  %tmp.0 = phi i32 [ %6, %entry ], [ %20, %if.end6 ]
  %7 = zext i32 %tmp.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %tmp.0, label %if.then [
    i32 1437227685, label %while.cond.while.end_crit_edge
    i32 1437246810, label %while.cond.while.end_crit_edge113
  ]

while.cond.while.end_crit_edge113:                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.then:                                          ; preds = %while.cond
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %pciea_to_arm_drbl_reg = getelementptr inbounds %struct.mvumi_hw_regs, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %pciea_to_arm_drbl_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pciea_to_arm_drbl_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 268435456) #12, !srcloc !396
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %12
  %cmp4 = icmp slt i32 %sub, 0
  br i1 %cmp4, label %do.end, label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %tmp.0) #15
  br label %cleanup

if.end6:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !407
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %arm_to_pciea_msg18 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %arm_to_pciea_msg18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arm_to_pciea_msg18, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #12, !srcloc !393
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  br label %while.cond

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.while.end_crit_edge113
  %fw_state = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 42
  %21 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %fw_state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvumi_check_handshake.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvumi_check_handshake, %if.then15)) #12
          to label %do.end20 [label %if.then15], !srcloc !392

if.then15:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %pdev16 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %22 = ptrtoint ptr %pdev16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev16, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvumi_check_handshake.__UNIQUE_ID_ddebug300, ptr noundef %dev17, ptr noundef nonnull @.str.58) #12
  br label %do.end20

do.end20:                                         ; preds = %if.then15, %while.end
  %instancet.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 9
  br label %do.body21

do.body21:                                        ; preds = %do.cond32.do.body21_crit_edge, %do.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  tail call fastcc void @mvumi_handshake(ptr noundef %mhba) #12
  %add.i = add i32 %24, 3000
  br label %do.body.i

do.body.i:                                        ; preds = %if.end11.i.do.body.i_crit_edge, %do.body21
  %25 = ptrtoint ptr %instancet.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %instancet.i, align 4
  %read_fw_status_reg.i = getelementptr inbounds %struct.mvumi_instance_template, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %read_fw_status_reg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_fw_status_reg.i, align 4
  %call1.i = tail call i32 %28(ptr noundef %mhba) #12
  %29 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp.i = icmp eq i32 %30, 3
  br i1 %cmp.i, label %do.body.i.do.body36_crit_edge, label %if.end.i

do.body.i.do.body36_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body36

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp2.i = icmp slt i32 %sub.i, 0
  br i1 %cmp2.i, label %do.end27, label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !408
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %and.i = and i32 %call1.i, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end11.i.do.body.i_crit_edge, label %do.cond32

if.end11.i.do.body.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.end27:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %32 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.63, i32 noundef %30) #15
  %34 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev.i, align 4
  %dev10.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %global_isr.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 22
  %36 = ptrtoint ptr %global_isr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %global_isr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.66, i32 noundef %37, i32 noundef %call1.i) #15
  %38 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev.i, align 4
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %40 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fw_state, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.60, i32 noundef %41) #15
  br label %cleanup

do.cond32:                                        ; preds = %if.end11.i
  %42 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr = load i32, ptr %fw_state, align 4
  %cmp34.not = icmp eq i32 %.pr, 3
  br i1 %cmp34.not, label %do.cond32.do.body36_crit_edge, label %do.cond32.do.body21_crit_edge

do.cond32.do.body21_crit_edge:                    ; preds = %do.cond32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body21

do.cond32.do.body36_crit_edge:                    ; preds = %do.cond32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body36

do.body36:                                        ; preds = %do.cond32.do.body36_crit_edge, %do.body.i.do.body36_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvumi_check_handshake.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvumi_check_handshake, %if.then48)) #12
          to label %cleanup [label %if.then48], !srcloc !392

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #14
  %pdev49 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %43 = ptrtoint ptr %pdev49 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev49, align 4
  %dev50 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvumi_check_handshake.__UNIQUE_ID_ddebug301, ptr noundef %dev50, ptr noundef nonnull @.str.62) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %do.body36, %do.end27, %do.end
  %retval.0 = phi i8 [ -1, %do.end ], [ -1, %do.end27 ], [ 0, %if.then48 ], [ 0, %do.body36 ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvumi_handshake(ptr noundef %mhba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 50
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %fw_state = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 42
  %2 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %entry.sw.bb_crit_edge, label %if.else

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.else:                                          ; preds = %entry
  %arm_to_pciea_msg0 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %arm_to_pciea_msg0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arm_to_pciea_msg0, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !393
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %and = and i32 %7, 65535
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvumi_handshake.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvumi_handshake, %if.then6)) #12
          to label %do.end [label %if.then6], !srcloc !392

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvumi_handshake.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %and) #12
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.else
  %shr.mask = and i32 %7, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %shr.mask)
  %cmp8.not = icmp eq i32 %shr.mask, 65536
  br i1 %cmp8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %fw_state, align 4
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %trunc = trunc i32 %7 to i16
  %11 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.193)
  switch i16 %trunc, label %do.end113 [
    i16 1, label %if.end12.sw.bb_crit_edge
    i16 2, label %sw.bb15
    i16 3, label %if.end12.sw.bb25_crit_edge
    i16 4, label %if.end12.sw.bb25_crit_edge19
    i16 5, label %if.end12.sw.bb25_crit_edge20
    i16 6, label %sw.bb81
  ]

if.end12.sw.bb25_crit_edge20:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25

if.end12.sw.bb25_crit_edge19:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25

if.end12.sw.bb25_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25

if.end12.sw.bb_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %if.end12.sw.bb_crit_edge, %entry.sw.bb_crit_edge
  %12 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %fw_state, align 4
  %pciea_to_arm_msg1 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %pciea_to_arm_msg1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pciea_to_arm_msg1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 1515870810) #12, !srcloc !396
  %pciea_to_arm_msg0 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %pciea_to_arm_msg0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pciea_to_arm_msg0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 33554688) #12, !srcloc !396
  %pciea_to_arm_drbl_reg = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %pciea_to_arm_drbl_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pciea_to_arm_drbl_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 16777216) #12, !srcloc !396
  br label %cleanup

sw.bb15:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %handshake_page_phys = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 21
  %19 = ptrtoint ptr %handshake_page_phys to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %handshake_page_phys, align 4
  %pciea_to_arm_msg117 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %pciea_to_arm_msg117 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pciea_to_arm_msg117, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  %23 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %23) #12, !srcloc !396
  %arm_to_pciea_msg1 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 13
  %24 = ptrtoint ptr %arm_to_pciea_msg1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arm_to_pciea_msg1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #12, !srcloc !396
  %pciea_to_arm_msg023 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %pciea_to_arm_msg023 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pciea_to_arm_msg023, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 50331904) #12, !srcloc !396
  %pciea_to_arm_drbl_reg24 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %pciea_to_arm_drbl_reg24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pciea_to_arm_drbl_reg24, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 16777216) #12, !srcloc !396
  br label %cleanup

sw.bb25:                                          ; preds = %if.end12.sw.bb25_crit_edge, %if.end12.sw.bb25_crit_edge19, %if.end12.sw.bb25_crit_edge20
  %handshake_page = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 20
  %30 = ptrtoint ptr %handshake_page to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %handshake_page, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cmp26 = icmp eq i8 %33, 1
  br i1 %cmp26, label %if.then28, label %sw.bb25.if.end36_crit_edge

sw.bb25.if.end36_crit_edge:                       ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then28:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #14
  %total_pages = getelementptr inbounds %struct.mvumi_hs_page1, ptr %31, i32 0, i32 12
  %34 = ptrtoint ptr %total_pages to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %total_pages, align 1
  %hba_total_pages = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp31 = icmp eq i8 %35, 0
  %spec.store.select = select i1 %cmp31, i8 4, i8 %35
  %36 = ptrtoint ptr %hba_total_pages to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %spec.store.select, ptr %hba_total_pages, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then28, %sw.bb25.if.end36_crit_edge
  %37 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.194)
  switch i16 %trunc, label %if.end36.if.end57_crit_edge [
    i16 4, label %if.then39
    i16 3, label %if.then53
  ]

if.end36.if.end57_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then39:                                        ; preds = %if.end36
  %call40 = tail call fastcc i32 @mvumi_hs_process_page(ptr noundef %mhba, ptr noundef %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end44, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end44:                                         ; preds = %if.then39
  %fw_flag.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 35
  %38 = ptrtoint ptr %fw_flag.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %fw_flag.i, align 1
  %40 = and i8 %39, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end44.if.end57_crit_edge

if.end44.if.end57_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.end.i:                                         ; preds = %if.end44
  %ib_max_size.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 29
  %41 = ptrtoint ptr %ib_max_size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ib_max_size.i, align 4
  %max_io.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 27
  %43 = ptrtoint ptr %max_io.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_io.i, align 4
  %hba_capability.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 38
  %45 = ptrtoint ptr %hba_capability.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %hba_capability.i, align 4
  %47 = and i16 %46, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool3.not.i = icmp eq i16 %47, 0
  %mul6.i = shl i32 %44, 4
  %ob_max_size.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 30
  %48 = ptrtoint ptr %ob_max_size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ob_max_size.i, align 4
  %reass.add.i = add i32 %49, %42
  %reass.mul.i = mul i32 %reass.add.i, %44
  %mul6.op.i = add i32 %mul6.i, 160
  %add11.i = select i1 %tobool3.not.i, i32 160, i32 %mul6.op.i
  %add12.i = add i32 %add11.i, %reass.mul.i
  %call.i = tail call fastcc ptr @mvumi_alloc_mem_resource(ptr noundef %mhba, i32 noundef 1, i32 noundef %add12.i) #12
  %tobool13.not.i = icmp eq ptr %call.i, null
  br i1 %tobool13.not.i, label %do.end.i, label %if.end15.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  br label %mvumi_init_data.exit

if.end15.i:                                       ; preds = %if.end.i
  %bus_addr.i = getelementptr inbounds %struct.mvumi_res, ptr %call.i, i32 0, i32 1
  %50 = ptrtoint ptr %bus_addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bus_addr.i, align 4
  %virt_addr.i = getelementptr inbounds %struct.mvumi_res, ptr %call.i, i32 0, i32 2
  %52 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %virt_addr.i, align 4
  %sub.i = add i32 %51, -1
  %or.i = or i32 %sub.i, 127
  %add16.i = add i32 %or.i, 1
  %sub17.i = sub i32 %add16.i, %51
  %add.ptr.i = getelementptr i8, ptr %53, i32 %sub17.i
  %ib_list.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 10
  %54 = ptrtoint ptr %ib_list.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr.i, ptr %ib_list.i, align 4
  %ib_list_phys.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 11
  %55 = ptrtoint ptr %ib_list_phys.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add16.i, ptr %ib_list_phys.i, align 4
  %56 = ptrtoint ptr %hba_capability.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %hba_capability.i, align 4
  %58 = and i16 %57, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool22.not.i = icmp eq i16 %58, 0
  br i1 %tobool22.not.i, label %if.end15.i.if.end30.i_crit_edge, label %if.then23.i

if.end15.i.if.end30.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i

if.then23.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %max_io.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_io.i, align 4
  %mul25.i = shl i32 %60, 4
  %add.ptr26.i = getelementptr i8, ptr %add.ptr.i, i32 %mul25.i
  %add29.i = add i32 %mul25.i, %add16.i
  %ib_frame.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 12
  %61 = ptrtoint ptr %ib_frame.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr26.i, ptr %ib_frame.i, align 4
  %ib_frame_phys.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 13
  %62 = ptrtoint ptr %ib_frame_phys.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add29.i, ptr %ib_frame_phys.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then23.i, %if.end15.i.if.end30.i_crit_edge
  %v.0.i = phi ptr [ %add.ptr26.i, %if.then23.i ], [ %add.ptr.i, %if.end15.i.if.end30.i_crit_edge ]
  %p.0.i = phi i32 [ %add29.i, %if.then23.i ], [ %add16.i, %if.end15.i.if.end30.i_crit_edge ]
  %63 = ptrtoint ptr %ib_max_size.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ib_max_size.i, align 4
  %65 = ptrtoint ptr %max_io.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_io.i, align 4
  %mul33.i = mul i32 %66, %64
  %add.ptr34.i = getelementptr i8, ptr %v.0.i, i32 %mul33.i
  %add38.i = add i32 %mul33.i, %p.0.i
  %sub39.i = add i32 %add38.i, -1
  %or40.i = or i32 %sub39.i, 7
  %add41.i = add i32 %or40.i, 1
  %sub42.i = sub i32 %add41.i, %add38.i
  %add.ptr44.i = getelementptr i8, ptr %add.ptr34.i, i32 %sub42.i
  %ib_shadow.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 16
  %67 = ptrtoint ptr %ib_shadow.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr44.i, ptr %ib_shadow.i, align 4
  %ib_shadow_phys.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 17
  %68 = ptrtoint ptr %ib_shadow_phys.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add41.i, ptr %ib_shadow_phys.i, align 4
  %add.ptr46.i = getelementptr i8, ptr %add.ptr44.i, i32 8
  %pdev47.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %69 = ptrtoint ptr %pdev47.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev47.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -27264, i16 %72)
  %cmp.i = icmp eq i16 %72, -27264
  %..i = select i1 %cmp.i, i32 17, i32 13
  %.268.i = select i1 %cmp.i, i32 8, i32 4
  %add67.i = add i32 %..i, %or40.i
  %add61.sink.i = add i32 %or40.i, 9
  %73 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 18
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr46.i, ptr %73, align 4
  %75 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 19
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add61.sink.i, ptr %75, align 4
  %77 = getelementptr i8, ptr %add.ptr46.i, i32 %.268.i
  %sub70.i = add i32 %add67.i, -1
  %or71.i = or i32 %sub70.i, 127
  %add72.i = add i32 %or71.i, 1
  %sub73.i = sub i32 %add72.i, %add67.i
  %add.ptr75.i = getelementptr i8, ptr %77, i32 %sub73.i
  %ob_list.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 14
  %78 = ptrtoint ptr %ob_list.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr75.i, ptr %ob_list.i, align 4
  %ob_list_phys.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 15
  %79 = ptrtoint ptr %ob_list_phys.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add72.i, ptr %ob_list_phys.i, align 4
  %80 = ptrtoint ptr %ob_max_size.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ob_max_size.i, align 4
  %add78.i = add i32 %81, 8
  %mul79.i = mul i32 %add78.i, %66
  %sub80.i = add i32 %mul79.i, -1
  %or81.i = or i32 %sub80.i, 7
  %add82.i = add i32 %or81.i, 1
  %call83.i = tail call fastcc ptr @mvumi_alloc_mem_resource(ptr noundef %mhba, i32 noundef 0, i32 noundef %add82.i) #12
  %tobool84.not.i = icmp eq ptr %call83.i, null
  br i1 %tobool84.not.i, label %if.end30.i.mvumi_init_data.exit_crit_edge, label %if.end91.i

if.end30.i.mvumi_init_data.exit_crit_edge:        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_init_data.exit

if.end91.i:                                       ; preds = %if.end30.i
  %82 = ptrtoint ptr %max_io.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %max_io.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp94.not263.i = icmp eq i32 %83, 0
  br i1 %cmp94.not263.i, label %if.end91.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end91.i.for.end.i_crit_edge:                   ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end91.i
  %virt_addr92.i = getelementptr inbounds %struct.mvumi_res, ptr %call83.i, i32 0, i32 2
  %84 = ptrtoint ptr %virt_addr92.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %virt_addr92.i, align 4
  %ob_data_list.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 44
  %prev.i.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 44, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %virmem.0265.i = phi ptr [ %85, %for.body.lr.ph.i ], [ %add.ptr98.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  %i.0264.i = phi i32 [ %83, %for.body.lr.ph.i ], [ %dec.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  %86 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %virmem.0265.i, ptr noundef %87, ptr noundef %ob_data_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_add_tail.exit.i_crit_edge

for.body.i.list_add_tail.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %virmem.0265.i, ptr %prev.i.i, align 4
  %89 = ptrtoint ptr %virmem.0265.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %ob_data_list.i, ptr %virmem.0265.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %virmem.0265.i, i32 0, i32 1
  %90 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %prev3.i.i.i, align 4
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %virmem.0265.i, ptr %87, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_add_tail.exit.i_crit_edge
  %92 = ptrtoint ptr %ob_max_size.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ob_max_size.i, align 4
  %add97.i = add i32 %93, 8
  %add.ptr98.i = getelementptr i8, ptr %virmem.0265.i, i32 %add97.i
  %dec.i = add i32 %i.0264.i, -1
  %cmp94.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp94.not.i, label %list_add_tail.exit.i.for.end.i_crit_edge, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_add_tail.exit.i.for.end.i_crit_edge:         ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %list_add_tail.exit.i.for.end.i_crit_edge, %if.end91.i.for.end.i_crit_edge
  %94 = ptrtoint ptr %max_io.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %max_io.i, align 4
  %add103.i = mul i32 %95, 6
  %max_target_id.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 25
  %96 = ptrtoint ptr %max_target_id.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %max_target_id.i, align 2
  %conv104.i = zext i16 %97 to i32
  %sub105.i = add nsw i32 %conv104.i, -1
  %or106.i = or i32 %sub105.i, 7
  %add107.i = add nsw i32 %or106.i, 1
  %div262.i = lshr exact i32 %add107.i, 3
  %add108.i = add i32 %div262.i, %add103.i
  %call109.i = tail call fastcc ptr @mvumi_alloc_mem_resource(ptr noundef %mhba, i32 noundef 0, i32 noundef %add108.i) #12
  %tobool110.not.i = icmp eq ptr %call109.i, null
  br i1 %tobool110.not.i, label %for.end.i.mvumi_init_data.exit_crit_edge, label %if.end117.i

for.end.i.mvumi_init_data.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_init_data.exit

if.end117.i:                                      ; preds = %for.end.i
  %virt_addr118.i = getelementptr inbounds %struct.mvumi_res, ptr %call109.i, i32 0, i32 2
  %98 = ptrtoint ptr %virt_addr118.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %virt_addr118.i, align 4
  %tag_pool.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 48
  %100 = ptrtoint ptr %tag_pool.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %tag_pool.i, align 4
  %101 = ptrtoint ptr %max_io.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %max_io.i, align 4
  %conv120.i = trunc i32 %102 to i16
  %size.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 48, i32 2
  %103 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv120.i, ptr %size.i, align 2
  %top.i.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 48, i32 1
  %104 = ptrtoint ptr %top.i.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv120.i, ptr %top.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv120.i)
  %cmp1327.not.i.i = icmp eq i16 %conv120.i, 0
  br i1 %cmp1327.not.i.i, label %if.end117.i.tag_init.exit.i_crit_edge, label %for.body.preheader.i.i

if.end117.i.tag_init.exit.i_crit_edge:            ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tag_init.exit.i

for.body.preheader.i.i:                           ; preds = %if.end117.i
  %wide.trip.count.i.i = and i32 %102, 65535
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.028.i.i = phi i16 [ 0, %for.body.preheader.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %105 = xor i16 %i.028.i.i, -1
  %sub17.i.i = add i16 %105, %conv120.i
  %106 = ptrtoint ptr %tag_pool.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tag_pool.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %107, i32 %indvars.iv.i.i
  %108 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %sub17.i.i, ptr %arrayidx.i.i, align 2
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %inc.i.i = add nuw i16 %i.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.tag_init.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.tag_init.exit.i_crit_edge:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tag_init.exit.i

tag_init.exit.i:                                  ; preds = %for.body.i.i.tag_init.exit.i_crit_edge, %if.end117.i.tag_init.exit.i_crit_edge
  %109 = ptrtoint ptr %max_io.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %max_io.i, align 4
  %mul126.i = shl i32 %110, 1
  %add.ptr127.i = getelementptr i8, ptr %99, i32 %mul126.i
  %tag_cmd.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 49
  %111 = ptrtoint ptr %tag_cmd.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %add.ptr127.i, ptr %tag_cmd.i, align 4
  %mul129.i = shl i32 %110, 2
  %add.ptr130.i = getelementptr i8, ptr %add.ptr127.i, i32 %mul129.i
  %target_map.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 26
  %112 = ptrtoint ptr %target_map.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %add.ptr130.i, ptr %target_map.i, align 4
  %113 = ptrtoint ptr %fw_flag.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %fw_flag.i, align 1
  %115 = or i8 %114, 4
  store i8 %115, ptr %fw_flag.i, align 1
  br label %if.end57

mvumi_init_data.exit:                             ; preds = %for.end.i.mvumi_init_data.exit_crit_edge, %if.end30.i.mvumi_init_data.exit_crit_edge, %do.end.i
  %pdev47.sink.i = phi ptr [ %pdev.i, %do.end.i ], [ %pdev47.i, %if.end30.i.mvumi_init_data.exit_crit_edge ], [ %pdev47.i, %for.end.i.mvumi_init_data.exit_crit_edge ]
  %.str.83.sink.i = phi ptr [ @.str.77, %do.end.i ], [ @.str.80, %if.end30.i.mvumi_init_data.exit_crit_edge ], [ @.str.83, %for.end.i.mvumi_init_data.exit_crit_edge ]
  %116 = ptrtoint ptr %pdev47.sink.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pdev47.sink.i, align 4
  %dev116.i = getelementptr inbounds %struct.pci_dev, ptr %117, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev116.i, ptr noundef nonnull %.str.83.sink.i) #15
  tail call fastcc void @mvumi_release_mem_resource(ptr noundef %mhba) #12
  br label %cleanup

if.then53:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %118 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %31, align 4
  %hba_total_pages55 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 34
  %119 = ptrtoint ptr %hba_total_pages55 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 4, ptr %hba_total_pages55, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %tag_init.exit.i, %if.end44.if.end57_crit_edge, %if.end36.if.end57_crit_edge
  %120 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %31, align 4
  %hba_total_pages60 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 34
  %122 = ptrtoint ptr %hba_total_pages60 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %hba_total_pages60, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %121, i8 %123)
  %cmp62.not.not = icmp ult i8 %121, %123
  br i1 %cmp62.not.not, label %if.then64, label %if.end57.if.end77_crit_edge

if.end57.if.end77_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then64:                                        ; preds = %if.end57
  %inc = add nuw i8 %121, 1
  %124 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %inc, ptr %31, align 4
  %125 = zext i8 %121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.195)
  switch i8 %121, label %do.end.i12 [
    i8 0, label %if.then64.if.end77_crit_edge
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb10.i
    i8 3, label %sw.bb19.i
  ]

if.then64.if.end77_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

sw.bb.i:                                          ; preds = %if.then64
  %frame_length.i = getelementptr inbounds %struct.mvumi_hs_header, ptr %31, i32 0, i32 2
  %126 = ptrtoint ptr %frame_length.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 44, ptr %frame_length.i, align 2
  %frame_content.i = getelementptr inbounds %struct.mvumi_hs_header, ptr %31, i32 0, i32 3
  %127 = call ptr @memset(ptr %frame_content.i, i32 0, i32 44)
  %128 = ptrtoint ptr %frame_content.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 3, ptr %frame_content.i, align 4
  %hba_capability.i2 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 38
  %129 = ptrtoint ptr %hba_capability.i2 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %hba_capability.i2, align 4
  %131 = and i16 %130, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %tobool.not.i3 = icmp eq i16 %131, 0
  br i1 %tobool.not.i3, label %sw.bb.i.if.end.i6_crit_edge, label %if.then.i

sw.bb.i.if.end.i6_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i6

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %host_cap.i = getelementptr inbounds %struct.mvumi_hs_page2, ptr %31, i32 0, i32 4
  %132 = ptrtoint ptr %host_cap.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 8, ptr %host_cap.i, align 1
  br label %if.end.i6

if.end.i6:                                        ; preds = %if.then.i, %sw.bb.i.if.end.i6_crit_edge
  %host_ver.i = getelementptr inbounds %struct.mvumi_hs_page2, ptr %31, i32 0, i32 6
  %133 = ptrtoint ptr %host_ver.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 1, ptr %host_ver.i, align 8
  %ver_minor.i = getelementptr inbounds %struct.mvumi_hs_page2, ptr %31, i32 0, i32 6, i32 1
  %134 = ptrtoint ptr %ver_minor.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 1, ptr %ver_minor.i, align 4
  %ver_oem.i = getelementptr inbounds %struct.mvumi_hs_page2, ptr %31, i32 0, i32 6, i32 2
  %135 = ptrtoint ptr %ver_oem.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %ver_oem.i, align 8
  %ver_build.i = getelementptr inbounds %struct.mvumi_hs_page2, ptr %31, i32 0, i32 6, i32 3
  %136 = ptrtoint ptr %ver_build.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 1500, ptr %ver_build.i, align 4
  %system_io_bus.i = getelementptr inbounds %struct.mvumi_hs_page2, ptr %31, i32 0, i32 7
  %137 = call ptr @memset(ptr %system_io_bus.i, i32 0, i32 16)
  %call.i4 = tail call i64 @ktime_get_real_seconds() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %138 = load i32, ptr @sys_tz, align 4
  %mul.i = mul i32 %138, 60
  %conv7.i = sext i32 %mul.i to i64
  %sub.i5 = sub i64 %call.i4, %conv7.i
  %seconds_since1970.i = getelementptr inbounds %struct.mvumi_hs_page2, ptr %31, i32 0, i32 11
  %139 = ptrtoint ptr %seconds_since1970.i to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %sub.i5, ptr %seconds_since1970.i, align 8
  %140 = ptrtoint ptr %frame_length.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %frame_length.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %141)
  %cmp10.not.i.i = icmp eq i16 %141, 0
  br i1 %cmp10.not.i.i, label %if.end.i6.mvumi_calculate_checksum.exit.i_crit_edge, label %if.end.i6.for.body.i.i8_crit_edge

if.end.i6.for.body.i.i8_crit_edge:                ; preds = %if.end.i6
  br label %for.body.i.i8

if.end.i6.mvumi_calculate_checksum.exit.i_crit_edge: ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_calculate_checksum.exit.i

for.body.i.i8:                                    ; preds = %for.body.i.i8.for.body.i.i8_crit_edge, %if.end.i6.for.body.i.i8_crit_edge
  %i.013.i.i = phi i8 [ %inc.i.i7, %for.body.i.i8.for.body.i.i8_crit_edge ], [ 0, %if.end.i6.for.body.i.i8_crit_edge ]
  %ret.012.i.i = phi i8 [ %xor9.i.i, %for.body.i.i8.for.body.i.i8_crit_edge ], [ 0, %if.end.i6.for.body.i.i8_crit_edge ]
  %ptr.011.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i8.for.body.i.i8_crit_edge ], [ %frame_content.i, %if.end.i6.for.body.i.i8_crit_edge ]
  %142 = ptrtoint ptr %ptr.011.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %ptr.011.i.i, align 1
  %xor9.i.i = xor i8 %143, %ret.012.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %ptr.011.i.i, i32 1
  %inc.i.i7 = add i8 %i.013.i.i, 1
  %144 = zext i8 %inc.i.i7 to i16
  %cmp.i.i = icmp ugt i16 %141, %144
  br i1 %cmp.i.i, label %for.body.i.i8.for.body.i.i8_crit_edge, label %for.body.i.i8.mvumi_calculate_checksum.exit.i_crit_edge

for.body.i.i8.mvumi_calculate_checksum.exit.i_crit_edge: ; preds = %for.body.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_calculate_checksum.exit.i

for.body.i.i8.for.body.i.i8_crit_edge:            ; preds = %for.body.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i8

mvumi_calculate_checksum.exit.i:                  ; preds = %for.body.i.i8.mvumi_calculate_checksum.exit.i_crit_edge, %if.end.i6.mvumi_calculate_checksum.exit.i_crit_edge
  %ret.0.lcssa.i.i = phi i8 [ 0, %if.end.i6.mvumi_calculate_checksum.exit.i_crit_edge ], [ %xor9.i.i, %for.body.i.i8.mvumi_calculate_checksum.exit.i_crit_edge ]
  %checksum.i = getelementptr inbounds %struct.mvumi_hs_header, ptr %31, i32 0, i32 1
  %145 = ptrtoint ptr %checksum.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %ret.0.lcssa.i.i, ptr %checksum.i, align 1
  br label %if.end77

sw.bb10.i:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  %frame_length11.i = getelementptr inbounds %struct.mvumi_hs_header, ptr %31, i32 0, i32 2
  %146 = ptrtoint ptr %frame_length11.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 20, ptr %frame_length11.i, align 2
  %frame_content12.i = getelementptr inbounds %struct.mvumi_hs_header, ptr %31, i32 0, i32 3
  %147 = call ptr @memset(ptr %frame_content12.i, i32 0, i32 20)
  %checksum18.i = getelementptr inbounds %struct.mvumi_hs_header, ptr %31, i32 0, i32 1
  %148 = ptrtoint ptr %checksum18.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %checksum18.i, align 1
  br label %if.end77

sw.bb19.i:                                        ; preds = %if.then64
  %frame_length20.i = getelementptr inbounds %struct.mvumi_hs_header, ptr %31, i32 0, i32 2
  %149 = ptrtoint ptr %frame_length20.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 20, ptr %frame_length20.i, align 2
  %frame_content21.i = getelementptr inbounds %struct.mvumi_hs_header, ptr %31, i32 0, i32 3
  %150 = call ptr @memset(ptr %frame_content21.i, i32 0, i32 20)
  %ib_list_phys.i9 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 11
  %151 = ptrtoint ptr %ib_list_phys.i9 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %ib_list_phys.i9, align 4
  %153 = ptrtoint ptr %frame_content21.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %frame_content21.i, align 4
  %ib_baseaddr_h.i = getelementptr inbounds %struct.mvumi_hs_page4, ptr %31, i32 0, i32 4
  %154 = ptrtoint ptr %ib_baseaddr_h.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %ib_baseaddr_h.i, align 4
  %ob_list_phys.i10 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 15
  %155 = ptrtoint ptr %ob_list_phys.i10 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %ob_list_phys.i10, align 4
  %ob_baseaddr_l.i = getelementptr inbounds %struct.mvumi_hs_page4, ptr %31, i32 0, i32 5
  %157 = ptrtoint ptr %ob_baseaddr_l.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %ob_baseaddr_l.i, align 4
  %ob_baseaddr_h.i = getelementptr inbounds %struct.mvumi_hs_page4, ptr %31, i32 0, i32 6
  %158 = ptrtoint ptr %ob_baseaddr_h.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %ob_baseaddr_h.i, align 4
  %ib_max_size_setting.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 31
  %159 = ptrtoint ptr %ib_max_size_setting.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %ib_max_size_setting.i, align 4
  %conv32.i = trunc i32 %160 to i8
  %ib_entry_size.i = getelementptr inbounds %struct.mvumi_hs_page4, ptr %31, i32 0, i32 7
  %161 = ptrtoint ptr %ib_entry_size.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv32.i, ptr %ib_entry_size.i, align 4
  %ob_max_size_setting.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 32
  %162 = ptrtoint ptr %ob_max_size_setting.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %ob_max_size_setting.i, align 4
  %conv33.i = trunc i32 %163 to i8
  %ob_entry_size.i = getelementptr inbounds %struct.mvumi_hs_page4, ptr %31, i32 0, i32 8
  %164 = ptrtoint ptr %ob_entry_size.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %conv33.i, ptr %ob_entry_size.i, align 1
  %hba_capability34.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 38
  %165 = ptrtoint ptr %hba_capability34.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %hba_capability34.i, align 4
  %167 = and i16 %166, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %167)
  %tobool37.not.i = icmp eq i16 %167, 0
  %list_num_io44.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 28
  br i1 %tobool37.not.i, label %if.else.i, label %if.then38.i

if.then38.i:                                      ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #14
  %call39.i = tail call i32 @_find_first_bit_be(ptr noundef %list_num_io44.i, i32 noundef 32) #12
  %conv40.i = trunc i32 %call39.i to i8
  %ob_depth.i = getelementptr inbounds %struct.mvumi_hs_page4, ptr %31, i32 0, i32 9
  %168 = ptrtoint ptr %ob_depth.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %conv40.i, ptr %ob_depth.i, align 2
  %call42.i = tail call i32 @_find_first_bit_be(ptr noundef %list_num_io44.i, i32 noundef 32) #12
  br label %if.end50.i

if.else.i:                                        ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #14
  %169 = ptrtoint ptr %list_num_io44.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %list_num_io44.i, align 4
  %conv45.i = trunc i32 %170 to i8
  %ob_depth46.i = getelementptr inbounds %struct.mvumi_hs_page4, ptr %31, i32 0, i32 9
  %171 = ptrtoint ptr %ob_depth46.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %conv45.i, ptr %ob_depth46.i, align 2
  %172 = load i32, ptr %list_num_io44.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.else.i, %if.then38.i
  %conv43.sink.in.i = phi i32 [ %172, %if.else.i ], [ %call42.i, %if.then38.i ]
  %conv43.sink.i = trunc i32 %conv43.sink.in.i to i8
  %173 = getelementptr inbounds %struct.mvumi_hs_page4, ptr %31, i32 0, i32 10
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %conv43.sink.i, ptr %173, align 1
  %175 = ptrtoint ptr %frame_length20.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %frame_length20.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %176)
  %cmp10.not.i121.i = icmp eq i16 %176, 0
  br i1 %cmp10.not.i121.i, label %if.end50.i.mvumi_calculate_checksum.exit133.i_crit_edge, label %if.end50.i.for.body.i131.i_crit_edge

if.end50.i.for.body.i131.i_crit_edge:             ; preds = %if.end50.i
  br label %for.body.i131.i

if.end50.i.mvumi_calculate_checksum.exit133.i_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_calculate_checksum.exit133.i

for.body.i131.i:                                  ; preds = %for.body.i131.i.for.body.i131.i_crit_edge, %if.end50.i.for.body.i131.i_crit_edge
  %i.013.i124.i = phi i8 [ %inc.i129.i, %for.body.i131.i.for.body.i131.i_crit_edge ], [ 0, %if.end50.i.for.body.i131.i_crit_edge ]
  %ret.012.i125.i = phi i8 [ %xor9.i127.i, %for.body.i131.i.for.body.i131.i_crit_edge ], [ 0, %if.end50.i.for.body.i131.i_crit_edge ]
  %ptr.011.i126.i = phi ptr [ %incdec.ptr.i128.i, %for.body.i131.i.for.body.i131.i_crit_edge ], [ %frame_content21.i, %if.end50.i.for.body.i131.i_crit_edge ]
  %177 = ptrtoint ptr %ptr.011.i126.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %ptr.011.i126.i, align 1
  %xor9.i127.i = xor i8 %178, %ret.012.i125.i
  %incdec.ptr.i128.i = getelementptr i8, ptr %ptr.011.i126.i, i32 1
  %inc.i129.i = add i8 %i.013.i124.i, 1
  %179 = zext i8 %inc.i129.i to i16
  %cmp.i130.i = icmp ugt i16 %176, %179
  br i1 %cmp.i130.i, label %for.body.i131.i.for.body.i131.i_crit_edge, label %for.body.i131.i.mvumi_calculate_checksum.exit133.i_crit_edge

for.body.i131.i.mvumi_calculate_checksum.exit133.i_crit_edge: ; preds = %for.body.i131.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_calculate_checksum.exit133.i

for.body.i131.i.for.body.i131.i_crit_edge:        ; preds = %for.body.i131.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i131.i

mvumi_calculate_checksum.exit133.i:               ; preds = %for.body.i131.i.mvumi_calculate_checksum.exit133.i_crit_edge, %if.end50.i.mvumi_calculate_checksum.exit133.i_crit_edge
  %ret.0.lcssa.i132.i = phi i8 [ 0, %if.end50.i.mvumi_calculate_checksum.exit133.i_crit_edge ], [ %xor9.i127.i, %for.body.i131.i.mvumi_calculate_checksum.exit133.i_crit_edge ]
  %checksum53.i = getelementptr inbounds %struct.mvumi_hs_header, ptr %31, i32 0, i32 1
  %180 = ptrtoint ptr %checksum53.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %ret.0.lcssa.i132.i, ptr %checksum53.i, align 1
  br label %if.end77

do.end.i12:                                       ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i8 %inc to i32
  %pdev.i11 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %181 = ptrtoint ptr %pdev.i11 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %pdev.i11, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %182, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.96, i32 noundef %conv.i) #15
  br label %if.end77

if.end77:                                         ; preds = %do.end.i12, %mvumi_calculate_checksum.exit133.i, %sw.bb10.i, %mvumi_calculate_checksum.exit.i, %if.then64.if.end77_crit_edge, %if.end57.if.end77_crit_edge
  %hs_fun.0 = phi i32 [ 65540, %if.then64.if.end77_crit_edge ], [ 65542, %if.end57.if.end77_crit_edge ], [ 65541, %mvumi_calculate_checksum.exit.i ], [ 65541, %sw.bb10.i ], [ 65541, %mvumi_calculate_checksum.exit133.i ], [ 65541, %do.end.i12 ]
  %pciea_to_arm_msg079 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 10
  %183 = ptrtoint ptr %pciea_to_arm_msg079 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %pciea_to_arm_msg079, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  %185 = tail call i32 @llvm.bswap.i32(i32 %hs_fun.0) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 %185) #12, !srcloc !396
  %pciea_to_arm_drbl_reg80 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 7
  %186 = ptrtoint ptr %pciea_to_arm_drbl_reg80 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %pciea_to_arm_drbl_reg80, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 16777216) #12, !srcloc !396
  br label %cleanup

sw.bb81:                                          ; preds = %if.end12
  %enpointa_mask_reg = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 1
  %188 = ptrtoint ptr %enpointa_mask_reg to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %enpointa_mask_reg, align 4
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #12, !srcloc !393
  %191 = tail call i32 @llvm.bswap.i32(i32 %190) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %int_comaout = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 32
  %192 = ptrtoint ptr %int_comaout to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %int_comaout, align 4
  %int_comaerr = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 33
  %194 = ptrtoint ptr %int_comaerr to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %int_comaerr, align 4
  %or83 = or i32 %193, %191
  %or84 = or i32 %or83, %195
  %196 = ptrtoint ptr %enpointa_mask_reg to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %enpointa_mask_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  %198 = tail call i32 @llvm.bswap.i32(i32 %or84) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 %198) #12, !srcloc !396
  %list_num_io = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 28
  %199 = ptrtoint ptr %list_num_io to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %list_num_io, align 4
  %ib_shadow = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 16
  %201 = ptrtoint ptr %ib_shadow to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %ib_shadow, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  %203 = tail call i32 @llvm.bswap.i32(i32 %200) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 %203) #12, !srcloc !396
  %ib_shadow_phys = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 17
  %204 = ptrtoint ptr %ib_shadow_phys to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %ib_shadow_phys, align 4
  %inb_aval_count_basel = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 18
  %206 = ptrtoint ptr %inb_aval_count_basel to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %inb_aval_count_basel, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  %208 = tail call i32 @llvm.bswap.i32(i32 %205) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %207, i32 %208) #12, !srcloc !396
  %inb_aval_count_baseh = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 19
  %209 = ptrtoint ptr %inb_aval_count_baseh to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %inb_aval_count_baseh, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %210, i32 0) #12, !srcloc !396
  %pdev90 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %211 = ptrtoint ptr %pdev90 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %pdev90, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %212, i32 0, i32 8
  %213 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28349, i16 %214)
  %cmp92 = icmp eq i16 %214, -28349
  br i1 %cmp92, label %if.then94, label %sw.bb81.if.end101_crit_edge

sw.bb81.if.end101_crit_edge:                      ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then94:                                        ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #14
  %215 = ptrtoint ptr %list_num_io to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %list_num_io, align 4
  %sub = add i32 %216, -1
  %cl_pointer_toggle = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 38
  %217 = ptrtoint ptr %cl_pointer_toggle to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %cl_pointer_toggle, align 4
  %or96 = or i32 %sub, %218
  %ob_shadow = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 18
  %219 = ptrtoint ptr %ob_shadow to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ob_shadow, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  %221 = tail call i32 @llvm.bswap.i32(i32 %or96) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 %221) #12, !srcloc !396
  %ob_shadow_phys = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 19
  %222 = ptrtoint ptr %ob_shadow_phys to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %ob_shadow_phys, align 4
  %outb_copy_basel = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 24
  %224 = ptrtoint ptr %outb_copy_basel to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %outb_copy_basel, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  %226 = tail call i32 @llvm.bswap.i32(i32 %223) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 %226) #12, !srcloc !396
  %outb_copy_baseh = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 25
  %227 = ptrtoint ptr %outb_copy_baseh to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %outb_copy_baseh, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 0) #12, !srcloc !396
  br label %if.end101

if.end101:                                        ; preds = %if.then94, %sw.bb81.if.end101_crit_edge
  %229 = ptrtoint ptr %list_num_io to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %list_num_io, align 4
  %sub103 = add i32 %230, -1
  %cl_pointer_toggle104 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %1, i32 0, i32 38
  %231 = ptrtoint ptr %cl_pointer_toggle104 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %cl_pointer_toggle104, align 4
  %or105 = or i32 %sub103, %232
  %ib_cur_slot = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 40
  %233 = ptrtoint ptr %ib_cur_slot to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %or105, ptr %ib_cur_slot, align 4
  %234 = load i32, ptr %cl_pointer_toggle104, align 4
  %or109 = or i32 %234, %sub103
  %ob_cur_slot = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 41
  %235 = ptrtoint ptr %ob_cur_slot to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %or109, ptr %ob_cur_slot, align 4
  %236 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 3, ptr %fw_state, align 4
  br label %cleanup

do.end113:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %pdev114 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %237 = ptrtoint ptr %pdev114 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %pdev114, align 4
  %dev115 = getelementptr inbounds %struct.pci_dev, ptr %238, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev115, ptr noundef nonnull @.str.70, i32 noundef %and) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end113, %if.end101, %if.end77, %mvumi_init_data.exit, %if.then39.cleanup_crit_edge, %sw.bb15, %sw.bb, %if.then9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvumi_hs_process_page(ptr nocapture noundef %mhba, ptr nocapture noundef readonly %hs_header) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frame_length = getelementptr inbounds %struct.mvumi_hs_header, ptr %hs_header, i32 0, i32 2
  %0 = ptrtoint ptr %frame_length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %frame_length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp10.not.i = icmp eq i16 %1, 0
  br i1 %cmp10.not.i, label %entry.mvumi_calculate_checksum.exit_crit_edge, label %for.body.preheader.i

entry.mvumi_calculate_checksum.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_calculate_checksum.exit

for.body.preheader.i:                             ; preds = %entry
  %frame_content.i = getelementptr inbounds %struct.mvumi_hs_header, ptr %hs_header, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.013.i = phi i8 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %ret.012.i = phi i8 [ %xor9.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %ptr.011.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %frame_content.i, %for.body.preheader.i ]
  %2 = ptrtoint ptr %ptr.011.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ptr.011.i, align 1
  %xor9.i = xor i8 %3, %ret.012.i
  %incdec.ptr.i = getelementptr i8, ptr %ptr.011.i, i32 1
  %inc.i = add i8 %i.013.i, 1
  %4 = zext i8 %inc.i to i16
  %cmp.i = icmp ugt i16 %1, %4
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mvumi_calculate_checksum.exit_crit_edge

for.body.i.mvumi_calculate_checksum.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_calculate_checksum.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

mvumi_calculate_checksum.exit:                    ; preds = %for.body.i.mvumi_calculate_checksum.exit_crit_edge, %entry.mvumi_calculate_checksum.exit_crit_edge
  %ret.0.lcssa.i = phi i8 [ 0, %entry.mvumi_calculate_checksum.exit_crit_edge ], [ %xor9.i, %for.body.i.mvumi_calculate_checksum.exit_crit_edge ]
  %checksum = getelementptr inbounds %struct.mvumi_hs_header, ptr %hs_header, i32 0, i32 1
  %5 = ptrtoint ptr %checksum to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %checksum, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %ret.0.lcssa.i, i8 %6)
  %cmp.not = icmp eq i8 %ret.0.lcssa.i, %6
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %mvumi_calculate_checksum.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71) #15
  br label %cleanup

if.end:                                           ; preds = %mvumi_calculate_checksum.exit
  %9 = ptrtoint ptr %hs_header to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hs_header, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cond = icmp eq i8 %10, 1
  br i1 %cond, label %sw.bb, label %do.end44

sw.bb:                                            ; preds = %if.end
  %max_io_support = getelementptr inbounds %struct.mvumi_hs_page1, ptr %hs_header, i32 0, i32 5
  %11 = ptrtoint ptr %max_io_support to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %max_io_support, align 4
  %conv4 = zext i16 %12 to i32
  %max_io = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 27
  %13 = ptrtoint ptr %max_io to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv4, ptr %max_io, align 4
  %cl_inout_list_depth = getelementptr inbounds %struct.mvumi_hs_page1, ptr %hs_header, i32 0, i32 11
  %14 = ptrtoint ptr %cl_inout_list_depth to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cl_inout_list_depth, align 2
  %conv5 = zext i8 %15 to i32
  %list_num_io = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 28
  %16 = ptrtoint ptr %list_num_io to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv5, ptr %list_num_io, align 4
  %max_transfer_size = getelementptr inbounds %struct.mvumi_hs_page1, ptr %hs_header, i32 0, i32 7
  %17 = ptrtoint ptr %max_transfer_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_transfer_size, align 4
  %max_transfer_size6 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 33
  %19 = ptrtoint ptr %max_transfer_size6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %max_transfer_size6, align 4
  %max_devices_support = getelementptr inbounds %struct.mvumi_hs_page1, ptr %hs_header, i32 0, i32 4
  %20 = ptrtoint ptr %max_devices_support to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %max_devices_support, align 2
  %max_target_id = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 25
  %22 = ptrtoint ptr %max_target_id to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %max_target_id, align 2
  %capability = getelementptr inbounds %struct.mvumi_hs_page1, ptr %hs_header, i32 0, i32 13
  %23 = ptrtoint ptr %capability to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %capability, align 4
  %hba_capability = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 38
  %25 = ptrtoint ptr %hba_capability to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %hba_capability, align 4
  %cl_in_max_entry_size = getelementptr inbounds %struct.mvumi_hs_page1, ptr %hs_header, i32 0, i32 9
  %26 = ptrtoint ptr %cl_in_max_entry_size to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cl_in_max_entry_size, align 4
  %conv7 = zext i8 %27 to i32
  %ib_max_size_setting = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 31
  %28 = ptrtoint ptr %ib_max_size_setting to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv7, ptr %ib_max_size_setting, align 4
  %29 = load i8, ptr %cl_in_max_entry_size, align 4
  %conv9 = zext i8 %29 to i32
  %shl10 = shl i32 4, %conv9
  %ib_max_size = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 29
  %30 = ptrtoint ptr %ib_max_size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shl10, ptr %ib_max_size, align 4
  %cl_out_max_entry_size = getelementptr inbounds %struct.mvumi_hs_page1, ptr %hs_header, i32 0, i32 10
  %31 = ptrtoint ptr %cl_out_max_entry_size to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cl_out_max_entry_size, align 1
  %conv11 = zext i8 %32 to i32
  %ob_max_size_setting = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 32
  %33 = ptrtoint ptr %ob_max_size_setting to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv11, ptr %ob_max_size_setting, align 4
  %34 = load i8, ptr %cl_out_max_entry_size, align 1
  %conv13 = zext i8 %34 to i32
  %shl15 = shl i32 4, %conv13
  %ob_max_size = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 30
  %35 = ptrtoint ptr %ob_max_size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shl15, ptr %ob_max_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvumi_hs_process_page.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvumi_hs_process_page, %if.then20)) #12
          to label %do.end25 [label %if.then20], !srcloc !392

if.then20:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %pdev21 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %36 = ptrtoint ptr %pdev21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev21, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %ver_build = getelementptr inbounds %struct.mvumi_hs_page1, ptr %hs_header, i32 0, i32 8, i32 3
  %38 = ptrtoint ptr %ver_build to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ver_build, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvumi_hs_process_page.__UNIQUE_ID_ddebug298, ptr noundef %dev22, ptr noundef nonnull @.str.73, i32 noundef %39) #12
  br label %do.end25

do.end25:                                         ; preds = %if.then20, %sw.bb
  %40 = ptrtoint ptr %hba_capability to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %hba_capability, align 4
  %42 = and i16 %41, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool28.not = icmp eq i16 %42, 0
  %spec.select = select i1 %tobool28.not, i8 27, i8 22
  %43 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 37
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %spec.select, ptr %43, align 1
  %45 = and i16 %41, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool35.not = icmp eq i16 %45, 0
  br i1 %tobool35.not, label %do.end25.cleanup_crit_edge, label %if.then36

do.end25.cleanup_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then36:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %cl_inout_list_depth to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %cl_inout_list_depth, align 2
  %conv38 = zext i8 %47 to i32
  %shl39 = shl nuw i32 1, %conv38
  %48 = ptrtoint ptr %list_num_io to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shl39, ptr %list_num_io, align 4
  br label %cleanup

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pdev45 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %49 = ptrtoint ptr %pdev45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev45, align 4
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef nonnull @.str.75) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.then36, %do.end25.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.end44 ], [ 0, %do.end25.cleanup_crit_edge ], [ 0, %if.then36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mvumi_alloc_mem_resource(ptr noundef %mhba, i32 noundef %type, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 24) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.85) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %type, label %do.end27 [
    i32 0, label %if.end8.i.i
    i32 1, label %sw.bb11
  ]

if.end8.i.i:                                      ; preds = %if.end
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 2848) #17
  %virt_addr = getelementptr inbounds %struct.mvumi_res, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %virt_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i.i, ptr %virt_addr, align 4
  %tobool3.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not, label %do.end7, label %if.end8.i.i.sw.epilog_crit_edge

if.end8.i.i.sw.epilog_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end7:                                          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev8 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %5 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev8, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.88, i32 noundef %size) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  %sub = add i32 %size, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %pdev12 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %7 = ptrtoint ptr %pdev12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev12, align 4
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %bus_addr = getelementptr inbounds %struct.mvumi_res, ptr %call7.i.i, i32 0, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev13, i32 noundef %add, ptr noundef %bus_addr, i32 noundef 3264, i32 noundef 0) #12
  %virt_addr15 = getelementptr inbounds %struct.mvumi_res, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %virt_addr15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %virt_addr15, align 4
  %tobool17.not = icmp eq ptr %call.i, null
  br i1 %tobool17.not, label %do.end21, label %sw.bb11.sw.epilog_crit_edge

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end21:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %pdev12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev12, align 4
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.91, i32 noundef %add) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

do.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pdev28 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %12 = ptrtoint ptr %pdev28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev28, align 4
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.94, i32 noundef %type) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb11.sw.epilog_crit_edge, %if.end8.i.i.sw.epilog_crit_edge
  %size.addr.0 = phi i32 [ %add, %sw.bb11.sw.epilog_crit_edge ], [ %size, %if.end8.i.i.sw.epilog_crit_edge ]
  %conv = trunc i32 %type to i16
  %type30 = getelementptr inbounds %struct.mvumi_res, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %type30 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %type30, align 4
  %size31 = getelementptr inbounds %struct.mvumi_res, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %size31 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %size.addr.0, ptr %size31, align 8
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %res_list = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 46
  %prev.i60 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 46, i32 1
  %18 = ptrtoint ptr %prev.i60 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i60, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %19, ptr noundef %res_list) #12
  br i1 %call.i.i, label %if.end.i.i61, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i61:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %prev.i60 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %prev.i60, align 4
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %res_list, ptr %call7.i.i, align 8
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call7.i.i, ptr %19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i61, %sw.epilog.cleanup_crit_edge, %do.end27, %do.end21, %do.end7, %do.end
  %retval.0 = phi ptr [ null, %do.end27 ], [ null, %do.end21 ], [ null, %do.end7 ], [ null, %do.end ], [ %call7.i.i, %sw.epilog.cleanup_crit_edge ], [ %call7.i.i, %if.end.i.i61 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvumi_scan_events(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mhba = getelementptr inbounds %struct.mvumi_events_wq, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %mhba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mhba, align 4
  %event = getelementptr inbounds %struct.mvumi_events_wq, ptr %work, i32 0, i32 2
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event, align 4
  %call.i = tail call fastcc ptr @mvumi_create_internal_cmd(ptr noundef %1, i32 noundef 512) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.mvumi_get_event.exit_crit_edge, label %if.end.i

entry.mvumi_get_event.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_get_event.exit

if.end.i:                                         ; preds = %entry
  %conv = trunc i32 %3 to i8
  %scmd.i = getelementptr inbounds %struct.mvumi_cmd, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %scmd.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %scmd.i, align 4
  %cmd_status.i = getelementptr inbounds %struct.mvumi_cmd, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %cmd_status.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -128, ptr %cmd_status.i, align 2
  %sync_cmd.i = getelementptr inbounds %struct.mvumi_cmd, ptr %call.i, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sync_cmd.i, i32 noundef 4) #12
  %6 = ptrtoint ptr %sync_cmd.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %sync_cmd.i, align 4
  %frame1.i = getelementptr inbounds %struct.mvumi_cmd, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %frame1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %frame1.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %8, align 4
  %cmd_flag.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %8, i32 0, i32 2
  %10 = ptrtoint ptr %cmd_flag.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 8, ptr %cmd_flag.i, align 4
  %req_function.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %req_function.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %req_function.i, align 1
  %cdb_length.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %8, i32 0, i32 4
  %12 = ptrtoint ptr %cdb_length.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 16, ptr %cdb_length.i, align 2
  %data_transfer_length.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %8, i32 0, i32 6
  %13 = ptrtoint ptr %data_transfer_length.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 388, ptr %data_transfer_length.i, align 4
  %cdb.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %8, i32 0, i32 9
  %14 = call ptr @memset(ptr %cdb.i, i32 0, i32 16)
  %15 = ptrtoint ptr %cdb.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -12, ptr %cdb.i, align 4
  %arrayidx4.i = getelementptr %struct.mvumi_msg_frame, ptr %8, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %arrayidx4.i, align 1
  tail call fastcc void @mvumi_issue_blocked_cmd(ptr noundef %1, ptr noundef nonnull %call.i) #12
  %17 = ptrtoint ptr %cmd_status.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %cmd_status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp.not.i = icmp eq i8 %18, 0
  br i1 %cmp.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i8 %18 to i32
  %pdev.i = getelementptr inbounds %struct.mvumi_hba, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.105, i32 noundef %conv.i) #15
  br label %land.lhs.true.ithread-pre-split.i

if.else.i:                                        ; preds = %if.end.i
  %21 = ptrtoint ptr %frame1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %frame1.i, align 4
  %arrayidx13.i = getelementptr %struct.mvumi_msg_frame, ptr %22, i32 0, i32 9, i32 1
  %23 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx13.i, align 1
  %data_buf.i = getelementptr inbounds %struct.mvumi_cmd, ptr %call.i, i32 0, i32 5
  %25 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data_buf.i, align 4
  %27 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.197)
  switch i8 %24, label %if.else.i.land.lhs.true.i.i_crit_edge [
    i8 0, label %if.then.i.i
    i8 1, label %if.then15.i.i
  ]

if.else.i.land.lhs.true.i.i_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

if.then.i.i:                                      ; preds = %if.else.i
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %26, align 4
  %conv3.i.i = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %29)
  %cmp4.i.i = icmp ugt i8 %29, 6
  br i1 %cmp4.i.i, label %do.end.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp732.not.i.i = icmp eq i8 %29, 0
  br i1 %cmp732.not.i.i, label %for.cond.preheader.i.i.land.lhs.true.ithread-pre-split.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.land.lhs.true.ithread-pre-split.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.ithread-pre-split.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %pdev.i.i.i = getelementptr inbounds %struct.mvumi_hba, ptr %1, i32 0, i32 6
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i.i = getelementptr inbounds %struct.mvumi_hba, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.123, i32 noundef %conv3.i.i, i32 noundef 6) #15
  br label %land.lhs.true.ithread-pre-split.i

for.body.i.i:                                     ; preds = %mvumi_show_event.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.033.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %mvumi_show_event.exit.i.i.for.body.i.i_crit_edge ]
  %32 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %sequence_no.i.i.i = getelementptr %struct.mvumi_event_req, ptr %26, i32 0, i32 2, i32 %i.033.i.i, i32 1
  %34 = ptrtoint ptr %sequence_no.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sequence_no.i.i.i, align 4
  %event_id.i.i.i = getelementptr %struct.mvumi_event_req, ptr %26, i32 0, i32 2, i32 %i.033.i.i, i32 2
  %36 = ptrtoint ptr %event_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %event_id.i.i.i, align 4
  %severity.i.i.i = getelementptr %struct.mvumi_event_req, ptr %26, i32 0, i32 2, i32 %i.033.i.i, i32 3
  %38 = ptrtoint ptr %severity.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %severity.i.i.i, align 4
  %conv.i.i.i = zext i8 %39 to i32
  %device_id.i.i.i = getelementptr %struct.mvumi_event_req, ptr %26, i32 0, i32 2, i32 %i.033.i.i, i32 5
  %40 = ptrtoint ptr %device_id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %device_id.i.i.i, align 2
  %conv1.i.i.i = zext i16 %41 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.125, i32 noundef %35, i32 noundef %37, i32 noundef %conv.i.i.i, i32 noundef %conv1.i.i.i) #15
  %param_count.i.i.i = getelementptr %struct.mvumi_event_req, ptr %26, i32 0, i32 2, i32 %i.033.i.i, i32 4
  %42 = ptrtoint ptr %param_count.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %param_count.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i.i.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.if.end.i.i.i_crit_edge, label %do.end4.i.i.i

for.body.i.i.if.end.i.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

do.end4.i.i.i:                                    ; preds = %for.body.i.i
  %conv6.i.i.i = zext i8 %43 to i32
  %call.i.i1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, i32 noundef %conv6.i.i.i) #15
  %44 = ptrtoint ptr %param_count.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %param_count.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp69.not.i.i.i = icmp eq i8 %45, 0
  br i1 %cmp69.not.i.i.i, label %do.end4.i.i.i.do.end17.i.i.i_crit_edge, label %do.end4.i.i.i.do.end12.i.i.i_crit_edge

do.end4.i.i.i.do.end12.i.i.i_crit_edge:           ; preds = %do.end4.i.i.i
  br label %do.end12.i.i.i

do.end4.i.i.i.do.end17.i.i.i_crit_edge:           ; preds = %do.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17.i.i.i

do.end12.i.i.i:                                   ; preds = %do.end12.i.i.i.do.end12.i.i.i_crit_edge, %do.end4.i.i.i.do.end12.i.i.i_crit_edge
  %i.070.i.i.i = phi i32 [ %inc.i.i.i, %do.end12.i.i.i.do.end12.i.i.i_crit_edge ], [ 0, %do.end4.i.i.i.do.end12.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.mvumi_event_req, ptr %26, i32 0, i32 2, i32 %i.033.i.i, i32 6, i32 %i.070.i.i.i
  %46 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i.i, align 4
  %call14.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %47) #15
  %inc.i.i.i = add nuw nsw i32 %i.070.i.i.i, 1
  %48 = ptrtoint ptr %param_count.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %param_count.i.i.i, align 1
  %conv8.i.i.i = zext i8 %49 to i32
  %cmp.i.i.i = icmp ult i32 %inc.i.i.i, %conv8.i.i.i
  br i1 %cmp.i.i.i, label %do.end12.i.i.i.do.end12.i.i.i_crit_edge, label %do.end12.i.i.i.do.end17.i.i.i_crit_edge

do.end12.i.i.i.do.end17.i.i.i_crit_edge:          ; preds = %do.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17.i.i.i

do.end12.i.i.i.do.end12.i.i.i_crit_edge:          ; preds = %do.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i.i

do.end17.i.i.i:                                   ; preds = %do.end12.i.i.i.do.end17.i.i.i_crit_edge, %do.end4.i.i.i.do.end17.i.i.i_crit_edge
  %call19.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134) #15
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end17.i.i.i, %for.body.i.i.if.end.i.i.i_crit_edge
  %sense_data_length.i.i.i = getelementptr %struct.mvumi_event_req, ptr %26, i32 0, i32 2, i32 %i.033.i.i, i32 7
  %50 = ptrtoint ptr %sense_data_length.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %sense_data_length.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool20.not.i.i.i = icmp eq i8 %51, 0
  br i1 %tobool20.not.i.i.i, label %if.end.i.i.i.mvumi_show_event.exit.i.i_crit_edge, label %do.end24.i.i.i

if.end.i.i.i.mvumi_show_event.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_show_event.exit.i.i

do.end24.i.i.i:                                   ; preds = %if.end.i.i.i
  %conv27.i.i.i = zext i8 %51 to i32
  %call28.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, i32 noundef %conv27.i.i.i) #15
  %52 = ptrtoint ptr %sense_data_length.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %sense_data_length.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp3272.not.i.i.i = icmp eq i8 %53, 0
  br i1 %cmp3272.not.i.i.i, label %do.end24.i.i.i.do.end47.i.i.i_crit_edge, label %do.end24.i.i.i.do.end37.i.i.i_crit_edge

do.end24.i.i.i.do.end37.i.i.i_crit_edge:          ; preds = %do.end24.i.i.i
  br label %do.end37.i.i.i

do.end24.i.i.i.do.end47.i.i.i_crit_edge:          ; preds = %do.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47.i.i.i

do.end37.i.i.i:                                   ; preds = %do.end37.i.i.i.do.end37.i.i.i_crit_edge, %do.end24.i.i.i.do.end37.i.i.i_crit_edge
  %i.173.i.i.i = phi i32 [ %inc43.i.i.i, %do.end37.i.i.i.do.end37.i.i.i_crit_edge ], [ 0, %do.end24.i.i.i.do.end37.i.i.i_crit_edge ]
  %arrayidx39.i.i.i = getelementptr %struct.mvumi_event_req, ptr %26, i32 0, i32 2, i32 %i.033.i.i, i32 9, i32 %i.173.i.i.i
  %54 = ptrtoint ptr %arrayidx39.i.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx39.i.i.i, align 1
  %conv40.i.i.i = zext i8 %55 to i32
  %call41.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %conv40.i.i.i) #15
  %inc43.i.i.i = add nuw nsw i32 %i.173.i.i.i, 1
  %56 = ptrtoint ptr %sense_data_length.i.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %sense_data_length.i.i.i, align 4
  %conv31.i.i.i = zext i8 %57 to i32
  %cmp32.i.i.i = icmp ult i32 %inc43.i.i.i, %conv31.i.i.i
  br i1 %cmp32.i.i.i, label %do.end37.i.i.i.do.end37.i.i.i_crit_edge, label %do.end37.i.i.i.do.end47.i.i.i_crit_edge

do.end37.i.i.i.do.end47.i.i.i_crit_edge:          ; preds = %do.end37.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47.i.i.i

do.end37.i.i.i.do.end37.i.i.i_crit_edge:          ; preds = %do.end37.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37.i.i.i

do.end47.i.i.i:                                   ; preds = %do.end37.i.i.i.do.end47.i.i.i_crit_edge, %do.end24.i.i.i.do.end47.i.i.i_crit_edge
  %call49.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134) #15
  br label %mvumi_show_event.exit.i.i

mvumi_show_event.exit.i.i:                        ; preds = %do.end47.i.i.i, %if.end.i.i.i.mvumi_show_event.exit.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.033.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv3.i.i
  br i1 %exitcond.not.i.i, label %mvumi_show_event.exit.i.i.land.lhs.true.ithread-pre-split.i_crit_edge, label %mvumi_show_event.exit.i.i.for.body.i.i_crit_edge

mvumi_show_event.exit.i.i.for.body.i.i_crit_edge: ; preds = %mvumi_show_event.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

mvumi_show_event.exit.i.i.land.lhs.true.ithread-pre-split.i_crit_edge: ; preds = %mvumi_show_event.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.ithread-pre-split.i

if.then15.i.i:                                    ; preds = %if.else.i
  %fw_flag.i.i.i = getelementptr inbounds %struct.mvumi_hba, ptr %1, i32 0, i32 35
  %58 = ptrtoint ptr %fw_flag.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %fw_flag.i.i.i, align 1
  %60 = and i8 %59, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i27.i.i = icmp eq i8 %60, 0
  br i1 %tobool.not.i27.i.i, label %if.then15.i.i.land.lhs.true.ithread-pre-split.i_crit_edge, label %if.then.i.i.i

if.then15.i.i.land.lhs.true.ithread-pre-split.i_crit_edge: ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.ithread-pre-split.i

if.then.i.i.i:                                    ; preds = %if.then15.i.i
  %61 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %26, align 2
  %bitmap.i.i.i = getelementptr inbounds %struct.mvumi_hotplug_event, ptr %26, i32 0, i32 2
  %conv3.i.i.i = zext i16 %62 to i32
  %63 = lshr i32 %conv3.i.i.i, 3
  %arrayidx.i28.i.i = getelementptr %struct.mvumi_hotplug_event, ptr %26, i32 0, i32 2, i32 %63
  %sas_discovery_mutex.i.i.i = getelementptr inbounds %struct.mvumi_hba, ptr %1, i32 0, i32 43
  tail call void @mutex_lock_nested(ptr noundef %sas_discovery_mutex.i.i.i, i32 noundef 0) #12
  %call40.i.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %bitmap.i.i.i, i32 noundef %conv3.i.i.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call40.i.i.i, i32 %conv3.i.i.i)
  %cmp.not41.i.i.i = icmp slt i32 %call40.i.i.i, %conv3.i.i.i
  br i1 %cmp.not41.i.i.i, label %if.then.i.i.i.if.end.i31.i.i_crit_edge, label %if.then.i.i.i.do.body10.preheader.i.i.i_crit_edge

if.then.i.i.i.do.body10.preheader.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body10.preheader.i.i.i

if.then.i.i.i.if.end.i31.i.i_crit_edge:           ; preds = %if.then.i.i.i
  br label %if.end.i31.i.i

do.body10.preheader.i.i.i:                        ; preds = %if.end.i31.i.i.do.body10.preheader.i.i.i_crit_edge, %if.then.i.i.i.do.body10.preheader.i.i.i_crit_edge
  %call1343.i.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %arrayidx.i28.i.i, i32 noundef %conv3.i.i.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call1343.i.i.i, i32 %conv3.i.i.i)
  %cmp15.not44.i.i.i = icmp slt i32 %call1343.i.i.i, %conv3.i.i.i
  br i1 %cmp15.not44.i.i.i, label %do.body10.preheader.i.i.i.if.end18.i.i.i_crit_edge, label %do.body10.preheader.i.i.i.do.end22.i.i.i_crit_edge

do.body10.preheader.i.i.i.do.end22.i.i.i_crit_edge: ; preds = %do.body10.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22.i.i.i

do.body10.preheader.i.i.i.if.end18.i.i.i_crit_edge: ; preds = %do.body10.preheader.i.i.i
  br label %if.end18.i.i.i

if.end.i31.i.i:                                   ; preds = %if.end.i31.i.i.if.end.i31.i.i_crit_edge, %if.then.i.i.i.if.end.i31.i.i_crit_edge
  %call42.i.i.i = phi i32 [ %call.i30.i.i, %if.end.i31.i.i.if.end.i31.i.i_crit_edge ], [ %call40.i.i.i, %if.then.i.i.i.if.end.i31.i.i_crit_edge ]
  %conv8.i29.i.i = trunc i32 %call42.i.i.i to i16
  %call9.i.i.i = tail call fastcc i32 @mvumi_handle_hotplug(ptr noundef %1, i16 noundef zeroext %conv8.i29.i.i, i32 noundef 1) #12
  %add.i.i.i = add nsw i32 %call42.i.i.i, 1
  %call.i30.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %bitmap.i.i.i, i32 noundef %conv3.i.i.i, i32 noundef %add.i.i.i) #12
  %cmp.not.i.i.i = icmp slt i32 %call.i30.i.i, %conv3.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i31.i.i.if.end.i31.i.i_crit_edge, label %if.end.i31.i.i.do.body10.preheader.i.i.i_crit_edge

if.end.i31.i.i.do.body10.preheader.i.i.i_crit_edge: ; preds = %if.end.i31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body10.preheader.i.i.i

if.end.i31.i.i.if.end.i31.i.i_crit_edge:          ; preds = %if.end.i31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i31.i.i

if.end18.i.i.i:                                   ; preds = %if.end18.i.i.i.if.end18.i.i.i_crit_edge, %do.body10.preheader.i.i.i.if.end18.i.i.i_crit_edge
  %call1345.i.i.i = phi i32 [ %call13.i.i.i, %if.end18.i.i.i.if.end18.i.i.i_crit_edge ], [ %call1343.i.i.i, %do.body10.preheader.i.i.i.if.end18.i.i.i_crit_edge ]
  %conv19.i.i.i = trunc i32 %call1345.i.i.i to i16
  %call20.i.i.i = tail call fastcc i32 @mvumi_handle_hotplug(ptr noundef %1, i16 noundef zeroext %conv19.i.i.i, i32 noundef 0) #12
  %add12.i.i.i = add nsw i32 %call1345.i.i.i, 1
  %call13.i.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %arrayidx.i28.i.i, i32 noundef %conv3.i.i.i, i32 noundef %add12.i.i.i) #12
  %cmp15.not.i.i.i = icmp slt i32 %call13.i.i.i, %conv3.i.i.i
  br i1 %cmp15.not.i.i.i, label %if.end18.i.i.i.if.end18.i.i.i_crit_edge, label %if.end18.i.i.i.do.end22.i.i.i_crit_edge

if.end18.i.i.i.do.end22.i.i.i_crit_edge:          ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22.i.i.i

if.end18.i.i.i.if.end18.i.i.i_crit_edge:          ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i.i.i

do.end22.i.i.i:                                   ; preds = %if.end18.i.i.i.do.end22.i.i.i_crit_edge, %do.body10.preheader.i.i.i.do.end22.i.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %sas_discovery_mutex.i.i.i) #12
  br label %land.lhs.true.ithread-pre-split.i

land.lhs.true.ithread-pre-split.i:                ; preds = %do.end22.i.i.i, %if.then15.i.i.land.lhs.true.ithread-pre-split.i_crit_edge, %mvumi_show_event.exit.i.i.land.lhs.true.ithread-pre-split.i_crit_edge, %do.end.i.i, %for.cond.preheader.i.i.land.lhs.true.ithread-pre-split.i_crit_edge, %do.end.i
  %64 = ptrtoint ptr %frame1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr.i = load ptr, ptr %frame1.i, align 4
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %land.lhs.true.ithread-pre-split.i, %if.else.i.land.lhs.true.i.i_crit_edge
  %65 = phi ptr [ %.pr.i, %land.lhs.true.ithread-pre-split.i ], [ %22, %if.else.i.land.lhs.true.i.i_crit_edge ]
  %tobool1.not.i.i = icmp eq ptr %65, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.mvumi_get_event.exit_crit_edge, label %if.then.i2.i

land.lhs.true.i.i.mvumi_get_event.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_get_event.exit

if.then.i2.i:                                     ; preds = %land.lhs.true.i.i
  %sg_counts.i.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %sg_counts.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %sg_counts.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool3.not.i.i = icmp eq i8 %67, 0
  br i1 %tobool3.not.i.i, label %if.then.i2.i.if.end11.i.i_crit_edge, label %if.then4.i.i

if.then.i2.i.if.end11.i.i_crit_edge:              ; preds = %if.then.i2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i.i

if.then4.i.i:                                     ; preds = %if.then.i2.i
  %payload.i.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %65, i32 0, i32 10
  %hba_capability.i.i = getelementptr inbounds %struct.mvumi_hba, ptr %1, i32 0, i32 38
  %68 = ptrtoint ptr %hba_capability.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %hba_capability.i.i, align 4
  %70 = and i16 %69, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool6.not.i.i = icmp eq i16 %70, 0
  br i1 %tobool6.not.i.i, label %if.else.i.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %65, i32 1, i32 2
  %71 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags.i.i, align 4
  %and8.i.i = and i32 %72, 4194303
  br label %do.end.i5.i

if.else.i.i:                                      ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %size9.i.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %65, i32 1, i32 6
  %73 = ptrtoint ptr %size9.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %size9.i.i, align 4
  br label %do.end.i5.i

do.end.i5.i:                                      ; preds = %if.else.i.i, %if.then7.i.i
  %size.0.i.i = phi i32 [ %and8.i.i, %if.then7.i.i ], [ %74, %if.else.i.i ]
  %75 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %payload.i.i, align 4
  %pdev.i3.i = getelementptr inbounds %struct.mvumi_hba, ptr %1, i32 0, i32 6
  %77 = ptrtoint ptr %pdev.i3.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pdev.i3.i, align 4
  %dev.i4.i = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  %data_buf.i.i = getelementptr inbounds %struct.mvumi_cmd, ptr %call.i, i32 0, i32 5
  %79 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data_buf.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i4.i, i32 noundef %size.0.i.i, ptr noundef %80, i32 noundef %76, i32 noundef 0) #12
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %do.end.i5.i, %if.then.i2.i.if.end11.i.i_crit_edge
  %pdev12.i.i = getelementptr inbounds %struct.mvumi_hba, ptr %1, i32 0, i32 6
  %81 = ptrtoint ptr %pdev12.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pdev12.i.i, align 4
  %dev13.i.i = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  %ib_max_size.i.i = getelementptr inbounds %struct.mvumi_hba, ptr %1, i32 0, i32 29
  %83 = ptrtoint ptr %ib_max_size.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ib_max_size.i.i, align 4
  %85 = ptrtoint ptr %frame1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %frame1.i, align 4
  %frame_phys.i.i = getelementptr inbounds %struct.mvumi_cmd, ptr %call.i, i32 0, i32 2
  %87 = ptrtoint ptr %frame_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %frame_phys.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev13.i.i, i32 noundef %84, ptr noundef %86, i32 noundef %88, i32 noundef 0) #12
  tail call void @kfree(ptr noundef nonnull %call.i) #12
  br label %mvumi_get_event.exit

mvumi_get_event.exit:                             ; preds = %if.end11.i.i, %land.lhs.true.i.i.mvumi_get_event.exit_crit_edge, %entry.mvumi_get_event.exit_crit_edge
  tail call void @kfree(ptr noundef %work) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mvumi_create_internal_cmd(ptr nocapture noundef readonly %mhba, i32 noundef %buf_size) unnamed_addr #2 align 64 {
entry:
  %phy_addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.107) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %pdev1 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %5 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev1, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %ib_max_size = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 29
  %7 = ptrtoint ptr %ib_max_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ib_max_size, align 4
  %frame_phys = getelementptr inbounds %struct.mvumi_cmd, ptr %call7.i.i, i32 0, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev2, i32 noundef %8, ptr noundef %frame_phys, i32 noundef 3264, i32 noundef 0) #12
  %frame = getelementptr inbounds %struct.mvumi_cmd, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %frame, align 8
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.end9, label %if.end13

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev1, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %ib_max_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ib_max_size, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.110, i32 noundef %13) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_size)
  %tobool14.not = icmp eq i32 %buf_size, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_addr.i) #12
  %14 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %phy_addr.i, align 4, !annotation !400
  %15 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %buf_size, ptr noundef nonnull %phy_addr.i, i32 noundef 3264, i32 noundef 0) #12
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end21, label %if.end2.i

if.end2.i:                                        ; preds = %if.then15
  %17 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %frame, align 8
  %payload.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %18, i32 0, i32 10
  %sg_counts.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %sg_counts.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %sg_counts.i, align 1
  %data_buf.i = getelementptr inbounds %struct.mvumi_cmd, ptr %call7.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %data_buf.i, align 8
  %21 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phy_addr.i, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22) #12
  %24 = ptrtoint ptr %payload.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %payload.i, align 4
  %baseaddr_h.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %18, i32 1
  %25 = ptrtoint ptr %baseaddr_h.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %baseaddr_h.i, align 4
  %eot_flag.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 37
  %26 = ptrtoint ptr %eot_flag.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %eot_flag.i, align 1
  %conv.i = zext i8 %27 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %flags.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %18, i32 1, i32 2
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shl.i, ptr %flags.i, align 4
  %hba_capability.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 38
  %29 = ptrtoint ptr %hba_capability.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hba_capability.i, align 4
  %31 = and i16 %30, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool7.not.i = icmp eq i16 %31, 0
  br i1 %tobool7.not.i, label %if.else.i, label %do.body9.i

do.body9.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  %and11.i = and i32 %shl.i, -4194304
  %32 = call i32 @llvm.bswap.i32(i32 %buf_size) #12
  %or.i = or i32 %and11.i, %32
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i, ptr %flags.i, align 4
  br label %mvumi_internal_cmd_sgl.exit.thread

if.else.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = call i32 @llvm.bswap.i32(i32 %buf_size) #12
  %size13.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %18, i32 1, i32 6
  %35 = ptrtoint ptr %size13.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %size13.i, align 4
  br label %mvumi_internal_cmd_sgl.exit.thread

mvumi_internal_cmd_sgl.exit.thread:               ; preds = %if.else.i, %do.body9.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_addr.i) #12
  br label %cleanup

do.end21:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_addr.i) #12
  %36 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev1, align 4
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.113) #15
  %38 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev1, align 4
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %40 = ptrtoint ptr %ib_max_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ib_max_size, align 4
  %42 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %frame, align 8
  %44 = ptrtoint ptr %frame_phys to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %frame_phys, align 4
  call void @dma_free_attrs(ptr noundef %dev25, i32 noundef %41, ptr noundef %43, i32 noundef %45, i32 noundef 0) #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %sg_counts = getelementptr inbounds %struct.mvumi_msg_frame, ptr %call.i, i32 0, i32 5
  %46 = ptrtoint ptr %sg_counts to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %sg_counts, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end21, %mvumi_internal_cmd_sgl.exit.thread, %do.end9, %do.end
  %retval.0 = phi ptr [ null, %do.end21 ], [ null, %do.end9 ], [ null, %do.end ], [ %call7.i.i, %if.else ], [ %call7.i.i, %mvumi_internal_cmd_sgl.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvumi_issue_blocked_cmd(ptr noundef %mhba, ptr noundef %cmd) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_status = getelementptr inbounds %struct.mvumi_cmd, ptr %cmd, i32 0, i32 7
  %0 = ptrtoint ptr %cmd_status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -128, ptr %cmd_status, align 2
  %sync_cmd = getelementptr inbounds %struct.mvumi_cmd, ptr %cmd, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sync_cmd, i32 noundef 4) #12
  %1 = ptrtoint ptr %sync_cmd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %sync_cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %call.i.i1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sync_cmd, i32 noundef 4) #12
  %5 = ptrtoint ptr %sync_cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %sync_cmd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.115, i32 noundef %6) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/mvumi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 721, 0\0A.popsection", ""() #12, !srcloc !409
  unreachable

if.end:                                           ; preds = %entry
  %call.i.i2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sync_cmd, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %sync_cmd, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sync_cmd, ptr %sync_cmd, i32 1, ptr elementtype(i32) %sync_cmd) #12, !srcloc !399
  %shost = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 4
  %8 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shost, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host_lock, align 4
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #12
  %instancet = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 9
  %12 = ptrtoint ptr %instancet to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %instancet, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  tail call void %15(ptr noundef %mhba, ptr noundef %cmd) #12
  %16 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %shost, align 4
  %host_lock22 = getelementptr inbounds %struct.Scsi_Host, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %host_lock22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host_lock22, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %call16) #12
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 731) #12
  %20 = ptrtoint ptr %cmd_status to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cmd_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %21)
  %cmp31.not = icmp eq i8 %21, -128
  br i1 %cmp31.not, label %if.then43, label %if.end.if.end72_crit_edge

if.end.if.end72_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then43:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %22 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %int_cmd_wait_q = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 5
  %call4511 = call i32 @prepare_to_wait_event(ptr noundef %int_cmd_wait_q, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %23 = ptrtoint ptr %cmd_status to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cmd_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %24)
  %cmp49.not12.not = icmp eq i8 %24, -128
  br i1 %cmp49.not12.not, label %if.then43.cleanup_crit_edge, label %if.then43.for.end_crit_edge

if.then43.for.end_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then43.cleanup_crit_edge
  %__ret44.114 = phi i32 [ %__ret44.1, %cleanup.cleanup_crit_edge ], [ 4500, %if.then43.cleanup_crit_edge ]
  %call69 = call i32 @schedule_timeout(i32 noundef %__ret44.114) #12
  %call45 = call i32 @prepare_to_wait_event(ptr noundef %int_cmd_wait_q, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %25 = ptrtoint ptr %cmd_status to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cmd_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %26)
  %cmp49.not = icmp eq i8 %26, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool55.not = icmp eq i32 %call69, 0
  %spec.store.select126 = select i1 %tobool55.not, i32 1, i32 %call69
  %__ret44.1 = select i1 %cmp49.not, i32 %call69, i32 %spec.store.select126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret44.1)
  %tobool62.not = icmp eq i32 %__ret44.1, 0
  %not.cmp49.not = xor i1 %cmp49.not, true
  %27 = select i1 %not.cmp49.not, i1 true, i1 %tobool62.not
  br i1 %27, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then43.for.end_crit_edge
  call void @finish_wait(ptr noundef %int_cmd_wait_q, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end72

if.end72:                                         ; preds = %for.end, %if.end.if.end72_crit_edge
  %call.i.i3 = call zeroext i1 @__kasan_check_read(ptr noundef %sync_cmd, i32 noundef 4) #12
  %28 = ptrtoint ptr %sync_cmd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %sync_cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool76.not = icmp eq i32 %29, 0
  br i1 %tobool76.not, label %if.end72.if.end124_crit_edge, label %do.body79

if.end72.if.end124_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124

do.body79:                                        ; preds = %if.end72
  %30 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %shost, align 4
  %host_lock86 = getelementptr inbounds %struct.Scsi_Host, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %host_lock86 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %host_lock86, align 4
  %call88 = call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #12
  %call.i.i4 = call zeroext i1 @__kasan_check_write(ptr noundef %sync_cmd, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %sync_cmd, i32 1, i32 3, i32 1) #12
  %34 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sync_cmd, ptr %sync_cmd, i32 1, ptr elementtype(i32) %sync_cmd) #12, !srcloc !401
  %tag_cmd = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 49
  %35 = ptrtoint ptr %tag_cmd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tag_cmd, align 4
  %frame = getelementptr inbounds %struct.mvumi_cmd, ptr %cmd, i32 0, i32 1
  %37 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %frame, align 4
  %tag = getelementptr inbounds %struct.mvumi_msg_frame, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %tag to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %tag, align 2
  %idxprom = zext i16 %40 to i32
  %arrayidx = getelementptr ptr, ptr %36, i32 %idxprom
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %tobool94.not = icmp eq ptr %42, null
  br i1 %tobool94.not, label %do.body79.if.end111_crit_edge, label %if.then95

do.body79.if.end111_crit_edge:                    ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

if.then95:                                        ; preds = %do.body79
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %arrayidx, align 4
  %pdev104 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %44 = ptrtoint ptr %pdev104 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev104, align 4
  %dev105 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %46 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %frame, align 4
  %tag107 = getelementptr inbounds %struct.mvumi_msg_frame, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %tag107 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %tag107, align 2
  %conv108 = zext i16 %49 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev105, ptr noundef nonnull @.str.118, i32 noundef %conv108) #15
  %top.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 48, i32 1
  %50 = ptrtoint ptr %top.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %top.i, align 4
  %size.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 48, i32 2
  %52 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %size.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %53)
  %cmp.not.i = icmp ult i16 %51, %53
  br i1 %cmp.not.i, label %tag_release_one.exit, label %do.body4.i, !prof !397

do.body4.i:                                       ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/mvumi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #12, !srcloc !402
  unreachable

tag_release_one.exit:                             ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #14
  %tag_pool = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 48
  %54 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %frame, align 4
  %tag110 = getelementptr inbounds %struct.mvumi_msg_frame, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %tag110 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %tag110, align 2
  %conv.i = zext i16 %51 to i32
  %58 = ptrtoint ptr %tag_pool to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tag_pool, align 4
  %inc.i = add nuw i16 %51, 1
  %60 = ptrtoint ptr %top.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %inc.i, ptr %top.i, align 4
  %arrayidx.i = getelementptr i16, ptr %59, i32 %conv.i
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %57, ptr %arrayidx.i, align 2
  br label %if.end111

if.end111:                                        ; preds = %tag_release_one.exit, %do.body79.if.end111_crit_edge
  %62 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %cmd, align 4
  %cmp.i.not = icmp eq ptr %63, %cmd
  br i1 %cmp.i.not, label %if.else, label %do.end117

do.end117:                                        ; preds = %if.end111
  %pdev118 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %64 = ptrtoint ptr %pdev118 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev118, align 4
  %dev119 = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev119, ptr noundef nonnull @.str.121) #15
  %call.i.i7 = call zeroext i1 @__list_del_entry_valid(ptr noundef %cmd) #12
  br i1 %call.i.i7, label %if.end.i.i, label %do.end117.list_del_init.exit_crit_edge

do.end117.list_del_init.exit_crit_edge:           ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cmd, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i, align 4
  %68 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cmd, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev1.i.i.i, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %69, ptr %67, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end117.list_del_init.exit_crit_edge
  %72 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %cmd, ptr %cmd, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %cmd, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %cmd, ptr %prev.i3.i, align 4
  br label %if.end121

if.else:                                          ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  %fw_outstanding = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 8
  %call.i.i5 = call zeroext i1 @__kasan_check_write(ptr noundef %fw_outstanding, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %fw_outstanding, i32 1, i32 3, i32 1) #12
  %74 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fw_outstanding, ptr %fw_outstanding, i32 1, ptr elementtype(i32) %fw_outstanding) #12, !srcloc !401
  br label %if.end121

if.end121:                                        ; preds = %if.else, %list_del_init.exit
  %75 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %shost, align 4
  %host_lock123 = getelementptr inbounds %struct.Scsi_Host, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %host_lock123 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %host_lock123, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %78, i32 noundef %call88) #12
  br label %if.end124

if.end124:                                        ; preds = %if.end121, %if.end72.if.end124_crit_edge
  ret void
}

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvumi_handle_hotplug(ptr nocapture noundef readonly %mhba, i16 noundef zeroext %devid, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp = icmp eq i32 %status, 0
  %shost = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 4
  %0 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost, align 4
  %conv = zext i16 %devid to i32
  %call = tail call ptr @scsi_device_lookup(ptr noundef %1, i32 noundef 0, i32 noundef %conv, i64 noundef 0) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.then17

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %do.end9, label %do.body

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvumi_handle_hotplug.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvumi_handle_hotplug, %if.then6)) #12
          to label %do.end [label %if.then6], !srcloc !392

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %id = getelementptr inbounds %struct.scsi_device, ptr %call, i32 0, i32 16
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvumi_handle_hotplug.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.144, i32 noundef 0, i32 noundef %5, i32 noundef 0) #12
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  tail call void @scsi_remove_device(ptr noundef nonnull %call) #12
  tail call void @scsi_device_put(ptr noundef nonnull %call) #12
  br label %if.end54

do.end9:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %pdev10 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %6 = ptrtoint ptr %pdev10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.145, i32 noundef %conv) #15
  br label %if.end54

if.then17:                                        ; preds = %entry
  br i1 %tobool.not, label %if.then22, label %do.end48

if.then22:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shost, align 4
  %call25 = tail call i32 @scsi_add_device(ptr noundef %9, i32 noundef 0, i32 noundef %conv, i64 noundef 0) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvumi_handle_hotplug.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvumi_handle_hotplug, %if.then38)) #12
          to label %if.end54 [label %if.then38], !srcloc !392

if.then38:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %pdev39 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %10 = ptrtoint ptr %pdev39 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev39, align 4
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvumi_handle_hotplug.__UNIQUE_ID_ddebug303, ptr noundef %dev40, ptr noundef nonnull @.str.146, i32 noundef 0, i32 noundef %conv, i32 noundef 0) #12
  br label %if.end54

do.end48:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %pdev49 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %12 = ptrtoint ptr %pdev49 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev49, align 4
  %dev50 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.148, i32 noundef 0, i32 noundef %conv, i32 noundef 0) #15
  tail call void @scsi_device_put(ptr noundef nonnull %call) #12
  br label %if.end54

if.end54:                                         ; preds = %do.end48, %if.then38, %if.then22, %do.end9, %do.end
  %ret.0 = phi i32 [ 0, %do.end ], [ -1, %do.end9 ], [ -1, %do.end48 ], [ 0, %if.then38 ], [ 0, %if.then22 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_lookup(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_device(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @mvumi_check_ob_frame(ptr nocapture noundef readonly %mhba, i32 noundef %cur_obf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #12
  %ob_list = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 14
  %1 = ptrtoint ptr %ob_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ob_list, align 4
  %ob_max_size = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 30
  %3 = ptrtoint ptr %ob_max_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ob_max_size, align 4
  %mul = mul i32 %4, %cur_obf
  %add.ptr = getelementptr i8, ptr %2, i32 %mul
  %request_id1 = getelementptr inbounds %struct.mvumi_rsp_frame, ptr %add.ptr, i32 0, i32 4
  %5 = ptrtoint ptr %request_id1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %request_id1, align 2
  %tag2 = getelementptr inbounds %struct.mvumi_rsp_frame, ptr %add.ptr, i32 0, i32 1
  %7 = ptrtoint ptr %tag2 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %tag2, align 2
  %conv = zext i16 %8 to i32
  %size = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 48, i32 2
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %size, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %10)
  %cmp = icmp ugt i16 %8, %10
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.150) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tag_cmd = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 49
  %13 = ptrtoint ptr %tag_cmd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tag_cmd, align 4
  %arrayidx = getelementptr ptr, ptr %14, i32 %conv
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %cmp5 = icmp eq ptr %16, null
  br i1 %cmp5, label %do.end10, label %if.else

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pdev11 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %17 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev11, align 4
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.153, i32 noundef %conv) #15
  br label %cleanup

if.else:                                          ; preds = %if.end
  %request_id17 = getelementptr inbounds %struct.mvumi_cmd, ptr %16, i32 0, i32 6
  %19 = ptrtoint ptr %request_id17 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %request_id17, align 4
  %conv18 = zext i16 %20 to i32
  %conv19 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %6)
  %cmp20.not = icmp eq i16 %20, %6
  br i1 %cmp20.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %request_id_enabled = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 36
  %21 = ptrtoint ptr %request_id_enabled to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %request_id_enabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %do.end26

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end26:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %pdev27 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %23 = ptrtoint ptr %pdev27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev27, align 4
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.156, i32 noundef %conv19, i32 noundef %conv18) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end10, %do.end
  %retval.0 = phi i8 [ -1, %do.end ], [ -1, %do.end10 ], [ -1, %do.end26 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvumi_rescan_bus(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call200 = tail call zeroext i1 @kthread_should_stop() #12
  br i1 %call200, label %entry.while.end_crit_edge, label %__here.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

__here.lr.ph:                                     ; preds = %entry
  %pnp_count = getelementptr inbounds %struct.mvumi_hba, ptr %data, i32 0, i32 55
  %device_lock = getelementptr inbounds %struct.mvumi_hba, ptr %data, i32 0, i32 51
  %mhba_dev_list = getelementptr inbounds %struct.mvumi_hba, ptr %data, i32 0, i32 52
  %pdev = getelementptr inbounds %struct.mvumi_hba, ptr %data, i32 0, i32 6
  %shost_dev_list = getelementptr inbounds %struct.mvumi_hba, ptr %data, i32 0, i32 53
  %prev.i2.i = getelementptr inbounds %struct.mvumi_hba, ptr %data, i32 0, i32 53, i32 1
  br label %__here

__here:                                           ; preds = %if.end165.__here_crit_edge, %__here.lr.ph
  %0 = tail call i32 @llvm.read_register.i32(metadata !382) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@mvumi_rescan_bus, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %5, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !410
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pnp_count, i32 noundef 4) #12
  %7 = ptrtoint ptr %pnp_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %pnp_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool63.not = icmp eq i32 %8, 0
  br i1 %tobool63.not, label %if.then64, label %__here.if.end65_crit_edge

__here.if.end65_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then64:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @schedule() #12
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %__here.if.end65_crit_edge
  tail call void @msleep(i32 noundef 1000) #12
  %call.i.i188 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pnp_count, i32 noundef 4) #12
  %9 = ptrtoint ptr %pnp_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %pnp_count, align 4
  br label %__here117

__here117:                                        ; preds = %if.end65
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %task_state_change121 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 212
  %12 = ptrtoint ptr %task_state_change121 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 ptrtoint (ptr blockaddress(@mvumi_rescan_bus, %__here117) to i32), ptr %task_state_change121, align 4
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %13, align 128
  tail call void @mutex_lock_nested(ptr noundef %device_lock, i32 noundef 0) #12
  %call138 = tail call fastcc i32 @mvumi_probe_devices(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.then140, label %__here117.if.end165_crit_edge

__here117.if.end165_crit_edge:                    ; preds = %__here117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165

if.then140:                                       ; preds = %__here117
  %15 = ptrtoint ptr %mhba_dev_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mhba_dev_list, align 4
  %cmp.not195 = icmp eq ptr %16, %mhba_dev_list
  br i1 %cmp.not195, label %if.then140.if.end165_crit_edge, label %if.then140.for.body_crit_edge

if.then140.for.body_crit_edge:                    ; preds = %if.then140
  br label %for.body

if.then140.if.end165_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then140.for.body_crit_edge
  %mv_dev.0196 = phi ptr [ %dev_next.0199, %for.inc.for.body_crit_edge ], [ %16, %if.then140.for.body_crit_edge ]
  %17 = ptrtoint ptr %mv_dev.0196 to i32
  call void @__asan_load4_noabort(i32 %17)
  %dev_next.0199 = load ptr, ptr %mv_dev.0196, align 8
  %id = getelementptr inbounds %struct.mvumi_device, ptr %mv_dev.0196, i32 0, i32 4
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %conv = trunc i32 %19 to i16
  %call150 = tail call fastcc i32 @mvumi_handle_hotplug(ptr noundef %data, i16 noundef zeroext %conv, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.else, label %do.end155

do.end155:                                        ; preds = %for.body
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %wwid = getelementptr inbounds %struct.mvumi_device, ptr %mv_dev.0196, i32 0, i32 2
  %24 = ptrtoint ptr %wwid to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %wwid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.169, i32 noundef %23, i64 noundef %25) #15
  %call.i.i189 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mv_dev.0196) #12
  br i1 %call.i.i189, label %if.end.i.i, label %do.end155.list_del_init.exit_crit_edge

do.end155.list_del_init.exit_crit_edge:           ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mv_dev.0196, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %mv_dev.0196 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mv_dev.0196, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end155.list_del_init.exit_crit_edge
  %32 = ptrtoint ptr %mv_dev.0196 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %mv_dev.0196, ptr %mv_dev.0196, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %mv_dev.0196, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %mv_dev.0196, ptr %prev.i3.i, align 4
  tail call void @kfree(ptr noundef %mv_dev.0196) #12
  br label %for.inc

if.else:                                          ; preds = %for.body
  %call.i.i190 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mv_dev.0196) #12
  br i1 %call.i.i190, label %if.end.i.i193, label %if.else.__list_del_entry.exit.i_crit_edge

if.else.__list_del_entry.exit.i_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i

if.end.i.i193:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i191 = getelementptr inbounds %struct.list_head, ptr %mv_dev.0196, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i191 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i191, align 4
  %36 = ptrtoint ptr %mv_dev.0196 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mv_dev.0196, align 4
  %prev1.i.i.i192 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i192 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i192, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i193, %if.else.__list_del_entry.exit.i_crit_edge
  %40 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mv_dev.0196, ptr noundef %41, ptr noundef %shost_dev_list) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.inc_crit_edge

__list_del_entry.exit.i.for.inc_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %mv_dev.0196, ptr %prev.i2.i, align 4
  %43 = ptrtoint ptr %mv_dev.0196 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %shost_dev_list, ptr %mv_dev.0196, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %mv_dev.0196, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %mv_dev.0196, ptr %41, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.for.inc_crit_edge, %list_del_init.exit
  %cmp.not = icmp eq ptr %dev_next.0199, %mhba_dev_list
  br i1 %cmp.not, label %for.inc.if.end165_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.end165_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165

if.end165:                                        ; preds = %for.inc.if.end165_crit_edge, %if.then140.if.end165_crit_edge, %__here117.if.end165_crit_edge
  tail call void @mutex_unlock(ptr noundef %device_lock) #12
  %call = tail call zeroext i1 @kthread_should_stop() #12
  br i1 %call, label %if.end165.while.end_crit_edge, label %if.end165.__here_crit_edge

if.end165.__here_crit_edge:                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

if.end165.while.end_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end165.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvumi_probe_devices(ptr noundef %mhba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @mvumi_create_internal_cmd(ptr noundef %mhba, i32 noundef 64)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28349, i16 %3)
  %cmp = icmp ne i16 %3, -28349
  %max_target_id = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 25
  %4 = ptrtoint ptr %max_target_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %max_target_id, align 2
  %conv3 = zext i16 %5 to i32
  %sub = sext i1 %cmp to i32
  %maxid.0 = add nsw i32 %conv3, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxid.0)
  %cmp796 = icmp sgt i32 %maxid.0, 0
  br i1 %cmp796, label %for.body.lr.ph, label %if.end.land.lhs.true.i_crit_edge

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

for.body.lr.ph:                                   ; preds = %if.end
  %shost_dev_list.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 53
  %shost.i.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 4
  %mhba_dev_list = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 52
  %prev.i83 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 52, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %id.097 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call9 = tail call fastcc i64 @mvumi_inquiry(ptr noundef %mhba, i32 noundef %id.097, ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call9)
  %tobool10.not = icmp eq i64 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %for.body.for.cond.i_crit_edge

for.body.for.cond.i_crit_edge:                    ; preds = %for.body
  br label %for.cond.i

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mvumi_remove_devices(ptr noundef %mhba, i32 noundef %id.097)
  br label %for.inc

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.for.cond.i_crit_edge
  %mv_dev.0.in.i = phi ptr [ %mv_dev.0.i, %for.body.i.for.cond.i_crit_edge ], [ %shost_dev_list.i, %for.body.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %mv_dev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %mv_dev.0.i = load ptr, ptr %mv_dev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mv_dev.0.i, %shost_dev_list.i
  br i1 %cmp.not.i, label %if.then15, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %wwid2.i = getelementptr inbounds %struct.mvumi_device, ptr %mv_dev.0.i, i32 0, i32 2
  %7 = ptrtoint ptr %wwid2.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %wwid2.i, align 8
  %cmp3.i = icmp eq i64 %8, %call9
  br i1 %cmp3.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %id4.i = getelementptr inbounds %struct.mvumi_device, ptr %mv_dev.0.i, i32 0, i32 4
  %9 = ptrtoint ptr %id4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %id.097)
  %cmp5.not.i = icmp eq i32 %10, %id.097
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  br i1 %cmp5.not.i, label %if.else.i, label %mvumi_match_devices.exit

if.else.i:                                        ; preds = %if.then.i
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28349, i16 %14)
  %cmp10.i = icmp eq i16 %14, -28349
  br i1 %cmp10.i, label %if.then12.i, label %if.else.i.for.inc_crit_edge

if.else.i.for.inc_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then12.i:                                      ; preds = %if.else.i
  %15 = ptrtoint ptr %shost.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %shost.i.i, align 4
  %call.i.i = tail call ptr @scsi_device_lookup(ptr noundef %16, i32 noundef 0, i32 noundef %id.097, i64 noundef 0) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then12.i.for.inc_crit_edge, label %if.then.i.i

if.then12.i.for.inc_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then.i.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  %sdev_gendev.i.i = getelementptr inbounds %struct.scsi_device, ptr %call.i.i, i32 0, i32 55
  tail call void @scsi_rescan_device(ptr noundef %sdev_gendev.i.i) #12
  tail call void @scsi_device_put(ptr noundef nonnull %call.i.i) #12
  br label %for.inc

mvumi_match_devices.exit:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.178, i64 noundef %call9, i32 noundef %10, i32 noundef %id.097) #15
  br label %cleanup

if.then15:                                        ; preds = %for.cond.i
  tail call fastcc void @mvumi_remove_devices(ptr noundef %mhba, i32 noundef %id.097)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 32) #16
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %do.end, label %if.end20

do.end:                                           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.171) #15
  br label %for.inc

if.end20:                                         ; preds = %if.then15
  %id21 = getelementptr inbounds %struct.mvumi_device, ptr %call7.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %id21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %id.097, ptr %id21, align 4
  %wwid22 = getelementptr inbounds %struct.mvumi_device, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %wwid22 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %call9, ptr %wwid22, align 8
  %sdev = getelementptr inbounds %struct.mvumi_device, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %sdev to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %sdev, align 8
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %25 = ptrtoint ptr %prev.i83 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i83, align 4
  %call.i.i84 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %26, ptr noundef %mhba_dev_list) #12
  br i1 %call.i.i84, label %if.end.i.i, label %if.end20.list_add_tail.exit_crit_edge

if.end20.list_add_tail.exit_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %prev.i83 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %prev.i83, align 4
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %mhba_dev_list, ptr %call7.i.i, align 8
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call7.i.i, ptr %26, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end20.list_add_tail.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvumi_probe_devices.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvumi_probe_devices, %if.then29)) #12
          to label %for.inc [label %if.then29], !srcloc !392

if.then29:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 4
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %33 = ptrtoint ptr %wwid22 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %wwid22, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvumi_probe_devices.__UNIQUE_ID_ddebug308, ptr noundef %dev31, ptr noundef nonnull @.str.172, i32 noundef %id.097, i64 noundef %34) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %list_add_tail.exit, %do.end, %if.then.i.i, %if.then12.i.for.inc_crit_edge, %if.else.i.for.inc_crit_edge, %if.then11
  %inc = add nuw nsw i32 %id.097, 1
  %exitcond.not = icmp eq i32 %inc, %maxid.0
  br i1 %exitcond.not, label %for.inc.land.lhs.true.i_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.land.lhs.true.i_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.inc.land.lhs.true.i_crit_edge, %if.end.land.lhs.true.i_crit_edge
  %frame.i = getelementptr inbounds %struct.mvumi_cmd, ptr %call, i32 0, i32 1
  %35 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %frame.i, align 4
  %tobool1.not.i = icmp eq ptr %36, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i85

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i85:                                      ; preds = %land.lhs.true.i
  %sg_counts.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %sg_counts.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sg_counts.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool3.not.i = icmp eq i8 %38, 0
  br i1 %tobool3.not.i, label %if.then.i85.if.end11.i_crit_edge, label %if.then4.i

if.then.i85.if.end11.i_crit_edge:                 ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.then4.i:                                       ; preds = %if.then.i85
  %payload.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %36, i32 0, i32 10
  %hba_capability.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 38
  %39 = ptrtoint ptr %hba_capability.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %hba_capability.i, align 4
  %41 = and i16 %40, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool6.not.i = icmp eq i16 %41, 0
  br i1 %tobool6.not.i, label %if.else.i86, label %if.then7.i

if.then7.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %36, i32 1, i32 2
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i, align 4
  %and8.i = and i32 %43, 4194303
  br label %do.end.i88

if.else.i86:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  %size9.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %36, i32 1, i32 6
  %44 = ptrtoint ptr %size9.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size9.i, align 4
  br label %do.end.i88

do.end.i88:                                       ; preds = %if.else.i86, %if.then7.i
  %size.0.i = phi i32 [ %and8.i, %if.then7.i ], [ %45, %if.else.i86 ]
  %46 = ptrtoint ptr %payload.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %payload.i, align 4
  %48 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev, align 4
  %dev.i87 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %data_buf.i = getelementptr inbounds %struct.mvumi_cmd, ptr %call, i32 0, i32 5
  %50 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data_buf.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i87, i32 noundef %size.0.i, ptr noundef %51, i32 noundef %47, i32 noundef 0) #12
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end.i88, %if.then.i85.if.end11.i_crit_edge
  %52 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev, align 4
  %dev13.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %ib_max_size.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 29
  %54 = ptrtoint ptr %ib_max_size.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ib_max_size.i, align 4
  %56 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %frame.i, align 4
  %frame_phys.i = getelementptr inbounds %struct.mvumi_cmd, ptr %call, i32 0, i32 2
  %58 = ptrtoint ptr %frame_phys.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %frame_phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev13.i, i32 noundef %55, ptr noundef %57, i32 noundef %59, i32 noundef 0) #12
  tail call void @kfree(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end11.i, %land.lhs.true.i.cleanup_crit_edge, %mvumi_match_devices.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %mvumi_match_devices.exit ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.end11.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @mvumi_inquiry(ptr noundef %mhba, i32 noundef %id, ptr noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cmd, null
  br i1 %tobool.not, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  %call = tail call fastcc ptr @mvumi_create_internal_cmd(ptr noundef %mhba, i32 noundef 64)
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %data_buf = getelementptr inbounds %struct.mvumi_cmd, ptr %cmd, i32 0, i32 5
  %0 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data_buf, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 64)
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.then.if.end4_crit_edge
  %cmd.addr.0 = phi ptr [ %cmd, %if.else3 ], [ %call, %if.then.if.end4_crit_edge ]
  %scmd = getelementptr inbounds %struct.mvumi_cmd, ptr %cmd.addr.0, i32 0, i32 3
  %3 = ptrtoint ptr %scmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %scmd, align 4
  %cmd_status = getelementptr inbounds %struct.mvumi_cmd, ptr %cmd.addr.0, i32 0, i32 7
  %4 = ptrtoint ptr %cmd_status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -128, ptr %cmd_status, align 2
  %sync_cmd = getelementptr inbounds %struct.mvumi_cmd, ptr %cmd.addr.0, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sync_cmd, i32 noundef 4) #12
  %5 = ptrtoint ptr %sync_cmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %sync_cmd, align 4
  %frame5 = getelementptr inbounds %struct.mvumi_cmd, ptr %cmd.addr.0, i32 0, i32 1
  %6 = ptrtoint ptr %frame5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %frame5, align 4
  %conv = trunc i32 %id to i16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %7, align 4
  %cmd_flag = getelementptr inbounds %struct.mvumi_msg_frame, ptr %7, i32 0, i32 2
  %9 = ptrtoint ptr %cmd_flag to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 8, ptr %cmd_flag, align 4
  %req_function = getelementptr inbounds %struct.mvumi_msg_frame, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %req_function to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %req_function, align 1
  %cdb_length = getelementptr inbounds %struct.mvumi_msg_frame, ptr %7, i32 0, i32 4
  %11 = ptrtoint ptr %cdb_length to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 6, ptr %cdb_length, align 2
  %data_transfer_length = getelementptr inbounds %struct.mvumi_msg_frame, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %data_transfer_length to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 44, ptr %data_transfer_length, align 4
  %cdb = getelementptr inbounds %struct.mvumi_msg_frame, ptr %7, i32 0, i32 9
  %13 = call ptr @memset(ptr %cdb, i32 0, i32 6)
  %14 = ptrtoint ptr %cdb to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 18, ptr %cdb, align 4
  %arrayidx12 = getelementptr %struct.mvumi_msg_frame, ptr %7, i32 0, i32 9, i32 4
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 44, ptr %arrayidx12, align 4
  tail call fastcc void @mvumi_issue_blocked_cmd(ptr noundef %mhba, ptr noundef nonnull %cmd.addr.0)
  %16 = ptrtoint ptr %cmd_status to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cmd_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp = icmp eq i8 %17, 0
  br i1 %cmp, label %if.then17, label %if.end4.if.end34_crit_edge

if.end4.if.end34_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then17:                                        ; preds = %if.end4
  %pdev = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28349, i16 %21)
  %cmp19 = icmp eq i16 %21, -28349
  br i1 %cmp19, label %if.then21, label %if.else23

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %add = add i32 %id, 1
  %conv22 = zext i32 %add to i64
  br label %do.body

if.else23:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %data_buf24 = getelementptr inbounds %struct.mvumi_cmd, ptr %cmd.addr.0, i32 0, i32 5
  %22 = ptrtoint ptr %data_buf24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data_buf24, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 36
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %wwid.0.copyload = load i64, ptr %add.ptr, align 1
  br label %do.body

do.body:                                          ; preds = %if.else23, %if.then21
  %wwid.0 = phi i64 [ %conv22, %if.then21 ], [ %wwid.0.copyload, %if.else23 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvumi_inquiry.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvumi_inquiry, %if.then30)) #12
          to label %if.end34 [label %if.then30], !srcloc !392

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvumi_inquiry.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.174, i32 noundef %id, i64 noundef %wwid.0) #12
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %do.body, %if.end4.if.end34_crit_edge
  %wwid.1 = phi i64 [ %wwid.0, %if.then30 ], [ 0, %if.end4.if.end34_crit_edge ], [ %wwid.0, %do.body ]
  br i1 %tobool.not, label %land.lhs.true.i, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end34
  %27 = ptrtoint ptr %frame5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %frame5, align 4
  %tobool1.not.i = icmp eq ptr %28, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  %sg_counts.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %sg_counts.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sg_counts.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool3.not.i = icmp eq i8 %30, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end11.i_crit_edge, label %if.then4.i

if.then.i.if.end11.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.then4.i:                                       ; preds = %if.then.i
  %payload.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %28, i32 0, i32 10
  %hba_capability.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 38
  %31 = ptrtoint ptr %hba_capability.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %hba_capability.i, align 4
  %33 = and i16 %32, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool6.not.i = icmp eq i16 %33, 0
  br i1 %tobool6.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %28, i32 1, i32 2
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 4
  %and8.i = and i32 %35, 4194303
  br label %do.end.i

if.else.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  %size9.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %28, i32 1, i32 6
  %36 = ptrtoint ptr %size9.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size9.i, align 4
  br label %do.end.i

do.end.i:                                         ; preds = %if.else.i, %if.then7.i
  %size.0.i = phi i32 [ %and8.i, %if.then7.i ], [ %37, %if.else.i ]
  %38 = ptrtoint ptr %payload.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %payload.i, align 4
  %pdev.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %40 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %data_buf.i = getelementptr inbounds %struct.mvumi_cmd, ptr %cmd.addr.0, i32 0, i32 5
  %42 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data_buf.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %size.0.i, ptr noundef %43, i32 noundef %39, i32 noundef 0) #12
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end.i, %if.then.i.if.end11.i_crit_edge
  %pdev12.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %44 = ptrtoint ptr %pdev12.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev12.i, align 4
  %dev13.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %ib_max_size.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 29
  %46 = ptrtoint ptr %ib_max_size.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ib_max_size.i, align 4
  %48 = ptrtoint ptr %frame5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %frame5, align 4
  %frame_phys.i = getelementptr inbounds %struct.mvumi_cmd, ptr %cmd.addr.0, i32 0, i32 2
  %50 = ptrtoint ptr %frame_phys.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %frame_phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev13.i, i32 noundef %47, ptr noundef %49, i32 noundef %51, i32 noundef 0) #12
  tail call void @kfree(ptr noundef nonnull %cmd.addr.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end11.i, %land.lhs.true.i.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i64 [ 0, %if.then.cleanup_crit_edge ], [ %wwid.1, %if.end34.cleanup_crit_edge ], [ %wwid.1, %land.lhs.true.i.cleanup_crit_edge ], [ %wwid.1, %if.end11.i ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvumi_remove_devices(ptr noundef readonly %mhba, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %shost_dev_list = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 53
  %0 = ptrtoint ptr %shost_dev_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost_dev_list, align 4
  %cmp.not37 = icmp eq ptr %1, %shost_dev_list
  br i1 %cmp.not37, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pdev = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %mv_dev.038 = phi ptr [ %1, %for.body.lr.ph ], [ %dev_next.040, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %mv_dev.038 to i32
  call void @__asan_load4_noabort(i32 %2)
  %dev_next.040 = load ptr, ptr %mv_dev.038, align 8
  %id7 = getelementptr inbounds %struct.mvumi_device, ptr %mv_dev.038, i32 0, i32 4
  %3 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %id)
  %cmp8 = icmp eq i32 %4, %id
  br i1 %cmp8, label %do.body, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvumi_remove_devices.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvumi_remove_devices, %if.then13)) #12
          to label %do.end [label %if.then13], !srcloc !392

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %7 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id7, align 4
  %wwid = getelementptr inbounds %struct.mvumi_device, ptr %mv_dev.038, i32 0, i32 2
  %9 = ptrtoint ptr %wwid to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %wwid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvumi_remove_devices.__UNIQUE_ID_ddebug307, ptr noundef %dev, ptr noundef nonnull @.str.176, i32 noundef %8, i64 noundef %10) #12
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %11 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id7, align 4
  %conv = trunc i32 %12 to i16
  %call16 = tail call fastcc i32 @mvumi_handle_hotplug(ptr noundef %mhba, i16 noundef zeroext %conv, i32 noundef 0)
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mv_dev.038) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del_init.exit_crit_edge

do.end.list_del_init.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mv_dev.038, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %mv_dev.038 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mv_dev.038, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end.list_del_init.exit_crit_edge
  %19 = ptrtoint ptr %mv_dev.038 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %mv_dev.038, ptr %mv_dev.038, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %mv_dev.038, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %mv_dev.038, ptr %prev.i3.i, align 4
  tail call void @kfree(ptr noundef %mv_dev.038) #12
  br label %for.inc

for.inc:                                          ; preds = %list_del_init.exit, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %dev_next.040, %shost_dev_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_rescan_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvumi_detach_devices(ptr noundef %mhba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device_lock = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 51
  tail call void @mutex_lock_nested(ptr noundef %device_lock, i32 noundef 0) #12
  %shost_dev_list = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 53
  %0 = ptrtoint ptr %shost_dev_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost_dev_list, align 4
  %cmp.not118 = icmp eq ptr %1, %shost_dev_list
  br i1 %cmp.not118, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pdev = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %do.end.for.body_crit_edge, %for.body.lr.ph
  %mv_dev.0119 = phi ptr [ %1, %for.body.lr.ph ], [ %dev_next.0121, %do.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %mv_dev.0119 to i32
  call void @__asan_load4_noabort(i32 %2)
  %dev_next.0121 = load ptr, ptr %mv_dev.0119, align 8
  %id = getelementptr inbounds %struct.mvumi_device, ptr %mv_dev.0119, i32 0, i32 4
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %conv = trunc i32 %4 to i16
  %call = tail call fastcc i32 @mvumi_handle_hotplug(ptr noundef %mhba, i16 noundef zeroext %conv, i32 noundef 0)
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mv_dev.0119) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mv_dev.0119, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %mv_dev.0119 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mv_dev.0119, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %mv_dev.0119 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %mv_dev.0119, ptr %mv_dev.0119, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %mv_dev.0119, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mv_dev.0119, ptr %prev.i3.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvumi_detach_devices.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvumi_detach_devices, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !392

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  %wwid = getelementptr inbounds %struct.mvumi_device, ptr %mv_dev.0119, i32 0, i32 2
  %17 = ptrtoint ptr %wwid to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wwid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvumi_detach_devices.__UNIQUE_ID_ddebug305, ptr noundef %dev, ptr noundef nonnull @.str.182, i32 noundef %16, i64 noundef %18) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %list_del_init.exit
  tail call void @kfree(ptr noundef %mv_dev.0119) #12
  %cmp.not = icmp eq ptr %dev_next.0121, %shost_dev_list
  br i1 %cmp.not, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %do.end.for.end_crit_edge, %entry.for.end_crit_edge
  %mhba_dev_list = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 52
  %19 = ptrtoint ptr %mhba_dev_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mhba_dev_list, align 4
  %cmp31.not123 = icmp eq ptr %20, %mhba_dev_list
  br i1 %cmp31.not123, label %for.end.for.end63_crit_edge, label %for.body35.lr.ph

for.end.for.end63_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end63

for.body35.lr.ph:                                 ; preds = %for.end
  %pdev50 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  br label %for.body35

for.body35:                                       ; preds = %do.end56.for.body35_crit_edge, %for.body35.lr.ph
  %mv_dev.1124 = phi ptr [ %20, %for.body35.lr.ph ], [ %dev_next.1126, %do.end56.for.body35_crit_edge ]
  %21 = ptrtoint ptr %mv_dev.1124 to i32
  call void @__asan_load4_noabort(i32 %21)
  %dev_next.1126 = load ptr, ptr %mv_dev.1124, align 8
  %call.i.i107 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mv_dev.1124) #12
  br i1 %call.i.i107, label %if.end.i.i110, label %for.body35.list_del_init.exit112_crit_edge

for.body35.list_del_init.exit112_crit_edge:       ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit112

if.end.i.i110:                                    ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i108 = getelementptr inbounds %struct.list_head, ptr %mv_dev.1124, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i108 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i108, align 4
  %24 = ptrtoint ptr %mv_dev.1124 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mv_dev.1124, align 4
  %prev1.i.i.i109 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i109 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i109, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del_init.exit112

list_del_init.exit112:                            ; preds = %if.end.i.i110, %for.body35.list_del_init.exit112_crit_edge
  %28 = ptrtoint ptr %mv_dev.1124 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %mv_dev.1124, ptr %mv_dev.1124, align 4
  %prev.i3.i111 = getelementptr inbounds %struct.list_head, ptr %mv_dev.1124, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i3.i111 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %mv_dev.1124, ptr %prev.i3.i111, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvumi_detach_devices.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvumi_detach_devices, %if.then49)) #12
          to label %do.end56 [label %if.then49], !srcloc !392

if.then49:                                        ; preds = %list_del_init.exit112
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %pdev50 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev50, align 4
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %id52 = getelementptr inbounds %struct.mvumi_device, ptr %mv_dev.1124, i32 0, i32 4
  %32 = ptrtoint ptr %id52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id52, align 4
  %wwid53 = getelementptr inbounds %struct.mvumi_device, ptr %mv_dev.1124, i32 0, i32 2
  %34 = ptrtoint ptr %wwid53 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %wwid53, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvumi_detach_devices.__UNIQUE_ID_ddebug306, ptr noundef %dev51, ptr noundef nonnull @.str.182, i32 noundef %33, i64 noundef %35) #12
  br label %do.end56

do.end56:                                         ; preds = %if.then49, %list_del_init.exit112
  tail call void @kfree(ptr noundef %mv_dev.1124) #12
  %cmp31.not = icmp eq ptr %dev_next.1126, %mhba_dev_list
  br i1 %cmp31.not, label %do.end56.for.end63_crit_edge, label %do.end56.for.body35_crit_edge

do.end56.for.body35_crit_edge:                    ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body35

do.end56.for.end63_crit_edge:                     ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end63

for.end63:                                        ; preds = %do.end56.for.end63_crit_edge, %for.end.for.end63_crit_edge
  %pdev64 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %36 = ptrtoint ptr %pdev64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev64, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -27264, i16 %39)
  %cmp66 = icmp eq i16 %39, -27264
  br i1 %cmp66, label %if.end71, label %for.end63.if.end74_crit_edge

for.end63.if.end74_crit_edge:                     ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.end71:                                         ; preds = %for.end63
  %shost = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 4
  %40 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %shost, align 4
  %max_target_id = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 25
  %42 = ptrtoint ptr %max_target_id to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %max_target_id, align 2
  %conv69 = zext i16 %43 to i32
  %sub = add nsw i32 %conv69, -1
  %call70 = tail call ptr @scsi_device_lookup(ptr noundef %41, i32 noundef 0, i32 noundef %sub, i64 noundef 0) #12
  %tobool72.not = icmp eq ptr %call70, null
  br i1 %tobool72.not, label %if.end71.if.end74_crit_edge, label %if.then73

if.end71.if.end74_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_remove_device(ptr noundef nonnull %call70) #12
  tail call void @scsi_device_put(ptr noundef nonnull %call70) #12
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end71.if.end74_crit_edge, %for.end63.if.end74_crit_edge
  tail call void @mutex_unlock(ptr noundef %device_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvumi_flush_cache(ptr noundef %mhba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %max_target_id = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 25
  %0 = ptrtoint ptr %max_target_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %max_target_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp4.not = icmp eq i16 %1, 0
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %target_map = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 26
  %pdev34 = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 6
  %hba_capability.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 38
  %ib_max_size.i = getelementptr inbounds %struct.mvumi_hba, ptr %mhba, i32 0, i32 29
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %2 = phi i16 [ 0, %for.body.lr.ph ], [ %54, %for.inc.for.body_crit_edge ]
  %conv7 = phi i32 [ 0, %for.body.lr.ph ], [ %conv, %for.inc.for.body_crit_edge ]
  %retry.06 = phi i8 [ 0, %for.body.lr.ph ], [ %retry.2, %for.inc.for.body_crit_edge ]
  %device_id.05 = phi i8 [ 0, %for.body.lr.ph ], [ %inc40, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %target_map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %target_map, align 4
  %div1 = lshr i32 %conv7, 3
  %arrayidx = getelementptr i8, ptr %4, i32 %div1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv5 = zext i8 %6 to i32
  %rem = and i32 %conv7, 7
  %shl = shl nuw nsw i32 1, %rem
  %and = and i32 %shl, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %get_cmd

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

get_cmd:                                          ; preds = %for.body
  %call = tail call fastcc ptr @mvumi_create_internal_cmd(ptr noundef %mhba, i32 noundef 0)
  %tobool8.not = icmp eq ptr %call, null
  br i1 %tobool8.not, label %if.then9, label %get_cmd.if.end15_crit_edge

get_cmd.if.end15_crit_edge:                       ; preds = %get_cmd
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then9:                                         ; preds = %get_cmd
  %inc = add i8 %retry.06, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %retry.06)
  %cmp11 = icmp ugt i8 %retry.06, 4
  br i1 %cmp11, label %if.then9.do.end_crit_edge, label %get_cmd.1

if.then9.do.end_crit_edge:                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

get_cmd.1:                                        ; preds = %if.then9
  %call.1 = tail call fastcc ptr @mvumi_create_internal_cmd(ptr noundef %mhba, i32 noundef 0)
  %tobool8.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool8.not.1, label %if.then9.1, label %get_cmd.1.if.end15_crit_edge

get_cmd.1.if.end15_crit_edge:                     ; preds = %get_cmd.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then9.1:                                       ; preds = %get_cmd.1
  %inc.1 = add i8 %retry.06, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %inc)
  %cmp11.1 = icmp ugt i8 %inc, 4
  br i1 %cmp11.1, label %if.then9.1.do.end_crit_edge, label %get_cmd.2

if.then9.1.do.end_crit_edge:                      ; preds = %if.then9.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

get_cmd.2:                                        ; preds = %if.then9.1
  %call.2 = tail call fastcc ptr @mvumi_create_internal_cmd(ptr noundef %mhba, i32 noundef 0)
  %tobool8.not.2 = icmp eq ptr %call.2, null
  br i1 %tobool8.not.2, label %if.then9.2, label %get_cmd.2.if.end15_crit_edge

get_cmd.2.if.end15_crit_edge:                     ; preds = %get_cmd.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then9.2:                                       ; preds = %get_cmd.2
  %inc.2 = add i8 %retry.06, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %inc.1)
  %cmp11.2 = icmp ugt i8 %inc.1, 4
  br i1 %cmp11.2, label %if.then9.2.do.end_crit_edge, label %get_cmd.3

if.then9.2.do.end_crit_edge:                      ; preds = %if.then9.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

get_cmd.3:                                        ; preds = %if.then9.2
  %call.3 = tail call fastcc ptr @mvumi_create_internal_cmd(ptr noundef %mhba, i32 noundef 0)
  %tobool8.not.3 = icmp eq ptr %call.3, null
  br i1 %tobool8.not.3, label %if.then9.3, label %get_cmd.3.if.end15_crit_edge

get_cmd.3.if.end15_crit_edge:                     ; preds = %get_cmd.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then9.3:                                       ; preds = %get_cmd.3
  %inc.3 = add i8 %retry.06, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %inc.2)
  %cmp11.3 = icmp ugt i8 %inc.2, 4
  br i1 %cmp11.3, label %if.then9.3.do.end_crit_edge, label %get_cmd.4

if.then9.3.do.end_crit_edge:                      ; preds = %if.then9.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

get_cmd.4:                                        ; preds = %if.then9.3
  %call.4 = tail call fastcc ptr @mvumi_create_internal_cmd(ptr noundef %mhba, i32 noundef 0)
  %tobool8.not.4 = icmp eq ptr %call.4, null
  br i1 %tobool8.not.4, label %if.then9.4, label %get_cmd.4.if.end15_crit_edge

get_cmd.4.if.end15_crit_edge:                     ; preds = %get_cmd.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then9.4:                                       ; preds = %get_cmd.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %inc.3)
  %cmp11.4 = icmp ugt i8 %inc.3, 4
  br i1 %cmp11.4, label %if.then9.4.do.end_crit_edge, label %get_cmd.5

if.then9.4.do.end_crit_edge:                      ; preds = %if.then9.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

get_cmd.5:                                        ; preds = %if.then9.4
  %inc.4 = add i8 %retry.06, 5
  %call.5 = tail call fastcc ptr @mvumi_create_internal_cmd(ptr noundef %mhba, i32 noundef 0)
  %tobool8.not.5 = icmp eq ptr %call.5, null
  br i1 %tobool8.not.5, label %get_cmd.5.do.end_crit_edge, label %get_cmd.5.if.end15_crit_edge

get_cmd.5.if.end15_crit_edge:                     ; preds = %get_cmd.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

get_cmd.5.do.end_crit_edge:                       ; preds = %get_cmd.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %get_cmd.5.do.end_crit_edge, %if.then9.4.do.end_crit_edge, %if.then9.3.do.end_crit_edge, %if.then9.2.do.end_crit_edge, %if.then9.1.do.end_crit_edge, %if.then9.do.end_crit_edge
  %7 = ptrtoint ptr %pdev34 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev34, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.183, i32 noundef %conv7) #15
  br label %for.inc

if.end15:                                         ; preds = %get_cmd.5.if.end15_crit_edge, %get_cmd.4.if.end15_crit_edge, %get_cmd.3.if.end15_crit_edge, %get_cmd.2.if.end15_crit_edge, %get_cmd.1.if.end15_crit_edge, %get_cmd.if.end15_crit_edge
  %retry.1.lcssa = phi i8 [ %retry.06, %get_cmd.if.end15_crit_edge ], [ %inc, %get_cmd.1.if.end15_crit_edge ], [ %inc.1, %get_cmd.2.if.end15_crit_edge ], [ %inc.2, %get_cmd.3.if.end15_crit_edge ], [ %inc.3, %get_cmd.4.if.end15_crit_edge ], [ %inc.4, %get_cmd.5.if.end15_crit_edge ]
  %call.lcssa = phi ptr [ %call, %get_cmd.if.end15_crit_edge ], [ %call.1, %get_cmd.1.if.end15_crit_edge ], [ %call.2, %get_cmd.2.if.end15_crit_edge ], [ %call.3, %get_cmd.3.if.end15_crit_edge ], [ %call.4, %get_cmd.4.if.end15_crit_edge ], [ %call.5, %get_cmd.5.if.end15_crit_edge ]
  %scmd = getelementptr inbounds %struct.mvumi_cmd, ptr %call.lcssa, i32 0, i32 3
  %9 = ptrtoint ptr %scmd to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %scmd, align 4
  %cmd_status = getelementptr inbounds %struct.mvumi_cmd, ptr %call.lcssa, i32 0, i32 7
  %10 = ptrtoint ptr %cmd_status to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %cmd_status, align 2
  %sync_cmd = getelementptr inbounds %struct.mvumi_cmd, ptr %call.lcssa, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sync_cmd, i32 noundef 4) #12
  %11 = ptrtoint ptr %sync_cmd to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %sync_cmd, align 4
  %frame16 = getelementptr inbounds %struct.mvumi_cmd, ptr %call.lcssa, i32 0, i32 1
  %12 = ptrtoint ptr %frame16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %frame16, align 4
  %req_function = getelementptr inbounds %struct.mvumi_msg_frame, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %req_function to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %req_function, align 1
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %2, ptr %13, align 4
  %cmd_flag = getelementptr inbounds %struct.mvumi_msg_frame, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %cmd_flag to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %cmd_flag, align 4
  %data_transfer_length = getelementptr inbounds %struct.mvumi_msg_frame, ptr %13, i32 0, i32 6
  %17 = ptrtoint ptr %data_transfer_length to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %data_transfer_length, align 4
  %cdb_length = getelementptr inbounds %struct.mvumi_msg_frame, ptr %13, i32 0, i32 4
  %18 = ptrtoint ptr %cdb_length to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 16, ptr %cdb_length, align 2
  %cdb = getelementptr inbounds %struct.mvumi_msg_frame, ptr %13, i32 0, i32 9
  %19 = call ptr @memset(ptr %cdb, i32 0, i32 16)
  %20 = ptrtoint ptr %cdb to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -31, ptr %cdb, align 4
  %arrayidx22 = getelementptr %struct.mvumi_msg_frame, ptr %13, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %arrayidx22, align 1
  %arrayidx24 = getelementptr %struct.mvumi_msg_frame, ptr %13, i32 0, i32 9, i32 2
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 11, ptr %arrayidx24, align 2
  tail call fastcc void @mvumi_issue_blocked_cmd(ptr noundef %mhba, ptr noundef nonnull %call.lcssa)
  %23 = ptrtoint ptr %cmd_status to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cmd_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp28.not = icmp eq i8 %24, 0
  br i1 %cmp28.not, label %if.end15.land.lhs.true.i_crit_edge, label %do.end33

if.end15.land.lhs.true.i_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

do.end33:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %conv27 = zext i8 %24 to i32
  %25 = ptrtoint ptr %pdev34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev34, align 4
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.186, i32 noundef %conv7, i32 noundef %conv27) #15
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end33, %if.end15.land.lhs.true.i_crit_edge
  %27 = ptrtoint ptr %frame16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %frame16, align 4
  %tobool1.not.i = icmp eq ptr %28, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %if.then.i

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then.i:                                        ; preds = %land.lhs.true.i
  %sg_counts.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %sg_counts.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sg_counts.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool3.not.i = icmp eq i8 %30, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end11.i_crit_edge, label %if.then4.i

if.then.i.if.end11.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.then4.i:                                       ; preds = %if.then.i
  %payload.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %28, i32 0, i32 10
  %31 = ptrtoint ptr %hba_capability.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %hba_capability.i, align 4
  %33 = and i16 %32, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool6.not.i = icmp eq i16 %33, 0
  br i1 %tobool6.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %28, i32 1, i32 2
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 4
  %and8.i = and i32 %35, 4194303
  br label %do.end.i

if.else.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  %size9.i = getelementptr inbounds %struct.mvumi_msg_frame, ptr %28, i32 1, i32 6
  %36 = ptrtoint ptr %size9.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size9.i, align 4
  br label %do.end.i

do.end.i:                                         ; preds = %if.else.i, %if.then7.i
  %size.0.i = phi i32 [ %and8.i, %if.then7.i ], [ %37, %if.else.i ]
  %38 = ptrtoint ptr %payload.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %payload.i, align 4
  %40 = ptrtoint ptr %pdev34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev34, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %data_buf.i = getelementptr inbounds %struct.mvumi_cmd, ptr %call.lcssa, i32 0, i32 5
  %42 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data_buf.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %size.0.i, ptr noundef %43, i32 noundef %39, i32 noundef 0) #12
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end.i, %if.then.i.if.end11.i_crit_edge
  %44 = ptrtoint ptr %pdev34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev34, align 4
  %dev13.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %46 = ptrtoint ptr %ib_max_size.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ib_max_size.i, align 4
  %48 = ptrtoint ptr %frame16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %frame16, align 4
  %frame_phys.i = getelementptr inbounds %struct.mvumi_cmd, ptr %call.lcssa, i32 0, i32 2
  %50 = ptrtoint ptr %frame_phys.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %frame_phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev13.i, i32 noundef %47, ptr noundef %49, i32 noundef %51, i32 noundef 0) #12
  tail call void @kfree(ptr noundef nonnull %call.lcssa) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end11.i, %land.lhs.true.i.for.inc_crit_edge, %do.end, %for.body.for.inc_crit_edge
  %retry.2 = phi i8 [ 0, %do.end ], [ %retry.06, %for.body.for.inc_crit_edge ], [ %retry.1.lcssa, %land.lhs.true.i.for.inc_crit_edge ], [ %retry.1.lcssa, %if.end11.i ]
  %inc40 = add i8 %device_id.05, 1
  %conv = zext i8 %inc40 to i32
  %52 = ptrtoint ptr %max_target_id to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %max_target_id, align 2
  %54 = zext i8 %inc40 to i16
  %cmp = icmp ugt i16 %53, %54
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvumi_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @mvumi_flush_cache(ptr noundef %1)
  %instancet = getelementptr inbounds %struct.mvumi_hba, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %instancet to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %instancet, align 4
  %disable_intr = getelementptr inbounds %struct.mvumi_instance_template, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %disable_intr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable_intr, align 4
  tail call void %5(ptr noundef %1) #12
  tail call fastcc void @mvumi_unmap_pci_addr(ptr noundef %add.ptr, ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvumi_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev3 = getelementptr inbounds %struct.mvumi_hba, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev3, align 4
  %call4 = tail call fastcc i32 @mvumi_map_pci_addr(ptr noundef %3, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.release_regions_crit_edge

if.end.release_regions_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %release_regions

if.end7:                                          ; preds = %if.end
  %call8 = tail call fastcc i32 @mvumi_cfg_hw_reg(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.unmap_pci_addr_crit_edge

if.end7.unmap_pci_addr_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %unmap_pci_addr

if.end11:                                         ; preds = %if.end7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %mmio = getelementptr inbounds %struct.mvumi_hba, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %mmio, align 4
  %regs1.i = getelementptr inbounds %struct.mvumi_hba, ptr %1, i32 0, i32 50
  %7 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs1.i, align 4
  %enpointa_mask_reg.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %enpointa_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enpointa_mask_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #12, !srcloc !396
  %arm_to_pciea_msg1.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %8, i32 0, i32 13
  %11 = ptrtoint ptr %arm_to_pciea_msg1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arm_to_pciea_msg1.i, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #12, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  call void @__sanitizer_cov_trace_const_cmp4(i32 1520806485, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 1520806485
  br i1 %cmp.not.i, label %if.end.i, label %if.end11.mvumi_reset.exit_crit_edge

if.end11.mvumi_reset.exit_crit_edge:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvumi_reset.exit

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %pciea_to_arm_drbl_reg.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %8, i32 0, i32 7
  %14 = ptrtoint ptr %pciea_to_arm_drbl_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pciea_to_arm_drbl_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 33554432) #12, !srcloc !396
  br label %mvumi_reset.exit

mvumi_reset.exit:                                 ; preds = %if.end.i, %if.end11.mvumi_reset.exit_crit_edge
  %16 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs1.i, align 4
  %arm_to_pciea_drbl_reg.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %arm_to_pciea_drbl_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arm_to_pciea_drbl_reg.i, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #12, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %21 = ptrtoint ptr %arm_to_pciea_drbl_reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arm_to_pciea_drbl_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #12, !srcloc !396
  %int_drbl_int_mask.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %17, i32 0, i32 36
  %23 = ptrtoint ptr %int_drbl_int_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %int_drbl_int_mask.i, align 4
  %arm_to_pciea_mask_reg.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %17, i32 0, i32 9
  %25 = ptrtoint ptr %arm_to_pciea_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arm_to_pciea_mask_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  %27 = tail call i32 @llvm.bswap.i32(i32 %24) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %27) #12, !srcloc !396
  %enpointa_mask_reg.i36 = getelementptr inbounds %struct.mvumi_hw_regs, ptr %17, i32 0, i32 1
  %28 = ptrtoint ptr %enpointa_mask_reg.i36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %enpointa_mask_reg.i36, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #12, !srcloc !393
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %int_dl_cpu2pciea.i = getelementptr inbounds %struct.mvumi_hw_regs, ptr %17, i32 0, i32 34
  %32 = ptrtoint ptr %int_dl_cpu2pciea.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %int_dl_cpu2pciea.i, align 4
  %or.i = or i32 %33, %31
  %34 = ptrtoint ptr %enpointa_mask_reg.i36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %enpointa_mask_reg.i36, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  %36 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %36) #12, !srcloc !396
  tail call void @msleep(i32 noundef 100) #12
  %call5.i = tail call fastcc zeroext i8 @mvumi_check_handshake(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call5.i)
  %tobool.not.i.not = icmp eq i8 %call5.i, 0
  br i1 %tobool.not.i.not, label %if.end16, label %mvumi_reset.exit.unmap_pci_addr_crit_edge

mvumi_reset.exit.unmap_pci_addr_crit_edge:        ; preds = %mvumi_reset.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %unmap_pci_addr

if.end16:                                         ; preds = %mvumi_reset.exit
  call void @__sanitizer_cov_trace_pc() #14
  %instancet = getelementptr inbounds %struct.mvumi_hba, ptr %1, i32 0, i32 9
  %37 = ptrtoint ptr %instancet to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %instancet, align 4
  %enable_intr = getelementptr inbounds %struct.mvumi_instance_template, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %enable_intr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %enable_intr, align 4
  tail call void %40(ptr noundef %1) #12
  br label %cleanup

unmap_pci_addr:                                   ; preds = %mvumi_reset.exit.unmap_pci_addr_crit_edge, %if.end7.unmap_pci_addr_crit_edge
  tail call fastcc void @mvumi_unmap_pci_addr(ptr noundef %add.ptr, ptr noundef %1)
  br label %release_regions

release_regions:                                  ; preds = %unmap_pci_addr, %if.end.release_regions_crit_edge
  %ret.1 = phi i32 [ %call4, %if.end.release_regions_crit_edge ], [ -22, %unmap_pci_addr ]
  tail call void @pci_release_regions(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %release_regions, %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ %call2, %entry.cleanup_crit_edge ], [ %ret.1, %release_regions ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 196)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 196)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !39, !41, !42, !44, !46, !48, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !96, !98, !99, !100, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !136, !138, !139, !140, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !165, !167, !168, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !207, !209, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221, !222, !224, !225, !227, !228, !229, !230, !232, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !261, !263, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !281, !282, !284, !285, !287, !288, !290, !291, !292, !294, !295, !296, !298, !299, !301, !302, !303, !305, !306, !307, !308, !310, !311, !312, !314, !315, !316, !318, !319, !320, !321, !323, !324, !325, !327, !329, !330, !331, !333, !335, !337, !338, !339, !340, !342, !343, !344, !345, !347, !348, !350, !351, !352, !354, !355, !356, !358, !359, !360, !361, !363, !364, !365, !367, !368, !369, !371, !373, !374, !375, !376, !378, !379, !380}
!llvm.named.register.sp = !{!382}
!llvm.module.flags = !{!383, !384, !385, !386, !387, !388, !389, !390}
!llvm.ident = !{!391}

!0 = !{ptr @__UNIQUE_ID_file287, !1, !"__UNIQUE_ID_file287", i1 false, i1 false}
!1 = !{!"../drivers/scsi/mvumi.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_license288, !1, !"__UNIQUE_ID_license288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/scsi/mvumi.c", i32 33, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/scsi/mvumi.c", i32 34, i32 1}
!7 = !{ptr @__initcall__kmod_mvumi__329_2631_mvumi_pci_driver_init6, !8, !"__initcall__kmod_mvumi__329_2631_mvumi_pci_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/scsi/mvumi.c", i32 2631, i32 1}
!9 = !{ptr @__exitcall_mvumi_pci_driver_exit, !8, !"__exitcall_mvumi_pci_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mvumi_pci_driver, !12, !"mvumi_pci_driver", i1 false, i1 false}
!12 = !{!"../drivers/scsi/mvumi.c", i32 2621, i32 26}
!13 = !{ptr @mvumi_pci_table, !14, !"mvumi_pci_table", i1 false, i1 false}
!14 = !{!"../drivers/scsi/mvumi.c", i32 36, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/mvumi.c", i32 2458, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mvumi_probe_one.__UNIQUE_ID_ddebug326, !16, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/mvumi.c", i32 2472, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mvumi_probe_one._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @mvumi_probe_one._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @mvumi_probe_one.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/scsi/mvumi.c", i32 2483, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mvumi_probe_one.__key.8, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/scsi/mvumi.c", i32 2487, i32 2}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mvumi_probe_one.__key.10, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/scsi/mvumi.c", i32 2488, i32 2}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/mvumi.c", i32 2501, i32 3}
!37 = !{ptr @mvumi_probe_one._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mvumi_probe_one._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/mvumi.c", i32 2513, i32 2}
!41 = !{ptr @mvumi_probe_one.__UNIQUE_ID_ddebug327, !40, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/mvumi.c", i32 2174, i32 10}
!44 = !{ptr @mvumi_template, !45, !"mvumi_template", i1 false, i1 false}
!45 = !{!"../drivers/scsi/mvumi.c", i32 2171, i32 34}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/mvumi.c", i32 325, i32 3}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mvumi_get_cmd._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @mvumi_get_cmd._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/mvumi.c", i32 2049, i32 3}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mvumi_build_frame._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @mvumi_build_frame._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/mvumi.c", i32 201, i32 3}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @mvumi_make_sgl._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @mvumi_make_sgl._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/mvumi.c", i32 704, i32 14}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/mvumi.c", i32 704, i32 33}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/mvumi.c", i32 2312, i32 3}
!68 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @mvumi_init_fw._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @mvumi_init_fw._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/mvumi.c", i32 2332, i32 3}
!73 = !{ptr @mvumi_init_fw._entry.28, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @mvumi_init_fw._entry_ptr.30, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/mvumi.c", i32 2338, i32 2}
!77 = !{ptr @mvumi_init_fw.__UNIQUE_ID_ddebug313, !76, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/mvumi.c", i32 2342, i32 3}
!80 = !{ptr @mvumi_init_fw._entry.32, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @mvumi_init_fw._entry_ptr.34, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/mvumi.c", i32 2350, i32 3}
!84 = !{ptr @mvumi_init_fw._entry.35, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @mvumi_init_fw._entry_ptr.37, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/mvumi.c", i32 92, i32 5}
!88 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @mvumi_map_pci_addr._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @mvumi_map_pci_addr._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/mvumi.c", i32 100, i32 3}
!93 = !{ptr @mvumi_map_pci_addr.__UNIQUE_ID_ddebug291, !92, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!94 = !{ptr @mvumi_instance_9143, !95, !"mvumi_instance_9143", i1 false, i1 false}
!95 = !{!"../drivers/scsi/mvumi.c", i32 1981, i32 39}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/mvumi.c", i32 1831, i32 3}
!98 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @mvumi_send_command.__UNIQUE_ID_ddebug311, !97, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/mvumi.c", i32 1835, i32 3}
!102 = !{ptr @mvumi_send_command.__UNIQUE_ID_ddebug312, !101, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/mvumi.c", i32 413, i32 3}
!105 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @mvumi_check_ib_list_9143._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @mvumi_check_ib_list_9143._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/mvumi.c", i32 417, i32 3}
!110 = !{ptr @mvumi_check_ib_list_9143._entry.46, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @mvumi_check_ib_list_9143._entry_ptr.48, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @mvumi_instance_9580, !113, !"mvumi_instance_9580", i1 false, i1 false}
!113 = !{!"../drivers/scsi/mvumi.c", i32 1992, i32 39}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/mvumi.c", i32 679, i32 3}
!116 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @mvumi_reset_host_9580._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @mvumi_reset_host_9580._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/mvumi.c", i32 683, i32 3}
!121 = !{ptr @mvumi_reset_host_9580._entry.51, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @mvumi_reset_host_9580._entry_ptr.53, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/mvumi.c", i32 617, i32 4}
!125 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @mvumi_wait_for_fw._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @mvumi_wait_for_fw._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/mvumi.c", i32 1250, i32 4}
!130 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @mvumi_check_handshake._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @mvumi_check_handshake._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/mvumi.c", i32 1260, i32 2}
!135 = !{ptr @mvumi_check_handshake.__UNIQUE_ID_ddebug300, !134, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/mvumi.c", i32 1263, i32 4}
!138 = !{ptr @mvumi_check_handshake._entry.59, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @mvumi_check_handshake._entry_ptr.61, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/mvumi.c", i32 1270, i32 2}
!142 = !{ptr @mvumi_check_handshake.__UNIQUE_ID_ddebug301, !141, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!143 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/mvumi.c", i32 1223, i32 4}
!145 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @mvumi_handshake_event._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @mvumi_handshake_event._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/mvumi.c", i32 1226, i32 4}
!150 = !{ptr @mvumi_handshake_event._entry.65, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @mvumi_handshake_event._entry_ptr.67, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.68, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/mvumi.c", i32 1102, i32 3}
!154 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @mvumi_handshake.__UNIQUE_ID_ddebug299, !153, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!156 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/mvumi.c", i32 1203, i32 3}
!158 = !{ptr @mvumi_handshake._entry, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @mvumi_handshake._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.71, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/mvumi.c", i32 1046, i32 3}
!162 = !{ptr @.str.72, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @mvumi_hs_process_page._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @mvumi_hs_process_page._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/scsi/mvumi.c", i32 1065, i32 3}
!167 = !{ptr @mvumi_hs_process_page.__UNIQUE_ID_ddebug298, !166, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!168 = !{ptr @.str.75, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/mvumi.c", i32 1076, i32 3}
!170 = !{ptr @mvumi_hs_process_page._entry.74, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @mvumi_hs_process_page._entry_ptr.76, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.77, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/scsi/mvumi.c", i32 929, i32 3}
!174 = !{ptr @.str.78, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @mvumi_init_data._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @mvumi_init_data._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.80, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/mvumi.c", i32 993, i32 3}
!179 = !{ptr @mvumi_init_data._entry.79, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @mvumi_init_data._entry_ptr.81, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/scsi/mvumi.c", i32 1013, i32 3}
!183 = !{ptr @mvumi_init_data._entry.82, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @mvumi_init_data._entry_ptr.84, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.85, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/mvumi.c", i32 112, i32 3}
!187 = !{ptr @.str.86, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @mvumi_alloc_mem_resource._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @mvumi_alloc_mem_resource._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.88, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/mvumi.c", i32 121, i32 4}
!192 = !{ptr @mvumi_alloc_mem_resource._entry.87, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @mvumi_alloc_mem_resource._entry_ptr.89, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/mvumi.c", i32 134, i32 4}
!196 = !{ptr @mvumi_alloc_mem_resource._entry.90, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @mvumi_alloc_mem_resource._entry_ptr.92, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.94, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/scsi/mvumi.c", i32 143, i32 3}
!200 = !{ptr @mvumi_alloc_mem_resource._entry.93, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @mvumi_alloc_mem_resource._entry_ptr.95, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.96, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/scsi/mvumi.c", i32 898, i32 3}
!204 = !{ptr @.str.97, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @mvumi_hs_build_page._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @mvumi_hs_build_page._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.98, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/scsi/mvumi.c", i32 389, i32 2}
!209 = !{ptr @.str.99, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @mvumi_alloc_cmds._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @mvumi_alloc_cmds._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.100, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/mvumi.c", i32 170, i32 4}
!214 = !{ptr @.str.101, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @mvumi_release_mem_resource._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @mvumi_release_mem_resource._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.102, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/mvumi.c", i32 1805, i32 4}
!219 = !{ptr @.str.103, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @mvumi_isr_handler._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @mvumi_isr_handler._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @mvumi_launch_events.__key, !223, !"__key", i1 false, i1 false}
!223 = !{!"../drivers/scsi/mvumi.c", i32 1754, i32 4}
!224 = !{ptr @.str.104, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.105, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/scsi/mvumi.c", i32 1722, i32 3}
!227 = !{ptr @.str.106, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @mvumi_get_event._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @mvumi_get_event._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.107, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/scsi/mvumi.c", i32 257, i32 3}
!232 = !{ptr @.str.108, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @mvumi_create_internal_cmd._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @mvumi_create_internal_cmd._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.110, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/scsi/mvumi.c", i32 265, i32 3}
!237 = !{ptr @mvumi_create_internal_cmd._entry.109, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @mvumi_create_internal_cmd._entry_ptr.111, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.113, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/scsi/mvumi.c", i32 273, i32 4}
!241 = !{ptr @mvumi_create_internal_cmd._entry.112, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @mvumi_create_internal_cmd._entry_ptr.114, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.115, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/scsi/mvumi.c", i32 718, i32 3}
!245 = !{ptr @.str.116, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @mvumi_issue_blocked_cmd._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @mvumi_issue_blocked_cmd._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.118, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/mvumi.c", i32 739, i32 4}
!250 = !{ptr @mvumi_issue_blocked_cmd._entry.117, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @mvumi_issue_blocked_cmd._entry_ptr.119, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.121, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/scsi/mvumi.c", i32 744, i32 4}
!254 = !{ptr @mvumi_issue_blocked_cmd._entry.120, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @mvumi_issue_blocked_cmd._entry_ptr.122, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.123, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/scsi/mvumi.c", i32 1685, i32 4}
!258 = !{ptr @.str.124, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @mvumi_notification._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @mvumi_notification._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.125, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/scsi/mvumi.c", i32 1358, i32 2}
!263 = !{ptr @.str.126, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @mvumi_show_event._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @mvumi_show_event._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.128, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/scsi/mvumi.c", i32 1362, i32 3}
!268 = !{ptr @mvumi_show_event._entry.127, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @mvumi_show_event._entry_ptr.129, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.131, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/scsi/mvumi.c", i32 1365, i32 4}
!272 = !{ptr @mvumi_show_event._entry.130, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @mvumi_show_event._entry_ptr.132, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.134, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/scsi/mvumi.c", i32 1367, i32 3}
!276 = !{ptr @mvumi_show_event._entry.133, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @mvumi_show_event._entry_ptr.135, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.137, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/scsi/mvumi.c", i32 1371, i32 3}
!280 = !{ptr @mvumi_show_event._entry.136, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @mvumi_show_event._entry_ptr.138, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @mvumi_show_event._entry.139, !283, !"_entry", i1 false, i1 false}
!283 = !{!"../drivers/scsi/mvumi.c", i32 1374, i32 4}
!284 = !{ptr @mvumi_show_event._entry_ptr.140, !283, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @mvumi_show_event._entry.141, !286, !"_entry", i1 false, i1 false}
!286 = !{!"../drivers/scsi/mvumi.c", i32 1375, i32 3}
!287 = !{ptr @mvumi_show_event._entry_ptr.142, !286, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.143, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/scsi/mvumi.c", i32 1387, i32 4}
!290 = !{ptr @.str.144, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @mvumi_handle_hotplug.__UNIQUE_ID_ddebug302, !289, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!292 = !{ptr @.str.145, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/scsi/mvumi.c", i32 1393, i32 4}
!294 = !{ptr @mvumi_handle_hotplug._entry, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @mvumi_handle_hotplug._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.146, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/scsi/mvumi.c", i32 1399, i32 4}
!298 = !{ptr @mvumi_handle_hotplug.__UNIQUE_ID_ddebug303, !297, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!299 = !{ptr @.str.148, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/scsi/mvumi.c", i32 1403, i32 4}
!301 = !{ptr @mvumi_handle_hotplug._entry.147, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @mvumi_handle_hotplug._entry_ptr.149, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.150, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/scsi/mvumi.c", i32 472, i32 3}
!305 = !{ptr @.str.151, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @mvumi_check_ob_frame._entry, !304, !"_entry", i1 false, i1 false}
!307 = !{ptr @mvumi_check_ob_frame._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.153, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/scsi/mvumi.c", i32 476, i32 3}
!310 = !{ptr @mvumi_check_ob_frame._entry.152, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @mvumi_check_ob_frame._entry_ptr.154, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.156, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/scsi/mvumi.c", i32 480, i32 4}
!314 = !{ptr @mvumi_check_ob_frame._entry.155, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @mvumi_check_ob_frame._entry_ptr.157, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.158, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/scsi/mvumi.c", i32 2403, i32 3}
!318 = !{ptr @.str.159, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @mvumi_io_attach._entry, !317, !"_entry", i1 false, i1 false}
!320 = !{ptr @mvumi_io_attach._entry_ptr, !317, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.161, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/scsi/mvumi.c", i32 2414, i32 3}
!323 = !{ptr @mvumi_io_attach._entry.160, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @mvumi_io_attach._entry_ptr.162, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.163, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/scsi/mvumi.c", i32 2419, i32 20}
!327 = !{ptr @.str.165, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/scsi/mvumi.c", i32 2422, i32 3}
!329 = !{ptr @mvumi_io_attach._entry.164, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @mvumi_io_attach._entry_ptr.166, !328, !"_entry_ptr", i1 false, i1 false}
!331 = distinct !{null, !332, !"__already_done", i1 false, i1 false}
!332 = !{!"../drivers/scsi/mvumi.c", i32 1613, i32 3}
!333 = distinct !{null, !334, !"__already_done", i1 false, i1 false}
!334 = !{!"../drivers/scsi/mvumi.c", i32 1618, i32 3}
!335 = !{ptr @.str.168, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/scsi/mvumi.c", i32 1627, i32 6}
!337 = !{ptr @.str.169, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @mvumi_rescan_bus._entry, !336, !"_entry", i1 false, i1 false}
!339 = !{ptr @mvumi_rescan_bus._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.170, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/scsi/mvumi.c", i32 1578, i32 6}
!342 = !{ptr @.str.171, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @mvumi_probe_devices._entry, !341, !"_entry", i1 false, i1 false}
!344 = !{ptr @mvumi_probe_devices._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.172, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/scsi/mvumi.c", i32 1589, i32 5}
!347 = !{ptr @mvumi_probe_devices.__UNIQUE_ID_ddebug308, !346, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!348 = !{ptr @.str.173, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/scsi/mvumi.c", i32 1450, i32 3}
!350 = !{ptr @.str.174, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @mvumi_inquiry.__UNIQUE_ID_ddebug304, !349, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!352 = !{ptr @.str.175, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/scsi/mvumi.c", i32 1538, i32 4}
!354 = !{ptr @.str.176, !353, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @mvumi_remove_devices.__UNIQUE_ID_ddebug307, !353, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!356 = !{ptr @.str.177, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/scsi/mvumi.c", i32 1515, i32 5}
!358 = !{ptr @.str.178, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @mvumi_match_devices._entry, !357, !"_entry", i1 false, i1 false}
!360 = !{ptr @mvumi_match_devices._entry_ptr, !357, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.179, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/scsi/mvumi.c", i32 2553, i32 2}
!363 = !{ptr @.str.180, !362, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @mvumi_detach_one.__UNIQUE_ID_ddebug328, !362, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!365 = !{ptr @.str.181, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/scsi/mvumi.c", i32 1473, i32 3}
!367 = !{ptr @.str.182, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @mvumi_detach_devices.__UNIQUE_ID_ddebug305, !366, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!369 = !{ptr @mvumi_detach_devices.__UNIQUE_ID_ddebug306, !370, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!370 = !{!"../drivers/scsi/mvumi.c", i32 1479, i32 3}
!371 = !{ptr @.str.183, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/scsi/mvumi.c", i32 780, i32 5}
!373 = !{ptr @.str.184, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @mvumi_flush_cache._entry, !372, !"_entry", i1 false, i1 false}
!375 = !{ptr @mvumi_flush_cache._entry_ptr, !372, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.186, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/scsi/mvumi.c", i32 804, i32 4}
!378 = !{ptr @mvumi_flush_cache._entry.185, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @mvumi_flush_cache._entry_ptr.187, !377, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @mvumi_pm_ops, !381, !"mvumi_pm_ops", i1 false, i1 false}
!381 = !{!"../drivers/scsi/mvumi.c", i32 2619, i32 8}
!382 = !{!"sp"}
!383 = !{i32 1, !"wchar_size", i32 2}
!384 = !{i32 1, !"min_enum_size", i32 4}
!385 = !{i32 8, !"branch-target-enforcement", i32 0}
!386 = !{i32 8, !"sign-return-address", i32 0}
!387 = !{i32 8, !"sign-return-address-all", i32 0}
!388 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!389 = !{i32 7, !"uwtable", i32 1}
!390 = !{i32 7, !"frame-pointer", i32 2}
!391 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!392 = !{i64 2148759618, i64 2148759623, i64 2148759636, i64 2148759680, i64 2148759714, i64 2148759735}
!393 = !{i64 5048338}
!394 = !{i64 2152588687}
!395 = !{i64 2152590042}
!396 = !{i64 5047920}
!397 = !{!"branch_weights", i32 2000, i32 1}
!398 = !{!"branch_weights", i32 1, i32 2000}
!399 = !{i64 2148277803, i64 2148277829, i64 2148277858, i64 2148277892, i64 2148277923, i64 2148277946}
!400 = !{!"auto-init"}
!401 = !{i64 2148280268, i64 2148280294, i64 2148280323, i64 2148280357, i64 2148280388, i64 2148280411}
!402 = !{i64 2155104213, i64 2155104697, i64 2155104250, i64 2155104306, i64 2155104340, i64 2155104364, i64 2155104405, i64 2155104426, i64 2155104454, i64 2155104488}
!403 = !{i64 1182793, i64 1182820, i64 1182842, i64 1182870}
!404 = !{i64 1183201, i64 1183228, i64 1183261, i64 1183282, i64 1183309, i64 1183335}
!405 = !{i64 2155102619, i64 2155103103, i64 2155102656, i64 2155102712, i64 2155102746, i64 2155102770, i64 2155102811, i64 2155102832, i64 2155102860, i64 2155102894}
!406 = !{i64 2155160628}
!407 = !{i64 2155207871}
!408 = !{i64 2155205696}
!409 = !{i64 2155166179, i64 2155166664, i64 2155166216, i64 2155166272, i64 2155166306, i64 2155166330, i64 2155166371, i64 2155166392, i64 2155166420, i64 2155166454}
!410 = !{i64 2155272547}
