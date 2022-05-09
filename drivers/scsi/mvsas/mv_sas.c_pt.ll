; ModuleID = '/llk/IR_all_yes/drivers/scsi/mvsas/mv_sas.c_pt.bc'
source_filename = "../drivers/scsi/mvsas/mv_sas.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mvs_info = type { i32, %struct.spinlock, ptr, ptr, ptr, ptr, [8 x i8], ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, i32, ptr, i32, ptr, [8 x %struct.mvs_phy], [8 x %struct.mvs_port], i32, i64, ptr, %struct.list_head, %struct.list_head, i32, i16, i32, i32, ptr, %struct.hba_info_page, [1024 x %struct.mvs_device], ptr, i32, ptr, i32, ptr, [0 x %struct.mvs_slot_info] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mvs_phy = type { ptr, ptr, %struct.asd_sas_phy, %struct.sas_identify, ptr, %struct.timer_list, i64, i64, i32, i32, i32, i32, i32, i32, [32 x i8], i8, i8, [2 x i8], i32, i32, i32 }
%struct.asd_sas_phy = type { %struct.atomic_t, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [8 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, %struct.list_head, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sas_identify = type { i32, i32, i32, i64, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mvs_port = type { %struct.asd_sas_port, i8, i8, %struct.list_head }
%struct.asd_sas_port = type { %struct.sas_discovery, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.sas_work, i32, i32, i32, [8 x i8], [8 x i8], i32, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, ptr, ptr, ptr }
%struct.sas_discovery = type { [4 x %struct.sas_discovery_event], i32, [8 x i8], [8 x i8], [8 x i8], i32 }
%struct.sas_discovery_event = type { %struct.sas_work, ptr }
%struct.sas_work = type { %struct.list_head, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.hba_info_page = type { [4 x i8], [13 x i32], [8 x i64], [8 x %struct.ffe_control], [12 x i32], [8 x i8], [8 x %struct.phy_tuning], [10 x i32] }
%struct.ffe_control = type { i8 }
%struct.phy_tuning = type { i16, [2 x i8] }
%struct.mvs_device = type { %struct.list_head, i32, ptr, ptr, i32, i32, i32, i8, i8, i16 }
%struct.mvs_slot_info = type { %struct.list_head, %union.anon.95, i32, i32, i32, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.95 = type { ptr }
%struct.mvs_chip_info = type { i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.mvs_dispatch = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sas_ha_struct = type { %struct.list_head, %struct.mutex, i32, %struct.spinlock, i32, %struct.wait_queue_head, %struct.list_head, %struct.mutex, %struct.scsi_core, ptr, ptr, ptr, ptr, ptr, ptr, [3 x i8], %struct.spinlock, ptr, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.scsi_core = type { ptr }
%struct.mvs_prv_info = type { i8, i8, i8, i8, [2 x ptr], %struct.tasklet_struct }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.94, i32 }
%union.anon.94 = type { ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.sas_phy = type { %struct.device, i32, i32, %struct.sas_identify, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, ptr }
%struct.sas_identify_frame = type { i8, i8, %union.anon.90, %union.anon.92, [8 x i8], [8 x i8], i8, [7 x i8], i32 }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { i8 }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { i8 }
%struct.domain_device = type { %struct.spinlock, i32, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, [8 x i8], [3 x i8], [32 x i8], [101 x i8], %union.anon.84, ptr, i32, %struct.kref, [116 x i8] }
%union.anon.84 = type { %struct.sata_device }
%struct.sata_device = type { i32, i8, ptr, ptr, [112 x i8], %struct.smp_resp, [24 x i8], [44 x i8] }
%struct.smp_resp = type { i8, i8, i8, i8, %union.anon.86 }
%union.anon.86 = type { %struct.report_phy_sata_resp }
%struct.report_phy_sata_resp = type { [5 x i8], i8, i8, i8, i32, [8 x i8], %struct.dev_to_host_fis, i32, [8 x i8], i32 }
%struct.dev_to_host_fis = type { i8, i8, i8, i8, i8, %union.anon.87, %union.anon.88, i8, i8, i8, i8, i8, %union.anon.89, i8, i8, i8, i32 }
%union.anon.87 = type { i8 }
%union.anon.88 = type { i8 }
%union.anon.89 = type { i8 }
%struct.sas_task = type { ptr, %struct.spinlock, i32, i32, %union.anon.96, ptr, i32, i32, i8, %struct.task_status_struct, ptr, ptr, ptr, ptr }
%union.anon.96 = type { %struct.sas_smp_task }
%struct.sas_smp_task = type { %struct.scatterlist, %struct.scatterlist }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.task_status_struct = type { i32, i32, i32, [96 x i8], i32, i32 }
%struct.mvs_cmd_hdr = type { i32, i32, i32, i32, i64, i64, i64, i64, [4 x i32] }
%struct.sas_ssp_task = type { i8, [8 x i8], i8, i32, i8, ptr }
%struct.ssp_frame_hdr = type { i8, [3 x i8], i8, [3 x i8], i16, i16, i32, i16, i16, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.mvs_tmf_task = type { i8, i16 }
%struct.sas_ata_task = type <{ %struct.host_to_dev_fis, [16 x i8], i8, i8 }>
%struct.host_to_dev_fis = type { i8, i8, i8, i8, i8, %union.anon.97, %union.anon.98, i8, i8, i8, i8, i8, %union.anon.99, i8, i8, i8, i32 }
%union.anon.97 = type { i8 }
%union.anon.98 = type { i8 }
%union.anon.99 = type { i8 }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.expander_device = type { %struct.list_head, i32, i16, i8, i8, [8 x i8], ptr, ptr, %struct.mutex }
%struct.ex_phy = type { i32, i32, i32, i32, i8, i32, i32, [8 x i8], i8, i32, i32, i8, i32, ptr, ptr }
%struct.sas_task_slow = type { %struct.timer_list, %struct.completion, ptr }
%struct.scsi_lun = type { [8 x i8] }
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
%struct.mvs_wq = type { %struct.delayed_work, ptr, ptr, i32, %struct.list_head }

@mvs_update_phyinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1038, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Phy%d : No sig fis\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mvs_update_phyinfo\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/scsi/mvsas/mv_sas.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mvs_update_phyinfo._entry_ptr = internal global ptr @mvs_update_phyinfo._entry, section ".printk_index", align 4
@mvs_update_phyinfo._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1070, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s %d:phy %d attach dev info is %x\0A\00", [58 x i8] zeroinitializer }, align 32
@mvs_update_phyinfo._entry_ptr.7 = internal global ptr @mvs_update_phyinfo._entry.5, section ".printk_index", align 4
@mvs_update_phyinfo._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 1072, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s %d:phy %d attach sas addr is %llx\0A\00", [56 x i8] zeroinitializer }, align 32
@mvs_update_phyinfo._entry_ptr.10 = internal global ptr @mvs_update_phyinfo._entry.8, section ".printk_index", align 4
@mvs_lu_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s %d:%s for device[%x]:rc= %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mvs_lu_reset\00", [19 x i8] zeroinitializer }, align 32
@mvs_lu_reset._entry_ptr = internal global ptr @mvs_lu_reset._entry, section ".printk_index", align 4
@mvs_I_T_nexus_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.13, ptr @.str.2, i32 1421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mvs_I_T_nexus_reset\00", [44 x i8] zeroinitializer }, align 32
@mvs_I_T_nexus_reset._entry_ptr = internal global ptr @mvs_I_T_nexus_reset._entry, section ".printk_index", align 4
@mvs_query_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s %d:%s:rc= %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mvs_query_task\00", [17 x i8] zeroinitializer }, align 32
@mvs_query_task._entry_ptr = internal global ptr @mvs_query_task._entry, section ".printk_index", align 4
@mvs_abort_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 1480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s %d:Device has removed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mvs_abort_task\00", [17 x i8] zeroinitializer }, align 32
@mvs_abort_task._entry_ptr = internal global ptr @mvs_abort_task._entry, section ".printk_index", align 4
@mvs_abort_task._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 1500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s %d:No such tag in %s\0A\00", [37 x i8] zeroinitializer }, align 32
@mvs_abort_task._entry_ptr.20 = internal global ptr @mvs_abort_task._entry.18, section ".printk_index", align 4
@mvs_abort_task._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.2, i32 1531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017%s %d:mvs_abort_task() mvi=%p task=%p slot=%p slot_idx=x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@mvs_abort_task._entry_ptr.23 = internal global ptr @mvs_abort_task._entry.21, section ".printk_index", align 4
@mvs_abort_task._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.17, ptr @.str.2, i32 1541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mvs_abort_task._entry_ptr.25 = internal global ptr @mvs_abort_task._entry.24, section ".printk_index", align 4
@mvs_slot_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 1748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s %d:port has not device.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mvs_slot_complete\00", [46 x i8] zeroinitializer }, align 32
@mvs_slot_complete._entry_ptr = internal global ptr @mvs_slot_complete._entry, section ".printk_index", align 4
@mvs_slot_complete._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 1762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s %d:port %d slot %d rx_desc %X has error info%016llX.\0A\00", [37 x i8] zeroinitializer }, align 32
@mvs_slot_complete._entry_ptr.30 = internal global ptr @mvs_slot_complete._entry.28, section ".printk_index", align 4
@mvs_slot_complete._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 1807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s %d:port %d has removed.\0A\00", [34 x i8] zeroinitializer }, align 32
@mvs_slot_complete._entry_ptr.33 = internal global ptr @mvs_slot_complete._entry.31, section ".printk_index", align 4
@mvs_do_release_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 1856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s %d:Release slot [%x] tag[%x], task [%p]:\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mvs_do_release_task\00", [44 x i8] zeroinitializer }, align 32
@mvs_do_release_task._entry_ptr = internal global ptr @mvs_do_release_task._entry, section ".printk_index", align 4
@mvs_int_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 1964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s %d:phy %d ctrl sts=0x%08X.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mvs_int_port\00", [19 x i8] zeroinitializer }, align 32
@mvs_int_port._entry_ptr = internal global ptr @mvs_int_port._entry, section ".printk_index", align 4
@mvs_int_port._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 1966, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s %d:phy %d irq sts = 0x%08X\0A\00", [63 x i8] zeroinitializer }, align 32
@mvs_int_port._entry_ptr.40 = internal global ptr @mvs_int_port._entry.38, section ".printk_index", align 4
@mvs_int_port._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.2, i32 1975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s %d:phy %d STP decoding error.\0A\00", [60 x i8] zeroinitializer }, align 32
@mvs_int_port._entry_ptr.43 = internal global ptr @mvs_int_port._entry.41, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mvs_int_port._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.2, i32 2014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s %d:notify plug in on phy[%d]\0A\00", [61 x i8] zeroinitializer }, align 32
@mvs_int_port._entry_ptr.46 = internal global ptr @mvs_int_port._entry.44, section ".printk_index", align 4
@mvs_int_port._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.37, ptr @.str.2, i32 2039, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s %d:plugin interrupt but phy%d is gone\0A\00", [52 x i8] zeroinitializer }, align 32
@mvs_int_port._entry_ptr.49 = internal global ptr @mvs_int_port._entry.47, section ".printk_index", align 4
@mvs_int_port._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.37, ptr @.str.2, i32 2043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s %d:phy %d broadcast change.\0A\00", [62 x i8] zeroinitializer }, align 32
@mvs_int_port._entry_ptr.52 = internal global ptr @mvs_int_port._entry.50, section ".printk_index", align 4
@mvs_bytes_dmaed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s %d:phy %d byte dmaded.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mvs_bytes_dmaed\00", [16 x i8] zeroinitializer }, align 32
@mvs_bytes_dmaed._entry_ptr = internal global ptr @mvs_bytes_dmaed._entry, section ".printk_index", align 4
@mvs_task_exec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 857, ptr @.str.57, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mvsas exec failed[%d]!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mvs_task_exec\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mvs_task_exec._entry_ptr = internal global ptr @mvs_task_exec._entry, section ".printk_index", align 4
@mvs_task_prep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s %d:device %d not ready.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mvs_task_prep\00", [18 x i8] zeroinitializer }, align 32
@mvs_task_prep._entry_ptr = internal global ptr @mvs_task_prep._entry, section ".printk_index", align 4
@mvs_task_prep._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s %d:device %016llx not ready.\0A\00", [61 x i8] zeroinitializer }, align 32
@mvs_task_prep._entry_ptr.62 = internal global ptr @mvs_task_prep._entry.60, section ".printk_index", align 4
@mvs_task_prep._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.2, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s %d:SATA/STP port %d does not attachdevice.\0A\00", [47 x i8] zeroinitializer }, align 32
@mvs_task_prep._entry_ptr.65 = internal global ptr @mvs_task_prep._entry.63, section ".printk_index", align 4
@mvs_task_prep._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.59, ptr @.str.2, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s %d:SAS port %d does not attachdevice.\0A\00", [52 x i8] zeroinitializer }, align 32
@mvs_task_prep._entry_ptr.68 = internal global ptr @mvs_task_prep._entry.66, section ".printk_index", align 4
@mvs_task_prep._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.59, ptr @.str.2, i32 805, ptr @.str.57, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unknown sas_task proto: 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@mvs_task_prep._entry_ptr.71 = internal global ptr @mvs_task_prep._entry.69, section ".printk_index", align 4
@mvs_task_prep._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.59, ptr @.str.2, i32 811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s %d:rc is %x\0A\00", [46 x i8] zeroinitializer }, align 32
@mvs_task_prep._entry_ptr.74 = internal global ptr @mvs_task_prep._entry.72, section ".printk_index", align 4
@mvs_task_prep._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.59, ptr @.str.2, i32 834, ptr @.str.57, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mvsas prep failed[%d]!\0A\00", [40 x i8] zeroinitializer }, align 32
@mvs_task_prep._entry_ptr.77 = internal global ptr @mvs_task_prep._entry.75, section ".printk_index", align 4
@mvs_task_prep_ata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s %d:Have not enough regiset for dev %d.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mvs_task_prep_ata\00", [46 x i8] zeroinitializer }, align 32
@mvs_task_prep_ata._entry_ptr = internal global ptr @mvs_task_prep_ata._entry, section ".printk_index", align 4
@mvs_port_notify_formed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s %d:set wide port phy map %x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mvs_port_notify_formed\00", [41 x i8] zeroinitializer }, align 32
@mvs_port_notify_formed._entry_ptr = internal global ptr @mvs_port_notify_formed._entry, section ".printk_index", align 4
@mvs_dev_found_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 1216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s %d:Error: no attached dev:%016llxat ex:%016llx.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mvs_dev_found_notify\00", [43 x i8] zeroinitializer }, align 32
@mvs_dev_found_notify._entry_ptr = internal global ptr @mvs_dev_found_notify._entry, section ".printk_index", align 4
@mvs_alloc_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 1161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s %d:max support %d devices, ignore ..\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mvs_alloc_dev\00", [18 x i8] zeroinitializer }, align 32
@mvs_alloc_dev._entry_ptr = internal global ptr @mvs_alloc_dev._entry, section ".printk_index", align 4
@mvs_dev_gone_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 1239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s %d:found dev has gone.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mvs_dev_gone_notify\00", [44 x i8] zeroinitializer }, align 32
@mvs_dev_gone_notify._entry_ptr = internal global ptr @mvs_dev_gone_notify._entry, section ".printk_index", align 4
@mvs_dev_gone_notify._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.2, i32 1248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s %d:found dev[%d:%x] is gone.\0A\00", [61 x i8] zeroinitializer }, align 32
@mvs_dev_gone_notify._entry_ptr.90 = internal global ptr @mvs_dev_gone_notify._entry.88, section ".printk_index", align 4
@__const.mvs_debug_issue_ssp_tmf.ssp_task = private unnamed_addr constant { i8, [8 x i8], i8, [2 x i8], i32, i8, [3 x i8], ptr } { i8 -1, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", i8 -1, [2 x i8] c"\FF\FF", i32 -1, i8 -1, [3 x i8] c"\FF\FF\FF", ptr inttoptr (i32 -1 to ptr) }, align 4
@mvs_exec_internal_tmf_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 1307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s %d:executing internal task failed:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mvs_exec_internal_tmf_task\00", [37 x i8] zeroinitializer }, align 32
@mvs_exec_internal_tmf_task._entry_ptr = internal global ptr @mvs_exec_internal_tmf_task._entry, section ".printk_index", align 4
@mvs_exec_internal_tmf_task._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.2, i32 1316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s %d:TMF task[%x] timeout.\0A\00", [33 x i8] zeroinitializer }, align 32
@mvs_exec_internal_tmf_task._entry_ptr.95 = internal global ptr @mvs_exec_internal_tmf_task._entry.93, section ".printk_index", align 4
@mvs_exec_internal_tmf_task._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.92, ptr @.str.2, i32 1337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s %d:blocked task error.\0A\00", [35 x i8] zeroinitializer }, align 32
@mvs_exec_internal_tmf_task._entry_ptr.98 = internal global ptr @mvs_exec_internal_tmf_task._entry.96, section ".printk_index", align 4
@mvs_exec_internal_tmf_task._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.92, ptr @.str.2, i32 1345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017%s %d: task to dev %016llx response: 0x%x status 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@mvs_exec_internal_tmf_task._entry_ptr.101 = internal global ptr @mvs_exec_internal_tmf_task._entry.99, section ".printk_index", align 4
@mvs_free_reg_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s %d:device has been free.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mvs_free_reg_set\00", [47 x i8] zeroinitializer }, align 32
@mvs_free_reg_set._entry_ptr = internal global ptr @mvs_free_reg_set._entry, section ".printk_index", align 4
@mvs_slot_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 1680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s %d:reuse same slot, retry command.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mvs_slot_err\00", [19 x i8] zeroinitializer }, align 32
@mvs_slot_err._entry_ptr = internal global ptr @mvs_slot_err._entry, section ".printk_index", align 4
@mvs_set_sense._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 1611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017%s %d:Length %d of sense buffer too small to fit sense %x:%x:%x\00", [62 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mvs_set_sense\00", [18 x i8] zeroinitializer }, align 32
@mvs_set_sense._entry_ptr = internal global ptr @mvs_set_sense._entry, section ".printk_index", align 4
@mvs_set_sense._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 1624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mvs_set_sense._entry_ptr.109 = internal global ptr @mvs_set_sense._entry.108, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@mvs_handle_event.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.110 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&(&mwq->work_q)->work)\00", [55 x i8] zeroinitializer }, align 32
@mvs_handle_event.__key.111 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.112 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(&mwq->work_q)->timer\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mvs_work_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 1902, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s %d:phy%d Removed Device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mvs_work_queue\00", [17 x i8] zeroinitializer }, align 32
@mvs_work_queue._entry_ptr = internal global ptr @mvs_work_queue._entry, section ".printk_index", align 4
@mvs_work_queue._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.2, i32 1908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s %d:phy%d Attached Device\0A\00", [33 x i8] zeroinitializer }, align 32
@mvs_work_queue._entry_ptr.117 = internal global ptr @mvs_work_queue._entry.115, section ".printk_index", align 4
@mvs_work_queue._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.114, ptr @.str.2, i32 1915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s %d:phy%d Got Broadcast Change\0A\00", [60 x i8] zeroinitializer }, align 32
@mvs_work_queue._entry_ptr.120 = internal global ptr @mvs_work_queue._entry.118, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@mvs_sig_time_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 1950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s %d:Get signature time out, reset phy %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mvs_sig_time_out\00", [47 x i8] zeroinitializer }, align 32
@mvs_sig_time_out._entry_ptr = internal global ptr @mvs_sig_time_out._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 17]
@__sancov_gen_cov_switch_values.123 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 128]
@__sancov_gen_cov_switch_values.125 = internal global [7 x i64] [i64 5, i64 8, i64 96, i64 97, i64 99, i64 100, i64 101]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.127 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 129, i64 130]
@__sancov_gen_cov_switch_values.128 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.129 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 5, i64 8]
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1037, i32 5 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1069, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1071, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1403, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1420, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1463, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1480, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1500, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1529, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1541, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1748, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1760, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1807, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1855, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1963, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1965, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1974, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 2014, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 2038, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 2042, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 265, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 857, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 724, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 727, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 737, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 746, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 803, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 811, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 834, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 450, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1107, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1213, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1160, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1239, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1247, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1307, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1316, i32 5 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1337, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1341, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 142, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1680, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1610, i32 4 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1623, i32 4 }
@___asan_gen_.457 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1932, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1902, i32 5 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1908, i32 5 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1915, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.490 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.491 = private constant [31 x i8] c"../drivers/scsi/mvsas/mv_sas.c\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 1949, i32 4 }
@llvm.compiler.used = appending global [168 x ptr] [ptr @mvs_I_T_nexus_reset._entry, ptr @mvs_I_T_nexus_reset._entry_ptr, ptr @mvs_abort_task._entry, ptr @mvs_abort_task._entry.18, ptr @mvs_abort_task._entry.21, ptr @mvs_abort_task._entry.24, ptr @mvs_abort_task._entry_ptr, ptr @mvs_abort_task._entry_ptr.20, ptr @mvs_abort_task._entry_ptr.23, ptr @mvs_abort_task._entry_ptr.25, ptr @mvs_alloc_dev._entry, ptr @mvs_alloc_dev._entry_ptr, ptr @mvs_bytes_dmaed._entry, ptr @mvs_bytes_dmaed._entry_ptr, ptr @mvs_dev_found_notify._entry, ptr @mvs_dev_found_notify._entry_ptr, ptr @mvs_dev_gone_notify._entry, ptr @mvs_dev_gone_notify._entry.88, ptr @mvs_dev_gone_notify._entry_ptr, ptr @mvs_dev_gone_notify._entry_ptr.90, ptr @mvs_do_release_task._entry, ptr @mvs_do_release_task._entry_ptr, ptr @mvs_exec_internal_tmf_task._entry, ptr @mvs_exec_internal_tmf_task._entry.93, ptr @mvs_exec_internal_tmf_task._entry.96, ptr @mvs_exec_internal_tmf_task._entry.99, ptr @mvs_exec_internal_tmf_task._entry_ptr, ptr @mvs_exec_internal_tmf_task._entry_ptr.101, ptr @mvs_exec_internal_tmf_task._entry_ptr.95, ptr @mvs_exec_internal_tmf_task._entry_ptr.98, ptr @mvs_free_reg_set._entry, ptr @mvs_free_reg_set._entry_ptr, ptr @mvs_int_port._entry, ptr @mvs_int_port._entry.38, ptr @mvs_int_port._entry.41, ptr @mvs_int_port._entry.44, ptr @mvs_int_port._entry.47, ptr @mvs_int_port._entry.50, ptr @mvs_int_port._entry_ptr, ptr @mvs_int_port._entry_ptr.40, ptr @mvs_int_port._entry_ptr.43, ptr @mvs_int_port._entry_ptr.46, ptr @mvs_int_port._entry_ptr.49, ptr @mvs_int_port._entry_ptr.52, ptr @mvs_lu_reset._entry, ptr @mvs_lu_reset._entry_ptr, ptr @mvs_port_notify_formed._entry, ptr @mvs_port_notify_formed._entry_ptr, ptr @mvs_query_task._entry, ptr @mvs_query_task._entry_ptr, ptr @mvs_set_sense._entry, ptr @mvs_set_sense._entry.108, ptr @mvs_set_sense._entry_ptr, ptr @mvs_set_sense._entry_ptr.109, ptr @mvs_sig_time_out._entry, ptr @mvs_sig_time_out._entry_ptr, ptr @mvs_slot_complete._entry, ptr @mvs_slot_complete._entry.28, ptr @mvs_slot_complete._entry.31, ptr @mvs_slot_complete._entry_ptr, ptr @mvs_slot_complete._entry_ptr.30, ptr @mvs_slot_complete._entry_ptr.33, ptr @mvs_slot_err._entry, ptr @mvs_slot_err._entry_ptr, ptr @mvs_task_exec._entry, ptr @mvs_task_exec._entry_ptr, ptr @mvs_task_prep._entry, ptr @mvs_task_prep._entry.60, ptr @mvs_task_prep._entry.63, ptr @mvs_task_prep._entry.66, ptr @mvs_task_prep._entry.69, ptr @mvs_task_prep._entry.72, ptr @mvs_task_prep._entry.75, ptr @mvs_task_prep._entry_ptr, ptr @mvs_task_prep._entry_ptr.62, ptr @mvs_task_prep._entry_ptr.65, ptr @mvs_task_prep._entry_ptr.68, ptr @mvs_task_prep._entry_ptr.71, ptr @mvs_task_prep._entry_ptr.74, ptr @mvs_task_prep._entry_ptr.77, ptr @mvs_task_prep_ata._entry, ptr @mvs_task_prep_ata._entry_ptr, ptr @mvs_update_phyinfo._entry, ptr @mvs_update_phyinfo._entry.5, ptr @mvs_update_phyinfo._entry.8, ptr @mvs_update_phyinfo._entry_ptr, ptr @mvs_update_phyinfo._entry_ptr.10, ptr @mvs_update_phyinfo._entry_ptr.7, ptr @mvs_work_queue._entry, ptr @mvs_work_queue._entry.115, ptr @mvs_work_queue._entry.118, ptr @mvs_work_queue._entry_ptr, ptr @mvs_work_queue._entry_ptr.117, ptr @mvs_work_queue._entry_ptr.120, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @mvs_handle_event.__key, ptr @.str.110, ptr @mvs_handle_event.__key.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.119, ptr @.str.121, ptr @.str.122], section "llvm.metadata"
@0 = internal global [121 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_update_phyinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_update_phyinfo._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_update_phyinfo._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_lu_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_I_T_nexus_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_query_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_abort_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_abort_task._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_abort_task._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_abort_task._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_slot_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_slot_complete._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_slot_complete._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_do_release_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_int_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_int_port._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_int_port._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_int_port._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_int_port._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_int_port._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_bytes_dmaed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_task_exec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_task_prep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_task_prep._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_task_prep._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_task_prep._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_task_prep._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_task_prep._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_task_prep._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_task_prep_ata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_port_notify_formed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_dev_found_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_alloc_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_dev_gone_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_dev_gone_notify._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_exec_internal_tmf_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_exec_internal_tmf_task._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_exec_internal_tmf_task._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_exec_internal_tmf_task._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_free_reg_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_slot_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_set_sense._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_set_sense._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_handle_event.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_handle_event.__key.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_work_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_work_queue._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_work_queue._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_sig_time_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvs_tag_clear(ptr nocapture noundef readonly %mvi, i32 noundef %tag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tags = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 22
  %0 = ptrtoint ptr %tags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tags, align 4
  tail call void @_clear_bit(i32 noundef %tag, ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvs_tag_free(ptr nocapture noundef readonly %mvi, i32 noundef %tag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tags.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 22
  %0 = ptrtoint ptr %tags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tags.i, align 4
  tail call void @_clear_bit(i32 noundef %tag, ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvs_tag_set(ptr nocapture noundef readonly %mvi, i32 noundef %tag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tags = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 22
  %0 = ptrtoint ptr %tags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tags, align 4
  tail call void @_set_bit(i32 noundef %tag, ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvs_tag_alloc(ptr nocapture noundef readonly %mvi, ptr nocapture noundef writeonly %tag_out) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tags = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 22
  %0 = ptrtoint ptr %tags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tags, align 4
  %tags_num = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 21
  %2 = ptrtoint ptr %tags_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tags_num, align 8
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef %1, i32 noundef %3) #9
  %4 = ptrtoint ptr %tags_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tags_num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %5)
  %cmp.not = icmp ult i32 %call, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %tags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tags, align 4
  tail call void @_set_bit(i32 noundef %call, ptr noundef %7) #9
  %8 = ptrtoint ptr %tag_out to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %tag_out, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -132, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvs_tag_init(ptr nocapture noundef readonly %mvi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tags_num = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 21
  %0 = ptrtoint ptr %tags_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tags_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4 = icmp sgt i32 %1, 0
  br i1 %cmp4, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tags.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.05 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %tags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tags.i, align 4
  tail call void @_clear_bit(i32 noundef %i.05, ptr noundef %3) #9
  %inc = add nuw nsw i32 %i.05, 1
  %4 = ptrtoint ptr %tags_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tags_num, align 8
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mvs_find_dev_by_reg_set(ptr noundef readonly %mvi, i8 noundef zeroext %reg_set) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %dev_no.022 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %taskfileset = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 36, i32 %dev_no.022, i32 7
  %0 = ptrtoint ptr %taskfileset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %taskfileset, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %1)
  %cmp1 = icmp ne i8 %1, 127
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %reg_set)
  %cmp8 = icmp eq i8 %1, %reg_set
  %or.cond = and i1 %cmp1, %cmp8
  br i1 %or.cond, label %cleanup.split.loop.exit20, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %dev_no.022, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.split.loop.exit20:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.le = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 36, i32 %dev_no.022
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit20, %for.inc.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx.le, %cleanup.split.loop.exit20 ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvs_phys_reset(ptr noundef %mvi, i32 noundef %phy_mask, i32 noundef %hard) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy_mask)
  %cmp.not6 = icmp eq i32 %phy_mask, 0
  br i1 %cmp.not6, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %chip = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %no.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %phy_mask.addr.07 = phi i32 [ %phy_mask, %for.body.lr.ph ], [ %shr, %for.inc.for.body_crit_edge ]
  %and = and i32 %phy_mask.addr.07, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.mvs_chip_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dispatch, align 4
  %phy_reset = getelementptr inbounds %struct.mvs_dispatch, ptr %3, i32 0, i32 40
  %4 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_reset, align 4
  tail call void %5(ptr noundef %mvi, i32 noundef %no.08, i32 noundef %hard) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %no.08, 1
  %shr = lshr i32 %phy_mask.addr.07, 1
  %cmp.not = icmp ult i32 %phy_mask.addr.07, 2
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvs_phy_control(ptr noundef readonly %sas_phy, i32 noundef %func, ptr noundef %funcdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.asd_sas_phy, ptr %sas_phy, i32 0, i32 6
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %ha = getelementptr inbounds %struct.asd_sas_phy, ptr %sas_phy, i32 0, i32 23
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha, align 4
  %sas_phy1 = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %sas_phy1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sas_phy1, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  %cmp = icmp eq ptr %7, %sas_phy
  %or.cond = or i1 %tobool.not, %cmp
  %inc = add i32 %i.0, 1
  br i1 %or.cond, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lldd_ha, align 4
  %n_phy = getelementptr inbounds %struct.mvs_prv_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %n_phy to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %n_phy, align 1
  %conv = zext i8 %11 to i32
  %div = udiv i32 %i.0, %conv
  %arrayidx6 = getelementptr %struct.mvs_prv_info, ptr %9, i32 0, i32 4, i32 %div
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6, align 4
  %14 = zext i32 %func to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %func, label %while.end.sw.epilog_crit_edge [
    i32 17, label %sw.bb
    i32 2, label %sw.bb7
    i32 1, label %sw.bb15
    i32 3, label %sw.bb21
  ]

while.end.sw.epilog_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %chip = getelementptr inbounds %struct.mvs_info, ptr %13, i32 0, i32 20
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.mvs_chip_info, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dispatch, align 4
  %phy_set_link_rate = getelementptr inbounds %struct.mvs_dispatch, ptr %18, i32 0, i32 36
  %19 = ptrtoint ptr %phy_set_link_rate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy_set_link_rate, align 4
  tail call void %20(ptr noundef %13, i32 noundef %1, ptr noundef %funcdata) #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.end
  %chip8 = getelementptr inbounds %struct.mvs_info, ptr %13, i32 0, i32 20
  %21 = ptrtoint ptr %chip8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip8, align 4
  %dispatch9 = getelementptr inbounds %struct.mvs_chip_info, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %dispatch9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dispatch9, align 4
  %read_phy_ctl = getelementptr inbounds %struct.mvs_dispatch, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %read_phy_ctl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_phy_ctl, align 4
  %call = tail call i32 %26(ptr noundef %13, i32 noundef %1) #9
  %and = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end12, label %sw.bb7.sw.epilog_crit_edge

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end12:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %chip8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip8, align 4
  %dispatch14 = getelementptr inbounds %struct.mvs_chip_info, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %dispatch14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dispatch14, align 4
  %phy_reset = getelementptr inbounds %struct.mvs_dispatch, ptr %30, i32 0, i32 40
  %31 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phy_reset, align 4
  tail call void %32(ptr noundef %13, i32 noundef %1, i32 noundef 1) #9
  br label %sw.epilog

sw.bb15:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %chip16 = getelementptr inbounds %struct.mvs_info, ptr %13, i32 0, i32 20
  %33 = ptrtoint ptr %chip16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip16, align 4
  %dispatch17 = getelementptr inbounds %struct.mvs_chip_info, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %dispatch17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dispatch17, align 4
  %phy_enable = getelementptr inbounds %struct.mvs_dispatch, ptr %36, i32 0, i32 39
  %37 = ptrtoint ptr %phy_enable to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phy_enable, align 4
  tail call void %38(ptr noundef %13, i32 noundef %1) #9
  %39 = ptrtoint ptr %chip16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip16, align 4
  %dispatch19 = getelementptr inbounds %struct.mvs_chip_info, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %dispatch19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dispatch19, align 4
  %phy_reset20 = getelementptr inbounds %struct.mvs_dispatch, ptr %42, i32 0, i32 40
  %43 = ptrtoint ptr %phy_reset20 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phy_reset20, align 4
  tail call void %44(ptr noundef %13, i32 noundef %1, i32 noundef 0) #9
  br label %sw.epilog

sw.bb21:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %chip22 = getelementptr inbounds %struct.mvs_info, ptr %13, i32 0, i32 20
  %45 = ptrtoint ptr %chip22 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chip22, align 4
  %dispatch23 = getelementptr inbounds %struct.mvs_chip_info, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %dispatch23 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dispatch23, align 4
  %phy_disable = getelementptr inbounds %struct.mvs_dispatch, ptr %48, i32 0, i32 38
  %49 = ptrtoint ptr %phy_disable to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %phy_disable, align 4
  tail call void %50(ptr noundef %13, i32 noundef %1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb15, %if.end12, %sw.bb7.sw.epilog_crit_edge, %sw.bb, %while.end.sw.epilog_crit_edge
  %rc.0 = phi i32 [ 0, %sw.bb21 ], [ 0, %sw.bb15 ], [ 0, %sw.bb7.sw.epilog_crit_edge ], [ 0, %if.end12 ], [ 0, %sw.bb ], [ -38, %while.end.sw.epilog_crit_edge ]
  tail call void @msleep(i32 noundef 200) #9
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvs_set_sas_addr(ptr noundef %mvi, i32 noundef %port_id, i32 noundef %off_lo, i32 noundef %off_hi, i64 noundef %sas_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %sas_addr to i32
  %shr = lshr i64 %sas_addr, 32
  %conv1 = trunc i64 %shr to i32
  %chip = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.mvs_chip_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dispatch, align 4
  %write_port_cfg_addr = getelementptr inbounds %struct.mvs_dispatch, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %write_port_cfg_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_port_cfg_addr, align 4
  tail call void %5(ptr noundef %mvi, i32 noundef %port_id, i32 noundef %off_lo) #9
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %dispatch3 = getelementptr inbounds %struct.mvs_chip_info, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %dispatch3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dispatch3, align 4
  %write_port_cfg_data = getelementptr inbounds %struct.mvs_dispatch, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %write_port_cfg_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_port_cfg_data, align 4
  tail call void %11(ptr noundef %mvi, i32 noundef %port_id, i32 noundef %conv) #9
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 4
  %dispatch5 = getelementptr inbounds %struct.mvs_chip_info, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %dispatch5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dispatch5, align 4
  %write_port_cfg_addr6 = getelementptr inbounds %struct.mvs_dispatch, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %write_port_cfg_addr6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_port_cfg_addr6, align 4
  tail call void %17(ptr noundef %mvi, i32 noundef %port_id, i32 noundef %off_hi) #9
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 4
  %dispatch8 = getelementptr inbounds %struct.mvs_chip_info, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %dispatch8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dispatch8, align 4
  %write_port_cfg_data9 = getelementptr inbounds %struct.mvs_dispatch, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %write_port_cfg_data9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_port_cfg_data9, align 4
  tail call void %23(ptr noundef %mvi, i32 noundef %port_id, i32 noundef %conv1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvs_scan_start(ptr nocapture noundef readonly %shost) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %conv2 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp23.not = icmp eq i8 %5, 0
  br i1 %cmp23.not, label %entry.for.end12_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end12

for.body:                                         ; preds = %for.inc10.for.body_crit_edge, %entry.for.body_crit_edge
  %j.024 = phi i32 [ %inc11, %for.inc10.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lldd_ha, align 4
  %arrayidx = getelementptr %struct.mvs_prv_info, ptr %7, i32 0, i32 4, i32 %j.024
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %chip = getelementptr inbounds %struct.mvs_info, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  %n_phy20 = getelementptr inbounds %struct.mvs_chip_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %n_phy20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_phy20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp721.not = icmp eq i32 %13, 0
  br i1 %cmp721.not, label %for.body.for.inc10_crit_edge, label %for.body.for.body9_crit_edge

for.body.for.body9_crit_edge:                     ; preds = %for.body
  br label %for.body9

for.body.for.inc10_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc10

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body.for.body9_crit_edge
  %i.022 = phi i32 [ %inc, %for.body9.for.body9_crit_edge ], [ 0, %for.body.for.body9_crit_edge ]
  tail call fastcc void @mvs_bytes_dmaed(ptr noundef %9, i32 noundef %i.022, i32 noundef 3264)
  %inc = add nuw i32 %i.022, 1
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  %n_phy = getelementptr inbounds %struct.mvs_chip_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_phy, align 4
  %cmp7 = icmp ult i32 %inc, %17
  br i1 %cmp7, label %for.body9.for.body9_crit_edge, label %for.body9.for.inc10_crit_edge

for.body9.for.inc10_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc10

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body9

for.inc10:                                        ; preds = %for.body9.for.inc10_crit_edge, %for.body.for.inc10_crit_edge
  %inc11 = add nuw nsw i32 %j.024, 1
  %exitcond.not = icmp eq i32 %inc11, %conv2
  br i1 %exitcond.not, label %for.inc10.for.end12_crit_edge, label %for.inc10.for.body_crit_edge

for.inc10.for.body_crit_edge:                     ; preds = %for.inc10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc10.for.end12_crit_edge:                    ; preds = %for.inc10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end12

for.end12:                                        ; preds = %for.inc10.for.end12_crit_edge, %entry.for.end12_crit_edge
  %scan_finished = getelementptr inbounds %struct.mvs_prv_info, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %scan_finished to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %scan_finished, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvs_bytes_dmaed(ptr noundef %mvi, i32 noundef %i, i32 noundef %gfp_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sas_phy2 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 2
  %phy_attached = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 15
  %0 = ptrtoint ptr %phy_attached to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phy_attached, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %att_dev_info = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 8
  %2 = ptrtoint ptr %att_dev_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %att_dev_info, align 8
  %and = and i32 %3, 917504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %phy_type = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 10
  %4 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_type, align 8
  %and4 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %call = tail call i32 @sas_notify_phy_event(ptr noundef %sas_phy2, i32 noundef 1, i32 noundef %gfp_flags) #9
  %phy8 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 2, i32 4
  %6 = ptrtoint ptr %phy8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy8, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %if.end7.if.end15_crit_edge, label %if.then10

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %linkrate = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 2, i32 13
  %8 = ptrtoint ptr %linkrate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %linkrate, align 4
  %negotiated_linkrate = getelementptr inbounds %struct.sas_phy, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %negotiated_linkrate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %negotiated_linkrate, align 8
  %minimum_linkrate = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 19
  %11 = ptrtoint ptr %minimum_linkrate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %minimum_linkrate, align 8
  %minimum_linkrate12 = getelementptr inbounds %struct.sas_phy, ptr %7, i32 0, i32 6
  %13 = ptrtoint ptr %minimum_linkrate12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %minimum_linkrate12, align 8
  %minimum_linkrate_hw = getelementptr inbounds %struct.sas_phy, ptr %7, i32 0, i32 5
  %14 = ptrtoint ptr %minimum_linkrate_hw to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %minimum_linkrate_hw, align 4
  %maximum_linkrate = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 20
  %15 = ptrtoint ptr %maximum_linkrate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %maximum_linkrate, align 4
  %maximum_linkrate13 = getelementptr inbounds %struct.sas_phy, ptr %7, i32 0, i32 8
  %17 = ptrtoint ptr %maximum_linkrate13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %maximum_linkrate13, align 8
  %chip = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.mvs_chip_info, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dispatch, align 4
  %phy_max_link_rate = getelementptr inbounds %struct.mvs_dispatch, ptr %21, i32 0, i32 37
  %22 = ptrtoint ptr %phy_max_link_rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy_max_link_rate, align 4
  %call14 = tail call i32 %23() #9
  %maximum_linkrate_hw = getelementptr inbounds %struct.sas_phy, ptr %7, i32 0, i32 7
  %24 = ptrtoint ptr %maximum_linkrate_hw to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call14, ptr %maximum_linkrate_hw, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end7.if.end15_crit_edge
  %phy_type16 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 10
  %25 = ptrtoint ptr %phy_type16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phy_type16, align 8
  %and17 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.do.end_crit_edge, label %if.then19

if.end15.do.end_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then19:                                        ; preds = %if.end15
  %frame_rcvd = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 14
  %identify = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 3
  %27 = ptrtoint ptr %identify to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %identify, align 8
  %conv = trunc i32 %28 to i8
  %29 = ptrtoint ptr %frame_rcvd to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load = load i8, ptr %frame_rcvd, align 1
  %bf.value = shl i8 %conv, 4
  %bf.shl = and i8 %bf.value, 112
  %bf.clear = and i8 %bf.load, -113
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %frame_rcvd, align 1
  %30 = getelementptr inbounds %struct.sas_identify_frame, ptr %frame_rcvd, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 14, ptr %30, align 1
  %target_port_protocols = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 3, i32 2
  %32 = ptrtoint ptr %target_port_protocols to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %target_port_protocols, align 8
  %conv21 = trunc i32 %33 to i8
  %34 = getelementptr inbounds %struct.sas_identify_frame, ptr %frame_rcvd, i32 0, i32 3
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv21, ptr %34, align 1
  %36 = ptrtoint ptr %att_dev_info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %att_dev_info, align 8
  %and23 = and i32 %37, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.then19.do.end_crit_edge, label %if.then25

if.then19.do.end_crit_edge:                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then25:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %chip26 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %38 = ptrtoint ptr %chip26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chip26, align 4
  %dispatch27 = getelementptr inbounds %struct.mvs_chip_info, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %dispatch27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dispatch27, align 4
  %write_port_cfg_addr = getelementptr inbounds %struct.mvs_dispatch, ptr %41, i32 0, i32 13
  %42 = ptrtoint ptr %write_port_cfg_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_port_cfg_addr, align 4
  tail call void %43(ptr noundef %mvi, i32 noundef %i, i32 noundef 28) #9
  %44 = ptrtoint ptr %chip26 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chip26, align 4
  %dispatch29 = getelementptr inbounds %struct.mvs_chip_info, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %dispatch29 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dispatch29, align 4
  %write_port_cfg_data = getelementptr inbounds %struct.mvs_dispatch, ptr %47, i32 0, i32 12
  %48 = ptrtoint ptr %write_port_cfg_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_port_cfg_data, align 4
  tail call void %49(ptr noundef %mvi, i32 noundef %i, i32 noundef 0) #9
  br label %do.end

do.end:                                           ; preds = %if.then25, %if.then19.do.end_crit_edge, %if.end15.do.end_crit_edge
  %id37 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 25
  %50 = ptrtoint ptr %id37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id37, align 8
  %chip38 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %52 = ptrtoint ptr %chip38 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chip38, align 4
  %n_phy = getelementptr inbounds %struct.mvs_chip_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %n_phy, align 4
  %mul = mul i32 %55, %51
  %add = add i32 %mul, %i
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.2, i32 noundef 265, i32 noundef %add) #12
  %frame_rcvd_size = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 13
  %56 = ptrtoint ptr %frame_rcvd_size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %frame_rcvd_size, align 4
  %frame_rcvd_size40 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 2, i32 18
  %58 = ptrtoint ptr %frame_rcvd_size40 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %frame_rcvd_size40, align 4
  %call41 = tail call i32 @sas_notify_port_event(ptr noundef %sas_phy2, i32 noundef 0, i32 noundef %gfp_flags) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvs_scan_finished(ptr nocapture noundef readonly %shost, i32 noundef %time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %scan_finished = getelementptr inbounds %struct.mvs_prv_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %scan_finished to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %scan_finished, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @sas_drain_work(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_drain_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvs_queue_command(ptr noundef %task, i32 noundef %gfp_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mvs_task_exec(ptr noundef %task, i32 noundef 0, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvs_task_exec(ptr noundef %task, i32 noundef %is_tmf, ptr noundef readonly %tmf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task, align 4
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_dev, align 128
  %mvi_info = getelementptr inbounds %struct.mvs_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mvi_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mvi_info, align 4
  %lock = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 4
  %lldd_dev.i = getelementptr inbounds %struct.domain_device, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %lldd_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lldd_dev.i, align 128
  %port.i = getelementptr inbounds %struct.domain_device, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end3.i

if.then.i:                                        ; preds = %entry
  %task_status.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9
  %12 = ptrtoint ptr %task_status.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %task_status.i, align 4
  %stat.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %stat.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 138, ptr %stat.i, align 4
  %dev_type.i = getelementptr inbounds %struct.domain_device, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 5
  br i1 %cmp.not.i, label %if.then.i.if.end16_crit_edge, label %if.then2.i

if.then.i.if.end16_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %task_done.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 10
  %16 = ptrtoint ptr %task_done.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task_done.i, align 4
  tail call void %17(ptr noundef %task) #9
  br label %if.end16

if.end3.i:                                        ; preds = %entry
  %tobool4.not.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i, label %do.end12.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end3.i
  %dev_type5.i = getelementptr inbounds %struct.mvs_device, ptr %9, i32 0, i32 1
  %18 = ptrtoint ptr %dev_type5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dev_type5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp6.i = icmp eq i32 %19, 0
  br i1 %cmp6.i, label %do.end.critedge.i, label %if.end16.i

do.end.critedge.i:                                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %device_id.i = getelementptr inbounds %struct.mvs_device, ptr %9, i32 0, i32 5
  %20 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %device_id.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.2, i32 noundef 725, i32 noundef %21) #12
  br label %if.end.thread

do.end12.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %sas_addr.i = getelementptr inbounds %struct.domain_device, ptr %7, i32 0, i32 15
  %22 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %sas_addr.i, align 16
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.2, i32 noundef 728, i64 noundef %23) #12
  br label %if.end.thread

if.end16.i:                                       ; preds = %lor.lhs.false.i
  %lldd_port.i = getelementptr inbounds %struct.asd_sas_port, ptr %11, i32 0, i32 23
  %24 = ptrtoint ptr %lldd_port.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lldd_port.i, align 4
  %tobool20.not.i = icmp eq ptr %25, null
  br i1 %tobool20.not.i, label %if.end16.i.if.end53.i_crit_edge, label %land.lhs.true.i

if.end16.i.if.end53.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i

land.lhs.true.i:                                  ; preds = %if.end16.i
  %port_attached.i = getelementptr inbounds %struct.mvs_port, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %port_attached.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %port_attached.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool22.not.i = icmp eq i8 %27, 0
  %tobool24.not.i = icmp eq ptr %tmf, null
  %or.cond.i = and i1 %tobool24.not.i, %tobool22.not.i
  br i1 %or.cond.i, label %if.then25.i, label %land.lhs.true.i.if.end53.i_crit_edge

land.lhs.true.i.if.end53.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i

if.then25.i:                                      ; preds = %land.lhs.true.i
  %task_proto.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 3
  %28 = ptrtoint ptr %task_proto.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %task_proto.i, align 4
  %30 = and i32 %29, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %.not332.i = icmp eq i32 %30, 0
  %task_status41.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9
  %id47.i = getelementptr inbounds %struct.asd_sas_port, ptr %11, i32 0, i32 10
  %31 = ptrtoint ptr %id47.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id47.i, align 4
  br i1 %.not332.i, label %if.else39.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.2, i32 noundef 738, i32 noundef %32) #12
  %33 = ptrtoint ptr %task_status41.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %task_status41.i, align 4
  %stat37.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %34 = ptrtoint ptr %stat37.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 138, ptr %stat37.i, align 4
  %task_done38.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 10
  %35 = ptrtoint ptr %task_done38.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task_done38.i, align 4
  tail call void %36(ptr noundef %task) #9
  br label %if.end16

if.else39.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.2, i32 noundef 747, i32 noundef %32) #12
  %37 = ptrtoint ptr %task_status41.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %task_status41.i, align 4
  %stat50.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %38 = ptrtoint ptr %stat50.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 138, ptr %stat50.i, align 4
  %task_done51.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 10
  %39 = ptrtoint ptr %task_done51.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task_done51.i, align 4
  tail call void %40(ptr noundef %task) #9
  br label %if.end16

if.end53.i:                                       ; preds = %land.lhs.true.i.if.end53.i_crit_edge, %if.end16.i.if.end53.i_crit_edge
  %task_proto54.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 3
  %41 = ptrtoint ptr %task_proto54.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %task_proto54.i, align 4
  %43 = and i32 %42, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %.not.i = icmp eq i32 %43, 0
  %num_scatter.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 6
  %44 = ptrtoint ptr %num_scatter.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_scatter.i, align 4
  br i1 %.not.i, label %if.then57.i, label %if.end53.i.if.end69.i_crit_edge

if.end53.i.if.end69.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i

if.then57.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool58.not.i = icmp eq i32 %45, 0
  br i1 %tobool58.not.i, label %if.then57.i.if.end69.i_crit_edge, label %if.then59.i

if.then57.i.if.end69.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i

if.then59.i:                                      ; preds = %if.then57.i
  %dev60.i = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 3
  %46 = ptrtoint ptr %dev60.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev60.i, align 4
  %scatter.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 5
  %48 = ptrtoint ptr %scatter.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %scatter.i, align 4
  %data_dir.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 8
  %50 = ptrtoint ptr %data_dir.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i = load i8, ptr %data_dir.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 6
  %conv.i = zext i8 %bf.lshr.i to i32
  %call62.i = tail call i32 @dma_map_sg_attrs(ptr noundef %47, ptr noundef %49, i32 noundef %45, i32 noundef %conv.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  br i1 %tobool63.not.i, label %if.then59.i.if.end.thread_crit_edge, label %if.then59.i.if.end69.i_crit_edge

if.then59.i.if.end69.i_crit_edge:                 ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i

if.then59.i.if.end.thread_crit_edge:              ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread

if.end69.i:                                       ; preds = %if.then59.i.if.end69.i_crit_edge, %if.then57.i.if.end69.i_crit_edge, %if.end53.i.if.end69.i_crit_edge
  %n_elem.0.i = phi i32 [ %call62.i, %if.then59.i.if.end69.i_crit_edge ], [ 0, %if.then57.i.if.end69.i_crit_edge ], [ %45, %if.end53.i.if.end69.i_crit_edge ]
  %tags.i.i = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 22
  %51 = ptrtoint ptr %tags.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tags.i.i, align 4
  %tags_num.i.i = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 21
  %53 = ptrtoint ptr %tags_num.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tags_num.i.i, align 8
  %call.i.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %52, i32 noundef %54) #9
  %55 = ptrtoint ptr %tags_num.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tags_num.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %56)
  %cmp.not.i.i = icmp ult i32 %call.i.i, %56
  br i1 %cmp.not.i.i, label %if.end73.i, label %if.end69.i.do.end117.i_crit_edge

if.end69.i.do.end117.i_crit_edge:                 ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end117.i

if.end73.i:                                       ; preds = %if.end69.i
  %57 = ptrtoint ptr %tags.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tags.i.i, align 4
  tail call void @_set_bit(i32 noundef %call.i.i, ptr noundef %58) #9
  %arrayidx.i = getelementptr %struct.mvs_info, ptr %5, i32 0, i32 42, i32 %call.i.i
  %lldd_task.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 11
  %59 = ptrtoint ptr %lldd_task.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %lldd_task.i, align 4
  %n_elem74.i = getelementptr %struct.mvs_info, ptr %5, i32 0, i32 42, i32 %call.i.i, i32 2
  %60 = ptrtoint ptr %n_elem74.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %n_elem.0.i, ptr %n_elem74.i, align 4
  %slot_tag.i = getelementptr %struct.mvs_info, ptr %5, i32 0, i32 42, i32 %call.i.i, i32 4
  %61 = ptrtoint ptr %slot_tag.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call.i.i, ptr %slot_tag.i, align 4
  %dma_pool.i = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 41
  %62 = ptrtoint ptr %dma_pool.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dma_pool.i, align 8
  %buf_dma.i = getelementptr %struct.mvs_info, ptr %5, i32 0, i32 42, i32 %call.i.i, i32 6
  %call.i222.i = tail call ptr @dma_pool_alloc(ptr noundef %63, i32 noundef 2848, ptr noundef %buf_dma.i) #9
  %buf.i = getelementptr %struct.mvs_info, ptr %5, i32 0, i32 42, i32 %call.i.i, i32 5
  %64 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i222.i, ptr %buf.i, align 4
  %tobool77.not.i = icmp eq ptr %call.i222.i, null
  br i1 %tobool77.not.i, label %if.end73.i.err_out_tag.i_crit_edge, label %if.end79.i

if.end73.i.err_out_tag.i_crit_edge:               ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out_tag.i

if.end79.i:                                       ; preds = %if.end73.i
  %slot81.i = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 17
  %65 = ptrtoint ptr %slot81.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %slot81.i, align 8
  %arrayidx82.i = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i
  %67 = ptrtoint ptr %task_proto54.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %task_proto54.i, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %68, label %do.end93.i [
    i32 2, label %sw.bb.i
    i32 8, label %sw.bb87.i
    i32 1, label %if.end79.i.sw.bb89.i_crit_edge
    i32 4, label %if.end79.i.sw.bb89.i_crit_edge14
    i32 5, label %if.end79.i.sw.bb89.i_crit_edge15
  ]

if.end79.i.sw.bb89.i_crit_edge15:                 ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb89.i

if.end79.i.sw.bb89.i_crit_edge14:                 ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb89.i

if.end79.i.sw.bb89.i_crit_edge:                   ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb89.i

sw.bb.i:                                          ; preds = %if.end79.i
  %sas.i.i = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 7
  %70 = ptrtoint ptr %sas.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sas.i.i, align 8
  %72 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task, align 4
  %port.i.i = getelementptr inbounds %struct.domain_device, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %port.i.i, align 4
  %phy.i.i = getelementptr inbounds %struct.domain_device, ptr %73, i32 0, i32 9
  %76 = ptrtoint ptr %phy.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %phy.i.i, align 16
  %sas_phy4.i.i = getelementptr inbounds %struct.sas_ha_struct, ptr %71, i32 0, i32 17
  %78 = ptrtoint ptr %sas_phy4.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sas_phy4.i.i, align 4
  %number.i.i = getelementptr inbounds %struct.sas_phy, ptr %77, i32 0, i32 1
  %80 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %number.i.i, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %79, i32 %81
  %82 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i.i, align 4
  %shl.i.i = shl i32 %n_elem.0.i, 16
  %84 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 4
  %dev7.i.i = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 3
  %85 = ptrtoint ptr %dev7.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev7.i.i, align 4
  %call.i223.i = tail call i32 @dma_map_sg_attrs(ptr noundef %86, ptr noundef %84, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223.i)
  %tobool.not.i.i = icmp eq i32 %call.i223.i, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.do.end100.i_crit_edge, label %if.end.i224.i

sw.bb.i.do.end100.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end100.i

if.end.i224.i:                                    ; preds = %sw.bb.i
  %dma_length.i.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 4, i32 0, i32 0, i32 4
  %87 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dma_length.i.i, align 4
  %smp_resp.i.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 4, i32 0, i32 1
  %89 = ptrtoint ptr %dev7.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev7.i.i, align 4
  %call9.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %90, ptr noundef %smp_resp.i.i, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end.i224.i.err_out.i.i_crit_edge, label %if.end12.i.i

if.end.i224.i.err_out.i.i_crit_edge:              ; preds = %if.end.i224.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.i.i

if.end12.i.i:                                     ; preds = %if.end.i224.i
  %and.i.i = and i32 %88, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool13.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end17.i.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %dev7.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev7.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %92, ptr noundef %smp_resp.i.i, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  br label %err_out.i.i

if.end17.i.i:                                     ; preds = %if.end12.i.i
  %93 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %buf.i, align 4
  %95 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %buf_dma.i, align 4
  %dma_address.i.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 4, i32 0, i32 0, i32 3
  %97 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %dma_address.i.i, align 4
  %conv.i.i = zext i32 %98 to i64
  %99 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i) #9
  %cmd_tbl.i.i = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i, i32 4
  %100 = ptrtoint ptr %cmd_tbl.i.i to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %99, ptr %cmd_tbl.i.i, align 8
  %conv18.i.i = zext i32 %96 to i64
  %101 = tail call i64 @llvm.bswap.i64(i64 %conv18.i.i) #9
  %open_frame.i.i = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i, i32 5
  %102 = ptrtoint ptr %open_frame.i.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %open_frame.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %94, i32 64
  %add.i.i = add i32 %96, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_elem.0.i)
  %tobool20.not.i.i = icmp eq i32 %n_elem.0.i, 0
  br i1 %tobool20.not.i.i, label %if.end17.i.i.if.end24.i.i_crit_edge, label %if.then21.i.i

if.end17.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

if.then21.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv22.i.i = zext i32 %add.i.i to i64
  %103 = tail call i64 @llvm.bswap.i64(i64 %conv22.i.i) #9
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then21.i.i, %if.end17.i.i.if.end24.i.i_crit_edge
  %.sink.i.i = phi i64 [ %103, %if.then21.i.i ], [ 0, %if.end17.i.i.if.end24.i.i_crit_edge ]
  %104 = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i, i32 7
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %.sink.i.i, ptr %104, align 8
  %chip.i.i = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 20
  %106 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %chip.i.i, align 4
  %dispatch.i.i = getelementptr inbounds %struct.mvs_chip_info, ptr %107, i32 0, i32 7
  %108 = ptrtoint ptr %dispatch.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dispatch.i.i, align 4
  %prd_size.i.i = getelementptr inbounds %struct.mvs_dispatch, ptr %109, i32 0, i32 29
  %110 = ptrtoint ptr %prd_size.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %prd_size.i.i, align 4
  %call25.i.i = tail call i32 %111() #9
  %mul.i.i = mul i32 %call25.i.i, %n_elem.0.i
  %add.ptr27.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add28.i.i = add i32 %mul.i.i, %add.i.i
  %response.i.i = getelementptr %struct.mvs_info, ptr %5, i32 0, i32 42, i32 %call.i.i, i32 7
  %112 = ptrtoint ptr %response.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %add.ptr27.i.i, ptr %response.i.i, align 4
  %conv29.i.i = zext i32 %add28.i.i to i64
  %113 = tail call i64 @llvm.bswap.i64(i64 %conv29.i.i) #9
  %status_buf.i.i = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i, i32 6
  %114 = ptrtoint ptr %status_buf.i.i to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %113, ptr %status_buf.i.i, align 8
  %115 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %5, align 8
  %and31.i.i = and i32 %116, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i.i)
  %tobool32.not.i.i = icmp eq i32 %and31.i.i, 0
  br i1 %tobool32.not.i.i, label %if.end24.i.i.if.end35.i.i_crit_edge, label %if.then33.i.i

if.end24.i.i.if.end35.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i.i

if.then33.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %reserved.i.i = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i, i32 8
  %117 = ptrtoint ptr %reserved.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %reserved.i.i, align 8
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %if.then33.i.i, %if.end24.i.i.if.end35.i.i_crit_edge
  %tx_prod.i.i = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 11
  %118 = ptrtoint ptr %tx_prod.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tx_prod.i.i, align 8
  %tx.i.i = getelementptr %struct.mvs_info, ptr %5, i32 0, i32 42, i32 %call.i.i, i32 3
  %120 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %tx.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.asd_sas_phy, ptr %83, i32 0, i32 6
  %121 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %id.i.i, align 4
  %shl37.i.i = shl i32 4096, %122
  %or.i.i = or i32 %call.i.i, %shl37.i.i
  %or38.i.i = or i32 %or.i.i, 1342177280
  %123 = tail call i32 @llvm.bswap.i32(i32 %or38.i.i) #9
  %tx39.i.i = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 9
  %124 = ptrtoint ptr %tx39.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %tx39.i.i, align 8
  %arrayidx41.i.i = getelementptr i32, ptr %125, i32 %119
  %126 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %123, ptr %arrayidx41.i.i, align 4
  %127 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx82.i, align 8
  %or43.i.i = or i32 %128, %shl.i.i
  store i32 %or43.i.i, ptr %arrayidx82.i, align 8
  %sub.i.i = add i32 %88, -4
  %div45143.i.i = lshr i32 %sub.i.i, 2
  %or46.i.i = or i32 %div45143.i.i, 16777216
  %129 = tail call i32 @llvm.bswap.i32(i32 %or46.i.i) #9
  %lens.i.i = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i, i32 1
  %130 = ptrtoint ptr %lens.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %lens.i.i, align 4
  %131 = tail call i32 @llvm.bswap.i32(i32 %call.i.i) #9
  %tags.i225.i = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i, i32 2
  %132 = ptrtoint ptr %tags.i225.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %tags.i225.i, align 8
  %data_len.i.i = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i, i32 3
  %133 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %data_len.i.i, align 4
  %134 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 -127, ptr %94, align 1
  %linkrate.i.i = getelementptr inbounds %struct.asd_sas_port, ptr %75, i32 0, i32 7
  %135 = ptrtoint ptr %linkrate.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %linkrate.i.i, align 4
  %linkrate48.i.i = getelementptr inbounds %struct.domain_device, ptr %73, i32 0, i32 2
  %137 = ptrtoint ptr %linkrate48.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %linkrate48.i.i, align 16
  %139 = tail call i32 @llvm.umin.i32(i32 %136, i32 %138) #9
  %140 = trunc i32 %139 to i8
  %conv51.i.i = and i8 %140, 15
  %arrayidx52.i.i = getelementptr i8, ptr %94, i32 1
  %141 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv51.i.i, ptr %arrayidx52.i.i, align 1
  %add.ptr53.i.i = getelementptr i8, ptr %94, i32 2
  %142 = ptrtoint ptr %add.ptr53.i.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 -1, ptr %add.ptr53.i.i, align 2
  %add.ptr54.i.i = getelementptr i8, ptr %94, i32 4
  %sas_addr.i.i = getelementptr inbounds %struct.domain_device, ptr %73, i32 0, i32 15
  %143 = ptrtoint ptr %sas_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %sas_addr.i.i, align 16
  %145 = ptrtoint ptr %add.ptr54.i.i to i32
  call void @__asan_storeN_noabort(i32 %145, i32 8)
  store i64 %144, ptr %add.ptr54.i.i, align 1
  %146 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %chip.i.i, align 4
  %dispatch56.i.i = getelementptr inbounds %struct.mvs_chip_info, ptr %147, i32 0, i32 7
  %148 = ptrtoint ptr %dispatch56.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dispatch56.i.i, align 4
  %make_prd.i.i = getelementptr inbounds %struct.mvs_dispatch, ptr %149, i32 0, i32 31
  %150 = ptrtoint ptr %make_prd.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %make_prd.i.i, align 4
  %scatter.i.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 5
  %152 = ptrtoint ptr %scatter.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %scatter.i.i, align 4
  tail call void %151(ptr noundef %153, i32 noundef %n_elem.0.i, ptr noundef %add.ptr.i.i) #9
  br label %if.end103.i

err_out.i.i:                                      ; preds = %if.then16.i.i, %if.end.i224.i.err_out.i.i_crit_edge
  %rc.0.i.i = phi i32 [ -22, %if.then16.i.i ], [ -12, %if.end.i224.i.err_out.i.i_crit_edge ]
  %154 = ptrtoint ptr %dev7.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev7.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %155, ptr noundef %84, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  br label %do.end100.i

sw.bb87.i:                                        ; preds = %if.end79.i
  %156 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %task, align 4
  %lldd_dev.i.i = getelementptr inbounds %struct.domain_device, ptr %157, i32 0, i32 20
  %158 = ptrtoint ptr %lldd_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %lldd_dev.i.i, align 128
  %port5.i.i = getelementptr inbounds %struct.domain_device, ptr %157, i32 0, i32 8
  %160 = ptrtoint ptr %port5.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %port5.i.i, align 4
  %wide_port_phymap.i.i = getelementptr inbounds %struct.mvs_port, ptr %25, i32 0, i32 2
  %162 = ptrtoint ptr %wide_port_phymap.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %wide_port_phymap.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool.not.i228.i = icmp eq i8 %163, 0
  br i1 %tobool.not.i228.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i229.i = zext i8 %163 to i32
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_pc() #11
  %phy_mask9.i.i = getelementptr inbounds %struct.asd_sas_port, ptr %161, i32 0, i32 20
  %164 = ptrtoint ptr %phy_mask9.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %phy_mask9.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %conv.i229.i, %cond.true.i.i ], [ %165, %cond.false.i.i ]
  %tx_prod.i230.i = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 11
  %166 = ptrtoint ptr %tx_prod.i230.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %tx_prod.i230.i, align 8
  %tx.i231.i = getelementptr %struct.mvs_info, ptr %5, i32 0, i32 42, i32 %call.i.i, i32 3
  %168 = ptrtoint ptr %tx.i231.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %tx.i231.i, align 4
  %and.i232.i = shl i32 %cond.i.i, 12
  %shl.i233.i = and i32 %and.i232.i, 1044480
  %or10.i.i = or i32 %call.i.i, %shl.i233.i
  %or11.i.i = or i32 %or10.i.i, 805306368
  %169 = tail call i32 @llvm.bswap.i32(i32 %or11.i.i) #9
  %tx12.i.i = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 9
  %170 = ptrtoint ptr %tx12.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %tx12.i.i, align 8
  %arrayidx14.i.i = getelementptr i32, ptr %171, i32 %167
  %172 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %169, ptr %arrayidx14.i.i, align 4
  %173 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 4
  %enable_first_burst.i.i = getelementptr inbounds %struct.sas_ssp_task, ptr %173, i32 0, i32 2
  %174 = ptrtoint ptr %enable_first_burst.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %bf.load.i.i = load i8, ptr %enable_first_burst.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool15.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %175 = and i8 %bf.load.i.i, -128
  %176 = zext i8 %175 to i32
  %spec.select3.i.i = select i1 %tobool15.not.i.i, i32 512, i32 2560
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_tmf)
  %tobool17.not.i.i = icmp eq i32 %is_tmf, 0
  %or19.i.i = or i32 %spec.select3.i.i, 8192
  %flags.1.i.i = select i1 %tobool17.not.i.i, i32 %spec.select3.i.i, i32 %or19.i.i
  %shl22.i.i = shl i32 %n_elem.0.i, 16
  %or23.i.i = or i32 %flags.1.i.i, %shl22.i.i
  %177 = tail call i32 @llvm.bswap.i32(i32 %or23.i.i) #9
  %178 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %arrayidx82.i, align 8
  %179 = tail call i32 @llvm.bswap.i32(i32 %call.i.i) #9
  %tags.i235.i = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i, i32 2
  %180 = ptrtoint ptr %tags.i235.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %tags.i235.i, align 8
  %total_xfer_len.i.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 7
  %181 = ptrtoint ptr %total_xfer_len.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %total_xfer_len.i.i, align 4
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #9
  %data_len.i236.i = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i, i32 3
  %184 = ptrtoint ptr %data_len.i236.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %data_len.i236.i, align 4
  %185 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %buf.i, align 4
  %187 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %buf_dma.i, align 4
  %conv25.i.i = zext i32 %188 to i64
  %189 = tail call i64 @llvm.bswap.i64(i64 %conv25.i.i) #9
  %cmd_tbl.i239.i = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i, i32 4
  %190 = ptrtoint ptr %cmd_tbl.i239.i to i32
  call void @__asan_store8_noabort(i32 %190)
  store i64 %189, ptr %cmd_tbl.i239.i, align 8
  %add.ptr.i240.i = getelementptr i8, ptr %186, i32 64
  %add.i241.i = add i32 %188, 64
  %conv26.i.i = zext i32 %add.i241.i to i64
  %191 = tail call i64 @llvm.bswap.i64(i64 %conv26.i.i) #9
  %open_frame.i242.i = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i, i32 5
  %192 = ptrtoint ptr %open_frame.i242.i to i32
  call void @__asan_store8_noabort(i32 %192)
  store i64 %191, ptr %open_frame.i242.i, align 8
  %add.ptr27.i243.i = getelementptr i8, ptr %186, i32 128
  %add28.i244.i = add i32 %188, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_elem.0.i)
  %tobool30.not.i.i = icmp eq i32 %n_elem.0.i, 0
  br i1 %tobool30.not.i.i, label %cond.end.i.i.if.end35.i253.i_crit_edge, label %if.then31.i.i

cond.end.i.i.if.end35.i253.i_crit_edge:           ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i253.i

if.then31.i.i:                                    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv32.i.i = zext i32 %add28.i244.i to i64
  %193 = tail call i64 @llvm.bswap.i64(i64 %conv32.i.i) #9
  br label %if.end35.i253.i

if.end35.i253.i:                                  ; preds = %if.then31.i.i, %cond.end.i.i.if.end35.i253.i_crit_edge
  %.sink.i245.i = phi i64 [ %193, %if.then31.i.i ], [ 0, %cond.end.i.i.if.end35.i253.i_crit_edge ]
  %194 = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i, i32 7
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 %.sink.i245.i, ptr %194, align 8
  %chip.i246.i = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 20
  %196 = ptrtoint ptr %chip.i246.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %chip.i246.i, align 4
  %dispatch.i247.i = getelementptr inbounds %struct.mvs_chip_info, ptr %197, i32 0, i32 7
  %198 = ptrtoint ptr %dispatch.i247.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %dispatch.i247.i, align 4
  %prd_size.i248.i = getelementptr inbounds %struct.mvs_dispatch, ptr %199, i32 0, i32 29
  %200 = ptrtoint ptr %prd_size.i248.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %prd_size.i248.i, align 4
  %call.i249.i = tail call i32 %201() #9
  %mul.i250.i = mul i32 %call.i249.i, %n_elem.0.i
  %add.ptr37.i.i = getelementptr i8, ptr %add.ptr27.i243.i, i32 %mul.i250.i
  %add38.i.i = add i32 %mul.i250.i, %add28.i244.i
  %response.i251.i = getelementptr %struct.mvs_info, ptr %5, i32 0, i32 42, i32 %call.i.i, i32 7
  %202 = ptrtoint ptr %response.i251.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %add.ptr37.i.i, ptr %response.i251.i, align 4
  %conv39.i.i = zext i32 %add38.i.i to i64
  %203 = tail call i64 @llvm.bswap.i64(i64 %conv39.i.i) #9
  %status_buf.i252.i = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i, i32 6
  %204 = ptrtoint ptr %status_buf.i252.i to i32
  call void @__asan_store8_noabort(i32 %204)
  store i64 %203, ptr %status_buf.i252.i, align 8
  %205 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %5, align 8
  %and41.i.i = and i32 %206, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i.i)
  %tobool42.not.i.i = icmp eq i32 %and41.i.i, 0
  br i1 %tobool42.not.i.i, label %if.end35.i253.i.if.end45.i.i_crit_edge, label %if.then43.i.i

if.end35.i253.i.if.end45.i.i_crit_edge:           ; preds = %if.end35.i253.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i.i

if.then43.i.i:                                    ; preds = %if.end35.i253.i
  call void @__sanitizer_cov_trace_pc() #11
  %reserved.i254.i = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i, i32 8
  %207 = ptrtoint ptr %reserved.i254.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 0, ptr %reserved.i254.i, align 8
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.then43.i.i, %if.end35.i253.i.if.end45.i.i_crit_edge
  %sub.i255.i = sub i32 8056, %mul.i250.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %sub.i255.i)
  %cmp.i.i = icmp ult i32 %sub.i255.i, 1024
  %208 = shl i32 %sub.i255.i, 14
  %phi.bo.i.i = and i32 %208, -65536
  %phi.bo2.i.i = or i32 %phi.bo.i.i, 13
  %cond50.i.i = select i1 %cmp.i.i, i32 %phi.bo2.i.i, i32 16777229
  %209 = tail call i32 @llvm.bswap.i32(i32 %cond50.i.i) #9
  %lens.i256.i = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i, i32 1
  %210 = ptrtoint ptr %lens.i256.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %209, ptr %lens.i256.i, align 4
  %211 = ptrtoint ptr %add.ptr.i240.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 -111, ptr %add.ptr.i240.i, align 1
  %linkrate.i257.i = getelementptr inbounds %struct.asd_sas_port, ptr %161, i32 0, i32 7
  %212 = ptrtoint ptr %linkrate.i257.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %linkrate.i257.i, align 4
  %linkrate55.i.i = getelementptr inbounds %struct.domain_device, ptr %157, i32 0, i32 2
  %214 = ptrtoint ptr %linkrate55.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %linkrate55.i.i, align 16
  %216 = tail call i32 @llvm.umin.i32(i32 %213, i32 %215) #9
  %217 = trunc i32 %216 to i8
  %conv64.i.i = and i8 %217, 15
  %arrayidx65.i.i = getelementptr i8, ptr %186, i32 65
  %218 = ptrtoint ptr %arrayidx65.i.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %conv64.i.i, ptr %arrayidx65.i.i, align 1
  %device_id.i.i = getelementptr inbounds %struct.mvs_device, ptr %159, i32 0, i32 5
  %219 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %device_id.i.i, align 4
  %221 = trunc i32 %220 to i16
  %conv67.i.i = add i16 %221, 1
  %add.ptr68.i.i = getelementptr i8, ptr %186, i32 66
  %222 = ptrtoint ptr %add.ptr68.i.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %conv67.i.i, ptr %add.ptr68.i.i, align 2
  %add.ptr69.i.i = getelementptr i8, ptr %186, i32 68
  %sas_addr.i258.i = getelementptr inbounds %struct.domain_device, ptr %157, i32 0, i32 15
  %223 = ptrtoint ptr %sas_addr.i258.i to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %sas_addr.i258.i, align 16
  %225 = ptrtoint ptr %add.ptr69.i.i to i32
  call void @__asan_storeN_noabort(i32 %225, i32 8)
  store i64 %224, ptr %add.ptr69.i.i, align 1
  %storemerge.i.i = select i1 %tobool17.not.i.i, i8 6, i8 22
  %226 = ptrtoint ptr %186 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %storemerge.i.i, ptr %186, align 1
  %hashed_dest_addr.i.i = getelementptr inbounds %struct.ssp_frame_hdr, ptr %186, i32 0, i32 1
  %hashed_sas_addr.i.i = getelementptr inbounds %struct.domain_device, ptr %157, i32 0, i32 16
  %227 = call ptr @memcpy(ptr %hashed_dest_addr.i.i, ptr %hashed_sas_addr.i.i, i32 3)
  %hashed_src_addr.i.i = getelementptr inbounds %struct.ssp_frame_hdr, ptr %186, i32 0, i32 3
  %228 = call ptr @memcpy(ptr %hashed_src_addr.i.i, ptr %hashed_sas_addr.i.i, i32 3)
  %conv80.i.i = trunc i32 %call.i.i to i16
  %tag81.i.i = getelementptr inbounds %struct.ssp_frame_hdr, ptr %186, i32 0, i32 7
  %229 = ptrtoint ptr %tag81.i.i to i32
  call void @__asan_storeN_noabort(i32 %229, i32 2)
  store i16 %conv80.i.i, ptr %tag81.i.i, align 1
  %add.ptr82.i.i = getelementptr i8, ptr %186, i32 24
  %LUN.i.i = getelementptr inbounds %struct.sas_ssp_task, ptr %173, i32 0, i32 1
  %230 = ptrtoint ptr %LUN.i.i to i32
  call void @__asan_loadN_noabort(i32 %230, i32 8)
  %231 = load i64, ptr %LUN.i.i, align 1
  %232 = ptrtoint ptr %add.ptr82.i.i to i32
  call void @__asan_storeN_noabort(i32 %232, i32 8)
  store i64 %231, ptr %add.ptr82.i.i, align 1
  br i1 %tobool17.not.i.i, label %if.then87.i.i, label %if.else98.i.i

if.then87.i.i:                                    ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %task_attr.i.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 4, i32 0, i32 0, i32 3
  %233 = ptrtoint ptr %task_attr.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %task_attr.i.i, align 4
  %or89.i.i = or i32 %234, %176
  %task_prio.i.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 4, i32 0, i32 0, i32 4
  %235 = ptrtoint ptr %task_prio.i.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %task_prio.i.i, align 4
  %conv90.i.i = zext i8 %236 to i32
  %shl91.i.i = shl nuw nsw i32 %conv90.i.i, 3
  %or92.i.i = or i32 %or89.i.i, %shl91.i.i
  %conv93.i.i = trunc i32 %or92.i.i to i8
  %arrayidx94.i.i = getelementptr i8, ptr %186, i32 33
  %237 = ptrtoint ptr %arrayidx94.i.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %conv93.i.i, ptr %arrayidx94.i.i, align 1
  %add.ptr95.i.i = getelementptr i8, ptr %186, i32 36
  %cmd.i.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 4, i32 0, i32 1
  %238 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %cmd.i.i, align 4
  %cmnd.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %239, i32 0, i32 16
  %240 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %cmnd.i.i, align 4
  %cmd_len.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %239, i32 0, i32 14
  %242 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %cmd_len.i.i, align 4
  %conv97.i.i = zext i16 %243 to i32
  %244 = call ptr @memcpy(ptr %add.ptr95.i.i, ptr %241, i32 %conv97.i.i)
  br label %mvs_task_prep_ssp.exit.i

if.else98.i.i:                                    ; preds = %if.end45.i.i
  %245 = ptrtoint ptr %tmf to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %tmf, align 2
  %arrayidx100.i.i = getelementptr i8, ptr %186, i32 34
  %247 = ptrtoint ptr %arrayidx100.i.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %246, ptr %arrayidx100.i.i, align 1
  %248 = load i8, ptr %tmf, align 2
  %249 = zext i8 %248 to i64
  call void @__sanitizer_cov_trace_switch(i64 %249, ptr @__sancov_gen_cov_switch_values.124)
  switch i8 %248, label %if.else98.i.i.mvs_task_prep_ssp.exit.i_crit_edge [
    i8 1, label %if.else98.i.i.sw.bb.i.i_crit_edge
    i8 -128, label %if.else98.i.i.sw.bb.i.i_crit_edge16
  ]

if.else98.i.i.sw.bb.i.i_crit_edge16:              ; preds = %if.else98.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i

if.else98.i.i.sw.bb.i.i_crit_edge:                ; preds = %if.else98.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i

if.else98.i.i.mvs_task_prep_ssp.exit.i_crit_edge: ; preds = %if.else98.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_task_prep_ssp.exit.i

sw.bb.i.i:                                        ; preds = %if.else98.i.i.sw.bb.i.i_crit_edge, %if.else98.i.i.sw.bb.i.i_crit_edge16
  %tag_of_task_to_be_managed.i.i = getelementptr inbounds %struct.mvs_tmf_task, ptr %tmf, i32 0, i32 1
  %250 = ptrtoint ptr %tag_of_task_to_be_managed.i.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %tag_of_task_to_be_managed.i.i, align 2
  %252 = lshr i16 %251, 8
  %conv105.i.i = trunc i16 %252 to i8
  %arrayidx106.i.i = getelementptr i8, ptr %186, i32 36
  %253 = ptrtoint ptr %arrayidx106.i.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %conv105.i.i, ptr %arrayidx106.i.i, align 1
  %254 = load i16, ptr %tag_of_task_to_be_managed.i.i, align 2
  %conv110.i.i = trunc i16 %254 to i8
  %arrayidx111.i.i = getelementptr i8, ptr %186, i32 37
  %255 = ptrtoint ptr %arrayidx111.i.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %conv110.i.i, ptr %arrayidx111.i.i, align 1
  br label %mvs_task_prep_ssp.exit.i

mvs_task_prep_ssp.exit.i:                         ; preds = %sw.bb.i.i, %if.else98.i.i.mvs_task_prep_ssp.exit.i_crit_edge, %if.then87.i.i
  %256 = ptrtoint ptr %chip.i246.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %chip.i246.i, align 4
  %dispatch114.i.i = getelementptr inbounds %struct.mvs_chip_info, ptr %257, i32 0, i32 7
  %258 = ptrtoint ptr %dispatch114.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %dispatch114.i.i, align 4
  %make_prd.i259.i = getelementptr inbounds %struct.mvs_dispatch, ptr %259, i32 0, i32 31
  %260 = ptrtoint ptr %make_prd.i259.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %make_prd.i259.i, align 4
  %scatter.i260.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 5
  %262 = ptrtoint ptr %scatter.i260.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %scatter.i260.i, align 4
  tail call void %261(ptr noundef %263, i32 noundef %n_elem.0.i, ptr noundef %add.ptr27.i243.i) #9
  br label %if.end103.i

sw.bb89.i:                                        ; preds = %if.end79.i.sw.bb89.i_crit_edge, %if.end79.i.sw.bb89.i_crit_edge14, %if.end79.i.sw.bb89.i_crit_edge15
  %264 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %task, align 4
  %lldd_dev.i261.i = getelementptr inbounds %struct.domain_device, ptr %265, i32 0, i32 20
  %266 = ptrtoint ptr %lldd_dev.i261.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %lldd_dev.i261.i, align 128
  %port.i262.i = getelementptr inbounds %struct.domain_device, ptr %265, i32 0, i32 8
  %268 = ptrtoint ptr %port.i262.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %port.i262.i, align 4
  %taskfileset.i.i.i = getelementptr inbounds %struct.mvs_device, ptr %267, i32 0, i32 7
  %270 = ptrtoint ptr %taskfileset.i.i.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %taskfileset.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %271)
  %cmp.not.i.i.i = icmp eq i8 %271, 127
  br i1 %cmp.not.i.i.i, label %mvs_assign_reg_set.exit.i.i, label %sw.bb89.i.if.end.i273.i_crit_edge

sw.bb89.i.if.end.i273.i_crit_edge:                ; preds = %sw.bb89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i273.i

mvs_assign_reg_set.exit.i.i:                      ; preds = %sw.bb89.i
  %chip.i.i.i = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 20
  %272 = ptrtoint ptr %chip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %chip.i.i.i, align 4
  %dispatch.i.i.i = getelementptr inbounds %struct.mvs_chip_info, ptr %273, i32 0, i32 7
  %274 = ptrtoint ptr %dispatch.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %dispatch.i.i.i, align 4
  %assign_reg_set.i.i.i = getelementptr inbounds %struct.mvs_dispatch, ptr %275, i32 0, i32 27
  %276 = ptrtoint ptr %assign_reg_set.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %assign_reg_set.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %277(ptr noundef %5, ptr noundef %taskfileset.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %call.i.i.i)
  %cmp.i263.i = icmp eq i8 %call.i.i.i, 127
  br i1 %cmp.i263.i, label %do.end.i.i, label %mvs_assign_reg_set.exit.i.i.if.end.i273.i_crit_edge

mvs_assign_reg_set.exit.i.i.if.end.i273.i_crit_edge: ; preds = %mvs_assign_reg_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i273.i

do.end.i.i:                                       ; preds = %mvs_assign_reg_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %device_id.i264.i = getelementptr inbounds %struct.mvs_device, ptr %267, i32 0, i32 5
  %278 = ptrtoint ptr %device_id.i264.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %device_id.i264.i, align 4
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.2, i32 noundef 451, i32 noundef %279) #12
  br label %do.end100.i

if.end.i273.i:                                    ; preds = %mvs_assign_reg_set.exit.i.i.if.end.i273.i_crit_edge, %sw.bb89.i.if.end.i273.i_crit_edge
  %tx_prod.i265.i = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 11
  %280 = ptrtoint ptr %tx_prod.i265.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %tx_prod.i265.i, align 8
  %tx.i266.i = getelementptr %struct.mvs_info, ptr %5, i32 0, i32 42, i32 %call.i.i, i32 3
  %282 = ptrtoint ptr %tx.i266.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %281, ptr %tx.i266.i, align 4
  %phy_mask.i.i = getelementptr inbounds %struct.asd_sas_port, ptr %269, i32 0, i32 20
  %283 = ptrtoint ptr %phy_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %phy_mask.i.i, align 4
  %and.i267.i = shl i32 %284, 12
  %shl.i268.i = and i32 %and.i267.i, 1044480
  %285 = ptrtoint ptr %taskfileset.i.i.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %taskfileset.i.i.i, align 4
  %conv9.i.i = zext i8 %286 to i32
  %shl10.i.i = shl nuw nsw i32 %conv9.i.i, 20
  %or7.i.i = or i32 %call.i.i, %shl.i268.i
  %or8.i.i = or i32 %or7.i.i, %shl10.i.i
  %or11.i269.i = or i32 %or8.i.i, 1879048192
  %287 = tail call i32 @llvm.bswap.i32(i32 %or11.i269.i) #9
  %tx12.i270.i = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 9
  %288 = ptrtoint ptr %tx12.i270.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %tx12.i270.i, align 8
  %arrayidx14.i271.i = getelementptr i32, ptr %289, i32 %281
  %290 = ptrtoint ptr %arrayidx14.i271.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %287, ptr %arrayidx14.i271.i, align 4
  %data_dir.i.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 8
  %291 = ptrtoint ptr %data_dir.i.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %bf.load.i272.i = load i8, ptr %data_dir.i.i, align 4
  %bf.lshr.mask.i.i = and i8 %bf.load.i272.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %bf.lshr.mask.i.i)
  %cmp16.i.i = icmp eq i8 %bf.lshr.mask.i.i, -128
  br i1 %cmp16.i.i, label %if.then18.i.i, label %if.end.i273.i.if.end22.i.i_crit_edge

if.end.i273.i.if.end22.i.i_crit_edge:             ; preds = %if.end.i273.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i.i

if.then18.i.i:                                    ; preds = %if.end.i273.i
  call void @__sanitizer_cov_trace_pc() #11
  %chip.i274.i = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 20
  %292 = ptrtoint ptr %chip.i274.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %chip.i274.i, align 4
  %dispatch.i275.i = getelementptr inbounds %struct.mvs_chip_info, ptr %293, i32 0, i32 7
  %294 = ptrtoint ptr %dispatch.i275.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %dispatch.i275.i, align 4
  %prd_count.i.i = getelementptr inbounds %struct.mvs_dispatch, ptr %295, i32 0, i32 30
  %296 = ptrtoint ptr %prd_count.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %prd_count.i.i, align 4
  %call19.i.i = tail call i32 %297() #9
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then18.i.i, %if.end.i273.i.if.end22.i.i_crit_edge
  %flags.0.in.i.i = phi i32 [ %call19.i.i, %if.then18.i.i ], [ %n_elem.0.i, %if.end.i273.i.if.end22.i.i_crit_edge ]
  %flags.0.i.i = shl i32 %flags.0.in.i.i, 16
  %298 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 4
  %use_ncq.i.i = getelementptr inbounds %struct.sas_ata_task, ptr %298, i32 0, i32 3
  %299 = ptrtoint ptr %use_ncq.i.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %bf.load23.i.i = load i8, ptr %use_ncq.i.i, align 1
  %300 = and i8 %bf.load23.i.i, 64
  %301 = zext i8 %300 to i32
  %302 = or i32 %flags.0.i.i, %301
  %303 = getelementptr inbounds %struct.domain_device, ptr %265, i32 0, i32 19
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %303, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %305)
  %cmp28.i.i = icmp eq i32 %305, 3
  br i1 %cmp28.i.i, label %if.then30.i.i, label %if.end22.i.i.if.end37.i.i_crit_edge

if.end22.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i.i

if.then30.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %command.i.i = getelementptr inbounds %struct.host_to_dev_fis, ptr %298, i32 0, i32 2
  %306 = ptrtoint ptr %command.i.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %command.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %307)
  %cmp32.not.i.i = icmp eq i8 %307, -95
  %or35.i.i = or i32 %302, 32
  %spec.select243.i.i = select i1 %cmp32.not.i.i, i32 %302, i32 %or35.i.i
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.then30.i.i, %if.end22.i.i.if.end37.i.i_crit_edge
  %flags.2.i.i = phi i32 [ %302, %if.end22.i.i.if.end37.i.i_crit_edge ], [ %spec.select243.i.i, %if.then30.i.i ]
  %308 = tail call i32 @llvm.bswap.i32(i32 %flags.2.i.i) #9
  %309 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %308, ptr %arrayidx82.i, align 8
  %310 = ptrtoint ptr %use_ncq.i.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %bf.load40.i.i = load i8, ptr %use_ncq.i.i, align 1
  %311 = and i8 %bf.load40.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %311)
  %tobool44.not.i.i = icmp eq i8 %311, 0
  br i1 %tobool44.not.i.i, label %if.end37.i.i.if.end56.i.i_crit_edge, label %land.lhs.true.i.i

if.end37.i.i.if.end56.i.i_crit_edge:              ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i.i

land.lhs.true.i.i:                                ; preds = %if.end37.i.i
  %uldd_task.i.i.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 12
  %312 = ptrtoint ptr %uldd_task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %uldd_task.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %313, null
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.if.end56.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.if.end56.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i
  %command.i.i.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %313, i32 0, i32 4, i32 14
  %314 = ptrtoint ptr %command.i.i.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %command.i.i.i, align 1
  %316 = zext i8 %315 to i64
  call void @__sanitizer_cov_trace_switch(i64 %316, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %315, label %if.then.i.i.i.if.end56.i.i_crit_edge [
    i8 97, label %if.then.i.i.i.if.then47.i.i_crit_edge
    i8 96, label %if.then.i.i.i.if.then47.i.i_crit_edge17
    i8 101, label %if.then.i.i.i.if.then47.i.i_crit_edge18
    i8 100, label %if.then.i.i.i.if.then47.i.i_crit_edge19
    i8 99, label %if.then.i.i.i.if.then47.i.i_crit_edge20
  ]

if.then.i.i.i.if.then47.i.i_crit_edge20:          ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47.i.i

if.then.i.i.i.if.then47.i.i_crit_edge19:          ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47.i.i

if.then.i.i.i.if.then47.i.i_crit_edge18:          ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47.i.i

if.then.i.i.i.if.then47.i.i_crit_edge17:          ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47.i.i

if.then.i.i.i.if.then47.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47.i.i

if.then.i.i.i.if.end56.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i.i

if.then47.i.i:                                    ; preds = %if.then.i.i.i.if.then47.i.i_crit_edge, %if.then.i.i.i.if.then47.i.i_crit_edge17, %if.then.i.i.i.if.then47.i.i_crit_edge18, %if.then.i.i.i.if.then47.i.i_crit_edge19, %if.then.i.i.i.if.then47.i.i_crit_edge20
  %tag26.i.i.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %313, i32 0, i32 7
  %317 = ptrtoint ptr %tag26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %tag26.i.i.i, align 4
  %319 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 4, i32 0, i32 0, i32 3
  %320 = ptrtoint ptr %319 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %319, align 4
  %.tr.i.i = trunc i32 %318 to i8
  %322 = shl i8 %.tr.i.i, 3
  %conv54.i.i = or i8 %322, %321
  store i8 %conv54.i.i, ptr %319, align 4
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %if.then47.i.i, %if.then.i.i.i.if.end56.i.i_crit_edge, %land.lhs.true.i.i.if.end56.i.i_crit_edge, %if.end37.i.i.if.end56.i.i_crit_edge
  %hdr_tag.1.i.i = phi i32 [ %318, %if.then47.i.i ], [ %call.i.i, %if.end37.i.i.if.end56.i.i_crit_edge ], [ %call.i.i, %if.then.i.i.i.if.end56.i.i_crit_edge ], [ %call.i.i, %land.lhs.true.i.i.if.end56.i.i_crit_edge ]
  %323 = tail call i32 @llvm.bswap.i32(i32 %hdr_tag.1.i.i) #9
  %tags.i277.i = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i, i32 2
  %324 = ptrtoint ptr %tags.i277.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %323, ptr %tags.i277.i, align 8
  %total_xfer_len.i278.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 7
  %325 = ptrtoint ptr %total_xfer_len.i278.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %total_xfer_len.i278.i, align 4
  %327 = tail call i32 @llvm.bswap.i32(i32 %326) #9
  %data_len.i279.i = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i, i32 3
  %328 = ptrtoint ptr %data_len.i279.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 %327, ptr %data_len.i279.i, align 4
  %329 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %buf.i, align 4
  %331 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %buf_dma.i, align 4
  %conv57.i.i = zext i32 %332 to i64
  %333 = tail call i64 @llvm.bswap.i64(i64 %conv57.i.i) #9
  %cmd_tbl.i282.i = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i, i32 4
  %334 = ptrtoint ptr %cmd_tbl.i282.i to i32
  call void @__asan_store8_noabort(i32 %334)
  store i64 %333, ptr %cmd_tbl.i282.i, align 8
  %add.ptr.i283.i = getelementptr i8, ptr %330, i32 96
  %add.i284.i = add i32 %332, 96
  %conv58.i.i = zext i32 %add.i284.i to i64
  %335 = tail call i64 @llvm.bswap.i64(i64 %conv58.i.i) #9
  %open_frame.i285.i = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i, i32 5
  %336 = ptrtoint ptr %open_frame.i285.i to i32
  call void @__asan_store8_noabort(i32 %336)
  store i64 %335, ptr %open_frame.i285.i, align 8
  %add.ptr59.i.i = getelementptr i8, ptr %330, i32 160
  %add60.i.i = add i32 %332, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_elem.0.i)
  %tobool62.not.i.i = icmp eq i32 %n_elem.0.i, 0
  br i1 %tobool62.not.i.i, label %if.end56.i.i.if.end67.i.i_crit_edge, label %if.then63.i.i

if.end56.i.i.if.end67.i.i_crit_edge:              ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i.i

if.then63.i.i:                                    ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv64.i286.i = zext i32 %add60.i.i to i64
  %337 = tail call i64 @llvm.bswap.i64(i64 %conv64.i286.i) #9
  br label %if.end67.i.i

if.end67.i.i:                                     ; preds = %if.then63.i.i, %if.end56.i.i.if.end67.i.i_crit_edge
  %.sink.i287.i = phi i64 [ %337, %if.then63.i.i ], [ 0, %if.end56.i.i.if.end67.i.i_crit_edge ]
  %338 = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i, i32 7
  %339 = ptrtoint ptr %338 to i32
  call void @__asan_store8_noabort(i32 %339)
  store i64 %.sink.i287.i, ptr %338, align 8
  %chip68.i.i = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 20
  %340 = ptrtoint ptr %chip68.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %chip68.i.i, align 4
  %dispatch69.i.i = getelementptr inbounds %struct.mvs_chip_info, ptr %341, i32 0, i32 7
  %342 = ptrtoint ptr %dispatch69.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %dispatch69.i.i, align 4
  %prd_size.i288.i = getelementptr inbounds %struct.mvs_dispatch, ptr %343, i32 0, i32 29
  %344 = ptrtoint ptr %prd_size.i288.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %prd_size.i288.i, align 4
  %call70.i.i = tail call i32 %345() #9
  %346 = ptrtoint ptr %chip68.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %chip68.i.i, align 4
  %dispatch72.i.i = getelementptr inbounds %struct.mvs_chip_info, ptr %347, i32 0, i32 7
  %348 = ptrtoint ptr %dispatch72.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %dispatch72.i.i, align 4
  %prd_count73.i.i = getelementptr inbounds %struct.mvs_dispatch, ptr %349, i32 0, i32 30
  %350 = ptrtoint ptr %prd_count73.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %prd_count73.i.i, align 4
  %call74.i.i = tail call i32 %351() #9
  %mul.i289.i = mul i32 %call74.i.i, %call70.i.i
  %add.ptr75.i.i = getelementptr i8, ptr %add.ptr59.i.i, i32 %mul.i289.i
  %add76.i.i = add i32 %mul.i289.i, %add60.i.i
  %response.i290.i = getelementptr %struct.mvs_info, ptr %5, i32 0, i32 42, i32 %call.i.i, i32 7
  %352 = ptrtoint ptr %response.i290.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store ptr %add.ptr75.i.i, ptr %response.i290.i, align 4
  %conv77.i.i = zext i32 %add76.i.i to i64
  %353 = tail call i64 @llvm.bswap.i64(i64 %conv77.i.i) #9
  %status_buf.i291.i = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i, i32 6
  %354 = ptrtoint ptr %status_buf.i291.i to i32
  call void @__asan_store8_noabort(i32 %354)
  store i64 %353, ptr %status_buf.i291.i, align 8
  %355 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %5, align 8
  %and79.i.i = and i32 %356, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i.i)
  %tobool80.not.i.i = icmp eq i32 %and79.i.i, 0
  br i1 %tobool80.not.i.i, label %if.end67.i.i.if.end83.i.i_crit_edge, label %if.then81.i.i

if.end67.i.i.if.end83.i.i_crit_edge:              ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i.i

if.then81.i.i:                                    ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %reserved.i292.i = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i, i32 8
  %357 = ptrtoint ptr %reserved.i292.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 0, ptr %reserved.i292.i, align 8
  br label %if.end83.i.i

if.end83.i.i:                                     ; preds = %if.then81.i.i, %if.end67.i.i.if.end83.i.i_crit_edge
  %sub.i293.i = sub i32 8088, %mul.i289.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %sub.i293.i)
  %cmp85.i.i = icmp ult i32 %sub.i293.i, 1024
  %358 = shl i32 %sub.i293.i, 14
  %phi.bo.i294.i = and i32 %358, -65536
  %phi.bo242.i.i = or i32 %phi.bo.i294.i, 5
  %cond.i295.i = select i1 %cmp85.i.i, i32 %phi.bo242.i.i, i32 16777221
  %359 = tail call i32 @llvm.bswap.i32(i32 %cond.i295.i) #9
  %lens.i296.i = getelementptr %struct.mvs_cmd_hdr, ptr %66, i32 %call.i.i, i32 1
  %360 = ptrtoint ptr %lens.i296.i to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 %359, ptr %lens.i296.i, align 4
  %361 = ptrtoint ptr %use_ncq.i.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %bf.load90.i.i = load i8, ptr %use_ncq.i.i, align 1
  %362 = and i8 %bf.load90.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %362)
  %tobool93.not.i.i = icmp eq i8 %362, 0
  br i1 %tobool93.not.i.i, label %if.then97.i.i, label %if.end83.i.i.if.end103.i.i_crit_edge, !prof !226

if.end83.i.i.if.end103.i.i_crit_edge:             ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103.i.i

if.then97.i.i:                                    ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags99.i.i = getelementptr inbounds %struct.host_to_dev_fis, ptr %298, i32 0, i32 1
  %363 = ptrtoint ptr %flags99.i.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %flags99.i.i, align 1
  %365 = or i8 %364, -128
  store i8 %365, ptr %flags99.i.i, align 1
  br label %if.end103.i.i

if.end103.i.i:                                    ; preds = %if.then97.i.i, %if.end83.i.i.if.end103.i.i_crit_edge
  %366 = call ptr @memcpy(ptr %330, ptr %298, i32 20)
  %367 = ptrtoint ptr %303 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %303, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %368)
  %cmp106.i.i = icmp eq i32 %368, 3
  br i1 %cmp106.i.i, label %if.then108.i.i, label %if.end103.i.i.if.end110.i.i_crit_edge

if.end103.i.i.if.end110.i.i_crit_edge:            ; preds = %if.end103.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110.i.i

if.then108.i.i:                                   ; preds = %if.end103.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr109.i.i = getelementptr i8, ptr %330, i32 64
  %atapi_packet.i.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 4, i32 0, i32 1
  %369 = call ptr @memcpy(ptr %add.ptr109.i.i, ptr %atapi_packet.i.i, i32 16)
  br label %if.end110.i.i

if.end110.i.i:                                    ; preds = %if.then108.i.i, %if.end103.i.i.if.end110.i.i_crit_edge
  %370 = ptrtoint ptr %add.ptr.i283.i to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 -95, ptr %add.ptr.i283.i, align 1
  %linkrate.i297.i = getelementptr inbounds %struct.asd_sas_port, ptr %269, i32 0, i32 7
  %371 = ptrtoint ptr %linkrate.i297.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %linkrate.i297.i, align 4
  %linkrate112.i.i = getelementptr inbounds %struct.domain_device, ptr %265, i32 0, i32 2
  %373 = ptrtoint ptr %linkrate112.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %linkrate112.i.i, align 16
  %375 = tail call i32 @llvm.umin.i32(i32 %372, i32 %374) #9
  %376 = trunc i32 %375 to i8
  %conv121.i.i = and i8 %376, 15
  %arrayidx122.i.i = getelementptr i8, ptr %330, i32 97
  %377 = ptrtoint ptr %arrayidx122.i.i to i32
  call void @__asan_store1_noabort(i32 %377)
  store i8 %conv121.i.i, ptr %arrayidx122.i.i, align 1
  %device_id123.i.i = getelementptr inbounds %struct.mvs_device, ptr %267, i32 0, i32 5
  %378 = ptrtoint ptr %device_id123.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %device_id123.i.i, align 4
  %380 = trunc i32 %379 to i16
  %conv125.i.i = add i16 %380, 1
  %add.ptr126.i.i = getelementptr i8, ptr %330, i32 98
  %381 = ptrtoint ptr %add.ptr126.i.i to i32
  call void @__asan_store2_noabort(i32 %381)
  store i16 %conv125.i.i, ptr %add.ptr126.i.i, align 2
  %add.ptr127.i.i = getelementptr i8, ptr %330, i32 100
  %sas_addr.i298.i = getelementptr inbounds %struct.domain_device, ptr %265, i32 0, i32 15
  %382 = ptrtoint ptr %sas_addr.i298.i to i32
  call void @__asan_load8_noabort(i32 %382)
  %383 = load i64, ptr %sas_addr.i298.i, align 16
  %384 = ptrtoint ptr %add.ptr127.i.i to i32
  call void @__asan_storeN_noabort(i32 %384, i32 8)
  store i64 %383, ptr %add.ptr127.i.i, align 1
  %385 = ptrtoint ptr %chip68.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %chip68.i.i, align 4
  %dispatch130.i.i = getelementptr inbounds %struct.mvs_chip_info, ptr %386, i32 0, i32 7
  %387 = ptrtoint ptr %dispatch130.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %dispatch130.i.i, align 4
  %make_prd.i299.i = getelementptr inbounds %struct.mvs_dispatch, ptr %388, i32 0, i32 31
  %389 = ptrtoint ptr %make_prd.i299.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %make_prd.i299.i, align 4
  %scatter.i300.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 5
  %391 = ptrtoint ptr %scatter.i300.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %scatter.i300.i, align 4
  tail call void %390(ptr noundef %392, i32 noundef %n_elem.0.i, ptr noundef %add.ptr59.i.i) #9
  %393 = ptrtoint ptr %data_dir.i.i to i32
  call void @__asan_load1_noabort(i32 %393)
  %bf.load133.i.i = load i8, ptr %data_dir.i.i, align 4
  %bf.lshr134.mask.i.i = and i8 %bf.load133.i.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %bf.lshr134.mask.i.i)
  %cmp136.i.i = icmp eq i8 %bf.lshr134.mask.i.i, -128
  br i1 %cmp136.i.i, label %if.then138.i.i, label %if.end110.i.i.if.end103.i_crit_edge

if.end110.i.i.if.end103.i_crit_edge:              ; preds = %if.end110.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103.i

if.then138.i.i:                                   ; preds = %if.end110.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %394 = ptrtoint ptr %chip68.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %chip68.i.i, align 4
  %dispatch140.i.i = getelementptr inbounds %struct.mvs_chip_info, ptr %395, i32 0, i32 7
  %396 = ptrtoint ptr %dispatch140.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %dispatch140.i.i, align 4
  %dma_fix.i.i = getelementptr inbounds %struct.mvs_dispatch, ptr %397, i32 0, i32 48
  %398 = ptrtoint ptr %dma_fix.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %dma_fix.i.i, align 4
  %400 = ptrtoint ptr %phy_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %phy_mask.i.i, align 4
  tail call void %399(ptr noundef %5, i32 noundef %401, i32 noundef 131072, i32 noundef %n_elem.0.i, ptr noundef %add.ptr59.i.i) #9
  br label %if.end103.i

do.end93.i:                                       ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev94.i = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 3
  %402 = ptrtoint ptr %dev94.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %dev94.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.57, ptr noundef %403, ptr noundef nonnull @.str.70, i32 noundef %68) #12
  br label %do.end100.i

do.end100.i:                                      ; preds = %do.end93.i, %do.end.i.i, %err_out.i.i, %sw.bb.i.do.end100.i_crit_edge
  %rc.0.i = phi i32 [ -22, %do.end93.i ], [ %rc.0.i.i, %err_out.i.i ], [ -12, %sw.bb.i.do.end100.i_crit_edge ], [ -16, %do.end.i.i ]
  %call102.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.2, i32 noundef 811, i32 noundef %rc.0.i) #12
  %404 = ptrtoint ptr %dma_pool.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %dma_pool.i, align 8
  %406 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %buf.i, align 4
  %408 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %buf_dma.i, align 4
  tail call void @dma_pool_free(ptr noundef %405, ptr noundef %407, i32 noundef %409) #9
  br label %err_out_tag.i

if.end103.i:                                      ; preds = %if.then138.i.i, %if.end110.i.i.if.end103.i_crit_edge, %mvs_task_prep_ssp.exit.i, %if.end35.i.i
  %410 = getelementptr %struct.mvs_info, ptr %5, i32 0, i32 42, i32 %call.i.i, i32 1
  %411 = ptrtoint ptr %410 to i32
  call void @__asan_store4_noabort(i32 %411)
  store ptr %task, ptr %410, align 4
  %port105.i = getelementptr %struct.mvs_info, ptr %5, i32 0, i32 42, i32 %call.i.i, i32 8
  %412 = ptrtoint ptr %port105.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store ptr %25, ptr %port105.i, align 4
  %413 = ptrtoint ptr %lldd_task.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store ptr %arrayidx.i, ptr %lldd_task.i, align 4
  %list.i = getelementptr inbounds %struct.mvs_port, ptr %25, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.mvs_port, ptr %25, i32 0, i32 3, i32 1
  %414 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %prev.i.i, align 4
  %call.i.i302.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.i, ptr noundef %415, ptr noundef %list.i) #9
  br i1 %call.i.i302.i, label %if.end.i.i.i, label %if.end103.i.if.then13_crit_edge

if.end103.i.if.then13_crit_edge:                  ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.end.i.i.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #11
  %416 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %416)
  store ptr %arrayidx.i, ptr %prev.i.i, align 4
  %417 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %417)
  store ptr %list.i, ptr %arrayidx.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %418 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %418)
  store ptr %415, ptr %prev3.i.i.i, align 4
  %419 = ptrtoint ptr %415 to i32
  call void @__asan_store4_noabort(i32 %419)
  store volatile ptr %arrayidx.i, ptr %415, align 4
  br label %if.then13

err_out_tag.i:                                    ; preds = %do.end100.i, %if.end73.i.err_out_tag.i_crit_edge
  %rc.1.i = phi i32 [ %rc.0.i, %do.end100.i ], [ -12, %if.end73.i.err_out_tag.i_crit_edge ]
  %420 = ptrtoint ptr %tags.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %tags.i.i, align 4
  tail call void @_clear_bit(i32 noundef %call.i.i, ptr noundef %421) #9
  br label %do.end117.i

do.end117.i:                                      ; preds = %err_out_tag.i, %if.end69.i.do.end117.i_crit_edge
  %rc.2.i = phi i32 [ %rc.1.i, %err_out_tag.i ], [ -132, %if.end69.i.do.end117.i_crit_edge ]
  %dev118.i = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 3
  %422 = ptrtoint ptr %dev118.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %dev118.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.57, ptr noundef %423, ptr noundef nonnull @.str.76, i32 noundef %rc.2.i) #12
  %424 = ptrtoint ptr %task_proto54.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %task_proto54.i, align 4
  %426 = and i32 %425, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %426)
  %427 = icmp ne i32 %426, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_elem.0.i)
  %tobool123.not.i = icmp eq i32 %n_elem.0.i, 0
  %or.cond221.i = select i1 %427, i1 true, i1 %tobool123.not.i
  br i1 %or.cond221.i, label %do.end117.i.if.end.thread_crit_edge, label %if.then124.i

do.end117.i.if.end.thread_crit_edge:              ; preds = %do.end117.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread

if.then124.i:                                     ; preds = %do.end117.i
  call void @__sanitizer_cov_trace_pc() #11
  %428 = ptrtoint ptr %dev118.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %dev118.i, align 4
  %scatter126.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 5
  %430 = ptrtoint ptr %scatter126.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %scatter126.i, align 4
  %data_dir127.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 8
  %432 = ptrtoint ptr %data_dir127.i to i32
  call void @__asan_load1_noabort(i32 %432)
  %bf.load128.i = load i8, ptr %data_dir127.i, align 4
  %bf.lshr129.i = lshr i8 %bf.load128.i, 6
  %conv130.i = zext i8 %bf.lshr129.i to i32
  tail call void @dma_unmap_sg_attrs(ptr noundef %429, ptr noundef %431, i32 noundef %n_elem.0.i, i32 noundef %conv130.i, i32 noundef 0) #9
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.then124.i, %do.end117.i.if.end.thread_crit_edge, %if.then59.i.if.end.thread_crit_edge, %do.end12.i, %do.end.critedge.i
  %retval.0.i = phi i32 [ 138, %do.end12.i ], [ 138, %do.end.critedge.i ], [ %rc.2.i, %do.end117.i.if.end.thread_crit_edge ], [ %rc.2.i, %if.then124.i ], [ -12, %if.then59.i.if.end.thread_crit_edge ]
  %dev9 = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 3
  %433 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.57, ptr noundef %434, ptr noundef nonnull @.str.55, i32 noundef %retval.0.i) #12
  br label %if.end16

if.then13:                                        ; preds = %if.end.i.i.i, %if.end103.i.if.then13_crit_edge
  %task_state_lock.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %task_state_lock.i) #9
  %task_state_flags.i = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 2
  %435 = ptrtoint ptr %task_state_flags.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %task_state_flags.i, align 4
  %or.i = or i32 %436, 16
  store i32 %or.i, ptr %task_state_flags.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %task_state_lock.i) #9
  %running_req.i = getelementptr inbounds %struct.mvs_device, ptr %9, i32 0, i32 6
  %437 = ptrtoint ptr %running_req.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %running_req.i, align 4
  %inc.i = add i32 %438, 1
  store i32 %inc.i, ptr %running_req.i, align 4
  %tx_prod.i = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 11
  %439 = ptrtoint ptr %tx_prod.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %tx_prod.i, align 8
  %add.i = add i32 %440, 1
  %chip.i = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 20
  %441 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %chip.i, align 4
  %slot_width.i = getelementptr inbounds %struct.mvs_chip_info, ptr %442, i32 0, i32 6
  %443 = ptrtoint ptr %slot_width.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %slot_width.i, align 4
  %notmask.i = shl nsw i32 -1, %444
  %sub.i = xor i32 %notmask.i, -1
  %and.i = and i32 %add.i, %sub.i
  store i32 %and.i, ptr %tx_prod.i, align 8
  %dispatch = getelementptr inbounds %struct.mvs_chip_info, ptr %442, i32 0, i32 7
  %445 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %dispatch, align 4
  %start_delivery = getelementptr inbounds %struct.mvs_dispatch, ptr %446, i32 0, i32 24
  %447 = ptrtoint ptr %start_delivery to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %start_delivery, align 4
  %sub = add i32 %and.i, -1
  %449 = load i32, ptr %slot_width.i, align 4
  %notmask = shl nsw i32 -1, %449
  %sub15 = xor i32 %notmask, -1
  %and = and i32 %sub, %sub15
  tail call void %448(ptr noundef %5, i32 noundef %and) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end.thread, %if.else39.i, %if.then28.i, %if.then2.i, %if.then.i.if.end16_crit_edge
  %retval.0.i610 = phi i32 [ %retval.0.i, %if.end.thread ], [ 0, %if.then13 ], [ 0, %if.then28.i ], [ 0, %if.else39.i ], [ 0, %if.then2.i ], [ 0, %if.then.i.if.end16_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  ret i32 %retval.0.i610
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvs_update_phyinfo(ptr noundef %mvi, i32 noundef %i, i32 noundef %get_st) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frame_rcvd = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %get_st)
  %tobool.not = icmp eq i32 %get_st, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %chip = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.mvs_chip_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dispatch, align 4
  %read_port_irq_stat = getelementptr inbounds %struct.mvs_dispatch, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %read_port_irq_stat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_port_irq_stat, align 4
  %call = tail call i32 %5(ptr noundef %mvi, i32 noundef %i) #9
  %irq_status = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 12
  %6 = ptrtoint ptr %irq_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %irq_status, align 8
  %call2 = tail call fastcc i32 @mvs_is_phy_ready(ptr noundef %mvi, i32 noundef %i)
  %phy_status = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 11
  %7 = ptrtoint ptr %phy_status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call2, ptr %phy_status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %phy_status3 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 11
  %8 = ptrtoint ptr %phy_status3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_status3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %if.end.do.end84_crit_edge, label %if.then5

if.end.do.end84_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84

if.then5:                                         ; preds = %if.end
  %chip9 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %10 = ptrtoint ptr %chip9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip9, align 4
  %dispatch10 = getelementptr inbounds %struct.mvs_chip_info, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %dispatch10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dispatch10, align 4
  %oob_done11 = getelementptr inbounds %struct.mvs_dispatch, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %oob_done11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %oob_done11, align 4
  %call12 = tail call i32 %15(ptr noundef %mvi, i32 noundef %i) #9
  %16 = ptrtoint ptr %chip9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip9, align 4
  %dispatch14 = getelementptr inbounds %struct.mvs_chip_info, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %dispatch14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dispatch14, align 4
  %fix_phy_info = getelementptr inbounds %struct.mvs_dispatch, ptr %19, i32 0, i32 34
  %20 = ptrtoint ptr %fix_phy_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fix_phy_info, align 4
  tail call void %21(ptr noundef %mvi, i32 noundef %i, ptr noundef %frame_rcvd) #9
  %phy_type = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 10
  %22 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %phy_type, align 8
  %and = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.else36, label %if.then16

if.then16:                                        ; preds = %if.then5
  %target_port_protocols = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 3, i32 2
  %24 = ptrtoint ptr %target_port_protocols to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %target_port_protocols, align 8
  %irq_status17 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 12
  %25 = ptrtoint ptr %irq_status17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq_status17, align 8
  %and.i = and i32 %26, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool19.not = icmp eq i32 %and.i, 0
  br i1 %tobool19.not, label %cleanup, label %if.then20

if.then20:                                        ; preds = %if.then16
  %function.i = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 5, i32 2
  %27 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %function.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.then20.mvs_sig_remove_timer.exit_crit_edge, label %if.then.i

if.then20.mvs_sig_remove_timer.exit_crit_edge:    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_sig_remove_timer.exit

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %timer.i = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 5
  %call.i = tail call i32 @del_timer(ptr noundef %timer.i) #9
  br label %mvs_sig_remove_timer.exit

mvs_sig_remove_timer.exit:                        ; preds = %if.then.i, %if.then20.mvs_sig_remove_timer.exit_crit_edge
  %29 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %function.i, align 4
  %phy_attached = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 15
  %30 = ptrtoint ptr %phy_attached to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %phy_attached, align 8
  %id21 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 25
  %31 = ptrtoint ptr %id21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id21, align 8
  %33 = ptrtoint ptr %chip9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip9, align 4
  %n_phy = getelementptr inbounds %struct.mvs_chip_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n_phy, align 4
  %mul = mul i32 %36, %32
  %add = add i32 %mul, %i
  %conv = zext i32 %add to i64
  %att_dev_sas_addr = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 7
  %37 = ptrtoint ptr %att_dev_sas_addr to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv, ptr %att_dev_sas_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool23.not = icmp eq i32 %call12, 0
  br i1 %tobool23.not, label %mvs_sig_remove_timer.exit.if.end25_crit_edge, label %if.then24

mvs_sig_remove_timer.exit.if.end25_crit_edge:     ; preds = %mvs_sig_remove_timer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then24:                                        ; preds = %mvs_sig_remove_timer.exit
  call void @__sanitizer_cov_trace_pc() #11
  %oob_mode = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 2, i32 12
  %38 = ptrtoint ptr %oob_mode to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %oob_mode, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %mvs_sig_remove_timer.exit.if.end25_crit_edge
  %frame_rcvd_size = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 13
  %39 = ptrtoint ptr %frame_rcvd_size to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 20, ptr %frame_rcvd_size, align 4
  %tobool.not.i180 = icmp eq ptr %frame_rcvd, null
  br i1 %tobool.not.i180, label %if.end25.if.end69_crit_edge, label %if.end.i

if.end25.if.end69_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.end.i:                                         ; preds = %if.end25
  %40 = ptrtoint ptr %chip9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chip9, align 4
  %dispatch.i = getelementptr inbounds %struct.mvs_chip_info, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %dispatch.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dispatch.i, align 4
  %write_port_cfg_addr.i = getelementptr inbounds %struct.mvs_dispatch, ptr %43, i32 0, i32 13
  %44 = ptrtoint ptr %write_port_cfg_addr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_port_cfg_addr.i, align 4
  tail call void %45(ptr noundef %mvi, i32 noundef %i, i32 noundef 44) #9
  %46 = ptrtoint ptr %chip9 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chip9, align 4
  %dispatch2.i = getelementptr inbounds %struct.mvs_chip_info, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %dispatch2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dispatch2.i, align 4
  %read_port_cfg_data.i = getelementptr inbounds %struct.mvs_dispatch, ptr %49, i32 0, i32 11
  %50 = ptrtoint ptr %read_port_cfg_data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read_port_cfg_data.i, align 4
  %call.i181 = tail call i32 %51(ptr noundef %mvi, i32 noundef %i) #9
  %52 = tail call i32 @llvm.bswap.i32(i32 %call.i181) #9
  %arrayidx.i = getelementptr i32, ptr %frame_rcvd, i32 3
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx.i, align 4
  %54 = ptrtoint ptr %chip9 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %chip9, align 4
  %dispatch4.i = getelementptr inbounds %struct.mvs_chip_info, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %dispatch4.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dispatch4.i, align 4
  %write_port_cfg_addr5.i = getelementptr inbounds %struct.mvs_dispatch, ptr %57, i32 0, i32 13
  %58 = ptrtoint ptr %write_port_cfg_addr5.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write_port_cfg_addr5.i, align 4
  tail call void %59(ptr noundef %mvi, i32 noundef %i, i32 noundef 40) #9
  %60 = ptrtoint ptr %chip9 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chip9, align 4
  %dispatch7.i = getelementptr inbounds %struct.mvs_chip_info, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %dispatch7.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dispatch7.i, align 4
  %read_port_cfg_data8.i = getelementptr inbounds %struct.mvs_dispatch, ptr %63, i32 0, i32 11
  %64 = ptrtoint ptr %read_port_cfg_data8.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read_port_cfg_data8.i, align 4
  %call9.i = tail call i32 %65(ptr noundef %mvi, i32 noundef %i) #9
  %66 = tail call i32 @llvm.bswap.i32(i32 %call9.i) #9
  %arrayidx10.i = getelementptr i32, ptr %frame_rcvd, i32 2
  %67 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %arrayidx10.i, align 4
  %68 = ptrtoint ptr %chip9 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %chip9, align 4
  %dispatch12.i = getelementptr inbounds %struct.mvs_chip_info, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %dispatch12.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dispatch12.i, align 4
  %write_port_cfg_addr13.i = getelementptr inbounds %struct.mvs_dispatch, ptr %71, i32 0, i32 13
  %72 = ptrtoint ptr %write_port_cfg_addr13.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write_port_cfg_addr13.i, align 4
  tail call void %73(ptr noundef %mvi, i32 noundef %i, i32 noundef 36) #9
  %74 = ptrtoint ptr %chip9 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %chip9, align 4
  %dispatch15.i = getelementptr inbounds %struct.mvs_chip_info, ptr %75, i32 0, i32 7
  %76 = ptrtoint ptr %dispatch15.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dispatch15.i, align 4
  %read_port_cfg_data16.i = getelementptr inbounds %struct.mvs_dispatch, ptr %77, i32 0, i32 11
  %78 = ptrtoint ptr %read_port_cfg_data16.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read_port_cfg_data16.i, align 4
  %call17.i = tail call i32 %79(ptr noundef %mvi, i32 noundef %i) #9
  %80 = tail call i32 @llvm.bswap.i32(i32 %call17.i) #9
  %arrayidx18.i = getelementptr i32, ptr %frame_rcvd, i32 1
  %81 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %arrayidx18.i, align 4
  %82 = ptrtoint ptr %chip9 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %chip9, align 4
  %dispatch20.i = getelementptr inbounds %struct.mvs_chip_info, ptr %83, i32 0, i32 7
  %84 = ptrtoint ptr %dispatch20.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dispatch20.i, align 4
  %write_port_cfg_addr21.i = getelementptr inbounds %struct.mvs_dispatch, ptr %85, i32 0, i32 13
  %86 = ptrtoint ptr %write_port_cfg_addr21.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write_port_cfg_addr21.i, align 4
  tail call void %87(ptr noundef %mvi, i32 noundef %i, i32 noundef 32) #9
  %88 = ptrtoint ptr %chip9 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %chip9, align 4
  %dispatch23.i = getelementptr inbounds %struct.mvs_chip_info, ptr %89, i32 0, i32 7
  %90 = ptrtoint ptr %dispatch23.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dispatch23.i, align 4
  %read_port_cfg_data24.i = getelementptr inbounds %struct.mvs_dispatch, ptr %91, i32 0, i32 11
  %92 = ptrtoint ptr %read_port_cfg_data24.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %read_port_cfg_data24.i, align 4
  %call25.i = tail call i32 %93(ptr noundef %mvi, i32 noundef %i) #9
  %94 = tail call i32 @llvm.bswap.i32(i32 %call25.i) #9
  %95 = ptrtoint ptr %frame_rcvd to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %frame_rcvd, align 4
  %96 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx18.i, align 4
  %and.i182 = and i32 %97, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 15406081, i32 %and.i182)
  %cmp.i = icmp eq i32 %and.i182, 15406081
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end69_crit_edge

if.end.i.if.end69_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

land.lhs.true.i:                                  ; preds = %if.end.i
  %98 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %99)
  %cmp29.i = icmp eq i8 %99, 1
  br i1 %cmp29.i, label %if.then31.i, label %land.lhs.true.i.if.end69_crit_edge

land.lhs.true.i.if.end69_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then31.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %arrayidx18.i, i32 3
  %100 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %add.ptr.i, align 1
  %102 = and i8 %101, 16
  %and34.i = zext i8 %102 to i32
  %or.i = or i32 %and34.i, 15406081
  %103 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %or.i, ptr %arrayidx18.i, align 4
  br label %if.end69

if.else36:                                        ; preds = %if.then5
  %and38 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %lor.lhs.false, label %if.else36.if.then42_crit_edge

if.else36.if.then42_crit_edge:                    ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

lor.lhs.false:                                    ; preds = %if.else36
  %att_dev_info = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 8
  %104 = ptrtoint ptr %att_dev_info to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %att_dev_info, align 8
  %and40 = and i32 %105, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %lor.lhs.false.if.end69_crit_edge, label %lor.lhs.false.if.then42_crit_edge

lor.lhs.false.if.then42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

lor.lhs.false.if.end69_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then42:                                        ; preds = %lor.lhs.false.if.then42_crit_edge, %if.else36.if.then42_crit_edge
  %phy_attached43 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 15
  %106 = ptrtoint ptr %phy_attached43 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %phy_attached43, align 8
  %att_dev_info44 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 8
  %107 = ptrtoint ptr %att_dev_info44 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %att_dev_info44, align 8
  %and45 = and i32 %108, 7
  %identify46 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 3
  %109 = ptrtoint ptr %identify46 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %and45, ptr %identify46, align 8
  %110 = zext i32 %and45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %and45, label %if.then58 [
    i32 1, label %if.then42.if.end62.sink.split_crit_edge
    i32 0, label %if.then42.if.end62_crit_edge
  ]

if.then42.if.end62_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then42.if.end62.sink.split_crit_edge:          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.sink.split

if.then58:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.sink.split

if.end62.sink.split:                              ; preds = %if.then58, %if.then42.if.end62.sink.split_crit_edge
  %.sink = phi i32 [ 2, %if.then58 ], [ 8, %if.then42.if.end62.sink.split_crit_edge ]
  %target_port_protocols60 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 3, i32 2
  %111 = ptrtoint ptr %target_port_protocols60 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %.sink, ptr %target_port_protocols60, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.end62.sink.split, %if.then42.if.end62_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool63.not = icmp eq i32 %call12, 0
  br i1 %tobool63.not, label %if.end62.if.end66_crit_edge, label %if.then64

if.end62.if.end66_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then64:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %oob_mode65 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 2, i32 12
  %112 = ptrtoint ptr %oob_mode65 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 2, ptr %oob_mode65, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end62.if.end66_crit_edge
  %frame_rcvd_size67 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 13
  %113 = ptrtoint ptr %frame_rcvd_size67 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 32, ptr %frame_rcvd_size67, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.end66, %lor.lhs.false.if.end69_crit_edge, %if.then31.i, %land.lhs.true.i.if.end69_crit_edge, %if.end.i.if.end69_crit_edge, %if.end25.if.end69_crit_edge
  %attached_sas_addr = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 2, i32 15
  %att_dev_sas_addr71 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 7
  %114 = ptrtoint ptr %att_dev_sas_addr71 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %att_dev_sas_addr71, align 8
  %116 = ptrtoint ptr %attached_sas_addr to i32
  call void @__asan_storeN_noabort(i32 %116, i32 8)
  store i64 %115, ptr %attached_sas_addr, align 4
  %117 = ptrtoint ptr %chip9 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %chip9, align 4
  %dispatch73 = getelementptr inbounds %struct.mvs_chip_info, ptr %118, i32 0, i32 7
  %119 = ptrtoint ptr %dispatch73 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dispatch73, align 4
  %phy_work_around = getelementptr inbounds %struct.mvs_dispatch, ptr %120, i32 0, i32 35
  %121 = ptrtoint ptr %phy_work_around to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %phy_work_around, align 4
  %tobool74.not = icmp eq ptr %122, null
  br i1 %tobool74.not, label %if.end69.do.end84_crit_edge, label %if.then75

if.end69.do.end84_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84

if.then75:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %122(ptr noundef %mvi, i32 noundef %i) #9
  br label %do.end84

cleanup:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 3
  %123 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %124, ptr noundef nonnull @.str, i32 noundef %i) #12
  %125 = ptrtoint ptr %chip9 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %chip9, align 4
  %dispatch28 = getelementptr inbounds %struct.mvs_chip_info, ptr %126, i32 0, i32 7
  %127 = ptrtoint ptr %dispatch28 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dispatch28, align 4
  %read_port_irq_mask = getelementptr inbounds %struct.mvs_dispatch, ptr %128, i32 0, i32 19
  %129 = ptrtoint ptr %read_port_irq_mask to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %read_port_irq_mask, align 4
  %call29 = tail call i32 %130(ptr noundef %mvi, i32 noundef %i) #9
  %131 = ptrtoint ptr %chip9 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %chip9, align 4
  %dispatch31 = getelementptr inbounds %struct.mvs_chip_info, ptr %132, i32 0, i32 7
  %133 = ptrtoint ptr %dispatch31 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dispatch31, align 4
  %write_port_irq_mask = getelementptr inbounds %struct.mvs_dispatch, ptr %134, i32 0, i32 20
  %135 = ptrtoint ptr %write_port_irq_mask to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %write_port_irq_mask, align 4
  %or = or i32 %call29, 65536
  tail call void %136(ptr noundef %mvi, i32 noundef %i, i32 noundef %or) #9
  %phy_attached32 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 15
  %137 = ptrtoint ptr %phy_attached32 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %phy_attached32, align 8
  %138 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %phy_type, align 8
  %and34 = and i32 %139, -2
  store i32 %and34, ptr %phy_type, align 8
  br label %out_done

do.end84:                                         ; preds = %if.then75, %if.end69.do.end84_crit_edge, %if.end.do.end84_crit_edge
  %id86 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 25
  %140 = ptrtoint ptr %id86 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %id86, align 8
  %chip87 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %142 = ptrtoint ptr %chip87 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %chip87, align 4
  %n_phy88 = getelementptr inbounds %struct.mvs_chip_info, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %n_phy88 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %n_phy88, align 4
  %mul89 = mul i32 %145, %141
  %add90 = add i32 %mul89, %i
  %att_dev_info91 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 8
  %146 = ptrtoint ptr %att_dev_info91 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %att_dev_info91, align 8
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 1070, i32 noundef %add90, i32 noundef %147) #12
  %148 = ptrtoint ptr %id86 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %id86, align 8
  %150 = ptrtoint ptr %chip87 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %chip87, align 4
  %n_phy99 = getelementptr inbounds %struct.mvs_chip_info, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %n_phy99 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %n_phy99, align 4
  %mul100 = mul i32 %153, %149
  %add101 = add i32 %mul100, %i
  %att_dev_sas_addr102 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 7
  %154 = ptrtoint ptr %att_dev_sas_addr102 to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %att_dev_sas_addr102, align 8
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 1072, i32 noundef %add101, i64 noundef %155) #12
  br label %out_done

out_done:                                         ; preds = %do.end84, %cleanup
  br i1 %tobool.not, label %out_done.if.end109_crit_edge, label %if.then105

out_done.if.end109_crit_edge:                     ; preds = %out_done
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.then105:                                       ; preds = %out_done
  call void @__sanitizer_cov_trace_pc() #11
  %chip106 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %156 = ptrtoint ptr %chip106 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %chip106, align 4
  %dispatch107 = getelementptr inbounds %struct.mvs_chip_info, ptr %157, i32 0, i32 7
  %158 = ptrtoint ptr %dispatch107 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dispatch107, align 4
  %write_port_irq_stat = getelementptr inbounds %struct.mvs_dispatch, ptr %159, i32 0, i32 18
  %160 = ptrtoint ptr %write_port_irq_stat to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %write_port_irq_stat, align 4
  %irq_status108 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 12
  %162 = ptrtoint ptr %irq_status108 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %irq_status108, align 8
  tail call void %161(ptr noundef %mvi, i32 noundef %i, i32 noundef %163) #9
  br label %if.end109

if.end109:                                        ; preds = %if.then105, %out_done.if.end109_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvs_is_phy_ready(ptr noundef %mvi, i32 noundef %i) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port2 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 1
  %0 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port2, align 4
  %chip = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.mvs_chip_info, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dispatch, align 4
  %read_phy_ctl = getelementptr inbounds %struct.mvs_dispatch, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %read_phy_ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_phy_ctl, align 4
  %call = tail call i32 %7(ptr noundef %mvi, i32 noundef %i) #9
  %and = and i32 %call, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %land.lhs.true

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %irq_status = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 12
  %8 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_status, align 8
  %and3 = and i32 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.then6, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %phy_attached = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 15
  %10 = ptrtoint ptr %phy_attached to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %phy_attached, align 8
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  %phy_type = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 10
  %11 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phy_type, align 8
  %and10 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then9
  %shl = shl nuw i32 1, %i
  %wide_port_phymap = getelementptr inbounds %struct.mvs_port, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %wide_port_phymap to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %wide_port_phymap, align 1
  %15 = trunc i32 %shl to i8
  %16 = xor i8 %15, -1
  %conv14 = and i8 %14, %16
  store i8 %conv14, ptr %wide_port_phymap, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv14)
  %tobool16.not = icmp eq i8 %conv14, 0
  br i1 %tobool16.not, label %if.then17, label %if.then12.if.end18_crit_edge

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %port_attached = getelementptr inbounds %struct.mvs_port, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %port_attached to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %port_attached, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then12.if.end18_crit_edge
  %18 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port2, align 4
  %wide_port_phymap.i = getelementptr inbounds %struct.mvs_port, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %wide_port_phymap.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %wide_port_phymap.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp.not29.i = icmp eq i8 %21, 0
  br i1 %cmp.not29.i, label %if.end18.if.end25_crit_edge, label %for.body.lr.ph.i

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

for.body.lr.ph.i:                                 ; preds = %if.end18
  %conv.i = zext i8 %21 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %no.031.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %j.030.i = phi i32 [ %conv.i, %for.body.lr.ph.i ], [ %36, %for.inc.i.for.body.i_crit_edge ]
  %and.i = and i32 %j.030.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip, align 4
  %dispatch9.i = getelementptr inbounds %struct.mvs_chip_info, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %dispatch9.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dispatch9.i, align 4
  %write_port_cfg_addr10.i = getelementptr inbounds %struct.mvs_dispatch, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %write_port_cfg_addr10.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_port_cfg_addr10.i, align 4
  tail call void %27(ptr noundef %mvi, i32 noundef %no.031.i, i32 noundef 56) #9
  %28 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip, align 4
  %dispatch12.i = getelementptr inbounds %struct.mvs_chip_info, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %dispatch12.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dispatch12.i, align 4
  %write_port_cfg_data13.i = getelementptr inbounds %struct.mvs_dispatch, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %write_port_cfg_data13.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_port_cfg_data13.i, align 4
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %wide_port_phymap.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %wide_port_phymap.i, align 1
  %conv7.i = zext i8 %35 to i32
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %conv7.sink.i = phi i32 [ %conv7.i, %if.then.i ], [ 0, %for.body.i.for.inc.i_crit_edge ]
  tail call void %33(ptr noundef %mvi, i32 noundef %no.031.i, i32 noundef %conv7.sink.i) #9
  %inc.i = add nuw nsw i32 %no.031.i, 1
  %36 = lshr i32 %j.030.i, 1
  %cmp.not.i = icmp ult i32 %j.030.i, 2
  br i1 %cmp.not.i, label %for.inc.i.if.end25_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.end25_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.else:                                          ; preds = %if.then9
  %and20 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else.if.end25_crit_edge, label %if.then22

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %port_attached23 = getelementptr inbounds %struct.mvs_port, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %port_attached23 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %port_attached23, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.else.if.end25_crit_edge, %for.inc.i.if.end25_crit_edge, %if.end18.if.end25_crit_edge
  %38 = ptrtoint ptr %port2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %port2, align 4
  %phy_attached27 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 15
  %39 = ptrtoint ptr %phy_attached27 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %phy_attached27, align 8
  %40 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %phy_type, align 8
  %and29 = and i32 %41, -4
  store i32 %and29, ptr %phy_type, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end7.cleanup_crit_edge, %if.then6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then6 ], [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.end25 ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvs_port_formed(ptr noundef %sas_phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mvs_port_notify_formed(ptr noundef %sas_phy, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvs_port_notify_formed(ptr noundef readonly %sas_phy, i32 noundef %lock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ha = getelementptr inbounds %struct.asd_sas_phy, ptr %sas_phy, i32 0, i32 23
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 4
  %lldd_phy = getelementptr inbounds %struct.asd_sas_phy, ptr %sas_phy, i32 0, i32 24
  %2 = ptrtoint ptr %lldd_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_phy, align 4
  %port = getelementptr inbounds %struct.asd_sas_phy, ptr %sas_phy, i32 0, i32 22
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %sas_phy2 = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %sas_phy2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sas_phy2, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %i.0 = phi i32 [ %inc, %while.cond.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %9, null
  %cmp = icmp eq ptr %9, %sas_phy
  %or.cond = or i1 %tobool3.not, %cmp
  %inc = add i32 %i.0, 1
  br i1 %or.cond, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %10 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lldd_ha, align 4
  %n_phy = getelementptr inbounds %struct.mvs_prv_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %n_phy to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %n_phy, align 1
  %conv = zext i8 %13 to i32
  %div = sdiv i32 %i.0, %conv
  %arrayidx10 = getelementptr %struct.mvs_prv_info, ptr %11, i32 0, i32 4, i32 %div
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx10, align 4
  %chip = getelementptr inbounds %struct.mvs_info, ptr %15, i32 0, i32 20
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 4
  %n_phy11 = getelementptr inbounds %struct.mvs_chip_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %n_phy11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_phy11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %19)
  %cmp12.not = icmp ult i32 %i.0, %19
  %sub = select i1 %cmp12.not, i32 0, i32 %19
  %sub.pn = sub i32 %i.0, %sub
  %port1.0 = getelementptr %struct.mvs_info, ptr %15, i32 0, i32 24, i32 %sub.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock)
  %tobool22.not = icmp eq i32 %lock, 0
  br i1 %tobool22.not, label %while.end.if.end31_crit_edge, label %do.body24

while.end.if.end31_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

do.body24:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %lock27 = getelementptr inbounds %struct.mvs_info, ptr %15, i32 0, i32 1
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock27) #9
  br label %if.end31

if.end31:                                         ; preds = %do.body24, %while.end.if.end31_crit_edge
  %flags.0 = phi i32 [ %call28, %do.body24 ], [ 0, %while.end.if.end31_crit_edge ]
  %port_attached = getelementptr %struct.mvs_info, ptr %15, i32 0, i32 24, i32 %sub.pn, i32 1
  %20 = ptrtoint ptr %port_attached to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %port_attached, align 4
  %port32 = getelementptr inbounds %struct.mvs_phy, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %port32 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %port1.0, ptr %port32, align 4
  %lldd_port = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 23
  %22 = ptrtoint ptr %lldd_port to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %port1.0, ptr %lldd_port, align 4
  %phy_type = getelementptr inbounds %struct.mvs_phy, ptr %3, i32 0, i32 10
  %23 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %phy_type, align 8
  %and = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.end31.if.end49_crit_edge, label %if.then34

if.end31.if.end49_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then34:                                        ; preds = %if.end31
  %phy_mask = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 20
  %25 = ptrtoint ptr %phy_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phy_mask, align 4
  %conv35 = trunc i32 %26 to i8
  %wide_port_phymap = getelementptr %struct.mvs_info, ptr %15, i32 0, i32 24, i32 %sub.pn, i32 2
  %27 = ptrtoint ptr %wide_port_phymap to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv35, ptr %wide_port_phymap, align 1
  %28 = load i32, ptr %phy_mask, align 4
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.2, i32 noundef 1107, i32 noundef %28) #12
  %id = getelementptr inbounds %struct.asd_sas_phy, ptr %sas_phy, i32 0, i32 6
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 4
  %port2.i = getelementptr %struct.mvs_info, ptr %15, i32 0, i32 23, i32 %30, i32 1
  %31 = ptrtoint ptr %port2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port2.i, align 4
  %wide_port_phymap.i = getelementptr inbounds %struct.mvs_port, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %wide_port_phymap.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %wide_port_phymap.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp.not29.i = icmp eq i8 %34, 0
  br i1 %cmp.not29.i, label %if.then34.mvs_update_wideport.exit_crit_edge, label %for.body.lr.ph.i

if.then34.mvs_update_wideport.exit_crit_edge:     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_update_wideport.exit

for.body.lr.ph.i:                                 ; preds = %if.then34
  %conv.i = zext i8 %34 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %no.031.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %j.030.i = phi i32 [ %conv.i, %for.body.lr.ph.i ], [ %49, %for.inc.i.for.body.i_crit_edge ]
  %and.i = and i32 %j.030.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %35 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip, align 4
  %dispatch9.i = getelementptr inbounds %struct.mvs_chip_info, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %dispatch9.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dispatch9.i, align 4
  %write_port_cfg_addr10.i = getelementptr inbounds %struct.mvs_dispatch, ptr %38, i32 0, i32 13
  %39 = ptrtoint ptr %write_port_cfg_addr10.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_port_cfg_addr10.i, align 4
  tail call void %40(ptr noundef %15, i32 noundef %no.031.i, i32 noundef 56) #9
  %41 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chip, align 4
  %dispatch12.i = getelementptr inbounds %struct.mvs_chip_info, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %dispatch12.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dispatch12.i, align 4
  %write_port_cfg_data13.i = getelementptr inbounds %struct.mvs_dispatch, ptr %44, i32 0, i32 12
  %45 = ptrtoint ptr %write_port_cfg_data13.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_port_cfg_data13.i, align 4
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %wide_port_phymap.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %wide_port_phymap.i, align 1
  %conv7.i = zext i8 %48 to i32
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %conv7.sink.i = phi i32 [ %conv7.i, %if.then.i ], [ 0, %for.body.i.for.inc.i_crit_edge ]
  tail call void %46(ptr noundef %15, i32 noundef %no.031.i, i32 noundef %conv7.sink.i) #9
  %inc.i = add nuw nsw i32 %no.031.i, 1
  %49 = lshr i32 %j.030.i, 1
  %cmp.not.i = icmp ult i32 %j.030.i, 2
  br i1 %cmp.not.i, label %for.inc.i.mvs_update_wideport.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.mvs_update_wideport.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_update_wideport.exit

mvs_update_wideport.exit:                         ; preds = %for.inc.i.mvs_update_wideport.exit_crit_edge, %if.then34.mvs_update_wideport.exit_crit_edge
  %att_dev_info = getelementptr inbounds %struct.mvs_phy, ptr %3, i32 0, i32 8
  %50 = ptrtoint ptr %att_dev_info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %att_dev_info, align 8
  %and42 = and i32 %51, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %mvs_update_wideport.exit.if.end49_crit_edge, label %if.then44

mvs_update_wideport.exit.if.end49_crit_edge:      ; preds = %mvs_update_wideport.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then44:                                        ; preds = %mvs_update_wideport.exit
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.mvs_chip_info, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dispatch, align 4
  %write_port_cfg_addr = getelementptr inbounds %struct.mvs_dispatch, ptr %55, i32 0, i32 13
  %56 = ptrtoint ptr %write_port_cfg_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_port_cfg_addr, align 4
  tail call void %57(ptr noundef %15, i32 noundef %i.0, i32 noundef 28) #9
  %58 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chip, align 4
  %dispatch47 = getelementptr inbounds %struct.mvs_chip_info, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %dispatch47 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dispatch47, align 4
  %write_port_cfg_data = getelementptr inbounds %struct.mvs_dispatch, ptr %61, i32 0, i32 12
  %62 = ptrtoint ptr %write_port_cfg_data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write_port_cfg_data, align 4
  tail call void %63(ptr noundef %15, i32 noundef %i.0, i32 noundef 4) #9
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %mvs_update_wideport.exit.if.end49_crit_edge, %if.end31.if.end49_crit_edge
  br i1 %tobool22.not, label %if.end49.cleanup_crit_edge, label %if.then51

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %lock52 = getelementptr inbounds %struct.mvs_info, ptr %15, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock52, i32 noundef %flags.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %if.end49.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvs_port_deformed(ptr nocapture noundef readonly %sas_phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lldd_phy.i = getelementptr inbounds %struct.asd_sas_phy, ptr %sas_phy, i32 0, i32 24
  %0 = ptrtoint ptr %lldd_phy.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lldd_phy.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %port2.i = getelementptr inbounds %struct.asd_sas_phy, ptr %sas_phy, i32 0, i32 22
  %4 = ptrtoint ptr %port2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port2.i, align 4
  %arrayidx.i = getelementptr %struct.mvs_info, ptr %3, i32 0, i32 23, i32 0
  %cmp.not.i = icmp eq ptr %1, %arrayidx.i
  br i1 %cmp.not.i, label %entry.while.end.i_crit_edge, label %while.body.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %entry
  %arrayidx.1.i = getelementptr %struct.mvs_info, ptr %3, i32 0, i32 23, i32 1
  %cmp.not.1.i = icmp eq ptr %1, %arrayidx.1.i
  br i1 %cmp.not.1.i, label %while.body.i.while.end.i_crit_edge, label %while.body.1.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.1.i:                                   ; preds = %while.body.i
  %arrayidx.2.i = getelementptr %struct.mvs_info, ptr %3, i32 0, i32 23, i32 2
  %cmp.not.2.i = icmp eq ptr %1, %arrayidx.2.i
  br i1 %cmp.not.2.i, label %while.body.1.i.while.end.i_crit_edge, label %while.body.2.i

while.body.1.i.while.end.i_crit_edge:             ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.2.i:                                   ; preds = %while.body.1.i
  %arrayidx.3.i = getelementptr %struct.mvs_info, ptr %3, i32 0, i32 23, i32 3
  %cmp.not.3.i = icmp eq ptr %1, %arrayidx.3.i
  br i1 %cmp.not.3.i, label %while.body.2.i.while.end.i_crit_edge, label %while.body.3.i

while.body.2.i.while.end.i_crit_edge:             ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.3.i:                                   ; preds = %while.body.2.i
  %arrayidx.4.i = getelementptr %struct.mvs_info, ptr %3, i32 0, i32 23, i32 4
  %cmp.not.4.i = icmp eq ptr %1, %arrayidx.4.i
  br i1 %cmp.not.4.i, label %while.body.3.i.while.end.i_crit_edge, label %while.body.4.i

while.body.3.i.while.end.i_crit_edge:             ; preds = %while.body.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.4.i:                                   ; preds = %while.body.3.i
  %arrayidx.5.i = getelementptr %struct.mvs_info, ptr %3, i32 0, i32 23, i32 5
  %cmp.not.5.i = icmp eq ptr %1, %arrayidx.5.i
  br i1 %cmp.not.5.i, label %while.body.4.i.while.end.i_crit_edge, label %while.body.5.i

while.body.4.i.while.end.i_crit_edge:             ; preds = %while.body.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.5.i:                                   ; preds = %while.body.4.i
  %arrayidx.6.i = getelementptr %struct.mvs_info, ptr %3, i32 0, i32 23, i32 6
  %cmp.not.6.i = icmp eq ptr %1, %arrayidx.6.i
  br i1 %cmp.not.6.i, label %while.body.5.i.while.end.i_crit_edge, label %while.body.6.i

while.body.5.i.while.end.i_crit_edge:             ; preds = %while.body.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.6.i:                                   ; preds = %while.body.5.i
  %arrayidx.7.i = getelementptr %struct.mvs_info, ptr %3, i32 0, i32 23, i32 7
  %cmp.not.7.i = icmp eq ptr %1, %arrayidx.7.i
  br i1 %cmp.not.7.i, label %while.body.6.i.while.end.i_crit_edge, label %while.body.6.i.mvs_port_notify_deformed.exit_crit_edge

while.body.6.i.mvs_port_notify_deformed.exit_crit_edge: ; preds = %while.body.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_port_notify_deformed.exit

while.body.6.i.while.end.i_crit_edge:             ; preds = %while.body.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.6.i.while.end.i_crit_edge, %while.body.5.i.while.end.i_crit_edge, %while.body.4.i.while.end.i_crit_edge, %while.body.3.i.while.end.i_crit_edge, %while.body.2.i.while.end.i_crit_edge, %while.body.1.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %phy_no.0.lcssa.i = phi i32 [ 0, %entry.while.end.i_crit_edge ], [ 1, %while.body.i.while.end.i_crit_edge ], [ 2, %while.body.1.i.while.end.i_crit_edge ], [ 3, %while.body.2.i.while.end.i_crit_edge ], [ 4, %while.body.3.i.while.end.i_crit_edge ], [ 5, %while.body.4.i.while.end.i_crit_edge ], [ 6, %while.body.5.i.while.end.i_crit_edge ], [ 7, %while.body.6.i.while.end.i_crit_edge ]
  %dev_list.i = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn3.i = load ptr, ptr %dev_list.i, align 4
  %cmp6.not4.i = icmp eq ptr %.pn3.i, %dev_list.i
  br i1 %cmp6.not4.i, label %while.end.i.mvs_port_notify_deformed.exit_crit_edge, label %while.end.i.for.body.i_crit_edge

while.end.i.for.body.i_crit_edge:                 ; preds = %while.end.i
  br label %for.body.i

while.end.i.mvs_port_notify_deformed.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_port_notify_deformed.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.end.i.for.body.i_crit_edge
  %.pn5.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn3.i, %while.end.i.for.body.i_crit_edge ]
  %dev.0.i = getelementptr i8, ptr %.pn5.i, i32 -84
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  tail call void @mvs_do_release_task(ptr noundef %8, i32 noundef %phy_no.0.lcssa.i, ptr noundef %dev.0.i) #9
  %9 = ptrtoint ptr %.pn5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn5.i, align 4
  %cmp6.not.i = icmp eq ptr %.pn.i, %dev_list.i
  br i1 %cmp6.not.i, label %for.body.i.mvs_port_notify_deformed.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.mvs_port_notify_deformed.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_port_notify_deformed.exit

mvs_port_notify_deformed.exit:                    ; preds = %for.body.i.mvs_port_notify_deformed.exit_crit_edge, %while.end.i.mvs_port_notify_deformed.exit_crit_edge, %while.body.6.i.mvs_port_notify_deformed.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvs_dev_found(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 64
  %port.i.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i.i, align 4
  %ha.i.i = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ha.i.i, align 4
  %sas_port.i.i = getelementptr inbounds %struct.sas_ha_struct, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %sas_port.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sas_port.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool.not47.i.i = icmp eq ptr %9, null
  br i1 %tobool.not47.i.i, label %entry.mvs_find_dev_mvi.exit.i_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.mvs_find_dev_mvi.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_find_dev_mvi.exit.i

while.body.i.i:                                   ; preds = %if.end19.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %10 = phi ptr [ %22, %if.end19.i.i.while.body.i.i_crit_edge ], [ %9, %entry.while.body.i.i_crit_edge ]
  %i.048.i.i = phi i32 [ %inc20.i.i, %if.end19.i.i.while.body.i.i_crit_edge ], [ 0, %entry.while.body.i.i_crit_edge ]
  %cmp.i.i = icmp eq ptr %10, %3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end19.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  %phy_list_lock.i.i = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %phy_list_lock.i.i) #9
  %11 = ptrtoint ptr %sas_port.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sas_port.i.i, align 4
  %arrayidx7.i.i = getelementptr ptr, ptr %12, i32 %i.048.i.i
  %13 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx7.i.i, align 4
  %phy_list.i.i = getelementptr inbounds %struct.asd_sas_port, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %phy_list.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy_list.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 -168
  %phy_list_lock10.i.i = getelementptr inbounds %struct.asd_sas_port, ptr %14, i32 0, i32 17
  tail call void @_raw_spin_unlock(ptr noundef %phy_list_lock10.i.i) #9
  %sas_phy.i.i = getelementptr inbounds %struct.sas_ha_struct, ptr %5, i32 0, i32 17
  %17 = ptrtoint ptr %sas_phy.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sas_phy.i.i, align 4
  br label %while.cond11.i.i

while.cond11.i.i:                                 ; preds = %while.cond11.i.i.while.cond11.i.i_crit_edge, %if.then.i.i
  %j.0.i.i = phi i32 [ 0, %if.then.i.i ], [ %inc.i.i, %while.cond11.i.i.while.cond11.i.i_crit_edge ]
  %arrayidx12.i.i = getelementptr ptr, ptr %18, i32 %j.0.i.i
  %19 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx12.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %20, null
  %cmp17.i.i = icmp eq ptr %20, %add.ptr.i.i
  %or.cond.i.i = select i1 %tobool13.not.i.i, i1 true, i1 %cmp17.i.i
  %inc.i.i = add i32 %j.0.i.i, 1
  br i1 %or.cond.i.i, label %while.cond11.i.i.mvs_find_dev_mvi.exit.i_crit_edge, label %while.cond11.i.i.while.cond11.i.i_crit_edge

while.cond11.i.i.while.cond11.i.i_crit_edge:      ; preds = %while.cond11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond11.i.i

while.cond11.i.i.mvs_find_dev_mvi.exit.i_crit_edge: ; preds = %while.cond11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_find_dev_mvi.exit.i

if.end19.i.i:                                     ; preds = %while.body.i.i
  %inc20.i.i = add i32 %i.048.i.i, 1
  %arrayidx.i.i = getelementptr ptr, ptr %7, i32 %inc20.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end19.i.i.mvs_find_dev_mvi.exit.i_crit_edge, label %if.end19.i.i.while.body.i.i_crit_edge

if.end19.i.i.while.body.i.i_crit_edge:            ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

if.end19.i.i.mvs_find_dev_mvi.exit.i_crit_edge:   ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_find_dev_mvi.exit.i

mvs_find_dev_mvi.exit.i:                          ; preds = %if.end19.i.i.mvs_find_dev_mvi.exit.i_crit_edge, %while.cond11.i.i.mvs_find_dev_mvi.exit.i_crit_edge, %entry.mvs_find_dev_mvi.exit.i_crit_edge
  %j.1.i.i = phi i32 [ 0, %entry.mvs_find_dev_mvi.exit.i_crit_edge ], [ %j.0.i.i, %while.cond11.i.i.mvs_find_dev_mvi.exit.i_crit_edge ], [ 0, %if.end19.i.i.mvs_find_dev_mvi.exit.i_crit_edge ]
  %lldd_ha.i.i = getelementptr inbounds %struct.sas_ha_struct, ptr %5, i32 0, i32 21
  %23 = ptrtoint ptr %lldd_ha.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lldd_ha.i.i, align 4
  %n_phy.i.i = getelementptr inbounds %struct.mvs_prv_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %n_phy.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %n_phy.i.i, align 1
  %conv.i.i = zext i8 %26 to i32
  %div.i.i = udiv i32 %j.1.i.i, %conv.i.i
  %arrayidx24.i.i = getelementptr %struct.mvs_prv_info, ptr %24, i32 0, i32 4, i32 %div.i.i
  %27 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx24.i.i, align 4
  %lock2.i = getelementptr inbounds %struct.mvs_info, ptr %28, i32 0, i32 1
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock2.i) #9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %mvs_find_dev_mvi.exit.i
  %dev.018.i.i = phi i32 [ 0, %mvs_find_dev_mvi.exit.i ], [ %inc.i3.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %dev_type.i.i = getelementptr %struct.mvs_info, ptr %28, i32 0, i32 36, i32 %dev.018.i.i, i32 1
  %29 = ptrtoint ptr %dev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dev_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp1.i.i = icmp eq i32 %30, 0
  br i1 %cmp1.i.i, label %mvs_alloc_dev.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i3.i = add nuw nsw i32 %dev.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i3.i, 1024
  br i1 %exitcond.not.i.i, label %mvs_alloc_dev.exit.thread.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

mvs_alloc_dev.exit.thread.i:                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.2, i32 noundef 1161, i32 noundef 1024) #12
  br label %mvs_dev_found_notify.exit

mvs_alloc_dev.exit.i:                             ; preds = %for.body.i.i
  %arrayidx.i1.i = getelementptr %struct.mvs_info, ptr %28, i32 0, i32 36, i32 %dev.018.i.i
  %device_id.i.i = getelementptr %struct.mvs_info, ptr %28, i32 0, i32 36, i32 %dev.018.i.i, i32 5
  %31 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %dev.018.i.i, ptr %device_id.i.i, align 4
  %tobool8.not.i = icmp eq ptr %arrayidx.i1.i, null
  br i1 %tobool8.not.i, label %mvs_alloc_dev.exit.i.mvs_dev_found_notify.exit_crit_edge, label %if.end10.i

mvs_alloc_dev.exit.i.mvs_dev_found_notify.exit_crit_edge: ; preds = %mvs_alloc_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_dev_found_notify.exit

if.end10.i:                                       ; preds = %mvs_alloc_dev.exit.i
  %lldd_dev.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 20
  %32 = ptrtoint ptr %lldd_dev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx.i1.i, ptr %lldd_dev.i, align 128
  %dev_status.i = getelementptr %struct.mvs_info, ptr %28, i32 0, i32 36, i32 %dev.018.i.i, i32 8
  %33 = ptrtoint ptr %dev_status.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %dev_status.i, align 1
  %dev_type.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 1
  %34 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dev_type.i, align 4
  %36 = ptrtoint ptr %dev_type.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %dev_type.i.i, align 4
  %mvi_info.i = getelementptr %struct.mvs_info, ptr %28, i32 0, i32 36, i32 %dev.018.i.i, i32 2
  %37 = ptrtoint ptr %mvi_info.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %28, ptr %mvi_info.i, align 4
  %sas_device.i = getelementptr %struct.mvs_info, ptr %28, i32 0, i32 36, i32 %dev.018.i.i, i32 3
  %38 = ptrtoint ptr %sas_device.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dev, ptr %sas_device.i, align 4
  %tobool12.not.i = icmp eq ptr %1, null
  br i1 %tobool12.not.i, label %if.end10.i.mvs_dev_found_notify.exit_crit_edge, label %land.lhs.true.i

if.end10.i.mvs_dev_found_notify.exit_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_dev_found_notify.exit

land.lhs.true.i:                                  ; preds = %if.end10.i
  %dev_type13.i = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %dev_type13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dev_type13.i, align 4
  %41 = and i32 %40, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %if.then16.i, label %land.lhs.true.i.mvs_dev_found_notify.exit_crit_edge

land.lhs.true.i.mvs_dev_found_notify.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_dev_found_notify.exit

if.then16.i:                                      ; preds = %land.lhs.true.i
  %43 = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 19
  %num_phys.i = getelementptr inbounds %struct.expander_device, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %num_phys.i, align 2
  %conv17.i = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp1814.not.i = icmp eq i8 %45, 0
  br i1 %cmp1814.not.i, label %if.then16.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then16.i.for.end.i_crit_edge:                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then16.i
  %ex_phy.i = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 19, i32 0, i32 4, i32 8
  %46 = ptrtoint ptr %ex_phy.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ex_phy.i, align 8
  %sas_addr.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %48 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %sas_addr.i, align 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %phy_id.015.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %attached_sas_addr.i = getelementptr %struct.ex_phy, ptr %47, i32 %phy_id.015.i, i32 7
  %50 = ptrtoint ptr %attached_sas_addr.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %attached_sas_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %51, i64 %49)
  %cmp21.i = icmp eq i64 %51, %49
  br i1 %cmp21.i, label %if.then23.i, label %for.inc.i

if.then23.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %attached_phy.i = getelementptr %struct.mvs_info, ptr %28, i32 0, i32 36, i32 %dev.018.i.i, i32 4
  %52 = ptrtoint ptr %attached_phy.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %phy_id.015.i, ptr %attached_phy.i, align 4
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %phy_id.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv17.i
  br i1 %exitcond.not.i, label %for.inc.i.do.end31.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.do.end31.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31.i

for.end.i:                                        ; preds = %if.then23.i, %if.then16.i.for.end.i_crit_edge
  %phy_id.010.i = phi i32 [ %phy_id.015.i, %if.then23.i ], [ 0, %if.then16.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %phy_id.010.i, i32 %conv17.i)
  %cmp26.i = icmp eq i32 %phy_id.010.i, %conv17.i
  br i1 %cmp26.i, label %for.end.i.do.end31.i_crit_edge, label %for.end.i.mvs_dev_found_notify.exit_crit_edge

for.end.i.mvs_dev_found_notify.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_dev_found_notify.exit

for.end.i.do.end31.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31.i

do.end31.i:                                       ; preds = %for.end.i.do.end31.i_crit_edge, %for.inc.i.do.end31.i_crit_edge
  %sas_addr33.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %53 = ptrtoint ptr %sas_addr33.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %sas_addr33.i, align 16
  %sas_addr35.i = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 15
  %55 = ptrtoint ptr %sas_addr35.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %sas_addr35.i, align 16
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.2, i32 noundef 1216, i64 noundef %54, i64 noundef %56) #12
  br label %mvs_dev_found_notify.exit

mvs_dev_found_notify.exit:                        ; preds = %do.end31.i, %for.end.i.mvs_dev_found_notify.exit_crit_edge, %land.lhs.true.i.mvs_dev_found_notify.exit_crit_edge, %if.end10.i.mvs_dev_found_notify.exit_crit_edge, %mvs_alloc_dev.exit.i.mvs_dev_found_notify.exit_crit_edge, %mvs_alloc_dev.exit.thread.i
  %res.1.i = phi i32 [ 0, %land.lhs.true.i.mvs_dev_found_notify.exit_crit_edge ], [ 0, %if.end10.i.mvs_dev_found_notify.exit_crit_edge ], [ -1, %mvs_alloc_dev.exit.i.mvs_dev_found_notify.exit_crit_edge ], [ -1, %do.end31.i ], [ 0, %for.end.i.mvs_dev_found_notify.exit_crit_edge ], [ -1, %mvs_alloc_dev.exit.thread.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock2.i, i32 noundef %call4.i) #9
  ret i32 %res.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvs_dev_gone(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lldd_dev.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %lldd_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lldd_dev.i, align 128
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.2, i32 noundef 1239) #12
  br label %mvs_dev_gone_notify.exit

if.end.i.i:                                       ; preds = %entry
  %mvi_info.i = getelementptr inbounds %struct.mvs_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mvi_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mvi_info.i, align 4
  %lock.i = getelementptr inbounds %struct.mvs_info, ptr %3, i32 0, i32 1
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %device_id.i = getelementptr inbounds %struct.mvs_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device_id.i, align 4
  %dev_type.i = getelementptr inbounds %struct.mvs_device, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_type.i, align 4
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.2, i32 noundef 1248, i32 noundef %5, i32 noundef %7) #12
  tail call void @mvs_release_task(ptr noundef %3, ptr noundef %dev) #9
  %taskfileset.i.i = getelementptr inbounds %struct.mvs_device, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %taskfileset.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %taskfileset.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %9)
  %cmp.i.i = icmp eq i8 %9, 127
  br i1 %cmp.i.i, label %if.end.i.i.mvs_free_reg_set.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i.mvs_free_reg_set.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_free_reg_set.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %chip.i.i = getelementptr inbounds %struct.mvs_info, ptr %3, i32 0, i32 20
  %10 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip.i.i, align 4
  %dispatch.i.i = getelementptr inbounds %struct.mvs_chip_info, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %dispatch.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dispatch.i.i, align 4
  %free_reg_set.i.i = getelementptr inbounds %struct.mvs_dispatch, ptr %13, i32 0, i32 28
  %14 = ptrtoint ptr %free_reg_set.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %free_reg_set.i.i, align 4
  tail call void %15(ptr noundef %3, ptr noundef %taskfileset.i.i) #9
  br label %mvs_free_reg_set.exit.i

mvs_free_reg_set.exit.i:                          ; preds = %if.end3.i.i, %if.end.i.i.mvs_free_reg_set.exit.i_crit_edge
  %16 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %device_id.i, align 4
  %18 = call ptr @memset(ptr %1, i32 0, i32 36)
  store i32 %17, ptr %device_id.i, align 4
  %19 = ptrtoint ptr %taskfileset.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 127, ptr %taskfileset.i.i, align 4
  %20 = ptrtoint ptr %lldd_dev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %lldd_dev.i, align 128
  %sas_device.i = getelementptr inbounds %struct.mvs_device, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %sas_device.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %sas_device.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #9
  br label %mvs_dev_gone_notify.exit

mvs_dev_gone_notify.exit:                         ; preds = %mvs_free_reg_set.exit.i, %do.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvs_lu_reset(ptr noundef %dev, ptr nocapture noundef readonly %lun) local_unnamed_addr #0 align 64 {
entry:
  %tmf_task = alloca %struct.mvs_tmf_task, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmf_task) #9
  %0 = ptrtoint ptr %tmf_task to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 150994943, ptr %tmf_task, align 4, !annotation !227
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 20
  %1 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lldd_dev, align 128
  %mvi_info = getelementptr inbounds %struct.mvs_device, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %mvi_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mvi_info, align 4
  %dev_status = getelementptr inbounds %struct.mvs_device, ptr %2, i32 0, i32 8
  %5 = ptrtoint ptr %dev_status to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %dev_status, align 1
  %call = call fastcc i32 @mvs_debug_issue_ssp_tmf(ptr noundef %dev, ptr noundef %lun, ptr noundef nonnull %tmf_task)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.body1, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.mvs_info, ptr %4, i32 0, i32 1
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  call void @mvs_release_task(ptr noundef %4, ptr noundef %dev)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  br label %do.end10

do.end10:                                         ; preds = %do.body1, %entry.do.end10_crit_edge
  %device_id = getelementptr inbounds %struct.mvs_device, ptr %2, i32 0, i32 5
  %6 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device_id, align 4
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 1404, ptr noundef nonnull @.str.12, i32 noundef %7, i32 noundef %call) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmf_task) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvs_debug_issue_ssp_tmf(ptr noundef %dev, ptr nocapture noundef readonly %lun, ptr noundef %tmf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tproto = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %tproto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tproto, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %lun to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %lun, align 1
  %sas_addr.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %do.end65.i.for.body.i_crit_edge, %if.end
  %retry.011.i = phi i32 [ 0, %if.end ], [ %inc.i, %do.end65.i.for.body.i_crit_edge ]
  %call.i = tail call ptr @sas_alloc_slow_task(i32 noundef 3264) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.i.cleanup_crit_edge, label %if.end.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call.i, align 4
  %5 = ptrtoint ptr %tproto to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tproto, align 8
  %task_proto.i = getelementptr inbounds %struct.sas_task, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %task_proto.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %task_proto.i, align 4
  %8 = getelementptr inbounds %struct.sas_task, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 4
  %ssp_task.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %8, i32 1
  %10 = ptrtoint ptr %ssp_task.sroa.4.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %3, ptr %ssp_task.sroa.4.0..sroa_idx, align 1
  %ssp_task.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %8, i32 9
  %11 = call ptr @memcpy(ptr %ssp_task.sroa.5.0..sroa_idx, ptr getelementptr inbounds ({ i8, [8 x i8], i8, [2 x i8], i32, i8, [3 x i8], ptr }, ptr @__const.mvs_debug_issue_ssp_tmf.ssp_task, i32 0, i32 2), i32 15)
  %task_done.i = getelementptr inbounds %struct.sas_task, ptr %call.i, i32 0, i32 10
  %12 = ptrtoint ptr %task_done.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mvs_task_done, ptr %task_done.i, align 4
  %slow_task.i = getelementptr inbounds %struct.sas_task, ptr %call.i, i32 0, i32 13
  %13 = ptrtoint ptr %slow_task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slow_task.i, align 4
  %function.i = getelementptr inbounds %struct.timer_list, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mvs_tmf_timedout, ptr %function.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %16, 2000
  %17 = load ptr, ptr %slow_task.i, align 4
  %expires.i = getelementptr inbounds %struct.timer_list, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.i, ptr %expires.i, align 4
  %19 = load ptr, ptr %slow_task.i, align 4
  tail call void @add_timer(ptr noundef %19) #9
  %call6.i = tail call fastcc i32 @mvs_task_exec(ptr noundef nonnull %call.i, i32 noundef 1, ptr noundef %tmf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  %20 = ptrtoint ptr %slow_task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %slow_task.i, align 4
  br i1 %tobool7.not.i, label %if.end13.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i = tail call i32 @del_timer(ptr noundef %21) #9
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.2, i32 noundef 1307, i32 noundef %call6.i) #12
  br label %do.end89.i

if.end13.i:                                       ; preds = %if.end.i
  %completion.i = getelementptr inbounds %struct.sas_task_slow, ptr %21, i32 0, i32 1
  tail call void @wait_for_completion(ptr noundef %completion.i) #9
  %task_state_flags.i = getelementptr inbounds %struct.sas_task, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %task_state_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %task_state_flags.i, align 4
  %24 = and i32 %23, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %do.end23.i, label %if.end28.i

do.end23.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %tmf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tmf, align 2
  %conv.i = zext i8 %27 to i32
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.2, i32 noundef 1316, i32 noundef %conv.i) #12
  br label %do.end89.i

if.end28.i:                                       ; preds = %if.end13.i
  %task_status.i = getelementptr inbounds %struct.sas_task, ptr %call.i, i32 0, i32 9
  %28 = ptrtoint ptr %task_status.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %task_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp29.i = icmp eq i32 %29, 0
  br i1 %cmp29.i, label %land.lhs.true.i, label %if.end28.i.do.end65.i_crit_edge

if.end28.i.do.end65.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65.i

land.lhs.true.i:                                  ; preds = %if.end28.i
  %stat.i = getelementptr inbounds %struct.sas_task, ptr %call.i, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stat.i, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %31, label %land.lhs.true.i.do.end65.i_crit_edge [
    i32 0, label %land.lhs.true.i.do.end89.i_crit_edge
    i32 129, label %if.then45.i
    i32 130, label %do.end60.i
  ]

land.lhs.true.i.do.end89.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end89.i

land.lhs.true.i.do.end65.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65.i

if.then45.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %residual.i = getelementptr inbounds %struct.sas_task, ptr %call.i, i32 0, i32 9, i32 4
  %33 = ptrtoint ptr %residual.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %residual.i, align 4
  br label %do.end89.i

do.end60.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call62.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.2, i32 noundef 1337) #12
  br label %do.end89.i

do.end65.i:                                       ; preds = %land.lhs.true.i.do.end65.i_crit_edge, %if.end28.i.do.end65.i_crit_edge
  %35 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %sas_addr.i, align 16
  %stat70.i = getelementptr inbounds %struct.sas_task, ptr %call.i, i32 0, i32 9, i32 1
  %37 = ptrtoint ptr %stat70.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stat70.i, align 4
  %call71.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.2, i32 noundef 1345, i64 noundef %36, i32 noundef %29, i32 noundef %38) #12
  tail call void @sas_free_task(ptr noundef nonnull %call.i) #9
  %inc.i = add nuw nsw i32 %retry.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %do.end65.i.do.end89.i_crit_edge, label %do.end65.i.for.body.i_crit_edge

do.end65.i.for.body.i_crit_edge:                  ; preds = %do.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.end65.i.do.end89.i_crit_edge:                  ; preds = %do.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end89.i

do.end89.i:                                       ; preds = %do.end65.i.do.end89.i_crit_edge, %do.end60.i, %if.then45.i, %land.lhs.true.i.do.end89.i_crit_edge, %do.end23.i, %if.then8.i
  %task.1.i = phi ptr [ %call.i, %if.then8.i ], [ %call.i, %if.then45.i ], [ %call.i, %do.end60.i ], [ %call.i, %do.end23.i ], [ null, %do.end65.i.do.end89.i_crit_edge ], [ %call.i, %land.lhs.true.i.do.end89.i_crit_edge ]
  %res.1.i = phi i32 [ %call6.i, %if.then8.i ], [ %34, %if.then45.i ], [ -90, %do.end60.i ], [ 5, %do.end23.i ], [ 5, %do.end65.i.do.end89.i_crit_edge ], [ %31, %land.lhs.true.i.do.end89.i_crit_edge ]
  tail call void @sas_free_task(ptr noundef %task.1.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end89.i, %for.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %entry.cleanup_crit_edge ], [ %res.1.i, %do.end89.i ], [ -12, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvs_release_task(ptr noundef %mvi, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %phyno = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %phyno) #9
  %lldd_dev.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 20
  %0 = call ptr @memset(ptr %phyno, i32 255, i32 16)
  %1 = ptrtoint ptr %lldd_dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lldd_dev.i, align 128
  %mvi_info.i = getelementptr inbounds %struct.mvs_device, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %mvi_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mvi_info.i, align 4
  %port.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port.i, align 4
  %ha.i = getelementptr inbounds %struct.asd_sas_port, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ha.i, align 4
  %sas_port.i = getelementptr inbounds %struct.sas_ha_struct, ptr %8, i32 0, i32 18
  %9 = ptrtoint ptr %sas_port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sas_port.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool.not68.i = icmp eq ptr %12, null
  br i1 %tobool.not68.i, label %entry.for.end_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

while.body.i:                                     ; preds = %if.end34.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %13 = phi ptr [ %30, %if.end34.i.while.body.i_crit_edge ], [ %12, %entry.while.body.i_crit_edge ]
  %i.069.i = phi i32 [ %inc35.i, %if.end34.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %cmp.i = icmp eq ptr %13, %6
  br i1 %cmp.i, label %if.then.i, label %if.end34.i

if.then.i:                                        ; preds = %while.body.i
  %phy_list_lock.i = getelementptr inbounds %struct.asd_sas_port, ptr %6, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %phy_list_lock.i) #9
  %14 = ptrtoint ptr %sas_port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sas_port.i, align 4
  %arrayidx7.i = getelementptr ptr, ptr %15, i32 %i.069.i
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx7.i, align 4
  %phy_list.i = getelementptr inbounds %struct.asd_sas_port, ptr %17, i32 0, i32 18
  %18 = ptrtoint ptr %phy_list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn70.i = load ptr, ptr %phy_list.i, align 4
  %cmp11.not74.i = icmp eq ptr %.pn70.i, %phy_list.i
  br i1 %cmp11.not74.i, label %mvs_find_dev_phyno.exit.thread10, label %while.cond12.preheader.lr.ph.i

mvs_find_dev_phyno.exit.thread10:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %phy_list_lock33.i12 = getelementptr inbounds %struct.asd_sas_port, ptr %17, i32 0, i32 17
  tail call void @_raw_spin_unlock(ptr noundef %phy_list_lock33.i12) #9
  br label %for.end

while.cond12.preheader.lr.ph.i:                   ; preds = %if.then.i
  %sas_phy.i = getelementptr inbounds %struct.sas_ha_struct, ptr %8, i32 0, i32 17
  %chip.i = getelementptr inbounds %struct.mvs_info, ptr %4, i32 0, i32 20
  %19 = ptrtoint ptr %sas_phy.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sas_phy.i, align 4
  %21 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip.i, align 4
  %n_phy.i = getelementptr inbounds %struct.mvs_chip_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %n_phy.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_phy.i, align 4
  br label %while.cond12.preheader.i

while.cond12.preheader.i:                         ; preds = %while.end.i.while.cond12.preheader.i_crit_edge, %while.cond12.preheader.lr.ph.i
  %.pn77.i = phi ptr [ %.pn70.i, %while.cond12.preheader.lr.ph.i ], [ %.pn.i, %while.end.i.while.cond12.preheader.i_crit_edge ]
  %n.076.i = phi i32 [ 0, %while.cond12.preheader.lr.ph.i ], [ %inc25.i, %while.end.i.while.cond12.preheader.i_crit_edge ]
  %phy.078.i = getelementptr i8, ptr %.pn77.i, i32 -168
  br label %while.cond12.i

while.cond12.i:                                   ; preds = %while.cond12.i.while.cond12.i_crit_edge, %while.cond12.preheader.i
  %j.0.i = phi i32 [ %inc.i, %while.cond12.i.while.cond12.i_crit_edge ], [ 0, %while.cond12.preheader.i ]
  %arrayidx13.i = getelementptr ptr, ptr %20, i32 %j.0.i
  %25 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx13.i, align 4
  %tobool14.not.i = icmp eq ptr %26, null
  %cmp18.i = icmp eq ptr %26, %phy.078.i
  %or.cond.i = select i1 %tobool14.not.i, i1 true, i1 %cmp18.i
  %inc.i = add i32 %j.0.i, 1
  br i1 %or.cond.i, label %while.end.i, label %while.cond12.i.while.cond12.i_crit_edge

while.cond12.i.while.cond12.i_crit_edge:          ; preds = %while.cond12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond12.i

while.end.i:                                      ; preds = %while.cond12.i
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.i, i32 %24)
  %cmp20.not.i = icmp ult i32 %j.0.i, %24
  %sub.i = select i1 %cmp20.not.i, i32 0, i32 %24
  %cond.i = sub i32 %j.0.i, %sub.i
  %arrayidx23.i = getelementptr i32, ptr %phyno, i32 %n.076.i
  %27 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond.i, ptr %arrayidx23.i, align 4
  %inc25.i = add i32 %n.076.i, 1
  %28 = ptrtoint ptr %.pn77.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i = load ptr, ptr %.pn77.i, align 4
  %cmp11.not.i = icmp eq ptr %.pn.i, %phy_list.i
  br i1 %cmp11.not.i, label %mvs_find_dev_phyno.exit, label %while.end.i.while.cond12.preheader.i_crit_edge

while.end.i.while.cond12.preheader.i_crit_edge:   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond12.preheader.i

if.end34.i:                                       ; preds = %while.body.i
  %inc35.i = add i32 %i.069.i, 1
  %arrayidx.i = getelementptr ptr, ptr %10, i32 %inc35.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end34.i.for.end_crit_edge, label %if.end34.i.while.body.i_crit_edge

if.end34.i.while.body.i_crit_edge:                ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end34.i.for.end_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

mvs_find_dev_phyno.exit:                          ; preds = %while.end.i
  %phy_list_lock33.i = getelementptr inbounds %struct.asd_sas_port, ptr %17, i32 0, i32 17
  tail call void @_raw_spin_unlock(ptr noundef %phy_list_lock33.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %n.076.i)
  %cmp5 = icmp ult i32 %n.076.i, 2147483647
  br i1 %cmp5, label %mvs_find_dev_phyno.exit.for.body_crit_edge, label %mvs_find_dev_phyno.exit.for.end_crit_edge

mvs_find_dev_phyno.exit.for.end_crit_edge:        ; preds = %mvs_find_dev_phyno.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

mvs_find_dev_phyno.exit.for.body_crit_edge:       ; preds = %mvs_find_dev_phyno.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %mvs_find_dev_phyno.exit.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %mvs_find_dev_phyno.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr %phyno, i32 0, i32 %i.06
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  tail call void @mvs_do_release_task(ptr noundef %mvi, i32 noundef %32, ptr noundef %dev)
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %i.06, %n.076.i
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %mvs_find_dev_phyno.exit.for.end_crit_edge, %if.end34.i.for.end_crit_edge, %mvs_find_dev_phyno.exit.thread10, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %phyno) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvs_I_T_nexus_reset(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lldd_dev, align 128
  %dev_status = getelementptr inbounds %struct.mvs_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %dev_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dev_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %if.else, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %entry
  %mvi_info = getelementptr inbounds %struct.mvs_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mvi_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mvi_info, align 4
  %6 = ptrtoint ptr %dev_status to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %dev_status, align 1
  %call.i = tail call ptr @sas_get_local_phy(ptr noundef %dev) #9
  %dev_type.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp.i = icmp eq i32 %8, 5
  br i1 %cmp.i, label %if.else.mvs_debug_I_T_nexus_reset.exit_crit_edge, label %lor.rhs.i

if.else.mvs_debug_I_T_nexus_reset.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_debug_I_T_nexus_reset.exit

lor.rhs.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %tproto.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 13
  %9 = ptrtoint ptr %tproto.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tproto.i, align 8
  %and.i = lshr i32 %10, 2
  %and.lobit.i = and i32 %and.i, 1
  %11 = xor i32 %and.lobit.i, 1
  br label %mvs_debug_I_T_nexus_reset.exit

mvs_debug_I_T_nexus_reset.exit:                   ; preds = %lor.rhs.i, %if.else.mvs_debug_I_T_nexus_reset.exit_crit_edge
  %12 = phi i32 [ 0, %if.else.mvs_debug_I_T_nexus_reset.exit_crit_edge ], [ %11, %lor.rhs.i ]
  %call1.i = tail call i32 @sas_phy_reset(ptr noundef %call.i, i32 noundef %12) #9
  tail call void @put_device(ptr noundef %call.i) #9
  tail call void @msleep(i32 noundef 2000) #9
  %device_id = getelementptr inbounds %struct.mvs_device, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %device_id, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 1421, ptr noundef nonnull @.str.13, i32 noundef %14, i32 noundef %call1.i) #12
  %lock = getelementptr inbounds %struct.mvs_info, ptr %5, i32 0, i32 1
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  tail call void @mvs_release_task(ptr noundef %5, ptr noundef %dev)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #9
  br label %cleanup

cleanup:                                          ; preds = %mvs_debug_I_T_nexus_reset.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %mvs_debug_I_T_nexus_reset.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvs_query_task(ptr nocapture noundef readonly %task) local_unnamed_addr #0 align 64 {
entry:
  %lun = alloca %struct.scsi_lun, align 8
  %tmf_task = alloca %struct.mvs_tmf_task, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lun) #9
  %0 = ptrtoint ptr %lun to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %lun, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmf_task) #9
  %1 = ptrtoint ptr %tmf_task to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tmf_task, align 4, !annotation !227
  %lldd_task = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 11
  %2 = ptrtoint ptr %lldd_task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_task, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %task_proto = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 3
  %4 = ptrtoint ptr %task_proto to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %task_proto, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.do.end_crit_edge, label %if.then

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  %uldd_task = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 12
  %6 = ptrtoint ptr %uldd_task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uldd_task, align 4
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %lun3 = getelementptr inbounds %struct.scsi_device, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %lun3 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %lun3, align 8
  call void @int_to_scsilun(i64 noundef %13, ptr noundef nonnull %lun) #9
  %14 = ptrtoint ptr %lldd_task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lldd_task, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then.cleanup11_crit_edge, label %cleanup

if.then.cleanup11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup11

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %slot_tag.i = getelementptr inbounds %struct.mvs_slot_info, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %slot_tag.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slot_tag.i, align 4
  %18 = ptrtoint ptr %tmf_task to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -128, ptr %tmf_task, align 4
  %conv = trunc i32 %17 to i16
  %19 = call i16 @llvm.bswap.i16(i16 %conv)
  %tag_of_task_to_be_managed = getelementptr inbounds %struct.mvs_tmf_task, ptr %tmf_task, i32 0, i32 1
  %20 = ptrtoint ptr %tag_of_task_to_be_managed to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %tag_of_task_to_be_managed, align 2
  %call5 = call fastcc i32 @mvs_debug_issue_ssp_tmf(ptr noundef %9, ptr noundef nonnull %lun, ptr noundef nonnull %tmf_task)
  br label %do.end

do.end:                                           ; preds = %cleanup, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %rc.1 = phi i32 [ %call5, %cleanup ], [ 5, %land.lhs.true.do.end_crit_edge ], [ 5, %entry.do.end_crit_edge ]
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef 1463, ptr noundef nonnull @.str.15, i32 noundef %rc.1) #12
  br label %cleanup11

cleanup11:                                        ; preds = %do.end, %if.then.cleanup11_crit_edge
  %retval.1 = phi i32 [ %rc.1, %do.end ], [ 5, %if.then.cleanup11_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmf_task) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lun) #9
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @int_to_scsilun(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvs_abort_task(ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  %lun = alloca %struct.scsi_lun, align 8
  %tmf_task = alloca %struct.mvs_tmf_task, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lun) #9
  %0 = ptrtoint ptr %lun to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %lun, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmf_task) #9
  %1 = ptrtoint ptr %tmf_task to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tmf_task, align 4, !annotation !227
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 4
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lldd_dev, align 128
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, i32 noundef 1480) #12
  br label %cleanup97

if.end:                                           ; preds = %entry
  %mvi_info = getelementptr inbounds %struct.mvs_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %mvi_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mvi_info, align 4
  %task_state_lock = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 1
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %task_state_lock) #9
  %task_state_flags = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 2
  %8 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %task_state_flags, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %task_state_lock, i32 noundef %call6) #9
  br i1 %tobool11.not, label %if.end14, label %if.end.cleanup97_crit_edge

if.end.cleanup97_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup97

if.end14:                                         ; preds = %if.end
  %dev_status = getelementptr inbounds %struct.mvs_device, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %dev_status to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %dev_status, align 1
  %lldd_task = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 11
  %11 = ptrtoint ptr %lldd_task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lldd_task, align 4
  %tobool16.not = icmp eq ptr %12, null
  br i1 %tobool16.not, label %if.end14.if.else_crit_edge, label %land.lhs.true

if.end14.if.else_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end14
  %task_proto = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 3
  %13 = ptrtoint ptr %task_proto to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %task_proto, align 4
  %and17 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %land.lhs.true.if.else_crit_edge, label %if.then19

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then19:                                        ; preds = %land.lhs.true
  %uldd_task = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 12
  %15 = ptrtoint ptr %uldd_task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %uldd_task, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device, align 4
  %lun20 = getelementptr inbounds %struct.scsi_device, ptr %18, i32 0, i32 18
  %19 = ptrtoint ptr %lun20 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %lun20, align 8
  call void @int_to_scsilun(i64 noundef %20, ptr noundef nonnull %lun) #9
  %21 = ptrtoint ptr %lldd_task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lldd_task, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %cleanup, label %if.end30

if.end30:                                         ; preds = %if.then19
  %slot_tag.i = getelementptr inbounds %struct.mvs_slot_info, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %slot_tag.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %slot_tag.i, align 4
  %25 = ptrtoint ptr %tmf_task to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %tmf_task, align 4
  %conv31 = trunc i32 %24 to i16
  %26 = call i16 @llvm.bswap.i16(i16 %conv31)
  %tag_of_task_to_be_managed = getelementptr inbounds %struct.mvs_tmf_task, ptr %tmf_task, i32 0, i32 1
  %27 = ptrtoint ptr %tag_of_task_to_be_managed to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %tag_of_task_to_be_managed, align 2
  %call32 = call fastcc i32 @mvs_debug_issue_ssp_tmf(ptr noundef %3, ptr noundef nonnull %lun, ptr noundef nonnull %tmf_task)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.end30.do.end93_crit_edge

if.end30.do.end93_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end93

if.then35:                                        ; preds = %if.end30
  %28 = ptrtoint ptr %lldd_task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lldd_task, align 4
  %tobool37.not = icmp eq ptr %29, null
  br i1 %tobool37.not, label %if.then35.cleanup97_crit_edge, label %if.then38

if.then35.cleanup97_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup97

if.then38:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  %slot_info = getelementptr inbounds %struct.mvs_info, ptr %7, i32 0, i32 42
  %sub.ptr.lhs.cast = ptrtoint ptr %29 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %slot_info to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 48
  %lock = getelementptr inbounds %struct.mvs_info, ptr %7, i32 0, i32 1
  %call49 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %call54 = call i32 @mvs_slot_complete(ptr noundef %7, i32 noundef %sub.ptr.div, i32 noundef 1)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call49) #9
  br label %cleanup97

cleanup:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef 1500, ptr noundef nonnull @.str.17) #12
  br label %cleanup97

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end14.if.else_crit_edge
  %task_proto58 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 3
  %30 = ptrtoint ptr %task_proto58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %task_proto58, align 4
  %32 = and i32 %31, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %if.else.do.end93_crit_edge, label %if.then64

if.else.do.end93_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end93

if.then64:                                        ; preds = %if.else
  %dev_type = getelementptr inbounds %struct.domain_device, ptr %3, i32 0, i32 1
  %34 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %35)
  %cmp65 = icmp eq i32 %35, 5
  br i1 %cmp65, label %if.then67, label %if.then64.do.end93_crit_edge

if.then64.do.end93_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end93

if.then67:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  %slot_info70 = getelementptr inbounds %struct.mvs_info, ptr %7, i32 0, i32 42
  %sub.ptr.lhs.cast72 = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast73 = ptrtoint ptr %slot_info70 to i32
  %sub.ptr.sub74 = sub i32 %sub.ptr.lhs.cast72, %sub.ptr.rhs.cast73
  %sub.ptr.div75 = sdiv exact i32 %sub.ptr.sub74, 48
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.2, i32 noundef 1531, ptr noundef %7, ptr noundef %task, ptr noundef %12, i32 noundef %sub.ptr.div75) #12
  %36 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %task_state_flags, align 4
  %or = or i32 %37, 4
  store i32 %or, ptr %task_state_flags, align 4
  tail call fastcc void @mvs_slot_task_free(ptr noundef %7, ptr noundef %task, ptr noundef %12, i32 noundef %sub.ptr.div75)
  br label %cleanup97

do.end93:                                         ; preds = %if.then64.do.end93_crit_edge, %if.else.do.end93_crit_edge, %if.end30.do.end93_crit_edge
  %rc.1158 = phi i32 [ %call32, %if.end30.do.end93_crit_edge ], [ 5, %if.then64.do.end93_crit_edge ], [ 5, %if.else.do.end93_crit_edge ]
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef 1541, ptr noundef nonnull @.str.17, i32 noundef %rc.1158) #12
  br label %cleanup97

cleanup97:                                        ; preds = %do.end93, %if.then67, %cleanup, %if.then38, %if.then35.cleanup97_crit_edge, %if.end.cleanup97_crit_edge, %do.end
  %retval.1 = phi i32 [ 5, %cleanup ], [ 5, %do.end ], [ %rc.1158, %do.end93 ], [ 0, %if.then67 ], [ 0, %if.then35.cleanup97_crit_edge ], [ 0, %if.then38 ], [ 0, %if.end.cleanup97_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmf_task) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lun) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvs_slot_complete(ptr noundef %mvi, i32 noundef %rx_desc, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %rx_desc, 4095
  %arrayidx = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 42, i32 %and
  %0 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 42, i32 %and, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false, !prof !228

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %lldd_task = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %lldd_task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lldd_task, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.rhs, !prof !228

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.rhs:                                          ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %lor.rhs.cleanup_crit_edge, label %if.end, !prof !228

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  %task_status = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 9
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %6, i32 0, i32 20
  %7 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lldd_dev, align 128
  %task_state_lock = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %task_state_lock) #9
  %task_state_flags = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 2
  %9 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %task_state_flags, align 4
  %and8 = and i32 %10, -20
  %or = or i32 %and8, 2
  store i32 %or, ptr %task_state_flags, align 4
  %and11 = and i32 %10, 4
  tail call void @_raw_spin_unlock(ptr noundef %task_state_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool13.not = icmp eq i32 %and11, 0
  %11 = call ptr @memset(ptr %task_status, i32 0, i32 116)
  br i1 %tobool13.not, label %if.end29, label %if.then20, !prof !226

if.then20:                                        ; preds = %if.end
  %stat = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 141, ptr %stat, align 4
  %tobool21.not = icmp eq ptr %8, null
  br i1 %tobool21.not, label %if.then20.if.end25_crit_edge, label %land.lhs.true

if.then20.if.end25_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true:                                    ; preds = %if.then20
  %running_req = getelementptr inbounds %struct.mvs_device, ptr %8, i32 0, i32 6
  %13 = ptrtoint ptr %running_req to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %running_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool22.not = icmp eq i32 %14, 0
  br i1 %tobool22.not, label %land.lhs.true.if.end25_crit_edge, label %if.then23

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i32 %14, -1
  %15 = ptrtoint ptr %running_req to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dec, ptr %running_req, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %land.lhs.true.if.end25_crit_edge, %if.then20.if.end25_crit_edge
  %task_proto = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 3
  %16 = ptrtoint ptr %task_proto to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %task_proto, align 4
  %18 = and i32 %17, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %.not = icmp eq i32 %18, 0
  br i1 %.not, label %if.end25.if.end28_crit_edge, label %if.then27

if.end25.if.end28_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mvs_free_reg_set(ptr noundef %mvi, ptr noundef %8)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25.if.end28_crit_edge
  tail call fastcc void @mvs_slot_task_free(ptr noundef %mvi, ptr noundef nonnull %2, ptr noundef %arrayidx, i32 noundef %and)
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %tobool30.not = icmp eq ptr %8, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool32 = icmp ne i32 %flags, 0
  %spec.select = or i1 %tobool32, %tobool30.not
  br i1 %spec.select, label %if.then40, label %if.end46, !prof !228

if.then40:                                        ; preds = %if.end29
  br i1 %tobool30.not, label %do.end, label %if.then40.if.end44_crit_edge

if.then40.if.end44_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

do.end:                                           ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2, i32 noundef 1748) #12
  br label %if.end44

if.end44:                                         ; preds = %do.end, %if.then40.if.end44_crit_edge
  %stat45 = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %stat45 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 138, ptr %stat45, align 4
  br label %out

if.end46:                                         ; preds = %if.end29
  %and47 = and i32 %rx_desc, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end71_crit_edge, label %land.rhs

if.end46.if.end71_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

land.rhs:                                         ; preds = %if.end46
  %response = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 42, i32 %and, i32 7
  %20 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %response, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool49.not = icmp eq i32 %23, 0
  br i1 %tobool49.not, label %lor.rhs50, label %land.rhs.do.end63_crit_edge

land.rhs.do.end63_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end63

lor.rhs50:                                        ; preds = %land.rhs
  %add.ptr = getelementptr i32, ptr %21, i32 1
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool52.not = icmp eq i32 %25, 0
  br i1 %tobool52.not, label %lor.rhs50.if.end71_crit_edge, label %lor.rhs50.do.end63_crit_edge, !prof !226

lor.rhs50.do.end63_crit_edge:                     ; preds = %lor.rhs50
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end63

lor.rhs50.if.end71_crit_edge:                     ; preds = %lor.rhs50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

do.end63:                                         ; preds = %lor.rhs50.do.end63_crit_edge, %land.rhs.do.end63_crit_edge
  %port = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 42, i32 %and, i32 8
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port, align 4
  %id = getelementptr inbounds %struct.asd_sas_port, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id, align 4
  %30 = ptrtoint ptr %21 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %21, align 1
  %32 = tail call i64 @llvm.bswap.i64(i64 %31) #9
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.2, i32 noundef 1762, i32 noundef %29, i32 noundef %and, i32 noundef %rx_desc, i64 noundef %32) #12
  %33 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %response, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  %add.ptr.i = getelementptr i32, ptr %34, i32 1
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %tobool.not.i = icmp sgt i32 %37, -1
  br i1 %tobool.not.i, label %do.end63.if.end.i_crit_edge, label %if.then.i

do.end63.if.end.i_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #11
  %chip.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %40 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chip.i, align 4
  %dispatch.i = getelementptr inbounds %struct.mvs_chip_info, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %dispatch.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dispatch.i, align 4
  %issue_stop.i = getelementptr inbounds %struct.mvs_dispatch, ptr %43, i32 0, i32 23
  %44 = ptrtoint ptr %issue_stop.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %issue_stop.i, align 4
  tail call void %45(ptr noundef %mvi, i32 noundef 2, i32 noundef 0) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end63.if.end.i_crit_edge
  %chip2.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %46 = ptrtoint ptr %chip2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chip2.i, align 4
  %dispatch3.i = getelementptr inbounds %struct.mvs_chip_info, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %dispatch3.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dispatch3.i, align 4
  %command_active.i = getelementptr inbounds %struct.mvs_dispatch, ptr %49, i32 0, i32 21
  %50 = ptrtoint ptr %command_active.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %command_active.i, align 4
  tail call void %51(ptr noundef %mvi, i32 noundef %and) #9
  %task_proto.i = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 3
  %52 = ptrtoint ptr %task_proto.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %task_proto.i, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %53, label %if.end.i.mvs_slot_err.exit_crit_edge [
    i32 8, label %sw.bb.i
    i32 5, label %if.end.i.sw.bb18.i_crit_edge
    i32 1, label %if.end.i.sw.bb18.i_crit_edge238
    i32 4, label %if.end.i.sw.bb18.i_crit_edge239
  ]

if.end.i.sw.bb18.i_crit_edge239:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18.i

if.end.i.sw.bb18.i_crit_edge238:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18.i

if.end.i.sw.bb18.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18.i

if.end.i.mvs_slot_err.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_slot_err.exit

sw.bb.i:                                          ; preds = %if.end.i
  %and4.i = and i32 %37, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %.mask.i = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool7.not.i = icmp eq i32 %.mask.i, 0
  %or.cond.i = select i1 %tobool5.not.i, i1 %tobool7.not.i, i1 false
  br i1 %or.cond.i, label %sw.bb.i.if.end11.i_crit_edge, label %if.then8.i

sw.bb.i.if.end11.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then8.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %response, align 4
  %add.ptr10.i = getelementptr i8, ptr %56, i32 8
  %datapres.i.i = getelementptr i8, ptr %56, i32 18
  %57 = ptrtoint ptr %datapres.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load.i.i = load i8, ptr %datapres.i.i, align 1
  %bf.clear.i.i = and i8 %bf.load.i.i, -4
  %bf.set.i.i = or i8 %bf.clear.i.i, 2
  store i8 %bf.set.i.i, ptr %datapres.i.i, align 1
  %response_data_len.i.i = getelementptr i8, ptr %56, i32 28
  %58 = ptrtoint ptr %response_data_len.i.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 0, ptr %response_data_len.i.i, align 1
  %sense_data_len.i.i = getelementptr i8, ptr %56, i32 24
  %59 = ptrtoint ptr %sense_data_len.i.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 17, ptr %sense_data_len.i.i, align 1
  %status.i.i = getelementptr i8, ptr %56, i32 19
  %60 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 2, ptr %status.i.i, align 1
  %sense_data.i.i = getelementptr i8, ptr %56, i32 32
  %61 = getelementptr i8, ptr %56, i32 33
  %62 = call ptr @memset(ptr %61, i32 0, i32 16)
  %63 = ptrtoint ptr %sense_data.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 112, ptr %sense_data.i.i, align 1
  %arrayidx31.i.i.i = getelementptr i8, ptr %56, i32 34
  %64 = ptrtoint ptr %arrayidx31.i.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 2, ptr %arrayidx31.i.i.i, align 1
  %arrayidx36.i.i.i = getelementptr i8, ptr %56, i32 39
  %65 = ptrtoint ptr %arrayidx36.i.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 10, ptr %arrayidx36.i.i.i, align 1
  %arrayidx42.i.i.i = getelementptr i8, ptr %56, i32 44
  %66 = ptrtoint ptr %arrayidx42.i.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 4, ptr %arrayidx42.i.i.i, align 1
  %arrayidx48.i.i.i = getelementptr i8, ptr %56, i32 45
  %67 = ptrtoint ptr %arrayidx48.i.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %arrayidx48.i.i.i, align 1
  %dev.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 3
  %68 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i, align 4
  tail call void @sas_ssp_task_response(ptr noundef %69, ptr noundef nonnull %2, ptr noundef %add.ptr10.i) #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %sw.bb.i.if.end11.i_crit_edge
  %stat.0.i = phi i32 [ 2, %if.then8.i ], [ 141, %sw.bb.i.if.end11.i_crit_edge ]
  br i1 %tobool7.not.i, label %if.end11.i.mvs_slot_err.exit_crit_edge, label %do.end.i

if.end11.i.mvs_slot_err.exit_crit_edge:           ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_slot_err.exit

do.end.i:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.2, i32 noundef 1680) #12
  br label %mvs_slot_err.exit

sw.bb18.i:                                        ; preds = %if.end.i.sw.bb18.i_crit_edge, %if.end.i.sw.bb18.i_crit_edge238, %if.end.i.sw.bb18.i_crit_edge239
  %70 = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 4
  %use_ncq.i = getelementptr inbounds %struct.sas_ata_task, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %use_ncq.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load.i = load i8, ptr %use_ncq.i, align 1
  %bf.clear.i = and i8 %bf.load.i, -65
  store i8 %bf.clear.i, ptr %use_ncq.i, align 1
  %72 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %2, align 4
  %lldd_dev.i.i = getelementptr inbounds %struct.domain_device, ptr %73, i32 0, i32 20
  %74 = ptrtoint ptr %lldd_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lldd_dev.i.i, align 128
  %buf.i.i = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 9, i32 3
  %76 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 20, ptr %buf.i.i, align 2
  %ending_fis.i.i = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 9, i32 3, i32 2
  %rx_fis.i.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 15
  %77 = ptrtoint ptr %rx_fis.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rx_fis.i.i, align 8
  %79 = ptrtoint ptr %chip2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %chip2.i, align 4
  %fis_offs.i.i = getelementptr inbounds %struct.mvs_chip_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %fis_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fis_offs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %78, i32 %82
  %taskfileset.i.i = getelementptr inbounds %struct.mvs_device, ptr %75, i32 0, i32 7
  %83 = ptrtoint ptr %taskfileset.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %taskfileset.i.i, align 4
  %conv.i.i = zext i8 %84 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 8
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 64
  %85 = call ptr @memcpy(ptr %ending_fis.i.i, ptr %add.ptr2.i.i, i32 20)
  %buf_valid_size.i.i = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 9, i32 2
  %86 = ptrtoint ptr %buf_valid_size.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 26, ptr %buf_valid_size.i.i, align 4
  br label %mvs_slot_err.exit

mvs_slot_err.exit:                                ; preds = %sw.bb18.i, %do.end.i, %if.end11.i.mvs_slot_err.exit_crit_edge, %if.end.i.mvs_slot_err.exit_crit_edge
  %stat.1.i = phi i32 [ %stat.0.i, %do.end.i ], [ %stat.0.i, %if.end11.i.mvs_slot_err.exit_crit_edge ], [ 2, %if.end.i.mvs_slot_err.exit_crit_edge ], [ 137, %sw.bb18.i ]
  %stat69 = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 9, i32 1
  %87 = ptrtoint ptr %stat69 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %stat.1.i, ptr %stat69, align 4
  %88 = ptrtoint ptr %task_status to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %task_status, align 4
  br label %out

if.end71:                                         ; preds = %lor.rhs50.if.end71_crit_edge, %if.end46.if.end71_crit_edge
  %task_proto72 = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 3
  %89 = ptrtoint ptr %task_proto72 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %task_proto72, align 4
  %91 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %90, label %sw.default [
    i32 8, label %sw.bb
    i32 2, label %sw.bb88
    i32 1, label %if.end71.sw.bb101_crit_edge
    i32 4, label %if.end71.sw.bb101_crit_edge240
    i32 5, label %if.end71.sw.bb101_crit_edge241
  ]

if.end71.sw.bb101_crit_edge241:                   ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb101

if.end71.sw.bb101_crit_edge240:                   ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb101

if.end71.sw.bb101_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb101

sw.bb:                                            ; preds = %if.end71
  %and73 = and i32 %rx_desc, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.else, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %and78 = and i32 %rx_desc, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.else84, label %if.then80

if.then80:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %response81 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 42, i32 %and, i32 7
  %92 = ptrtoint ptr %response81 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %response81, align 4
  %add.ptr82 = getelementptr i8, ptr %93, i32 8
  %dev83 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 3
  %94 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev83, align 4
  tail call void @sas_ssp_task_response(ptr noundef %95, ptr noundef nonnull %2, ptr noundef %add.ptr82) #9
  br label %sw.epilog

if.else84:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %stat85 = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 9, i32 1
  %96 = ptrtoint ptr %stat85 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 2, ptr %stat85, align 4
  br label %sw.epilog

sw.bb88:                                          ; preds = %if.end71
  %smp_resp = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 4, i32 0, i32 1
  %97 = ptrtoint ptr %smp_resp to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %smp_resp, align 4
  %and.i.i = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !226

do.body2.i:                                       ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !229
  unreachable

sg_page.exit:                                     ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = and i32 %98, -4
  %99 = inttoptr i32 %and.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %100 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %100, 512
  %101 = tail call i32 @llvm.read_register.i32(metadata !216) #9
  %and.i.i.i.i.i = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %104, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !230
  %105 = tail call i32 @llvm.read_register.i32(metadata !216) #9
  %and.i.i.i1.i.i = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 213
  %109 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %110, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !231
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %99, i32 noundef %or.i) #9
  %offset = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 4, i32 0, i32 1, i32 1
  %111 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %offset, align 4
  %add.ptr92 = getelementptr i8, ptr %call.i.i, i32 %112
  %response93 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 42, i32 %and, i32 7
  %113 = ptrtoint ptr %response93 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %response93, align 4
  %add.ptr94 = getelementptr i8, ptr %114, i32 8
  %dma_length = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 4, i32 0, i32 1, i32 4
  %115 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dma_length, align 4
  %117 = call ptr @memcpy(ptr %add.ptr92, ptr %add.ptr94, i32 %116)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !232
  %118 = tail call i32 @llvm.read_register.i32(metadata !216) #9
  %and.i.i.i1.i = and i32 %118, -16384
  %119 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %121, i32 0, i32 213
  %122 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %123, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !233
  %124 = tail call i32 @llvm.read_register.i32(metadata !216) #9
  %and.i.i.i.i = and i32 %124, -16384
  %125 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %127, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %sw.epilog

sw.bb101:                                         ; preds = %if.end71.sw.bb101_crit_edge, %if.end71.sw.bb101_crit_edge240, %if.end71.sw.bb101_crit_edge241
  %128 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %2, align 4
  %lldd_dev.i = getelementptr inbounds %struct.domain_device, ptr %129, i32 0, i32 20
  %130 = ptrtoint ptr %lldd_dev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %lldd_dev.i, align 128
  %buf.i = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 9, i32 3
  %132 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 20, ptr %buf.i, align 2
  %ending_fis.i = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 9, i32 3, i32 2
  %rx_fis.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 15
  %133 = ptrtoint ptr %rx_fis.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rx_fis.i, align 8
  %chip.i228 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %135 = ptrtoint ptr %chip.i228 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %chip.i228, align 4
  %fis_offs.i = getelementptr inbounds %struct.mvs_chip_info, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %fis_offs.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %fis_offs.i, align 4
  %add.ptr.i229 = getelementptr i8, ptr %134, i32 %138
  %taskfileset.i = getelementptr inbounds %struct.mvs_device, ptr %131, i32 0, i32 7
  %139 = ptrtoint ptr %taskfileset.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %taskfileset.i, align 4
  %conv.i = zext i8 %140 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 8
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i229, i32 %mul.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1.i, i32 64
  %141 = call ptr @memcpy(ptr %ending_fis.i, ptr %add.ptr2.i, i32 20)
  %buf_valid_size.i = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 9, i32 2
  %142 = ptrtoint ptr %buf_valid_size.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 26, ptr %buf_valid_size.i, align 4
  %stat103 = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 9, i32 1
  %143 = ptrtoint ptr %stat103 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %stat103, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  %stat104 = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 9, i32 1
  %144 = ptrtoint ptr %stat104 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 2, ptr %stat104, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb101, %sg_page.exit, %if.else84, %if.then80, %sw.bb.sw.epilog_crit_edge
  %port105 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 42, i32 %and, i32 8
  %145 = ptrtoint ptr %port105 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %port105, align 4
  %port_attached = getelementptr inbounds %struct.mvs_port, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %port_attached to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %port_attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool106.not = icmp eq i8 %148, 0
  br i1 %tobool106.not, label %do.end110, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end110:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %id114 = getelementptr inbounds %struct.asd_sas_port, ptr %146, i32 0, i32 10
  %149 = ptrtoint ptr %id114 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %id114, align 4
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.2, i32 noundef 1807, i32 noundef %150) #12
  %stat116 = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 9, i32 1
  %151 = ptrtoint ptr %stat116 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 138, ptr %stat116, align 4
  br label %out

out:                                              ; preds = %do.end110, %sw.epilog.out_crit_edge, %mvs_slot_err.exit, %if.end44
  br i1 %tobool30.not, label %out.if.end133_crit_edge, label %land.lhs.true119

out.if.end133_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

land.lhs.true119:                                 ; preds = %out
  %running_req120 = getelementptr inbounds %struct.mvs_device, ptr %8, i32 0, i32 6
  %152 = ptrtoint ptr %running_req120 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %running_req120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool121.not = icmp eq i32 %153, 0
  br i1 %tobool121.not, label %land.lhs.true119.if.end133_crit_edge, label %if.then122

land.lhs.true119.if.end133_crit_edge:             ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

if.then122:                                       ; preds = %land.lhs.true119
  %dec124 = add i32 %153, -1
  %154 = ptrtoint ptr %running_req120 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %dec124, ptr %running_req120, align 4
  %task_proto125 = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 3
  %155 = ptrtoint ptr %task_proto125 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %task_proto125, align 4
  %157 = and i32 %156, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %158 = icmp ne i32 %157, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec124)
  %tobool130.not = icmp eq i32 %dec124, 0
  %or.cond = select i1 %158, i1 %tobool130.not, i1 false
  br i1 %or.cond, label %if.end.i235, label %if.then122.if.end133_crit_edge

if.then122.if.end133_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

if.end.i235:                                      ; preds = %if.then122
  %taskfileset.i234 = getelementptr inbounds %struct.mvs_device, ptr %8, i32 0, i32 7
  %159 = ptrtoint ptr %taskfileset.i234 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %taskfileset.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %160)
  %cmp.i = icmp eq i8 %160, 127
  br i1 %cmp.i, label %if.end.i235.if.end133_crit_edge, label %if.end3.i

if.end.i235.if.end133_crit_edge:                  ; preds = %if.end.i235
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

if.end3.i:                                        ; preds = %if.end.i235
  call void @__sanitizer_cov_trace_pc() #11
  %chip.i236 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %161 = ptrtoint ptr %chip.i236 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %chip.i236, align 4
  %dispatch.i237 = getelementptr inbounds %struct.mvs_chip_info, ptr %162, i32 0, i32 7
  %163 = ptrtoint ptr %dispatch.i237 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dispatch.i237, align 4
  %free_reg_set.i = getelementptr inbounds %struct.mvs_dispatch, ptr %164, i32 0, i32 28
  %165 = ptrtoint ptr %free_reg_set.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %free_reg_set.i, align 4
  tail call void %166(ptr noundef %mvi, ptr noundef %taskfileset.i234) #9
  br label %if.end133

if.end133:                                        ; preds = %if.end3.i, %if.end.i235.if.end133_crit_edge, %if.then122.if.end133_crit_edge, %land.lhs.true119.if.end133_crit_edge, %out.if.end133_crit_edge
  tail call fastcc void @mvs_slot_task_free(ptr noundef %mvi, ptr noundef nonnull %2, ptr noundef %arrayidx, i32 noundef %and)
  %stat134 = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 9, i32 1
  %167 = ptrtoint ptr %stat134 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %stat134, align 4
  %lock = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %task_done = getelementptr inbounds %struct.sas_task, ptr %2, i32 0, i32 10
  %169 = ptrtoint ptr %task_done to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %task_done, align 4
  %tobool135.not = icmp eq ptr %170, null
  br i1 %tobool135.not, label %if.end133.if.end138_crit_edge, label %if.then136

if.end133.if.end138_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

if.then136:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %170(ptr noundef nonnull %2) #9
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %if.end133.if.end138_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end138, %if.end28, %lor.rhs.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end28 ], [ %168, %if.end138 ], [ -1, %lor.rhs.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvs_slot_task_free(ptr nocapture noundef readonly %mvi, ptr noundef %task, ptr noundef %slot, i32 noundef %slot_idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %slot, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.mvs_slot_info, ptr %slot, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end3:                                          ; preds = %if.end
  %task_proto = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 3
  %3 = ptrtoint ptr %task_proto to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %task_proto, align 4
  %5 = and i32 %4, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %if.then5, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then5:                                         ; preds = %if.end3
  %n_elem = getelementptr inbounds %struct.mvs_slot_info, ptr %slot, i32 0, i32 2
  %6 = ptrtoint ptr %n_elem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_elem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %if.then5.if.end10thread-pre-split_crit_edge, label %if.then7

if.then5.if.end10thread-pre-split_crit_edge:      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10thread-pre-split

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %scatter = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 5
  %10 = ptrtoint ptr %scatter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scatter, align 4
  %data_dir = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 8
  %12 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %data_dir, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %conv = zext i8 %bf.lshr to i32
  tail call void @dma_unmap_sg_attrs(ptr noundef %9, ptr noundef %11, i32 noundef %7, i32 noundef %conv, i32 noundef 0) #9
  br label %if.end10thread-pre-split

if.end10thread-pre-split:                         ; preds = %if.then7, %if.then5.if.end10thread-pre-split_crit_edge
  %13 = ptrtoint ptr %task_proto to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %task_proto, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10thread-pre-split, %if.end3.if.end10_crit_edge
  %14 = phi i32 [ %.pr, %if.end10thread-pre-split ], [ %4, %if.end3.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cond = icmp eq i32 %14, 2
  br i1 %cond, label %sw.bb, label %if.end10.sw.epilog_crit_edge

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %dev12 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 3
  %15 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev12, align 4
  %17 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 4
  %smp_resp = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 4, i32 0, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %16, ptr noundef %smp_resp, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %18 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev12, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %19, ptr noundef %17, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end10.sw.epilog_crit_edge
  %buf = getelementptr inbounds %struct.mvs_slot_info, ptr %slot, i32 0, i32 5
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf, align 4
  %tobool15.not = icmp eq ptr %21, null
  br i1 %tobool15.not, label %sw.epilog.if.end19_crit_edge, label %if.then16

sw.epilog.if.end19_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then16:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %dma_pool = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 41
  %22 = ptrtoint ptr %dma_pool to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_pool, align 8
  %buf_dma = getelementptr inbounds %struct.mvs_slot_info, ptr %slot, i32 0, i32 6
  %24 = ptrtoint ptr %buf_dma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf_dma, align 4
  tail call void @dma_pool_free(ptr noundef %23, ptr noundef nonnull %21, i32 noundef %25) #9
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %buf, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %sw.epilog.if.end19_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %slot) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end19.list_del_init.exit_crit_edge

if.end19.list_del_init.exit_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %slot, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %slot, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end19.list_del_init.exit_crit_edge
  %33 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %slot, ptr %slot, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %slot, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %slot, ptr %prev.i3.i, align 4
  %lldd_task = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 11
  %35 = ptrtoint ptr %lldd_task to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %lldd_task, align 4
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %0, align 4
  %port = getelementptr inbounds %struct.mvs_slot_info, ptr %slot, i32 0, i32 8
  %37 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %port, align 4
  %slot_tag = getelementptr inbounds %struct.mvs_slot_info, ptr %slot, i32 0, i32 4
  %38 = ptrtoint ptr %slot_tag to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %slot_tag, align 4
  %and.i = and i32 %slot_idx, 4095
  %tags.i.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 22
  %39 = ptrtoint ptr %tags.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tags.i.i, align 4
  tail call void @_clear_bit(i32 noundef %and.i, ptr noundef %40) #9
  br label %return

return:                                           ; preds = %list_del_init.exit, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvs_abort_task_set(ptr noundef %dev, ptr nocapture noundef readonly %lun) local_unnamed_addr #0 align 64 {
entry:
  %tmf_task = alloca %struct.mvs_tmf_task, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmf_task) #9
  %0 = ptrtoint ptr %tmf_task to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 50331647, ptr %tmf_task, align 4, !annotation !227
  %call = call fastcc i32 @mvs_debug_issue_ssp_tmf(ptr noundef %dev, ptr noundef %lun, ptr noundef nonnull %tmf_task)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmf_task) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvs_clear_aca(ptr noundef %dev, ptr nocapture noundef readonly %lun) local_unnamed_addr #0 align 64 {
entry:
  %tmf_task = alloca %struct.mvs_tmf_task, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmf_task) #9
  %0 = ptrtoint ptr %tmf_task to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1090519039, ptr %tmf_task, align 4, !annotation !227
  %call = call fastcc i32 @mvs_debug_issue_ssp_tmf(ptr noundef %dev, ptr noundef %lun, ptr noundef nonnull %tmf_task)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmf_task) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvs_clear_task_set(ptr noundef %dev, ptr nocapture noundef readonly %lun) local_unnamed_addr #0 align 64 {
entry:
  %tmf_task = alloca %struct.mvs_tmf_task, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmf_task) #9
  %0 = ptrtoint ptr %tmf_task to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 83886079, ptr %tmf_task, align 4, !annotation !227
  %call = call fastcc i32 @mvs_debug_issue_ssp_tmf(ptr noundef %dev, ptr noundef %lun, ptr noundef nonnull %tmf_task)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmf_task) #9
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvs_free_reg_set(ptr noundef %mvi, ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.2, i32 noundef 142) #12
  br label %return

if.end:                                           ; preds = %entry
  %taskfileset = getelementptr inbounds %struct.mvs_device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %taskfileset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %taskfileset, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %1)
  %cmp = icmp eq i8 %1, 127
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %chip = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.mvs_chip_info, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dispatch, align 4
  %free_reg_set = getelementptr inbounds %struct.mvs_dispatch, ptr %5, i32 0, i32 28
  %6 = ptrtoint ptr %free_reg_set to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %free_reg_set, align 4
  tail call void %7(ptr noundef %mvi, ptr noundef %taskfileset) #9
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_ssp_task_response(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvs_do_release_task(ptr noundef %mvi, i32 noundef %phy_no, ptr noundef readnone %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port2 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %phy_no, i32 1
  %0 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup23_crit_edge, label %if.end

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup23

if.end:                                           ; preds = %entry
  %call = tail call i32 @mvs_int_rx(ptr noundef %mvi, i1 noundef zeroext false)
  %list = getelementptr inbounds %struct.mvs_port, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %cmp.not47 = icmp eq ptr %3, %list
  br i1 %cmp.not47, label %if.end.cleanup23_crit_edge, label %for.body.lr.ph

if.end.cleanup23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup23

for.body.lr.ph:                                   ; preds = %if.end
  %slot_info = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 42
  %sub.ptr.rhs.cast = ptrtoint ptr %slot_info to i32
  %tobool10.not = icmp eq ptr %dev, null
  %chip = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %slot.048 = phi ptr [ %3, %for.body.lr.ph ], [ %slot2.049, %cleanup.for.body_crit_edge ]
  %4 = ptrtoint ptr %slot.048 to i32
  call void @__asan_load4_noabort(i32 %4)
  %slot2.049 = load ptr, ptr %slot.048, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %slot.048 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 48
  %5 = getelementptr inbounds %struct.mvs_slot_info, ptr %slot.048, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  br i1 %tobool10.not, label %for.body.do.end_crit_edge, label %land.lhs.true

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %for.body
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %cmp12.not = icmp eq ptr %9, %dev
  br i1 %cmp12.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %for.body.do.end_crit_edge
  %slot_tag = getelementptr inbounds %struct.mvs_slot_info, ptr %slot.048, i32 0, i32 4
  %10 = ptrtoint ptr %slot_tag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slot_tag, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef 1856, i32 noundef %sub.ptr.div, i32 noundef %11, ptr noundef %7) #12
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.mvs_chip_info, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dispatch, align 4
  %command_active = getelementptr inbounds %struct.mvs_dispatch, ptr %15, i32 0, i32 21
  %16 = ptrtoint ptr %command_active to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %command_active, align 4
  tail call void %17(ptr noundef %mvi, i32 noundef %sub.ptr.div) #9
  %call17 = tail call i32 @mvs_slot_complete(ptr noundef %mvi, i32 noundef %sub.ptr.div, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %land.lhs.true.cleanup_crit_edge
  %cmp.not = icmp eq ptr %slot2.049, %list
  br i1 %cmp.not, label %cleanup.cleanup23_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.cleanup23_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup23

cleanup23:                                        ; preds = %cleanup.cleanup23_crit_edge, %if.end.cleanup23_crit_edge, %entry.cleanup23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvs_int_rx(ptr noundef %mvi, i1 noundef zeroext %self_clear) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_cons = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 14
  %0 = ptrtoint ptr %rx_cons to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_cons, align 4
  %rx = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 12
  %2 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %rx_cons to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rx_cons, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15794176, i32 %5)
  %cmp = icmp eq i32 %5, -15794176
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %1)
  %cmp4 = icmp eq i32 %6, %1
  br i1 %cmp4, label %if.then6, label %if.end.if.end8_crit_edge, !prof !228

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %chip = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.mvs_chip_info, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dispatch, align 4
  %rx_update = getelementptr inbounds %struct.mvs_dispatch, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %rx_update to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_update, align 4
  %call = tail call i32 %13(ptr noundef %mvi) #9
  %and = and i32 %call, 4095
  %14 = ptrtoint ptr %rx_cons to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %rx_cons, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %15 = ptrtoint ptr %rx_cons to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_cons, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %1)
  %cmp10 = icmp eq i32 %16, %1
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %while.cond.preheader

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end8
  %17 = ptrtoint ptr %rx_cons to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_cons, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %1)
  %cmp14.not87 = icmp eq i32 %18, %1
  br i1 %cmp14.not87, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %tags.i.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 22
  br label %while.body

while.body:                                       ; preds = %if.end47.while.body_crit_edge, %while.body.lr.ph
  %attn.0.off089 = phi i1 [ false, %while.body.lr.ph ], [ %attn.1.off0, %if.end47.while.body_crit_edge ]
  %rx_prod_idx.088 = phi i32 [ %1, %while.body.lr.ph ], [ %and15, %if.end47.while.body_crit_edge ]
  %add = add i32 %rx_prod_idx.088, 1
  %and15 = and i32 %add, 1023
  %19 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx, align 4
  %add17 = add nuw nsw i32 %and15, 1
  %arrayidx18 = getelementptr i32, ptr %20, i32 %add17
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx18, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %and19 = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %while.body.if.end29_crit_edge, label %if.then27, !prof !228

while.body.if.end29_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then27:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = tail call i32 @mvs_slot_complete(ptr noundef %mvi, i32 noundef %23, i32 noundef 0)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %while.body.if.end29_crit_edge
  %and30 = and i32 %23, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.else, label %if.end29.if.end47_crit_edge

if.end29.if.end47_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.else:                                          ; preds = %if.end29
  %and33 = and i32 %23, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else41, label %if.then35

if.then35:                                        ; preds = %if.else
  br i1 %tobool20.not, label %if.then38, label %if.then35.if.end47_crit_edge

if.then35.if.end47_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then38:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  %call39 = tail call i32 @mvs_slot_complete(ptr noundef %mvi, i32 noundef %23, i32 noundef 0)
  br label %if.end47

if.else41:                                        ; preds = %if.else
  %and42 = and i32 %23, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.else41.if.end47_crit_edge, label %if.then44

if.else41.if.end47_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then44:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = and i32 %23, 4095
  %24 = ptrtoint ptr %tags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tags.i.i, align 4
  tail call void @_clear_bit(i32 noundef %and.i, ptr noundef %25) #9
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.else41.if.end47_crit_edge, %if.then38, %if.then35.if.end47_crit_edge, %if.end29.if.end47_crit_edge
  %attn.1.off0 = phi i1 [ %attn.0.off089, %if.then35.if.end47_crit_edge ], [ %attn.0.off089, %if.then38 ], [ %attn.0.off089, %if.then44 ], [ %attn.0.off089, %if.else41.if.end47_crit_edge ], [ true, %if.end29.if.end47_crit_edge ]
  %26 = ptrtoint ptr %rx_cons to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_cons, align 4
  %cmp14.not = icmp eq i32 %27, %and15
  br i1 %cmp14.not, label %while.end, label %if.end47.while.body_crit_edge

if.end47.while.body_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end47
  %brmerge.demorgan = and i1 %attn.1.off0, %self_clear
  br i1 %brmerge.demorgan, label %if.then50, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then50:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %chip51 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %28 = ptrtoint ptr %chip51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip51, align 4
  %dispatch52 = getelementptr inbounds %struct.mvs_chip_info, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %dispatch52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dispatch52, align 4
  %int_full = getelementptr inbounds %struct.mvs_dispatch, ptr %31, i32 0, i32 26
  %32 = ptrtoint ptr %int_full to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %int_full, align 4
  tail call void %33(ptr noundef %mvi) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %while.end.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvs_int_port(ptr noundef %mvi, i32 noundef %phy_no, i32 noundef %events) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.mvs_chip_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dispatch, align 4
  %read_port_irq_stat = getelementptr inbounds %struct.mvs_dispatch, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %read_port_irq_stat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_port_irq_stat, align 4
  %call = tail call i32 %5(ptr noundef %mvi, i32 noundef %phy_no) #9
  %irq_status = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %phy_no, i32 12
  %6 = ptrtoint ptr %irq_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %irq_status, align 8
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %dispatch3 = getelementptr inbounds %struct.mvs_chip_info, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %dispatch3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dispatch3, align 4
  %write_port_irq_stat = getelementptr inbounds %struct.mvs_dispatch, ptr %10, i32 0, i32 18
  %11 = ptrtoint ptr %write_port_irq_stat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_port_irq_stat, align 4
  tail call void %12(ptr noundef %mvi, i32 noundef %phy_no, i32 noundef %call) #9
  %id = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 25
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 8
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  %n_phy = getelementptr inbounds %struct.mvs_chip_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_phy, align 4
  %mul = mul i32 %18, %14
  %add = add i32 %mul, %phy_no
  %dispatch8 = getelementptr inbounds %struct.mvs_chip_info, ptr %16, i32 0, i32 7
  %19 = ptrtoint ptr %dispatch8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dispatch8, align 4
  %read_phy_ctl = getelementptr inbounds %struct.mvs_dispatch, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %read_phy_ctl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_phy_ctl, align 4
  %call9 = tail call i32 %22(ptr noundef %mvi, i32 noundef %phy_no) #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.2, i32 noundef 1964, i32 noundef %add, i32 noundef %call9) #12
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 8
  %25 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip, align 4
  %n_phy17 = getelementptr inbounds %struct.mvs_chip_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %n_phy17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n_phy17, align 4
  %mul18 = mul i32 %28, %24
  %add19 = add i32 %mul18, %phy_no
  %29 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq_status, align 8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.2, i32 noundef 1966, i32 noundef %add19, i32 noundef %30) #12
  %31 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq_status, align 8
  %and = and i32 %32, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end25

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end25:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id, align 8
  %35 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip, align 4
  %n_phy29 = getelementptr inbounds %struct.mvs_chip_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %n_phy29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n_phy29, align 4
  %mul30 = mul i32 %38, %34
  %add31 = add i32 %mul30, %phy_no
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.2, i32 noundef 1975, i32 noundef %add31) #12
  br label %if.end

if.end:                                           ; preds = %do.end25, %entry.if.end_crit_edge
  %39 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq_status, align 8
  %and34 = and i32 %40, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end.if.end63_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.if.end63_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %__ms.0261 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 500, %if.end.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0261, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #9
  %tobool37.not = icmp eq i32 %dec, 0
  br i1 %tobool37.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body
  %phy_event = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %phy_no, i32 18
  %42 = ptrtoint ptr %phy_event to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %phy_event, align 4
  %and38 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then40, label %while.end.if.end63_crit_edge

while.end.if.end63_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then40:                                        ; preds = %while.end
  %phy_type = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %phy_no, i32 10
  %44 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %phy_type, align 8
  %port2.i = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %phy_no, i32 1
  %46 = ptrtoint ptr %port2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %port2.i, align 4
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %if.then40.mvs_do_release_task.exit_crit_edge, label %if.end.i

if.then40.mvs_do_release_task.exit_crit_edge:     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_do_release_task.exit

if.end.i:                                         ; preds = %if.then40
  %call.i = tail call i32 @mvs_int_rx(ptr noundef %mvi, i1 noundef zeroext false) #9
  %list.i = getelementptr inbounds %struct.mvs_port, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %list.i, align 4
  %cmp.not47.i = icmp eq ptr %49, %list.i
  br i1 %cmp.not47.i, label %if.end.i.mvs_do_release_task.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.mvs_do_release_task.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_do_release_task.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %slot_info.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 42
  %sub.ptr.rhs.cast.i = ptrtoint ptr %slot_info.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %slot.048.i = phi ptr [ %49, %for.body.lr.ph.i ], [ %slot2.049.i, %for.body.i.for.body.i_crit_edge ]
  %50 = ptrtoint ptr %slot.048.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %slot2.049.i = load ptr, ptr %slot.048.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %slot.048.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 48
  %51 = getelementptr inbounds %struct.mvs_slot_info, ptr %slot.048.i, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %slot_tag.i = getelementptr inbounds %struct.mvs_slot_info, ptr %slot.048.i, i32 0, i32 4
  %54 = ptrtoint ptr %slot_tag.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %slot_tag.i, align 4
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef 1856, i32 noundef %sub.ptr.div.i, i32 noundef %55, ptr noundef %53) #12
  %56 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chip, align 4
  %dispatch.i = getelementptr inbounds %struct.mvs_chip_info, ptr %57, i32 0, i32 7
  %58 = ptrtoint ptr %dispatch.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dispatch.i, align 4
  %command_active.i = getelementptr inbounds %struct.mvs_dispatch, ptr %59, i32 0, i32 21
  %60 = ptrtoint ptr %command_active.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %command_active.i, align 4
  tail call void %61(ptr noundef %mvi, i32 noundef %sub.ptr.div.i) #9
  %call17.i = tail call i32 @mvs_slot_complete(ptr noundef %mvi, i32 noundef %sub.ptr.div.i, i32 noundef 1) #9
  %cmp.not.i = icmp eq ptr %slot2.049.i, %list.i
  br i1 %cmp.not.i, label %for.body.i.mvs_do_release_task.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.mvs_do_release_task.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_do_release_task.exit

mvs_do_release_task.exit:                         ; preds = %for.body.i.mvs_do_release_task.exit_crit_edge, %if.end.i.mvs_do_release_task.exit_crit_edge, %if.then40.mvs_do_release_task.exit_crit_edge
  %62 = ptrtoint ptr %phy_event to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %phy_event, align 4
  %or = or i32 %63, 2
  store i32 %or, ptr %phy_event, align 4
  %64 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %chip, align 4
  %dispatch44 = getelementptr inbounds %struct.mvs_chip_info, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %dispatch44 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dispatch44, align 4
  %clear_srs_irq = getelementptr inbounds %struct.mvs_dispatch, ptr %67, i32 0, i32 22
  %68 = ptrtoint ptr %clear_srs_irq to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %clear_srs_irq, align 4
  tail call void %69(ptr noundef %mvi, i8 noundef zeroext 0, i8 noundef zeroext 1) #9
  %70 = inttoptr i32 %phy_no to ptr
  tail call fastcc void @mvs_handle_event(ptr noundef %mvi, ptr noundef %70, i32 noundef 3)
  %call46 = tail call fastcc i32 @mvs_is_phy_ready(ptr noundef %mvi, i32 noundef %phy_no)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  %and41 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool48.not = icmp eq i32 %and41, 0
  %or.cond = select i1 %tobool47.not, i1 %tobool48.not, i1 false
  br i1 %or.cond, label %mvs_do_release_task.exit.if.end63_crit_edge, label %if.then49

mvs_do_release_task.exit.if.end63_crit_edge:      ; preds = %mvs_do_release_task.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then49:                                        ; preds = %mvs_do_release_task.exit
  %71 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %chip, align 4
  %dispatch51 = getelementptr inbounds %struct.mvs_chip_info, ptr %72, i32 0, i32 7
  %73 = ptrtoint ptr %dispatch51 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dispatch51, align 4
  %stp_reset = getelementptr inbounds %struct.mvs_dispatch, ptr %74, i32 0, i32 41
  %75 = ptrtoint ptr %stp_reset to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %stp_reset, align 4
  %tobool52.not = icmp eq ptr %76, null
  br i1 %tobool52.not, label %if.else, label %if.then53

if.then53:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %76(ptr noundef %mvi, i32 noundef %phy_no) #9
  br label %cleanup167

if.else:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %phy_reset = getelementptr inbounds %struct.mvs_dispatch, ptr %74, i32 0, i32 40
  %77 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %phy_reset, align 4
  tail call void %78(ptr noundef %mvi, i32 noundef %phy_no, i32 noundef 0) #9
  br label %cleanup167

if.end63:                                         ; preds = %mvs_do_release_task.exit.if.end63_crit_edge, %while.end.if.end63_crit_edge, %if.end.if.end63_crit_edge
  %79 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %irq_status, align 8
  %and65 = and i32 %80, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end63.if.end81_crit_edge, label %if.then67

if.end63.if.end81_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then67:                                        ; preds = %if.end63
  %81 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %chip, align 4
  %dispatch69 = getelementptr inbounds %struct.mvs_chip_info, ptr %82, i32 0, i32 7
  %83 = ptrtoint ptr %dispatch69 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dispatch69, align 4
  %read_port_irq_mask = getelementptr inbounds %struct.mvs_dispatch, ptr %84, i32 0, i32 19
  %85 = ptrtoint ptr %read_port_irq_mask to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %read_port_irq_mask, align 4
  %call70 = tail call i32 %86(ptr noundef %mvi, i32 noundef %phy_no) #9
  %87 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %chip, align 4
  %dispatch72 = getelementptr inbounds %struct.mvs_chip_info, ptr %88, i32 0, i32 7
  %89 = ptrtoint ptr %dispatch72 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dispatch72, align 4
  %write_port_irq_mask = getelementptr inbounds %struct.mvs_dispatch, ptr %90, i32 0, i32 20
  %91 = ptrtoint ptr %write_port_irq_mask to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write_port_irq_mask, align 4
  %or73 = or i32 %call70, 65536
  tail call void %92(ptr noundef %mvi, i32 noundef %phy_no, i32 noundef %or73) #9
  %function = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %phy_no, i32 5, i32 2
  %93 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %function, align 4
  %cmp = icmp eq ptr %94, null
  br i1 %cmp, label %if.then74, label %if.then67.if.end81_crit_edge

if.then67.if.end81_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then74:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  %timer = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %phy_no, i32 5
  %95 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @mvs_sig_time_out, ptr %function, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %96 = load volatile i32, ptr @jiffies, align 128
  %add77 = add i32 %96, 500
  %expires = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %phy_no, i32 5, i32 1
  %97 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %add77, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #9
  br label %if.end81

if.end81:                                         ; preds = %if.then74, %if.then67.if.end81_crit_edge, %if.end63.if.end81_crit_edge
  %98 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %irq_status, align 8
  %and83 = and i32 %99, 65540
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.else149, label %if.then85

if.then85:                                        ; preds = %if.end81
  %call86 = tail call fastcc i32 @mvs_is_phy_ready(ptr noundef %mvi, i32 noundef %phy_no)
  %phy_status = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %phy_no, i32 11
  %100 = ptrtoint ptr %phy_status to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %call86, ptr %phy_status, align 4
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.2, i32 noundef 2014, i32 noundef %phy_no) #12
  %101 = ptrtoint ptr %phy_status to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %phy_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool93.not = icmp eq i32 %102, 0
  br i1 %tobool93.not, label %do.end140, label %while.body99.preheader

while.body99.preheader:                           ; preds = %if.then85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %103(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %106(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %108(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %109(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %110(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %111(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %112(i32 noundef 214748000) #9
  %113 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %chip, align 4
  %dispatch102 = getelementptr inbounds %struct.mvs_chip_info, ptr %114, i32 0, i32 7
  %115 = ptrtoint ptr %dispatch102 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dispatch102, align 4
  %detect_porttype = getelementptr inbounds %struct.mvs_dispatch, ptr %116, i32 0, i32 32
  %117 = ptrtoint ptr %detect_porttype to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %detect_porttype, align 4
  tail call void %118(ptr noundef %mvi, i32 noundef %phy_no) #9
  %phy_type103 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %phy_no, i32 10
  %119 = ptrtoint ptr %phy_type103 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %phy_type103, align 8
  %and104 = and i32 %120, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %while.body99.preheader.if.end115_crit_edge, label %if.then106

while.body99.preheader.if.end115_crit_edge:       ; preds = %while.body99.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

if.then106:                                       ; preds = %while.body99.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %121 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %chip, align 4
  %dispatch108 = getelementptr inbounds %struct.mvs_chip_info, ptr %122, i32 0, i32 7
  %123 = ptrtoint ptr %dispatch108 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dispatch108, align 4
  %read_port_irq_mask109 = getelementptr inbounds %struct.mvs_dispatch, ptr %124, i32 0, i32 19
  %125 = ptrtoint ptr %read_port_irq_mask109 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %read_port_irq_mask109, align 4
  %call110 = tail call i32 %126(ptr noundef %mvi, i32 noundef %phy_no) #9
  %and111 = and i32 %call110, -65537
  %127 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %chip, align 4
  %dispatch113 = getelementptr inbounds %struct.mvs_chip_info, ptr %128, i32 0, i32 7
  %129 = ptrtoint ptr %dispatch113 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dispatch113, align 4
  %write_port_irq_mask114 = getelementptr inbounds %struct.mvs_dispatch, ptr %130, i32 0, i32 20
  %131 = ptrtoint ptr %write_port_irq_mask114 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %write_port_irq_mask114, align 4
  tail call void %132(ptr noundef %mvi, i32 noundef %phy_no, i32 noundef %and111) #9
  br label %if.end115

if.end115:                                        ; preds = %if.then106, %while.body99.preheader.if.end115_crit_edge
  tail call void @mvs_update_phyinfo(ptr noundef %mvi, i32 noundef %phy_no, i32 noundef 0)
  %133 = ptrtoint ptr %phy_type103 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %phy_type103, align 8
  %and117 = and i32 %134, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.end115.if.end129_crit_edge, label %if.then119

if.end115.if.end129_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then119:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  %135 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %chip, align 4
  %dispatch121 = getelementptr inbounds %struct.mvs_chip_info, ptr %136, i32 0, i32 7
  %137 = ptrtoint ptr %dispatch121 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dispatch121, align 4
  %phy_reset122 = getelementptr inbounds %struct.mvs_dispatch, ptr %138, i32 0, i32 40
  %139 = ptrtoint ptr %phy_reset122 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %phy_reset122, align 4
  tail call void %140(ptr noundef %mvi, i32 noundef %phy_no, i32 noundef 2) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %141(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %142(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %143(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %144(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %145(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %146(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %147(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %148(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %149(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %150(i32 noundef 214748000) #9
  br label %if.end129

if.end129:                                        ; preds = %if.then119, %if.end115.if.end129_crit_edge
  tail call fastcc void @mvs_bytes_dmaed(ptr noundef %mvi, i32 noundef %phy_no, i32 noundef 2592)
  %phy_event130 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %phy_no, i32 18
  %151 = ptrtoint ptr %phy_event130 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %phy_event130, align 4
  %and131 = and i32 %152, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end129.cleanup167_crit_edge, label %if.then133

if.end129.cleanup167_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup167

if.then133:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  %sas_phy = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %phy_no, i32 2
  tail call fastcc void @mvs_port_notify_formed(ptr noundef %sas_phy, i32 noundef 0)
  %153 = ptrtoint ptr %phy_event130 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %phy_event130, align 4
  %and135 = and i32 %154, -3
  store i32 %and135, ptr %phy_event130, align 4
  br label %cleanup167

do.end140:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  %155 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %id, align 8
  %157 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %chip, align 4
  %n_phy144 = getelementptr inbounds %struct.mvs_chip_info, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %n_phy144 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %n_phy144, align 4
  %mul145 = mul i32 %160, %156
  %add146 = add i32 %mul145, %phy_no
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.2, i32 noundef 2039, i32 noundef %add146) #12
  br label %cleanup167

if.else149:                                       ; preds = %if.end81
  %and151 = and i32 %99, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.else149.cleanup167_crit_edge, label %do.end156

if.else149.cleanup167_crit_edge:                  ; preds = %if.else149
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup167

do.end156:                                        ; preds = %if.else149
  call void @__sanitizer_cov_trace_pc() #11
  %161 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %id, align 8
  %163 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %chip, align 4
  %n_phy160 = getelementptr inbounds %struct.mvs_chip_info, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %n_phy160 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %n_phy160, align 4
  %mul161 = mul i32 %166, %162
  %add162 = add i32 %mul161, %phy_no
  %call163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef 2043, i32 noundef %add162) #12
  %167 = inttoptr i32 %phy_no to ptr
  tail call fastcc void @mvs_handle_event(ptr noundef %mvi, ptr noundef %167, i32 noundef 4)
  br label %cleanup167

cleanup167:                                       ; preds = %do.end156, %if.else149.cleanup167_crit_edge, %do.end140, %if.then133, %if.end129.cleanup167_crit_edge, %if.else, %if.then53
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvs_handle_event(ptr noundef %mvi, ptr noundef %data, i32 noundef %handler) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 120) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %mvi1 = getelementptr inbounds %struct.mvs_wq, ptr %call7.i, i32 0, i32 1
  %1 = ptrtoint ptr %mvi1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mvi, ptr %mvi1, align 4
  %data2 = getelementptr inbounds %struct.mvs_wq, ptr %call7.i, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %data2, align 8
  %handler3 = getelementptr inbounds %struct.mvs_wq, ptr %call7.i, i32 0, i32 3
  %3 = ptrtoint ptr %handler3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %handler, ptr %handler3, align 4
  tail call void @__init_work(ptr noundef nonnull %call7.i, i32 noundef 0) #9
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %call7.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.110, ptr noundef nonnull @mvs_handle_event.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry12 = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry12, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mvs_work_queue, ptr %func, align 4
  %timer = getelementptr inbounds %struct.delayed_work, ptr %call7.i, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.112, ptr noundef nonnull @mvs_handle_event.__key.111) #9
  %entry21 = getelementptr inbounds %struct.mvs_wq, ptr %call7.i, i32 0, i32 4
  %wq_list = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 29
  %prev.i1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 29, i32 1
  %8 = ptrtoint ptr %prev.i1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i1, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry21, ptr noundef %9, ptr noundef %wq_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %prev.i1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry21, ptr %prev.i1, align 4
  %11 = ptrtoint ptr %entry21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %wq_list, ptr %entry21, align 8
  %prev3.i.i = getelementptr inbounds %struct.mvs_wq, ptr %call7.i, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry21, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %14 = load ptr, ptr @system_wq, align 4
  %call.i.i2 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %14, ptr noundef nonnull %call7.i, i32 noundef 200) #9
  br label %if.end

if.end:                                           ; preds = %list_add_tail.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_sig_time_out(ptr noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -236
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %chip = getelementptr inbounds %struct.mvs_info, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %n_phy22 = getelementptr inbounds %struct.mvs_chip_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %n_phy22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_phy22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp23.not = icmp eq i32 %5, 0
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %id = getelementptr inbounds %struct.mvs_info, ptr %1, i32 0, i32 25
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %6 = phi i32 [ %5, %for.body.lr.ph ], [ %18, %for.inc.for.body_crit_edge ]
  %conv25 = phi i32 [ 0, %for.body.lr.ph ], [ %conv, %for.inc.for.body_crit_edge ]
  %phy_no.024 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mvs_info, ptr %1, i32 0, i32 23, i32 %conv25
  %cmp4 = icmp eq ptr %arrayidx, %add.ptr
  br i1 %cmp4, label %do.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 8
  %mul = mul i32 %8, %6
  %add = add i32 %mul, %conv25
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.2, i32 noundef 1950, i32 noundef %add) #12
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.mvs_chip_info, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dispatch, align 4
  %phy_reset = getelementptr inbounds %struct.mvs_dispatch, ptr %12, i32 0, i32 40
  %13 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy_reset, align 4
  tail call void %14(ptr noundef %1, i32 noundef %conv25, i32 noundef 1) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add i8 %phy_no.024, 1
  %conv = zext i8 %inc to i32
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  %n_phy = getelementptr inbounds %struct.mvs_chip_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_phy, align 4
  %cmp = icmp ugt i32 %18, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvs_gpio_write(ptr nocapture noundef readonly %sha, i8 noundef zeroext %reg_type, i8 noundef zeroext %reg_index, i8 noundef zeroext %reg_count, ptr noundef %write_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %sha, i32 0, i32 21
  %0 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lldd_ha, align 4
  %mvi1 = getelementptr inbounds %struct.mvs_prv_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mvi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mvi1, align 4
  %chip = getelementptr inbounds %struct.mvs_info, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.mvs_chip_info, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dispatch, align 4
  %gpio_write = getelementptr inbounds %struct.mvs_dispatch, ptr %7, i32 0, i32 51
  %8 = ptrtoint ptr %gpio_write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpio_write, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %9(ptr noundef %1, i8 noundef zeroext %reg_type, i8 noundef zeroext %reg_index, i8 noundef zeroext %reg_count, ptr noundef %write_data) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -38, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_notify_phy_event(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_notify_port_event(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_alloc_slow_task(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_task_done(ptr nocapture noundef readonly %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slow_task = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 13
  %0 = ptrtoint ptr %slow_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slow_task, align 4
  %call = tail call i32 @del_timer(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %slow_task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slow_task, align 4
  %completion = getelementptr inbounds %struct.sas_task_slow, ptr %3, i32 0, i32 1
  tail call void @complete(ptr noundef %completion) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_tmf_timedout(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %task1 = getelementptr inbounds %struct.sas_task_slow, ptr %t, i32 0, i32 2
  %0 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task1, align 4
  %task_state_flags = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %task_state_flags, align 4
  %or = or i32 %3, 4
  store i32 %or, ptr %task_state_flags, align 4
  %slow_task = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %slow_task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slow_task, align 4
  %completion = getelementptr inbounds %struct.sas_task_slow, ptr %5, i32 0, i32 1
  tail call void @complete(ptr noundef %completion) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_free_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_get_local_phy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_phy_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_work_queue(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mvi4 = getelementptr inbounds %struct.mvs_wq, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %mvi4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvi4, align 4
  %data = getelementptr inbounds %struct.mvs_wq, ptr %work, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  %sas_phy6 = getelementptr %struct.mvs_info, ptr %1, i32 0, i32 23, i32 %4, i32 2
  %lock = getelementptr inbounds %struct.mvs_info, ptr %1, i32 0, i32 1
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %handler = getelementptr inbounds %struct.mvs_wq, ptr %work, i32 0, i32 3
  %5 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %handler, align 4
  %and = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else36, label %if.then

if.then:                                          ; preds = %entry
  %phy_event = getelementptr %struct.mvs_info, ptr %1, i32 0, i32 23, i32 %4, i32 18
  %7 = ptrtoint ptr %phy_event to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phy_event, align 4
  %and12 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then.if.end50_crit_edge, label %if.then14

if.then.if.end50_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then14:                                        ; preds = %if.then
  %chip = getelementptr inbounds %struct.mvs_info, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.mvs_chip_info, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dispatch, align 4
  %read_phy_ctl = getelementptr inbounds %struct.mvs_dispatch, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %read_phy_ctl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_phy_ctl, align 4
  %call16 = tail call i32 %14(ptr noundef %1, i32 noundef %4) #9
  %15 = ptrtoint ptr %phy_event to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phy_event, align 4
  %and18 = and i32 %16, -3
  store i32 %and18, ptr %phy_event, align 4
  %and19 = and i32 %call16, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %oob_mode.i = getelementptr %struct.mvs_info, ptr %1, i32 0, i32 23, i32 %4, i32 2, i32 12
  %17 = ptrtoint ptr %oob_mode.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %oob_mode.i, align 4
  %linkrate.i = getelementptr %struct.mvs_info, ptr %1, i32 0, i32 23, i32 %4, i32 2, i32 13
  %18 = ptrtoint ptr %linkrate.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %linkrate.i, align 4
  %phy_attached.i = getelementptr %struct.mvs_info, ptr %1, i32 0, i32 23, i32 %4, i32 15
  %19 = ptrtoint ptr %phy_attached.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %phy_attached.i, align 8
  %att_dev_info.i = getelementptr %struct.mvs_info, ptr %1, i32 0, i32 23, i32 %4, i32 8
  %20 = ptrtoint ptr %att_dev_info.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %att_dev_info.i, align 8
  %att_dev_sas_addr.i = getelementptr %struct.mvs_info, ptr %1, i32 0, i32 23, i32 %4, i32 7
  %21 = ptrtoint ptr %att_dev_sas_addr.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %att_dev_sas_addr.i, align 8
  %call22 = tail call i32 @sas_notify_phy_event(ptr noundef %sas_phy6, i32 noundef 0, i32 noundef 2592) #9
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.2, i32 noundef 1902, i32 noundef %4) #12
  br label %if.end50

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip, align 4
  %dispatch29 = getelementptr inbounds %struct.mvs_chip_info, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %dispatch29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dispatch29, align 4
  %detect_porttype = getelementptr inbounds %struct.mvs_dispatch, ptr %25, i32 0, i32 32
  %26 = ptrtoint ptr %detect_porttype to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %detect_porttype, align 4
  tail call void %27(ptr noundef %1, i32 noundef %4) #9
  tail call void @mvs_update_phyinfo(ptr noundef %1, i32 noundef %4, i32 noundef 1)
  tail call fastcc void @mvs_bytes_dmaed(ptr noundef %1, i32 noundef %4, i32 noundef 2592)
  tail call fastcc void @mvs_port_notify_formed(ptr noundef %sas_phy6, i32 noundef 0)
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.2, i32 noundef 1908, i32 noundef %4) #12
  br label %if.end50

if.else36:                                        ; preds = %entry
  %and38 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else36.if.end50_crit_edge, label %if.then40

if.else36.if.end50_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then40:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  %phy_event41 = getelementptr %struct.mvs_info, ptr %1, i32 0, i32 23, i32 %4, i32 18
  %28 = ptrtoint ptr %phy_event41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %phy_event41, align 4
  %and42 = and i32 %29, -5
  store i32 %and42, ptr %phy_event41, align 4
  %call43 = tail call i32 @sas_notify_port_event(ptr noundef %sas_phy6, i32 noundef 1, i32 noundef 2592) #9
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.2, i32 noundef 1915, i32 noundef %4) #12
  br label %if.end50

if.end50:                                         ; preds = %if.then40, %if.else36.if.end50_crit_edge, %if.else, %if.then21, %if.then.if.end50_crit_edge
  %entry51 = getelementptr inbounds %struct.mvs_wq, ptr %work, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry51) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end50.list_del.exit_crit_edge

if.end50.list_del.exit_crit_edge:                 ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.mvs_wq, ptr %work, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %entry51 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %entry51, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end50.list_del.exit_crit_edge
  %36 = ptrtoint ptr %entry51 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %entry51, align 4
  %prev.i = getelementptr inbounds %struct.mvs_wq, ptr %work, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #9
  tail call void @kfree(ptr noundef %work) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !190, !192, !193, !195, !196, !197, !198, !200, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215}
!llvm.named.register.sp = !{!216}
!llvm.module.flags = !{!217, !218, !219, !220, !221, !222, !223, !224}
!llvm.ident = !{!225}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1037, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mvs_update_phyinfo._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mvs_update_phyinfo._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1069, i32 2}
!10 = !{ptr @mvs_update_phyinfo._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mvs_update_phyinfo._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1071, i32 2}
!14 = !{ptr @mvs_update_phyinfo._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mvs_update_phyinfo._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1403, i32 2}
!18 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mvs_lu_reset._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @mvs_lu_reset._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1420, i32 2}
!23 = !{ptr @mvs_I_T_nexus_reset._entry, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @mvs_I_T_nexus_reset._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1463, i32 2}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mvs_query_task._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @mvs_query_task._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1480, i32 3}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mvs_abort_task._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @mvs_abort_task._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1500, i32 4}
!37 = !{ptr @mvs_abort_task._entry.18, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mvs_abort_task._entry_ptr.20, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1529, i32 4}
!41 = !{ptr @mvs_abort_task._entry.21, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mvs_abort_task._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @mvs_abort_task._entry.24, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1541, i32 3}
!45 = !{ptr @mvs_abort_task._entry_ptr.25, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1748, i32 4}
!48 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mvs_slot_complete._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @mvs_slot_complete._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1760, i32 3}
!53 = !{ptr @mvs_slot_complete._entry.28, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @mvs_slot_complete._entry_ptr.30, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1807, i32 3}
!57 = !{ptr @mvs_slot_complete._entry.31, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @mvs_slot_complete._entry_ptr.33, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1855, i32 3}
!61 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mvs_do_release_task._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @mvs_do_release_task._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1963, i32 2}
!66 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @mvs_int_port._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @mvs_int_port._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1965, i32 2}
!71 = !{ptr @mvs_int_port._entry.38, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @mvs_int_port._entry_ptr.40, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1974, i32 3}
!75 = !{ptr @mvs_int_port._entry.41, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @mvs_int_port._entry_ptr.43, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 2014, i32 3}
!79 = !{ptr @mvs_int_port._entry.44, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @mvs_int_port._entry_ptr.46, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 2038, i32 4}
!83 = !{ptr @mvs_int_port._entry.47, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @mvs_int_port._entry_ptr.49, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.51, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 2042, i32 3}
!87 = !{ptr @mvs_int_port._entry.50, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @mvs_int_port._entry_ptr.52, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.53, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 265, i32 2}
!91 = !{ptr @.str.54, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @mvs_bytes_dmaed._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @mvs_bytes_dmaed._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.55, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 857, i32 3}
!96 = !{ptr @.str.56, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.57, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @mvs_task_exec._entry, !95, !"_entry", i1 false, i1 false}
!99 = !{ptr @mvs_task_exec._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.58, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 724, i32 4}
!102 = !{ptr @.str.59, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @mvs_task_prep._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @mvs_task_prep._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.61, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 727, i32 4}
!107 = !{ptr @mvs_task_prep._entry.60, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @mvs_task_prep._entry_ptr.62, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.64, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 737, i32 4}
!111 = !{ptr @mvs_task_prep._entry.63, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @mvs_task_prep._entry_ptr.65, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.67, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 746, i32 4}
!115 = !{ptr @mvs_task_prep._entry.66, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @mvs_task_prep._entry_ptr.68, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.70, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 803, i32 3}
!119 = !{ptr @mvs_task_prep._entry.69, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @mvs_task_prep._entry_ptr.71, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.73, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 811, i32 3}
!123 = !{ptr @mvs_task_prep._entry.72, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @mvs_task_prep._entry_ptr.74, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.76, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 834, i32 2}
!127 = !{ptr @mvs_task_prep._entry.75, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @mvs_task_prep._entry_ptr.77, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.78, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 450, i32 3}
!131 = !{ptr @.str.79, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @mvs_task_prep_ata._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @mvs_task_prep_ata._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.80, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1107, i32 3}
!136 = !{ptr @.str.81, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @mvs_port_notify_formed._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @mvs_port_notify_formed._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.82, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1213, i32 4}
!141 = !{ptr @.str.83, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @mvs_dev_found_notify._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @mvs_dev_found_notify._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.84, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1160, i32 3}
!146 = !{ptr @.str.85, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @mvs_alloc_dev._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @mvs_alloc_dev._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.86, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1239, i32 3}
!151 = !{ptr @.str.87, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @mvs_dev_gone_notify._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @mvs_dev_gone_notify._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.89, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1247, i32 2}
!156 = !{ptr @mvs_dev_gone_notify._entry.88, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @mvs_dev_gone_notify._entry_ptr.90, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.91, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1307, i32 4}
!160 = !{ptr @.str.92, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @mvs_exec_internal_tmf_task._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @mvs_exec_internal_tmf_task._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.94, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1316, i32 5}
!165 = !{ptr @mvs_exec_internal_tmf_task._entry.93, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @mvs_exec_internal_tmf_task._entry_ptr.95, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.97, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1337, i32 4}
!169 = !{ptr @mvs_exec_internal_tmf_task._entry.96, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @mvs_exec_internal_tmf_task._entry_ptr.98, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.100, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1341, i32 4}
!173 = !{ptr @mvs_exec_internal_tmf_task._entry.99, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @mvs_exec_internal_tmf_task._entry_ptr.101, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.102, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 142, i32 3}
!177 = !{ptr @.str.103, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @mvs_free_reg_set._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @mvs_free_reg_set._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.104, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1680, i32 4}
!182 = !{ptr @.str.105, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @mvs_slot_err._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @mvs_slot_err._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.106, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1610, i32 4}
!187 = !{ptr @.str.107, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @mvs_set_sense._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @mvs_set_sense._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @mvs_set_sense._entry.108, !191, !"_entry", i1 false, i1 false}
!191 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1623, i32 4}
!192 = !{ptr @mvs_set_sense._entry_ptr.109, !191, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @mvs_handle_event.__key, !194, !"__key", i1 false, i1 false}
!194 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1932, i32 3}
!195 = !{ptr @.str.110, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @mvs_handle_event.__key.111, !194, !"__key", i1 false, i1 false}
!197 = !{ptr @.str.112, !194, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.113, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1902, i32 5}
!200 = !{ptr @.str.114, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @mvs_work_queue._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @mvs_work_queue._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.116, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1908, i32 5}
!205 = !{ptr @mvs_work_queue._entry.115, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @mvs_work_queue._entry_ptr.117, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.119, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1915, i32 3}
!209 = !{ptr @mvs_work_queue._entry.118, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @mvs_work_queue._entry_ptr.120, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.121, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/scsi/mvsas/mv_sas.c", i32 1949, i32 4}
!213 = !{ptr @.str.122, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @mvs_sig_time_out._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @mvs_sig_time_out._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{!"sp"}
!217 = !{i32 1, !"wchar_size", i32 2}
!218 = !{i32 1, !"min_enum_size", i32 4}
!219 = !{i32 8, !"branch-target-enforcement", i32 0}
!220 = !{i32 8, !"sign-return-address", i32 0}
!221 = !{i32 8, !"sign-return-address-all", i32 0}
!222 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!223 = !{i32 7, !"uwtable", i32 1}
!224 = !{i32 7, !"frame-pointer", i32 2}
!225 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!226 = !{!"branch_weights", i32 2000, i32 1}
!227 = !{!"auto-init"}
!228 = !{!"branch_weights", i32 1, i32 2000}
!229 = !{i64 2153855234, i64 2153855726, i64 2153855271, i64 2153855327, i64 2153855361, i64 2153855385, i64 2153855426, i64 2153855447, i64 2153855475, i64 2153855509}
!230 = !{i64 2154868472}
!231 = !{i64 2153292243}
!232 = !{i64 2153292450}
!233 = !{i64 2154871243}
