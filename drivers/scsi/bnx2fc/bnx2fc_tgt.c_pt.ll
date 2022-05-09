; ModuleID = '/llk/IR_all_yes/drivers/scsi/bnx2fc/bnx2fc_tgt.c_pt.bc'
source_filename = "../drivers/scsi/bnx2fc/bnx2fc_tgt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bnx2fc_rport = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, [6 x i8], i32, i32, i32, %struct.atomic_t, %struct.b577xx_doorbell_set_prod, %struct.b577xx_fcoe_rx_doorbell, ptr, i32, i16, i8, i32, ptr, i32, i16, i8, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, [4 x ptr], [4 x i32], ptr, i32, %struct.spinlock, %struct.spinlock, %struct.atomic_t, i32, i32, i32, %struct.list_head, [257 x ptr], %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.wait_queue_head, %struct.timer_list, %struct.wait_queue_head }
%struct.b577xx_doorbell_set_prod = type { i16, i8, %struct.b577xx_doorbell_hdr }
%struct.b577xx_doorbell_hdr = type { i8 }
%struct.b577xx_fcoe_rx_doorbell = type { %struct.b577xx_doorbell_hdr, i8, i16 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bnx2fc_cmd = type { %struct.list_head, i8, i8, i8, i8, %struct.kref, ptr, ptr, ptr, ptr, %struct.bnx2fc_mp_req, ptr, ptr, %struct.delayed_work, %struct.completion, %struct.completion, i32, i32, i16, %struct.fcoe_err_report_entry, ptr, ptr, ptr, i32, i32, i8, i8, i32, i8, i32, i32, i32, i8, i8, i8, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.bnx2fc_mp_req = type { i8, i32, ptr, i32, ptr, i32, %struct.fc_frame_header, i32, ptr, i32, ptr, i32, %struct.fc_frame_header }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.fcoe_err_report_entry = type { %struct.fcoe_partial_err_report_entry, %struct.fcoe_fc_hdr }
%struct.fcoe_partial_err_report_entry = type { i32, i32, i32, i32 }
%struct.fcoe_fc_hdr = type { [3 x i8], i8, [3 x i8], i8, i16, i8, i8, [3 x i8], i8, i32, i16, i16 }
%struct.fc_rport_priv = type { ptr, ptr, %struct.kref, i32, %struct.fc_rport_identifiers, i16, i16, i16, i16, i32, i32, i32, i32, %struct.mutex, %struct.delayed_work, i32, ptr, %struct.list_head, %struct.work_struct, i32, i16, %struct.callback_head, i16, i8, ptr }
%struct.fc_rport_identifiers = type { i64, i64, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.fc_lport = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.fc_disc, %struct.list_head, ptr, %struct.libfc_function_template, i8, i8, i16, i32, i32, %struct.fc_host_statistics, ptr, i8, i32, i64, i64, i32, i32, i32, %struct.fc_els_rnid_gen, i8, i32, i8, i8, i16, i16, i16, i16, i32, %struct.fc_ns_fts, %struct.mutex, %struct.list_head, %struct.delayed_work, [9 x ptr], %struct.list_head }
%struct.fc_disc = type { i8, i8, i8, i16, i8, i16, %struct.list_head, ptr, %struct.mutex, %struct.fc_gpn_ft_resp, %struct.delayed_work, ptr }
%struct.fc_gpn_ft_resp = type { i8, [3 x i8], i32, i64 }
%struct.libfc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_els_rnid_gen = type { [16 x i8], i32, i32, i32, i8, i8, i16, [4 x i32], [2 x i8], i16 }
%struct.fc_ns_fts = type { [8 x i32] }
%struct.bnx2fc_interface = type { %struct.list_head, i32, ptr, ptr, %struct.packet_type, %struct.packet_type, ptr, %struct.kref, i8, i32, i8, i8 }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.fc_rport = type { i32, i32, i32, %struct.fc_fpin_stats, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.delayed_work, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, ptr }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bnx2fc_hba = type { %struct.list_head, ptr, ptr, ptr, i32, ptr, %struct.spinlock, %struct.mutex, %struct.mutex, i32, i32, i32, i16, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, %struct.bnx2fc_fw_stats, %struct.fcoe_statistics_params, ptr, i32, %struct.completion, %struct.fcoe_capabilities, %struct.timer_list, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, %struct.list_head, [16 x i8] }
%struct.bnx2fc_fw_stats = type { i64, i64, i64, i64, i64 }
%struct.fcoe_statistics_params = type { %struct.fcoe_tx_stat_params, %struct.fcoe_rx_stat_params_section0, %struct.fcoe_rx_stat_params_section1, %struct.fcoe_rx_stat_params_section2 }
%struct.fcoe_tx_stat_params = type { i32, i32, i32, i32 }
%struct.fcoe_rx_stat_params_section0 = type { i32, i32 }
%struct.fcoe_rx_stat_params_section1 = type { i32, i32 }
%struct.fcoe_rx_stat_params_section2 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fcoe_capabilities = type { i32, i32, i32, i32 }
%struct.fc_rport_libfc_priv = type { ptr, i32, i16, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.123, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.123 = type { ptr }
%struct.fcoe_conn_db = type { i16, i16, i32, %struct.regpair }
%struct.regpair = type { i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.119, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.60 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.119 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Entered flush_active_ios - %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cmd_queue cleanup\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"eh_abort for IO cleaned up\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tm_queue cleanup\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"els_queue cleanup\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"retire_queue flush\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"eh_abort for IO in retire_q\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IOs flushed = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@bnx2fc_flush_active_ios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013bnx2fc: CLEANUP on port 0x%x: active_ios = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bnx2fc_flush_active_ios\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/scsi/bnx2fc/bnx2fc_tgt.c\00", [63 x i8] zeroinitializer }, align 32
@bnx2fc_flush_active_ios._entry_ptr = internal global ptr @bnx2fc_flush_active_ios._entry, section ".printk_index", align 4
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"rport_event_hdlr: event = %d, port_id = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@bnx2fc_rport_event_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.10, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013bnx2fc: rport is NULL: ERROR!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bnx2fc_rport_event_handler\00", [37 x i8] zeroinitializer }, align 32
@bnx2fc_rport_event_handler._entry_ptr = internal global ptr @bnx2fc_rport_event_handler._entry, section ".printk_index", align 4
@bnx2fc_rport_event_handler._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.10, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013bnx2fc: %x - rport_event_handler ERROR\0A\00", [54 x i8] zeroinitializer }, align 32
@bnx2fc_rport_event_handler._entry_ptr.16 = internal global ptr @bnx2fc_rport_event_handler._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"not FCP type target. not offloading\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"not FCP_TARGET not offloading\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"already offloaded\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"OFFLOAD num_ofld_sess = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sess offloaded\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Port is being logged off as offloaded flag not set\0A\00", [44 x i8] zeroinitializer }, align 32
@bnx2fc_rport_event_handler._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.13, ptr @.str.10, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016bnx2fc: %x - rport not created Yet!!\0A\00", [56 x i8] zeroinitializer }, align 32
@bnx2fc_rport_event_handler._entry_ptr.25 = internal global ptr @bnx2fc_rport_event_handler._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"UPLOAD num_ofld_sess = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rport obtained\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rport 0x%x is in DELETED state\0A\00", [32 x i8] zeroinitializer }, align 32
@bnx2fc_offload_session._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.10, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013bnx2fc: Failed to allocate conn id for port_id (%6x)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bnx2fc_offload_session\00", [41 x i8] zeroinitializer }, align 32
@bnx2fc_offload_session._entry_ptr = internal global ptr @bnx2fc_offload_session._entry, section ".printk_index", align 4
@bnx2fc_offload_session._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.10, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013bnx2fc: Failed to allocate resources\0A\00", [56 x i8] zeroinitializer }, align 32
@bnx2fc_offload_session._entry_ptr.33 = internal global ptr @bnx2fc_offload_session._entry.31, section ".printk_index", align 4
@bnx2fc_offload_session._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.10, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013bnx2fc: ofld_req failed\0A\00", [37 x i8] zeroinitializer }, align 32
@bnx2fc_offload_session._entry_ptr.36 = internal global ptr @bnx2fc_offload_session._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ctx_alloc_failure, retry ofld..%d\0A\00", [61 x i8] zeroinitializer }, align 32
@bnx2fc_offload_session._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.30, ptr @.str.10, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013bnx2fc: map doorbell failed - no mem\0A\00", [56 x i8] zeroinitializer }, align 32
@bnx2fc_offload_session._entry_ptr.40 = internal global ptr @bnx2fc_offload_session._entry.38, section ".printk_index", align 4
@bnx2fc_offload_session._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.30, ptr @.str.10, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013bnx2fc: bnx2fc: enable session failed\0A\00", [55 x i8] zeroinitializer }, align 32
@bnx2fc_offload_session._entry_ptr.43 = internal global ptr @bnx2fc_offload_session._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"bnx2fc_offload_session - offload error\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"exceeded max sessions. logoff this tgt\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"init_tgt - conn_id = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@bnx2fc_init_tgt.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&tgt->tgt_lock\00", [17 x i8] zeroinitializer }, align 32
@bnx2fc_init_tgt.__key.48 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&tgt->cq_lock\00", [18 x i8] zeroinitializer }, align 32
@bnx2fc_init_tgt.__key.50 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&tgt->ofld_wait\00", [16 x i8] zeroinitializer }, align 32
@bnx2fc_init_tgt.__key.52 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&tgt->upld_wait\00", [16 x i8] zeroinitializer }, align 32
@bnx2fc_alloc_session_resc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.10, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013bnx2fc: unable to allocate SQ memory %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bnx2fc_alloc_session_resc\00", [38 x i8] zeroinitializer }, align 32
@bnx2fc_alloc_session_resc._entry_ptr = internal global ptr @bnx2fc_alloc_session_resc._entry, section ".printk_index", align 4
@bnx2fc_alloc_session_resc._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.10, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013bnx2fc: unable to allocate CQ memory %d\0A\00", [53 x i8] zeroinitializer }, align 32
@bnx2fc_alloc_session_resc._entry_ptr.58 = internal global ptr @bnx2fc_alloc_session_resc._entry.56, section ".printk_index", align 4
@bnx2fc_alloc_session_resc._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.10, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013bnx2fc: unable to allocate RQ memory %d\0A\00", [53 x i8] zeroinitializer }, align 32
@bnx2fc_alloc_session_resc._entry_ptr.61 = internal global ptr @bnx2fc_alloc_session_resc._entry.59, section ".printk_index", align 4
@bnx2fc_alloc_session_resc._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.10, i32 716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013bnx2fc: unable to allocate RQ PBL %d\0A\00", [56 x i8] zeroinitializer }, align 32
@bnx2fc_alloc_session_resc._entry_ptr.64 = internal global ptr @bnx2fc_alloc_session_resc._entry.62, section ".printk_index", align 4
@bnx2fc_alloc_session_resc._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.55, ptr @.str.10, i32 742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013bnx2fc: unable to allocate XFERQ %d\0A\00", [57 x i8] zeroinitializer }, align 32
@bnx2fc_alloc_session_resc._entry_ptr.67 = internal global ptr @bnx2fc_alloc_session_resc._entry.65, section ".printk_index", align 4
@bnx2fc_alloc_session_resc._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.55, ptr @.str.10, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013bnx2fc: unable to allocate CONFQ %d\0A\00", [57 x i8] zeroinitializer }, align 32
@bnx2fc_alloc_session_resc._entry_ptr.70 = internal global ptr @bnx2fc_alloc_session_resc._entry.68, section ".printk_index", align 4
@bnx2fc_alloc_session_resc._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.55, ptr @.str.10, i32 770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013bnx2fc: unable to allocate CONFQ PBL %d\0A\00", [53 x i8] zeroinitializer }, align 32
@bnx2fc_alloc_session_resc._entry_ptr.73 = internal global ptr @bnx2fc_alloc_session_resc._entry.71, section ".printk_index", align 4
@bnx2fc_alloc_session_resc._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.55, ptr @.str.10, i32 794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013bnx2fc: unable to allocate conn_db %d\0A\00", [55 x i8] zeroinitializer }, align 32
@bnx2fc_alloc_session_resc._entry_ptr.76 = internal global ptr @bnx2fc_alloc_session_resc._entry.74, section ".printk_index", align 4
@bnx2fc_alloc_session_resc._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.55, ptr @.str.10, i32 809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013bnx2fc: unable to allocate lcq %d\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2fc_alloc_session_resc._entry_ptr.79 = internal global ptr @bnx2fc_alloc_session_resc._entry.77, section ".printk_index", align 4
@bnx2fc_ofld_wait.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&tgt->ofld_timer)\00", [45 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"entered bnx2fc_ofld_timer\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Freeing up session resources\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"upload_session: active_ios = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"waiting for disable compl\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"flush/upload - disable wait flags = 0x%lx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"send destroy req\0A\00", [46 x i8] zeroinitializer }, align 32
@bnx2fc_upload_session._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.10, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013bnx2fc: ERROR!! destroy timed out\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2fc_upload_session\00", [42 x i8] zeroinitializer }, align 32
@bnx2fc_upload_session._entry_ptr = internal global ptr @bnx2fc_upload_session._entry, section ".printk_index", align 4
@.str.89 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"destroy wait complete flags = 0x%lx\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2fc_upload_session._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.88, ptr @.str.10, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013bnx2fc: ERROR!! DISABLE req failed, destroy not sent to FW\0A\00", [34 x i8] zeroinitializer }, align 32
@bnx2fc_upload_session._entry_ptr.92 = internal global ptr @bnx2fc_upload_session._entry.90, section ".printk_index", align 4
@bnx2fc_upload_session._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.88, ptr @.str.10, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013bnx2fc: ERROR!! DISABLE req timed out, destroy not sent to FW\0A\00", [63 x i8] zeroinitializer }, align 32
@bnx2fc_upload_session._entry_ptr.95 = internal global ptr @bnx2fc_upload_session._entry.93, section ".printk_index", align 4
@bnx2fc_upld_wait.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&tgt->upld_timer)\00", [45 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"upld_timer - Upload compl not received!!\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 172, i32 22 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 182, i32 25 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 188, i32 27 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 212, i32 25 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 222, i32 25 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 246, i32 25 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 252, i32 27 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 263, i32 22 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 270, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 451, i32 24 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 456, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 468, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 474, i32 26 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 479, i32 26 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 493, i32 24 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 504, i32 23 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 509, i32 24 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 520, i32 24 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 533, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 553, i32 23 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 593, i32 26 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 597, i32 26 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 94, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 102, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 115, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 128, i32 24 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 140, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 146, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 156, i32 22 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 366, i32 23 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 375, i32 22 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 414, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 415, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 428, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 429, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 677, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 690, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 703, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 715, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 741, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 755, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 769, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 793, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 808, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 68, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 48, i32 22 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 834, i32 22 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 297, i32 22 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 311, i32 22 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 318, i32 22 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 324, i32 23 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 332, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 334, i32 23 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 338, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 341, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 280, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.366 = private constant [36 x i8] c"../drivers/scsi/bnx2fc/bnx2fc_tgt.c\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 35, i32 22 }
@llvm.compiler.used = appending global [111 x ptr] [ptr @bnx2fc_alloc_session_resc._entry, ptr @bnx2fc_alloc_session_resc._entry.56, ptr @bnx2fc_alloc_session_resc._entry.59, ptr @bnx2fc_alloc_session_resc._entry.62, ptr @bnx2fc_alloc_session_resc._entry.65, ptr @bnx2fc_alloc_session_resc._entry.68, ptr @bnx2fc_alloc_session_resc._entry.71, ptr @bnx2fc_alloc_session_resc._entry.74, ptr @bnx2fc_alloc_session_resc._entry.77, ptr @bnx2fc_alloc_session_resc._entry_ptr, ptr @bnx2fc_alloc_session_resc._entry_ptr.58, ptr @bnx2fc_alloc_session_resc._entry_ptr.61, ptr @bnx2fc_alloc_session_resc._entry_ptr.64, ptr @bnx2fc_alloc_session_resc._entry_ptr.67, ptr @bnx2fc_alloc_session_resc._entry_ptr.70, ptr @bnx2fc_alloc_session_resc._entry_ptr.73, ptr @bnx2fc_alloc_session_resc._entry_ptr.76, ptr @bnx2fc_alloc_session_resc._entry_ptr.79, ptr @bnx2fc_flush_active_ios._entry, ptr @bnx2fc_flush_active_ios._entry_ptr, ptr @bnx2fc_offload_session._entry, ptr @bnx2fc_offload_session._entry.31, ptr @bnx2fc_offload_session._entry.34, ptr @bnx2fc_offload_session._entry.38, ptr @bnx2fc_offload_session._entry.41, ptr @bnx2fc_offload_session._entry_ptr, ptr @bnx2fc_offload_session._entry_ptr.33, ptr @bnx2fc_offload_session._entry_ptr.36, ptr @bnx2fc_offload_session._entry_ptr.40, ptr @bnx2fc_offload_session._entry_ptr.43, ptr @bnx2fc_rport_event_handler._entry, ptr @bnx2fc_rport_event_handler._entry.14, ptr @bnx2fc_rport_event_handler._entry.23, ptr @bnx2fc_rport_event_handler._entry_ptr, ptr @bnx2fc_rport_event_handler._entry_ptr.16, ptr @bnx2fc_rport_event_handler._entry_ptr.25, ptr @bnx2fc_upload_session._entry, ptr @bnx2fc_upload_session._entry.90, ptr @bnx2fc_upload_session._entry.93, ptr @bnx2fc_upload_session._entry_ptr, ptr @bnx2fc_upload_session._entry_ptr.92, ptr @bnx2fc_upload_session._entry_ptr.95, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @bnx2fc_init_tgt.__key, ptr @.str.47, ptr @bnx2fc_init_tgt.__key.48, ptr @.str.49, ptr @bnx2fc_init_tgt.__key.50, ptr @.str.51, ptr @bnx2fc_init_tgt.__key.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @bnx2fc_ofld_wait.__key, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @bnx2fc_upld_wait.__key, ptr @.str.96, ptr @.str.97], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_flush_active_ios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_rport_event_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_rport_event_handler._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_rport_event_handler._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_offload_session._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_offload_session._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_offload_session._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_offload_session._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_offload_session._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_init_tgt.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_init_tgt.__key.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_init_tgt.__key.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_init_tgt.__key.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_alloc_session_resc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_alloc_session_resc._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_alloc_session_resc._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_alloc_session_resc._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_alloc_session_resc._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_alloc_session_resc._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_alloc_session_resc._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_alloc_session_resc._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_alloc_session_resc._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_ofld_wait.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_upload_session._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_upload_session._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_upload_session._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_upld_wait.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2fc_flush_active_ios(ptr noundef %tgt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_active_ios = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 56
  %0 = ptrtoint ptr %num_active_ios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_active_ios, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %tgt, ptr noundef nonnull @.str, i32 noundef %1) #6
  %tgt_lock = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 54
  tail call void @_raw_spin_lock_bh(ptr noundef %tgt_lock) #6
  %flush_in_prog = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 57
  %2 = ptrtoint ptr %flush_in_prog to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %flush_in_prog, align 4
  %active_cmd_queue = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 62
  %3 = ptrtoint ptr %active_cmd_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %active_cmd_queue, align 4
  %cmp.not317 = icmp eq ptr %4, %active_cmd_queue
  br i1 %cmp.not317, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %flags = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %io_req.0319 = phi ptr [ %4, %for.body.lr.ph ], [ %tmp.0321, %for.inc.for.body_crit_edge ]
  %i.0318 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %io_req.0319 to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp.0321 = load ptr, ptr %io_req.0319, align 4
  %inc = add i32 %i.0318, 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %io_req.0319) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %io_req.0319, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %io_req.0319 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_req.0319, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %io_req.0319 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %io_req.0319, ptr %io_req.0319, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %io_req.0319, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %io_req.0319, ptr %prev.i3.i, align 4
  %on_active_queue = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req.0319, i32 0, i32 1
  %14 = ptrtoint ptr %on_active_queue to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %on_active_queue, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req.0319, ptr noundef nonnull @.str.1) #6
  %timeout_work = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req.0319, i32 0, i32 13
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work) #6
  br i1 %call, label %if.then, label %list_del_init.exit.if.end12_crit_edge

list_del_init.exit.if.end12_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then:                                          ; preds = %list_del_init.exit
  %req_flags = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req.0319, i32 0, i32 24
  %call9 = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %req_flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then10

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req.0319, ptr noundef nonnull @.str.2) #6
  %abts_done = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req.0319, i32 0, i32 14
  tail call void @complete(ptr noundef %abts_done) #6
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then.if.end_crit_edge
  %refcount = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req.0319, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !178
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #6
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #6, !srcloc !179
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end12_crit_edge, label %if.then10.i.i.i.i, !prof !180

if.end5.i.i.i.i.if.end12_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #6
  br label %if.end12

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !181
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end12_crit_edge, %list_del_init.exit.if.end12_crit_edge
  %req_flags13 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req.0319, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 9, ptr noundef %req_flags13) #6
  tail call void @_set_bit(i32 noundef 6, ptr noundef %req_flags13) #6
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags, align 4
  %18 = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool16.not = icmp eq i32 %18, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %task = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req.0319, i32 0, i32 20
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 4
  tail call void @bnx2fc_process_cleanup_compl(ptr noundef %io_req.0319, ptr noundef %20, i8 noundef zeroext 0) #6
  br label %for.inc

if.else:                                          ; preds = %if.end12
  %call18 = tail call i32 @bnx2fc_initiate_cleanup(ptr noundef %io_req.0319) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.else.for.inc_crit_edge, label %do.body24, !prof !180

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/bnx2fc/bnx2fc_tgt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !182
  unreachable

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then17
  %cmp.not = icmp eq ptr %tmp.0321, %active_cmd_queue
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %active_tm_queue = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 65
  %21 = ptrtoint ptr %active_tm_queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %active_tm_queue, align 4
  %cmp49.not323 = icmp eq ptr %22, %active_tm_queue
  br i1 %cmp49.not323, label %for.end.for.end65_crit_edge, label %for.end.for.body52_crit_edge

for.end.for.body52_crit_edge:                     ; preds = %for.end
  br label %for.body52

for.end.for.end65_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end65

for.body52:                                       ; preds = %for.inc59.for.body52_crit_edge, %for.end.for.body52_crit_edge
  %io_req.1325 = phi ptr [ %tmp.1327, %for.inc59.for.body52_crit_edge ], [ %22, %for.end.for.body52_crit_edge ]
  %i.1324 = phi i32 [ %inc53, %for.inc59.for.body52_crit_edge ], [ %i.0.lcssa, %for.end.for.body52_crit_edge ]
  %23 = ptrtoint ptr %io_req.1325 to i32
  call void @__asan_load4_noabort(i32 %23)
  %tmp.1327 = load ptr, ptr %io_req.1325, align 4
  %inc53 = add i32 %i.1324, 1
  %call.i.i280 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %io_req.1325) #6
  br i1 %call.i.i280, label %if.end.i.i283, label %for.body52.list_del_init.exit285_crit_edge

for.body52.list_del_init.exit285_crit_edge:       ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit285

if.end.i.i283:                                    ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i281 = getelementptr inbounds %struct.list_head, ptr %io_req.1325, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i281 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i281, align 4
  %26 = ptrtoint ptr %io_req.1325 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_req.1325, align 4
  %prev1.i.i.i282 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i282 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i282, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del_init.exit285

list_del_init.exit285:                            ; preds = %if.end.i.i283, %for.body52.list_del_init.exit285_crit_edge
  %30 = ptrtoint ptr %io_req.1325 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %io_req.1325, ptr %io_req.1325, align 4
  %prev.i3.i284 = getelementptr inbounds %struct.list_head, ptr %io_req.1325, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i3.i284 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %io_req.1325, ptr %prev.i3.i284, align 4
  %on_tmf_queue = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req.1325, i32 0, i32 2
  %32 = ptrtoint ptr %on_tmf_queue to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %on_tmf_queue, align 1
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req.1325, ptr noundef nonnull @.str.3) #6
  %wait_for_abts_comp = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req.1325, i32 0, i32 16
  %33 = ptrtoint ptr %wait_for_abts_comp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %wait_for_abts_comp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool55.not = icmp eq i32 %34, 0
  br i1 %tobool55.not, label %list_del_init.exit285.for.inc59_crit_edge, label %if.then56

list_del_init.exit285.for.inc59_crit_edge:        ; preds = %list_del_init.exit285
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc59

if.then56:                                        ; preds = %list_del_init.exit285
  call void @__sanitizer_cov_trace_pc() #8
  %abts_done57 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req.1325, i32 0, i32 14
  tail call void @complete(ptr noundef %abts_done57) #6
  br label %for.inc59

for.inc59:                                        ; preds = %if.then56, %list_del_init.exit285.for.inc59_crit_edge
  %cmp49.not = icmp eq ptr %tmp.1327, %active_tm_queue
  br i1 %cmp49.not, label %for.inc59.for.end65_crit_edge, label %for.inc59.for.body52_crit_edge

for.inc59.for.body52_crit_edge:                   ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body52

for.inc59.for.end65_crit_edge:                    ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end65

for.end65:                                        ; preds = %for.inc59.for.end65_crit_edge, %for.end.for.end65_crit_edge
  %i.1.lcssa = phi i32 [ %i.0.lcssa, %for.end.for.end65_crit_edge ], [ %inc53, %for.inc59.for.end65_crit_edge ]
  %els_queue = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 63
  %35 = ptrtoint ptr %els_queue to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %els_queue, align 4
  %cmp78.not330 = icmp eq ptr %36, %els_queue
  br i1 %cmp78.not330, label %for.end65.for.end130_crit_edge, label %for.body81.lr.ph

for.end65.for.end130_crit_edge:                   ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end130

for.body81.lr.ph:                                 ; preds = %for.end65
  %flags98 = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 9
  br label %for.body81

for.body81:                                       ; preds = %for.inc124.for.body81_crit_edge, %for.body81.lr.ph
  %io_req.2332 = phi ptr [ %36, %for.body81.lr.ph ], [ %tmp.2334, %for.inc124.for.body81_crit_edge ]
  %i.2331 = phi i32 [ %i.1.lcssa, %for.body81.lr.ph ], [ %inc82, %for.inc124.for.body81_crit_edge ]
  %37 = ptrtoint ptr %io_req.2332 to i32
  call void @__asan_load4_noabort(i32 %37)
  %tmp.2334 = load ptr, ptr %io_req.2332, align 4
  %inc82 = add i32 %i.2331, 1
  %call.i.i286 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %io_req.2332) #6
  br i1 %call.i.i286, label %if.end.i.i289, label %for.body81.list_del_init.exit291_crit_edge

for.body81.list_del_init.exit291_crit_edge:       ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit291

if.end.i.i289:                                    ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i287 = getelementptr inbounds %struct.list_head, ptr %io_req.2332, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i287 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i287, align 4
  %40 = ptrtoint ptr %io_req.2332 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_req.2332, align 4
  %prev1.i.i.i288 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i288 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i288, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del_init.exit291

list_del_init.exit291:                            ; preds = %if.end.i.i289, %for.body81.list_del_init.exit291_crit_edge
  %44 = ptrtoint ptr %io_req.2332 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %io_req.2332, ptr %io_req.2332, align 4
  %prev.i3.i290 = getelementptr inbounds %struct.list_head, ptr %io_req.2332, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i3.i290 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %io_req.2332, ptr %prev.i3.i290, align 4
  %on_active_queue84 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req.2332, i32 0, i32 1
  %46 = ptrtoint ptr %on_active_queue84 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %on_active_queue84, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req.2332, ptr noundef nonnull @.str.4) #6
  %timeout_work85 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req.2332, i32 0, i32 13
  %call86 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work85) #6
  br i1 %call86, label %if.then87, label %list_del_init.exit291.if.end90_crit_edge

list_del_init.exit291.if.end90_crit_edge:         ; preds = %list_del_init.exit291
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.then87:                                        ; preds = %list_del_init.exit291
  %refcount88 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req.2332, i32 0, i32 5
  %call.i.i.i.i.i.i292 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount88, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !178
  tail call void @llvm.prefetch.p0(ptr %refcount88, i32 1, i32 3, i32 1) #6
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount88, ptr %refcount88, i32 1, ptr elementtype(i32) %refcount88) #6, !srcloc !179
  %asmresult.i.i.i.i.i.i.i293 = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i293)
  %cmp.i.i.i.i294 = icmp eq i32 %asmresult.i.i.i.i.i.i.i293, 1
  br i1 %cmp.i.i.i.i294, label %if.then.i298, label %if.end5.i.i.i.i296

if.end5.i.i.i.i296:                               ; preds = %if.then87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i293)
  %.not.i.i.i.i295 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i293, 0
  br i1 %.not.i.i.i.i295, label %if.end5.i.i.i.i296.if.end90_crit_edge, label %if.then10.i.i.i.i297, !prof !180

if.end5.i.i.i.i296.if.end90_crit_edge:            ; preds = %if.end5.i.i.i.i296
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.then10.i.i.i.i297:                             ; preds = %if.end5.i.i.i.i296
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount88, i32 noundef 3) #6
  br label %if.end90

if.then.i298:                                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !181
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount88) #6
  br label %if.end90

if.end90:                                         ; preds = %if.then.i298, %if.then10.i.i.i.i297, %if.end5.i.i.i.i296.if.end90_crit_edge, %list_del_init.exit291.if.end90_crit_edge
  %cb_func = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req.2332, i32 0, i32 11
  %48 = ptrtoint ptr %cb_func to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cb_func, align 4
  %tobool91.not = icmp eq ptr %49, null
  br i1 %tobool91.not, label %if.end90.if.end97_crit_edge, label %land.lhs.true

if.end90.if.end97_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

land.lhs.true:                                    ; preds = %if.end90
  %cb_arg = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req.2332, i32 0, i32 12
  %50 = ptrtoint ptr %cb_arg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cb_arg, align 4
  %tobool92.not = icmp eq ptr %51, null
  br i1 %tobool92.not, label %land.lhs.true.if.end97_crit_edge, label %if.then93

land.lhs.true.if.end97_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then93:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %49(ptr noundef nonnull %51) #6
  %52 = ptrtoint ptr %cb_arg to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %cb_arg, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then93, %land.lhs.true.if.end97_crit_edge, %if.end90.if.end97_crit_edge
  %53 = ptrtoint ptr %flags98 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %flags98, align 4
  %55 = and i32 %54, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool100.not = icmp eq i32 %55, 0
  br i1 %tobool100.not, label %if.else103, label %if.then101

if.then101:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  %task102 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req.2332, i32 0, i32 20
  %56 = ptrtoint ptr %task102 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task102, align 4
  tail call void @bnx2fc_process_cleanup_compl(ptr noundef %io_req.2332, ptr noundef %57, i8 noundef zeroext 0) #6
  br label %for.inc124

if.else103:                                       ; preds = %if.end97
  %call104 = tail call i32 @bnx2fc_initiate_cleanup(ptr noundef %io_req.2332) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool106.not = icmp eq i32 %call104, 0
  br i1 %tobool106.not, label %if.else103.for.inc124_crit_edge, label %do.body114, !prof !180

if.else103.for.inc124_crit_edge:                  ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc124

do.body114:                                       ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/bnx2fc/bnx2fc_tgt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 238, 0\0A.popsection", ""() #6, !srcloc !183
  unreachable

for.inc124:                                       ; preds = %if.else103.for.inc124_crit_edge, %if.then101
  %cmp78.not = icmp eq ptr %tmp.2334, %els_queue
  br i1 %cmp78.not, label %for.inc124.for.end130_crit_edge, label %for.inc124.for.body81_crit_edge

for.inc124.for.body81_crit_edge:                  ; preds = %for.inc124
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body81

for.inc124.for.end130_crit_edge:                  ; preds = %for.inc124
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end130

for.end130:                                       ; preds = %for.inc124.for.end130_crit_edge, %for.end65.for.end130_crit_edge
  %i.2.lcssa = phi i32 [ %i.1.lcssa, %for.end65.for.end130_crit_edge ], [ %inc82, %for.inc124.for.end130_crit_edge ]
  %io_retire_queue = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 64
  %58 = ptrtoint ptr %io_retire_queue to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %io_retire_queue, align 4
  %cmp143.not337 = icmp eq ptr %59, %io_retire_queue
  br i1 %cmp143.not337, label %for.end130.for.end172_crit_edge, label %for.end130.for.body146_crit_edge

for.end130.for.body146_crit_edge:                 ; preds = %for.end130
  br label %for.body146

for.end130.for.end172_crit_edge:                  ; preds = %for.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end172

for.body146:                                      ; preds = %if.end164.for.body146_crit_edge, %for.end130.for.body146_crit_edge
  %io_req.3339 = phi ptr [ %tmp.3341, %if.end164.for.body146_crit_edge ], [ %59, %for.end130.for.body146_crit_edge ]
  %i.3338 = phi i32 [ %inc147, %if.end164.for.body146_crit_edge ], [ %i.2.lcssa, %for.end130.for.body146_crit_edge ]
  %60 = ptrtoint ptr %io_req.3339 to i32
  call void @__asan_load4_noabort(i32 %60)
  %tmp.3341 = load ptr, ptr %io_req.3339, align 4
  %inc147 = add i32 %i.3338, 1
  %call.i.i300 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %io_req.3339) #6
  br i1 %call.i.i300, label %if.end.i.i303, label %for.body146.list_del_init.exit305_crit_edge

for.body146.list_del_init.exit305_crit_edge:      ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit305

if.end.i.i303:                                    ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i301 = getelementptr inbounds %struct.list_head, ptr %io_req.3339, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i.i301 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i301, align 4
  %63 = ptrtoint ptr %io_req.3339 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %io_req.3339, align 4
  %prev1.i.i.i302 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i302 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev1.i.i.i302, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %64, ptr %62, align 4
  br label %list_del_init.exit305

list_del_init.exit305:                            ; preds = %if.end.i.i303, %for.body146.list_del_init.exit305_crit_edge
  %67 = ptrtoint ptr %io_req.3339 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %io_req.3339, ptr %io_req.3339, align 4
  %prev.i3.i304 = getelementptr inbounds %struct.list_head, ptr %io_req.3339, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i3.i304 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %io_req.3339, ptr %prev.i3.i304, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req.3339, ptr noundef nonnull @.str.5) #6
  %timeout_work149 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req.3339, i32 0, i32 13
  %call150 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work149) #6
  br i1 %call150, label %if.then151, label %list_del_init.exit305.if.end164_crit_edge

list_del_init.exit305.if.end164_crit_edge:        ; preds = %list_del_init.exit305
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164

if.then151:                                       ; preds = %list_del_init.exit305
  %req_flags152 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req.3339, i32 0, i32 24
  %call153 = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %req_flags152) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.then151.if.end161_crit_edge, label %if.then155

if.then151.if.end161_crit_edge:                   ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end161

if.then155:                                       ; preds = %if.then151
  tail call void (ptr, ptr, ...) @BNX2FC_IO_DBG(ptr noundef %io_req.3339, ptr noundef nonnull @.str.6) #6
  %wait_for_abts_comp156 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req.3339, i32 0, i32 16
  %69 = ptrtoint ptr %wait_for_abts_comp156 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %wait_for_abts_comp156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool157.not = icmp eq i32 %70, 0
  br i1 %tobool157.not, label %if.then155.if.end161_crit_edge, label %if.then158

if.then155.if.end161_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end161

if.then158:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #8
  %abts_done159 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req.3339, i32 0, i32 14
  tail call void @complete(ptr noundef %abts_done159) #6
  br label %if.end161

if.end161:                                        ; preds = %if.then158, %if.then155.if.end161_crit_edge, %if.then151.if.end161_crit_edge
  %refcount162 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req.3339, i32 0, i32 5
  %call.i.i.i.i.i.i306 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount162, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !178
  tail call void @llvm.prefetch.p0(ptr %refcount162, i32 1, i32 3, i32 1) #6
  %71 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount162, ptr %refcount162, i32 1, ptr elementtype(i32) %refcount162) #6, !srcloc !179
  %asmresult.i.i.i.i.i.i.i307 = extractvalue { i32, i32, i32 } %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i307)
  %cmp.i.i.i.i308 = icmp eq i32 %asmresult.i.i.i.i.i.i.i307, 1
  br i1 %cmp.i.i.i.i308, label %if.then.i312, label %if.end5.i.i.i.i310

if.end5.i.i.i.i310:                               ; preds = %if.end161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i307)
  %.not.i.i.i.i309 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i307, 0
  br i1 %.not.i.i.i.i309, label %if.end5.i.i.i.i310.if.end164_crit_edge, label %if.then10.i.i.i.i311, !prof !180

if.end5.i.i.i.i310.if.end164_crit_edge:           ; preds = %if.end5.i.i.i.i310
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164

if.then10.i.i.i.i311:                             ; preds = %if.end5.i.i.i.i310
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount162, i32 noundef 3) #6
  br label %if.end164

if.then.i312:                                     ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !181
  tail call void @bnx2fc_cmd_release(ptr noundef %refcount162) #6
  br label %if.end164

if.end164:                                        ; preds = %if.then.i312, %if.then10.i.i.i.i311, %if.end5.i.i.i.i310.if.end164_crit_edge, %list_del_init.exit305.if.end164_crit_edge
  %req_flags165 = getelementptr inbounds %struct.bnx2fc_cmd, ptr %io_req.3339, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %req_flags165) #6
  %cmp143.not = icmp eq ptr %tmp.3341, %io_retire_queue
  br i1 %cmp143.not, label %if.end164.for.end172_crit_edge, label %if.end164.for.body146_crit_edge

if.end164.for.body146_crit_edge:                  ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body146

if.end164.for.end172_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end172

for.end172:                                       ; preds = %if.end164.for.end172_crit_edge, %for.end130.for.end172_crit_edge
  %i.3.lcssa = phi i32 [ %i.2.lcssa, %for.end130.for.end172_crit_edge ], [ %inc147, %if.end164.for.end172_crit_edge ]
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %tgt, ptr noundef nonnull @.str.7, i32 noundef %i.3.lcssa) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock) #6
  %72 = ptrtoint ptr %num_active_ios to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_active_ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp176.not343.not = icmp eq i32 %73, 0
  br i1 %cmp176.not343.not, label %for.end172.if.end190_crit_edge, label %for.end172.while.body_crit_edge

for.end172.while.body_crit_edge:                  ; preds = %for.end172
  br label %while.body

for.end172.if.end190_crit_edge:                   ; preds = %for.end172
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end190

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.end172.while.body_crit_edge
  %i.4344 = phi i32 [ %inc177, %while.body.while.body_crit_edge ], [ 0, %for.end172.while.body_crit_edge ]
  %inc177 = add nuw nsw i32 %i.4344, 1
  tail call void @msleep(i32 noundef 25) #6
  %74 = ptrtoint ptr %num_active_ios to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_active_ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp176.not = icmp ne i32 %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1199, i32 %i.4344)
  %cmp178 = icmp ult i32 %i.4344, 1199
  %or.cond = select i1 %cmp176.not, i1 %cmp178, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp181.not = icmp eq i32 %75, 0
  br i1 %cmp181.not, label %while.end.if.end190_crit_edge, label %do.end185

while.end.if.end190_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end190

do.end185:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %rdata = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 2
  %76 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rdata, align 4
  %port_id = getelementptr inbounds %struct.fc_rport_priv, ptr %77, i32 0, i32 4, i32 2
  %78 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %port_id, align 8
  %call189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %79, i32 noundef %75) #9
  br label %if.end190

if.end190:                                        ; preds = %do.end185, %while.end.if.end190_crit_edge, %for.end172.if.end190_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %tgt_lock) #6
  %80 = ptrtoint ptr %flush_in_prog to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %flush_in_prog, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %tgt_lock) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @BNX2FC_TGT_DBG(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @BNX2FC_IO_DBG(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_cmd_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_process_cleanup_compl(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_initiate_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2fc_rport_event_handler(ptr noundef %lport, ptr noundef %rdata, i32 noundef %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.fc_lport, ptr %lport, i32 1
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %hba1 = getelementptr inbounds %struct.bnx2fc_interface, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hba1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hba1, align 4
  %rport2 = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata, i32 0, i32 1
  %4 = ptrtoint ptr %rport2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rport2, align 4
  %port_id3 = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %port_id3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_id3, align 8
  tail call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef %lport, ptr noundef nonnull @.str.11, i32 noundef %event, i32 noundef %7) #6
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %entry.sw.bb36_crit_edge
    i32 2, label %entry.sw.bb36_crit_edge141
    i32 3, label %entry.sw.bb36_crit_edge142
  ]

entry.sw.bb36_crit_edge142:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb36

entry.sw.bb36_crit_edge141:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb36

entry.sw.bb36_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb36

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %dd_data = getelementptr inbounds %struct.fc_rport, ptr %5, i32 0, i32 11
  %9 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dd_data, align 4
  %port_id5 = getelementptr inbounds %struct.fc_rport, ptr %5, i32 0, i32 6
  %11 = ptrtoint ptr %port_id5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_id5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777212, i32 %12)
  %cmp = icmp eq i32 %12, 16777212
  br i1 %cmp, label %do.end9, label %if.end14

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %port_id3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_id3, align 8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %14) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %spp_type = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata, i32 0, i32 23
  %15 = ptrtoint ptr %spp_type to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %spp_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %16)
  %cmp15.not = icmp eq i8 %16, 8
  br i1 %cmp15.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef %lport, ptr noundef nonnull @.str.17) #6
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %roles = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata, i32 0, i32 4, i32 3
  %17 = ptrtoint ptr %roles to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %roles, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef %lport, ptr noundef nonnull @.str.18) #6
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %hba_mutex = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %hba_mutex, i32 noundef 0) #6
  %arrayidx = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 1
  %flags = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 2, i32 4
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags, align 4
  %21 = and i32 %20, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool24.not = icmp eq i32 %21, 0
  br i1 %tobool24.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %arrayidx, ptr noundef nonnull @.str.19) #6
  tail call void @mutex_unlock(ptr noundef %hba_mutex) #6
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %22 = ptrtoint ptr %rport2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rport2, align 4
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 4
  %hba2.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %hba2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hba2.i, align 4
  %rx_db4.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 4, i32 2
  %rport5.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 1, i32 1
  %28 = ptrtoint ptr %rport5.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %23, ptr %rport5.i.i, align 4
  %rdata6.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 1, i32 2
  %29 = ptrtoint ptr %rdata6.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %rdata, ptr %rdata6.i.i, align 4
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i, ptr %arrayidx, align 4
  %num_ofld_sess.i.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %27, i32 0, i32 41
  %31 = ptrtoint ptr %num_ofld_sess.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_ofld_sess.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %32)
  %cmp.i.i = icmp sgt i32 %32, 1023
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %arrayidx, ptr noundef nonnull @.str.45) #6
  br label %do.end.sink.split.i

if.end.i.i:                                       ; preds = %if.end27
  %hba_lock.i.i.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %27, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %hba_lock.i.i.i) #6
  %next_conn_id.i.i.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %27, i32 0, i32 11
  %33 = ptrtoint ptr %next_conn_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %next_conn_id.i.i.i, align 8
  %inc.i.i.i = add i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i.i.i)
  %cmp.i.i.i = icmp eq i32 %inc.i.i.i, 1024
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 %inc.i.i.i
  %35 = ptrtoint ptr %next_conn_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %spec.select.i.i.i, ptr %next_conn_id.i.i.i, align 8
  %tgt_ofld_list.i.i.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %27, i32 0, i32 30
  %36 = ptrtoint ptr %tgt_ofld_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tgt_ofld_list.i.i.i, align 4
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %if.end.i.i
  %conn_id.0.i.i.i = phi i32 [ %34, %if.end.i.i ], [ %spec.store.select.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr ptr, ptr %37, i32 %conn_id.0.i.i.i
  %38 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i.i, align 4
  %cmp4.not.i.i.i = icmp eq ptr %39, null
  br i1 %cmp4.not.i.i.i, label %bnx2fc_alloc_conn_id.exit.i.i, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %inc5.i.i.i = add i32 %conn_id.0.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc5.i.i.i)
  %cmp6.i.i.i = icmp eq i32 %inc5.i.i.i, 1024
  %spec.store.select.i.i.i = select i1 %cmp6.i.i.i, i32 0, i32 %inc5.i.i.i
  %cmp9.i.i.i = icmp eq i32 %spec.store.select.i.i.i, %34
  br i1 %cmp9.i.i.i, label %bnx2fc_alloc_conn_id.exit.thread.i.i, label %while.body.i.i.i.while.cond.i.i.i_crit_edge

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i.i

bnx2fc_alloc_conn_id.exit.thread.i.i:             ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %hba_lock.i.i.i) #6
  br label %do.end.sink.split.i

bnx2fc_alloc_conn_id.exit.i.i:                    ; preds = %while.cond.i.i.i
  %arrayidx.i.i.i.le = getelementptr ptr, ptr %37, i32 %conn_id.0.i.i.i
  %40 = ptrtoint ptr %arrayidx.i.i.i.le to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx, ptr %arrayidx.i.i.i.le, align 4
  %fcoe_conn_id.i.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 2
  %41 = ptrtoint ptr %fcoe_conn_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conn_id.0.i.i.i, ptr %fcoe_conn_id.i.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %hba_lock.i.i.i) #6
  %42 = ptrtoint ptr %fcoe_conn_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conn_id.0.i.i.i, ptr %fcoe_conn_id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %conn_id.0.i.i.i)
  %cmp10.i.i = icmp eq i32 %conn_id.0.i.i.i, -1
  br i1 %cmp10.i.i, label %bnx2fc_alloc_conn_id.exit.i.i.do.end.i_crit_edge, label %if.end12.i.i

bnx2fc_alloc_conn_id.exit.i.i.do.end.i_crit_edge: ; preds = %bnx2fc_alloc_conn_id.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end12.i.i:                                     ; preds = %bnx2fc_alloc_conn_id.exit.i.i
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %arrayidx, ptr noundef nonnull @.str.46, i32 noundef %conn_id.0.i.i.i) #6
  %max_sqes.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 3, i32 2
  %43 = ptrtoint ptr %max_sqes.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 256, ptr %max_sqes.i.i, align 4
  %max_rqes.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 3, i32 3
  %44 = ptrtoint ptr %max_rqes.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 16, ptr %max_rqes.i.i, align 4
  %max_cqes.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 3, i32 4
  %45 = ptrtoint ptr %max_cqes.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 272, ptr %max_cqes.i.i, align 4
  %free_sqes.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_sqes.i.i, i32 noundef 4) #6
  %46 = ptrtoint ptr %free_sqes.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 256, ptr %free_sqes.i.i, align 4
  %sq_curr_toggle_bit.i.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %arrayidx, i32 0, i32 20
  %47 = ptrtoint ptr %sq_curr_toggle_bit.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %sq_curr_toggle_bit.i.i, align 2
  %cq_curr_toggle_bit.i.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %arrayidx, i32 0, i32 25
  %48 = ptrtoint ptr %cq_curr_toggle_bit.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %cq_curr_toggle_bit.i.i, align 2
  %sq_prod_idx.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 5
  %49 = ptrtoint ptr %sq_prod_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %sq_prod_idx.i.i, align 4
  %cq_cons_idx.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 5, i32 4
  %50 = ptrtoint ptr %cq_cons_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %cq_cons_idx.i.i, align 4
  %rq_prod_idx.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 6, i32 3
  %51 = ptrtoint ptr %rq_prod_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 32768, ptr %rq_prod_idx.i.i, align 4
  %rq_cons_idx.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 6, i32 4
  %52 = ptrtoint ptr %rq_cons_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %rq_cons_idx.i.i, align 4
  %num_active_ios.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 17, i32 1
  %call.i.i89.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_active_ios.i.i, i32 noundef 4) #6
  %53 = ptrtoint ptr %num_active_ios.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 0, ptr %num_active_ios.i.i, align 4
  %retry_delay_timestamp.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 17, i32 4
  %54 = ptrtoint ptr %retry_delay_timestamp.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %retry_delay_timestamp.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata, i32 0, i32 5
  %55 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %flags.i.i, align 8
  %57 = and i16 %56, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool.not.i.i = icmp eq i16 %57, 0
  br i1 %tobool.not.i.i, label %if.end12.i.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i

if.end12.i.i.if.else.i.i_crit_edge:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end12.i.i
  %58 = ptrtoint ptr %roles to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %roles, align 4
  %60 = and i32 %59, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %land.lhs.true.i.i.if.end.i_crit_edge, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.end12.i.i.if.else.i.i_crit_edge
  br label %if.end.i

do.end.sink.split.i:                              ; preds = %bnx2fc_alloc_conn_id.exit.thread.i.i, %if.then.i.i
  %fcoe_conn_id.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 2
  %62 = ptrtoint ptr %fcoe_conn_id.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %fcoe_conn_id.i.i, align 4
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.sink.split.i, %bnx2fc_alloc_conn_id.exit.i.i.do.end.i_crit_edge
  %port_id.i = getelementptr inbounds %struct.fc_rport, ptr %23, i32 0, i32 6
  %63 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port_id.i, align 8
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %64) #9
  br label %tgt_init_err.i

if.end.i:                                         ; preds = %if.else.i.i, %land.lhs.true.i.i.if.end.i_crit_edge
  %.sink103.i.i = phi i32 [ 0, %if.else.i.i ], [ 1, %land.lhs.true.i.i.if.end.i_crit_edge ]
  %.sink.i.i = phi i32 [ 20000, %if.else.i.i ], [ 0, %land.lhs.true.i.i.if.end.i_crit_edge ]
  %dev_type22.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 2, i32 3
  %65 = ptrtoint ptr %dev_type22.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %.sink103.i.i, ptr %dev_type22.i.i, align 4
  %io_timeout23.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 1, i32 4
  %66 = ptrtoint ptr %io_timeout23.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %.sink.i.i, ptr %io_timeout23.i.i, align 4
  %header.i.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %arrayidx, i32 0, i32 15, i32 2
  %67 = ptrtoint ptr %header.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 66, ptr %header.i.i, align 1
  %68 = ptrtoint ptr %rx_db4.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 67, ptr %rx_db4.i.i, align 2
  %params.i.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %arrayidx, i32 0, i32 16, i32 1
  %69 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 98, ptr %params.i.i, align 1
  %tgt_lock.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 12, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %tgt_lock.i.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @bnx2fc_init_tgt.__key, i16 noundef signext 3) #6
  %cq_lock.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %cq_lock.i.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @bnx2fc_init_tgt.__key.48, i16 noundef signext 3) #6
  %active_cmd_queue.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 69, i32 4
  %70 = ptrtoint ptr %active_cmd_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %active_cmd_queue.i.i, ptr %active_cmd_queue.i.i, align 4
  %prev.i.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 70
  %71 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %active_cmd_queue.i.i, ptr %prev.i.i.i, align 4
  %io_retire_queue.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 70, i32 3
  %72 = ptrtoint ptr %io_retire_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %io_retire_queue.i.i, ptr %io_retire_queue.i.i, align 4
  %prev.i90.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 70, i32 4
  %73 = ptrtoint ptr %prev.i90.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %io_retire_queue.i.i, ptr %prev.i90.i.i, align 4
  %els_queue.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 70, i32 1
  %74 = ptrtoint ptr %els_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %els_queue.i.i, ptr %els_queue.i.i, align 4
  %prev.i91.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 70, i32 2
  %75 = ptrtoint ptr %prev.i91.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %els_queue.i.i, ptr %prev.i91.i.i, align 4
  %active_tm_queue.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 71
  %76 = ptrtoint ptr %active_tm_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %active_tm_queue.i.i, ptr %active_tm_queue.i.i, align 4
  %prev.i92.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 71, i32 1
  %77 = ptrtoint ptr %prev.i92.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %active_tm_queue.i.i, ptr %prev.i92.i.i, align 4
  %ofld_wait.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 73, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %ofld_wait.i.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @bnx2fc_init_tgt.__key.50) #6
  %upld_wait.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 78, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %upld_wait.i.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @bnx2fc_init_tgt.__key.52) #6
  %78 = ptrtoint ptr %max_sqes.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_sqes.i.i, align 4
  %mul.i.i = shl i32 %79, 1
  %sq_mem_size.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 5, i32 1
  %add.i.i = add i32 %mul.i.i, 4095
  %and.i.i = and i32 %add.i.i, -4096
  %80 = ptrtoint ptr %sq_mem_size.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %and.i.i, ptr %sq_mem_size.i.i, align 4
  %pcidev.i.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %27, i32 0, i32 2
  %81 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pcidev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  %sq_dma.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 4, i32 4
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef %and.i.i, ptr noundef %sq_dma.i.i, i32 noundef 3264, i32 noundef 0) #6
  %sq.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 4, i32 3
  %83 = ptrtoint ptr %sq.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call.i.i.i, ptr %sq.i.i, align 4
  %tobool.not.i100.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i100.i, label %do.end.i.i, label %if.end.i102.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %sq_mem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sq_mem_size.i.i, align 4
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %85) #9
  br label %do.end9.i

if.end.i102.i:                                    ; preds = %if.end.i
  %86 = ptrtoint ptr %max_cqes.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %max_cqes.i.i, align 4
  %mul7.i.i = shl i32 %87, 1
  %cq_mem_size.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 6
  %add9.i.i = add i32 %mul7.i.i, 4095
  %and10.i.i = and i32 %add9.i.i, -4096
  %88 = ptrtoint ptr %cq_mem_size.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %and10.i.i, ptr %cq_mem_size.i.i, align 4
  %89 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pcidev.i.i, align 4
  %dev13.i.i = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  %cq_dma.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 5, i32 3
  %call.i296.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev13.i.i, i32 noundef %and10.i.i, ptr noundef %cq_dma.i.i, i32 noundef 3264, i32 noundef 0) #6
  %cq.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 5, i32 2
  %91 = ptrtoint ptr %cq.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call.i296.i.i, ptr %cq.i.i, align 4
  %tobool17.not.i.i = icmp eq ptr %call.i296.i.i, null
  br i1 %tobool17.not.i.i, label %do.end21.i.i, label %if.end25.i.i

do.end21.i.i:                                     ; preds = %if.end.i102.i
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %cq_mem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cq_mem_size.i.i, align 4
  %call24.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %93) #9
  br label %do.end9.i

if.end25.i.i:                                     ; preds = %if.end.i102.i
  %94 = ptrtoint ptr %max_rqes.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %max_rqes.i.i, align 4
  %mul26.i.i = shl i32 %95, 8
  %rq_mem_size.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 7
  %add28.i.i = add i32 %mul26.i.i, 4095
  %and29.i.i = and i32 %add28.i.i, -4096
  %96 = ptrtoint ptr %rq_mem_size.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %and29.i.i, ptr %rq_mem_size.i.i, align 4
  %97 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pcidev.i.i, align 4
  %dev32.i.i = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 44
  %rq_dma.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 6, i32 2
  %call.i297.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev32.i.i, i32 noundef %and29.i.i, ptr noundef %rq_dma.i.i, i32 noundef 3264, i32 noundef 0) #6
  %rq.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 6, i32 1
  %99 = ptrtoint ptr %rq.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call.i297.i.i, ptr %rq.i.i, align 4
  %tobool36.not.i.i = icmp eq ptr %call.i297.i.i, null
  %100 = ptrtoint ptr %rq_mem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rq_mem_size.i.i, align 4
  br i1 %tobool36.not.i.i, label %do.end40.i.i, label %if.end44.i.i

do.end40.i.i:                                     ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call43.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %101) #9
  br label %do.end9.i

if.end44.i.i:                                     ; preds = %if.end25.i.i
  %102 = lshr i32 %101, 10
  %mul46.i.i = and i32 %102, 4194300
  %rq_pbl_size.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 7, i32 3
  %add48.i.i = add nuw nsw i32 %mul46.i.i, 4095
  %and49.i.i = and i32 %add48.i.i, 8384512
  %103 = ptrtoint ptr %rq_pbl_size.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %and49.i.i, ptr %rq_pbl_size.i.i, align 4
  %104 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pcidev.i.i, align 4
  %dev52.i.i = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 44
  %rq_pbl_dma.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 7, i32 2
  %call.i298.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev52.i.i, i32 noundef %and49.i.i, ptr noundef %rq_pbl_dma.i.i, i32 noundef 3264, i32 noundef 0) #6
  %rq_pbl.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 7, i32 1
  %106 = ptrtoint ptr %rq_pbl.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call.i298.i.i, ptr %rq_pbl.i.i, align 4
  %tobool56.not.i.i = icmp eq ptr %call.i298.i.i, null
  br i1 %tobool56.not.i.i, label %do.end60.i.i, label %if.end64.i.i

do.end60.i.i:                                     ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %107 = ptrtoint ptr %rq_pbl_size.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rq_pbl_size.i.i, align 4
  %call63.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %108) #9
  br label %do.end9.i

if.end64.i.i:                                     ; preds = %if.end44.i.i
  %109 = ptrtoint ptr %rq_mem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rq_mem_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %110)
  %tobool69.not304.i.i = icmp ult i32 %110, 4096
  br i1 %tobool69.not304.i.i, label %if.end64.i.i.while.end.i.i_crit_edge, label %while.body.preheader.i.i

if.end64.i.i.while.end.i.i_crit_edge:             ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

while.body.preheader.i.i:                         ; preds = %if.end64.i.i
  %111 = ptrtoint ptr %rq_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rq_dma.i.i, align 4
  %div66293.i.i = lshr i32 %110, 12
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %page.0307.i.i = phi i32 [ %add72.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %112, %while.body.preheader.i.i ]
  %num_pages.0306.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %div66293.i.i, %while.body.preheader.i.i ]
  %pbl.0305.i.i = phi ptr [ %incdec.ptr71.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %call.i298.i.i, %while.body.preheader.i.i ]
  %dec.i.i = add nsw i32 %num_pages.0306.i.i, -1
  %113 = ptrtoint ptr %pbl.0305.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %page.0307.i.i, ptr %pbl.0305.i.i, align 4
  %incdec.ptr.i.i = getelementptr i32, ptr %pbl.0305.i.i, i32 1
  %114 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %incdec.ptr.i.i, align 4
  %incdec.ptr71.i.i = getelementptr i32, ptr %pbl.0305.i.i, i32 2
  %add72.i.i = add i32 %page.0307.i.i, 4096
  %tobool69.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool69.not.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %if.end64.i.i.while.end.i.i_crit_edge
  %115 = ptrtoint ptr %max_sqes.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %max_sqes.i.i, align 4
  %mul74.i.i = shl i32 %116, 1
  %xferq_mem_size.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 8, i32 1
  %add76.i.i = add i32 %mul74.i.i, 4095
  %and77.i.i = and i32 %add76.i.i, -4096
  %117 = ptrtoint ptr %xferq_mem_size.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %and77.i.i, ptr %xferq_mem_size.i.i, align 4
  %118 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pcidev.i.i, align 4
  %dev80.i.i = getelementptr inbounds %struct.pci_dev, ptr %119, i32 0, i32 44
  %xferq_dma.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 8
  %call.i299.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev80.i.i, i32 noundef %and77.i.i, ptr noundef %xferq_dma.i.i, i32 noundef 3264, i32 noundef 0) #6
  %xferq.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 7, i32 4
  %120 = ptrtoint ptr %xferq.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call.i299.i.i, ptr %xferq.i.i, align 4
  %tobool84.not.i.i = icmp eq ptr %call.i299.i.i, null
  br i1 %tobool84.not.i.i, label %do.end88.i.i, label %if.end92.i.i

do.end88.i.i:                                     ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %121 = ptrtoint ptr %xferq_mem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %xferq_mem_size.i.i, align 4
  %call91.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %122) #9
  br label %do.end9.i

if.end92.i.i:                                     ; preds = %while.end.i.i
  %123 = ptrtoint ptr %max_sqes.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %max_sqes.i.i, align 4
  %mul94.i.i = shl i32 %124, 3
  %confq_mem_size.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 8, i32 4
  %add96.i.i = add i32 %mul94.i.i, 4095
  %and97.i.i = and i32 %add96.i.i, -4096
  %125 = ptrtoint ptr %confq_mem_size.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %and97.i.i, ptr %confq_mem_size.i.i, align 4
  %126 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pcidev.i.i, align 4
  %dev100.i.i = getelementptr inbounds %struct.pci_dev, ptr %127, i32 0, i32 44
  %confq_dma.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 8, i32 3
  %call.i300.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev100.i.i, i32 noundef %and97.i.i, ptr noundef %confq_dma.i.i, i32 noundef 3264, i32 noundef 0) #6
  %confq.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 8, i32 2
  %128 = ptrtoint ptr %confq.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call.i300.i.i, ptr %confq.i.i, align 4
  %tobool104.not.i.i = icmp eq ptr %call.i300.i.i, null
  %129 = ptrtoint ptr %confq_mem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %confq_mem_size.i.i, align 4
  br i1 %tobool104.not.i.i, label %do.end108.i.i, label %if.end112.i.i

do.end108.i.i:                                    ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call111.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %130) #9
  br label %do.end9.i

if.end112.i.i:                                    ; preds = %if.end92.i.i
  %131 = lshr i32 %130, 10
  %mul115.i.i = and i32 %131, 4194300
  %confq_pbl_size.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 9, i32 2
  %add117.i.i = add nuw nsw i32 %mul115.i.i, 4095
  %and118.i.i = and i32 %add117.i.i, 8384512
  %132 = ptrtoint ptr %confq_pbl_size.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %and118.i.i, ptr %confq_pbl_size.i.i, align 4
  %133 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %pcidev.i.i, align 4
  %dev121.i.i = getelementptr inbounds %struct.pci_dev, ptr %134, i32 0, i32 44
  %confq_pbl_dma.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 9, i32 1
  %call.i301.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev121.i.i, i32 noundef %and118.i.i, ptr noundef %confq_pbl_dma.i.i, i32 noundef 3264, i32 noundef 0) #6
  %confq_pbl.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 9
  %135 = ptrtoint ptr %confq_pbl.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call.i301.i.i, ptr %confq_pbl.i.i, align 4
  %tobool125.not.i.i = icmp eq ptr %call.i301.i.i, null
  br i1 %tobool125.not.i.i, label %do.end129.i.i, label %if.end133.i.i

do.end129.i.i:                                    ; preds = %if.end112.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %136 = ptrtoint ptr %confq_pbl_size.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %confq_pbl_size.i.i, align 4
  %call132.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %137) #9
  br label %do.end9.i

if.end133.i.i:                                    ; preds = %if.end112.i.i
  %138 = ptrtoint ptr %confq_mem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %confq_mem_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %139)
  %tobool140.not308.i.i = icmp ult i32 %139, 4096
  br i1 %tobool140.not308.i.i, label %if.end133.i.i.while.end148.i.i_crit_edge, label %while.body141.preheader.i.i

if.end133.i.i.while.end148.i.i_crit_edge:         ; preds = %if.end133.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end148.i.i

while.body141.preheader.i.i:                      ; preds = %if.end133.i.i
  %140 = ptrtoint ptr %confq_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %confq_dma.i.i, align 4
  %div135295.i.i = lshr i32 %139, 12
  br label %while.body141.i.i

while.body141.i.i:                                ; preds = %while.body141.i.i.while.body141.i.i_crit_edge, %while.body141.preheader.i.i
  %page.1311.i.i = phi i32 [ %add147.i.i, %while.body141.i.i.while.body141.i.i_crit_edge ], [ %141, %while.body141.preheader.i.i ]
  %num_pages.1310.i.i = phi i32 [ %dec139.i.i, %while.body141.i.i.while.body141.i.i_crit_edge ], [ %div135295.i.i, %while.body141.preheader.i.i ]
  %pbl.1309.i.i = phi ptr [ %incdec.ptr146.i.i, %while.body141.i.i.while.body141.i.i_crit_edge ], [ %call.i301.i.i, %while.body141.preheader.i.i ]
  %dec139.i.i = add nsw i32 %num_pages.1310.i.i, -1
  %142 = ptrtoint ptr %pbl.1309.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %page.1311.i.i, ptr %pbl.1309.i.i, align 4
  %incdec.ptr142.i.i = getelementptr i32, ptr %pbl.1309.i.i, i32 1
  %143 = ptrtoint ptr %incdec.ptr142.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %incdec.ptr142.i.i, align 4
  %incdec.ptr146.i.i = getelementptr i32, ptr %pbl.1309.i.i, i32 2
  %add147.i.i = add i32 %page.1311.i.i, 4096
  %tobool140.not.i.i = icmp eq i32 %dec139.i.i, 0
  br i1 %tobool140.not.i.i, label %while.body141.i.i.while.end148.i.i_crit_edge, label %while.body141.i.i.while.body141.i.i_crit_edge

while.body141.i.i.while.body141.i.i_crit_edge:    ; preds = %while.body141.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body141.i.i

while.body141.i.i.while.end148.i.i_crit_edge:     ; preds = %while.body141.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end148.i.i

while.end148.i.i:                                 ; preds = %while.body141.i.i.while.end148.i.i_crit_edge, %if.end133.i.i.while.end148.i.i_crit_edge
  %conn_db_mem_size.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 10
  %144 = ptrtoint ptr %conn_db_mem_size.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 16, ptr %conn_db_mem_size.i.i, align 4
  %145 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %pcidev.i.i, align 4
  %dev150.i.i = getelementptr inbounds %struct.pci_dev, ptr %146, i32 0, i32 44
  %conn_db_dma.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 9, i32 4
  %call.i302.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev150.i.i, i32 noundef 16, ptr noundef %conn_db_dma.i.i, i32 noundef 3264, i32 noundef 0) #6
  %conn_db.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 9, i32 3
  %147 = ptrtoint ptr %conn_db.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call.i302.i.i, ptr %conn_db.i.i, align 4
  %tobool154.not.i.i = icmp eq ptr %call.i302.i.i, null
  br i1 %tobool154.not.i.i, label %do.end158.i.i, label %if.end162.i.i

do.end158.i.i:                                    ; preds = %while.end148.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %148 = ptrtoint ptr %conn_db_mem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %conn_db_mem_size.i.i, align 4
  %call161.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %149) #9
  br label %do.end9.i

if.end162.i.i:                                    ; preds = %while.end148.i.i
  %150 = ptrtoint ptr %max_sqes.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %max_sqes.i.i, align 4
  %add164.i.i = shl i32 %151, 1
  %lcq_mem_size.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 10, i32 3
  %add167.i.i = add i32 %add164.i.i, 4111
  %and168.i.i = and i32 %add167.i.i, -4096
  %152 = ptrtoint ptr %lcq_mem_size.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %and168.i.i, ptr %lcq_mem_size.i.i, align 4
  %153 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %pcidev.i.i, align 4
  %dev171.i.i = getelementptr inbounds %struct.pci_dev, ptr %154, i32 0, i32 44
  %lcq_dma.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 10, i32 2
  %call.i303.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev171.i.i, i32 noundef %and168.i.i, ptr noundef %lcq_dma.i.i, i32 noundef 3264, i32 noundef 0) #6
  %lcq.i.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 10, i32 1
  %155 = ptrtoint ptr %lcq.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call.i303.i.i, ptr %lcq.i.i, align 4
  %tobool175.not.i.i = icmp eq ptr %call.i303.i.i, null
  br i1 %tobool175.not.i.i, label %do.end179.i.i, label %bnx2fc_alloc_session_resc.exit.i

do.end179.i.i:                                    ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %156 = ptrtoint ptr %lcq_mem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %lcq_mem_size.i.i, align 4
  %call182.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %157) #9
  br label %do.end9.i

bnx2fc_alloc_session_resc.exit.i:                 ; preds = %if.end162.i.i
  %158 = ptrtoint ptr %conn_db.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %conn_db.i.i, align 4
  %rq_prod.i.i = getelementptr inbounds %struct.fcoe_conn_db, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %rq_prod.i.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 -32768, ptr %rq_prod.i.i, align 2
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #6
  %call13.i = tail call i32 @bnx2fc_send_session_ofld_req(ptr noundef %add.ptr.i, ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end21.i, label %bnx2fc_alloc_session_resc.exit.i.do.end18.i_crit_edge

bnx2fc_alloc_session_resc.exit.i.do.end18.i_crit_edge: ; preds = %bnx2fc_alloc_session_resc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18.i

do.end9.i:                                        ; preds = %do.end179.i.i, %do.end158.i.i, %do.end129.i.i, %do.end108.i.i, %do.end88.i.i, %do.end60.i.i, %do.end40.i.i, %do.end21.i.i, %do.end.i.i
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #9
  br label %ofld_err.i

do.end18.i:                                       ; preds = %if.then29.2.i.do.end18.i_crit_edge, %if.then29.1.i.do.end18.i_crit_edge, %if.then29.i.do.end18.i_crit_edge, %bnx2fc_alloc_session_resc.exit.i.do.end18.i_crit_edge
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #9
  br label %ofld_err.i

if.end21.i:                                       ; preds = %bnx2fc_alloc_session_resc.exit.i
  tail call fastcc void @bnx2fc_ofld_wait(ptr noundef %arrayidx) #6
  %161 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %flags, align 4
  %163 = and i32 %162, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool24.not.i = icmp eq i32 %163, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %if.end21.i.if.end34.i_crit_edge

if.end21.i.if.end34.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

if.then25.i:                                      ; preds = %if.end21.i
  %call27.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.then25.i.ofld_err.i_crit_edge, label %if.then29.i

if.then25.i.ofld_err.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ofld_err.i

if.then29.i:                                      ; preds = %if.then25.i
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %arrayidx, ptr noundef nonnull @.str.37, i32 noundef 0) #6
  %call30.i = tail call i32 @msleep_interruptible(i32 noundef 1000) #6
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #6
  %call13.1.i = tail call i32 @bnx2fc_send_session_ofld_req(ptr noundef %add.ptr.i, ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.1.i)
  %tobool14.not.1.i = icmp eq i32 %call13.1.i, 0
  br i1 %tobool14.not.1.i, label %if.end21.1.i, label %if.then29.i.do.end18.i_crit_edge

if.then29.i.do.end18.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18.i

if.end21.1.i:                                     ; preds = %if.then29.i
  tail call fastcc void @bnx2fc_ofld_wait(ptr noundef %arrayidx) #6
  %164 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile i32, ptr %flags, align 4
  %166 = and i32 %165, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool24.not.1.i = icmp eq i32 %166, 0
  br i1 %tobool24.not.1.i, label %if.then25.1.i, label %if.end21.1.i.if.end34.i_crit_edge

if.end21.1.i.if.end34.i_crit_edge:                ; preds = %if.end21.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

if.then25.1.i:                                    ; preds = %if.end21.1.i
  %call27.1.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.1.i)
  %tobool28.not.1.i = icmp eq i32 %call27.1.i, 0
  br i1 %tobool28.not.1.i, label %if.then25.1.i.ofld_err.i_crit_edge, label %if.then29.1.i

if.then25.1.i.ofld_err.i_crit_edge:               ; preds = %if.then25.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ofld_err.i

if.then29.1.i:                                    ; preds = %if.then25.1.i
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %arrayidx, ptr noundef nonnull @.str.37, i32 noundef 1) #6
  %call30.1.i = tail call i32 @msleep_interruptible(i32 noundef 1000) #6
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #6
  %call13.2.i = tail call i32 @bnx2fc_send_session_ofld_req(ptr noundef %add.ptr.i, ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.2.i)
  %tobool14.not.2.i = icmp eq i32 %call13.2.i, 0
  br i1 %tobool14.not.2.i, label %if.end21.2.i, label %if.then29.1.i.do.end18.i_crit_edge

if.then29.1.i.do.end18.i_crit_edge:               ; preds = %if.then29.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18.i

if.end21.2.i:                                     ; preds = %if.then29.1.i
  tail call fastcc void @bnx2fc_ofld_wait(ptr noundef %arrayidx) #6
  %167 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %flags, align 4
  %169 = and i32 %168, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool24.not.2.i = icmp eq i32 %169, 0
  br i1 %tobool24.not.2.i, label %if.then25.2.i, label %if.end21.2.i.if.end34.i_crit_edge

if.end21.2.i.if.end34.i_crit_edge:                ; preds = %if.end21.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

if.then25.2.i:                                    ; preds = %if.end21.2.i
  %call27.2.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.2.i)
  %tobool28.not.2.i = icmp eq i32 %call27.2.i, 0
  br i1 %tobool28.not.2.i, label %if.then25.2.i.ofld_err.i_crit_edge, label %if.then29.2.i

if.then25.2.i.ofld_err.i_crit_edge:               ; preds = %if.then25.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ofld_err.i

if.then29.2.i:                                    ; preds = %if.then25.2.i
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %arrayidx, ptr noundef nonnull @.str.37, i32 noundef 2) #6
  %call30.2.i = tail call i32 @msleep_interruptible(i32 noundef 1000) #6
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #6
  %call13.3.i = tail call i32 @bnx2fc_send_session_ofld_req(ptr noundef %add.ptr.i, ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.3.i)
  %tobool14.not.3.i = icmp eq i32 %call13.3.i, 0
  br i1 %tobool14.not.3.i, label %if.end21.3.i, label %if.then29.2.i.do.end18.i_crit_edge

if.then29.2.i.do.end18.i_crit_edge:               ; preds = %if.then29.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18.i

if.end21.3.i:                                     ; preds = %if.then29.2.i
  tail call fastcc void @bnx2fc_ofld_wait(ptr noundef %arrayidx) #6
  %170 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %flags, align 4
  %172 = and i32 %171, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool24.not.3.i = icmp eq i32 %172, 0
  br i1 %tobool24.not.3.i, label %if.then25.3.i, label %if.end21.3.i.if.end34.i_crit_edge

if.end21.3.i.if.end34.i_crit_edge:                ; preds = %if.end21.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

if.then25.3.i:                                    ; preds = %if.end21.3.i
  %call27.3.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.3.i)
  %tobool28.not.3.i = icmp eq i32 %call27.3.i, 0
  br i1 %tobool28.not.3.i, label %if.then25.3.i.ofld_err.i_crit_edge, label %if.then29.3.i

if.then25.3.i.ofld_err.i_crit_edge:               ; preds = %if.then25.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ofld_err.i

if.then29.3.i:                                    ; preds = %if.then25.3.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %arrayidx, ptr noundef nonnull @.str.37, i32 noundef 3) #6
  %call30.3.i = tail call i32 @msleep_interruptible(i32 noundef 1000) #6
  br label %ofld_err.i

if.end34.i:                                       ; preds = %if.end21.3.i.if.end34.i_crit_edge, %if.end21.2.i.if.end34.i_crit_edge, %if.end21.1.i.if.end34.i_crit_edge, %if.end21.i.if.end34.i_crit_edge
  %call35.i = tail call i32 @bnx2fc_map_doorbell(ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end43.i, label %do.end40.i

do.end40.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #9
  br label %ofld_err.i

if.end43.i:                                       ; preds = %if.end34.i
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #6
  %call45.i = tail call i32 @bnx2fc_send_session_enable_req(ptr noundef %add.ptr.i, ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.end53.i, label %do.end50.i

do.end50.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #9
  br label %ofld_err.i

if.end53.i:                                       ; preds = %if.end43.i
  tail call fastcc void @bnx2fc_ofld_wait(ptr noundef %arrayidx) #6
  %173 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %flags, align 4
  %175 = and i32 %174, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool56.not.i = icmp eq i32 %175, 0
  br i1 %tobool56.not.i, label %if.end53.i.ofld_err.i_crit_edge, label %if.end53.i.bnx2fc_offload_session.exit_crit_edge

if.end53.i.bnx2fc_offload_session.exit_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bnx2fc_offload_session.exit

if.end53.i.ofld_err.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ofld_err.i

ofld_err.i:                                       ; preds = %if.end53.i.ofld_err.i_crit_edge, %do.end50.i, %do.end40.i, %if.then29.3.i, %if.then25.3.i.ofld_err.i_crit_edge, %if.then25.2.i.ofld_err.i_crit_edge, %if.then25.1.i.ofld_err.i_crit_edge, %if.then25.i.ofld_err.i_crit_edge, %do.end18.i, %do.end9.i
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %arrayidx, ptr noundef nonnull @.str.44) #6
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #6
  tail call fastcc void @bnx2fc_free_session_resc(ptr noundef %27, ptr noundef %arrayidx) #6
  br label %tgt_init_err.i

tgt_init_err.i:                                   ; preds = %ofld_err.i, %do.end.i
  %fcoe_conn_id.i = getelementptr %struct.fc_rport_libfc_priv, ptr %10, i32 2
  %176 = ptrtoint ptr %fcoe_conn_id.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %fcoe_conn_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %177)
  %cmp60.not.i = icmp eq i32 %177, -1
  br i1 %cmp60.not.i, label %tgt_init_err.i.if.end63.i_crit_edge, label %if.then61.i

tgt_init_err.i.if.end63.i_crit_edge:              ; preds = %tgt_init_err.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63.i

if.then61.i:                                      ; preds = %tgt_init_err.i
  call void @__sanitizer_cov_trace_pc() #8
  %hba_lock.i.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %27, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %hba_lock.i.i) #6
  %tgt_ofld_list.i.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %27, i32 0, i32 30
  %178 = ptrtoint ptr %tgt_ofld_list.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %tgt_ofld_list.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %179, i32 %177
  %180 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr null, ptr %arrayidx.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %hba_lock.i.i) #6
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then61.i, %tgt_init_err.i.if.end63.i_crit_edge
  %call64.i = tail call i32 @fc_rport_logoff(ptr noundef %rdata) #6
  br label %bnx2fc_offload_session.exit

bnx2fc_offload_session.exit:                      ; preds = %if.end63.i, %if.end53.i.bnx2fc_offload_session.exit_crit_edge
  %num_ofld_sess = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 41
  %181 = ptrtoint ptr %num_ofld_sess to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %num_ofld_sess, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %arrayidx, ptr noundef nonnull @.str.20, i32 noundef %182) #6
  %183 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %flags, align 4
  %185 = and i32 %184, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool30.not = icmp eq i32 %185, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %bnx2fc_offload_session.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %arrayidx, ptr noundef nonnull @.str.21) #6
  %186 = ptrtoint ptr %num_ofld_sess to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %num_ofld_sess, align 4
  %inc = add i32 %187, 1
  store i32 %inc, ptr %num_ofld_sess, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #6
  br label %if.end34

if.else:                                          ; preds = %bnx2fc_offload_session.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %arrayidx, ptr noundef nonnull @.str.22) #6
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then31
  tail call void @mutex_unlock(ptr noundef %hba_mutex) #6
  br label %cleanup

sw.bb36:                                          ; preds = %entry.sw.bb36_crit_edge, %entry.sw.bb36_crit_edge141, %entry.sw.bb36_crit_edge142
  %188 = ptrtoint ptr %port_id3 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %port_id3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777212, i32 %189)
  %cmp39 = icmp eq i32 %189, 16777212
  br i1 %cmp39, label %sw.bb36.cleanup_crit_edge, label %if.end42

sw.bb36.cleanup_crit_edge:                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %sw.bb36
  %tobool43.not = icmp eq ptr %5, null
  br i1 %tobool43.not, label %do.end47, label %if.end50

do.end47:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %189) #9
  br label %cleanup

if.end50:                                         ; preds = %if.end42
  %dd_data51 = getelementptr inbounds %struct.fc_rport, ptr %5, i32 0, i32 11
  %190 = ptrtoint ptr %dd_data51 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dd_data51, align 4
  %hba_mutex52 = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %hba_mutex52, i32 noundef 0) #6
  %flags54 = getelementptr %struct.fc_rport_libfc_priv, ptr %191, i32 2, i32 4
  %192 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load volatile i32, ptr %flags54, align 4
  %194 = and i32 %193, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool56.not = icmp eq i32 %194, 0
  br i1 %tobool56.not, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %hba_mutex52) #6
  br label %cleanup

if.end59:                                         ; preds = %if.end50
  %arrayidx53 = getelementptr %struct.fc_rport_libfc_priv, ptr %191, i32 1
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags54) #6
  %195 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %add.ptr.i, align 4
  %hba1.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %196, i32 0, i32 2
  %197 = ptrtoint ptr %hba1.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %hba1.i, align 4
  %num_active_ios.i = getelementptr %struct.fc_rport_libfc_priv, ptr %191, i32 17, i32 1
  %199 = ptrtoint ptr %num_active_ios.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %num_active_ios.i, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %arrayidx53, ptr noundef nonnull @.str.83, i32 noundef %200) #6
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %flags54) #6
  %call.i = tail call i32 @bnx2fc_send_session_disable_req(ptr noundef %add.ptr.i, ptr noundef %arrayidx53) #6
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %arrayidx53, ptr noundef nonnull @.str.84) #6
  tail call fastcc void @bnx2fc_upld_wait(ptr noundef %arrayidx53) #6
  %201 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %flags54, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %arrayidx53, ptr noundef nonnull @.str.85, i32 noundef %202) #6
  tail call void @bnx2fc_flush_active_ios(ptr noundef %arrayidx53) #6
  %203 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load volatile i32, ptr %flags54, align 4
  %205 = and i32 %204, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool.not.i = icmp eq i32 %205, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end59
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %arrayidx53, ptr noundef nonnull @.str.86) #6
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %flags54) #6
  %call6.i = tail call i32 @bnx2fc_send_session_destroy_req(ptr noundef %198, ptr noundef %arrayidx53) #6
  tail call fastcc void @bnx2fc_upld_wait(ptr noundef %arrayidx53) #6
  %206 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load volatile i32, ptr %flags54, align 4
  %208 = and i32 %207, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool9.not.i = icmp eq i32 %208, 0
  br i1 %tobool9.not.i, label %do.end.i124, label %if.then.i.if.end.i125_crit_edge

if.then.i.if.end.i125_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i125

do.end.i124:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #9
  br label %if.end.i125

if.end.i125:                                      ; preds = %do.end.i124, %if.then.i.if.end.i125_crit_edge
  %209 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %flags54, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %arrayidx53, ptr noundef nonnull @.str.89, i32 noundef %210) #6
  br label %bnx2fc_upload_session.exit

if.else.i:                                        ; preds = %if.end59
  %211 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load volatile i32, ptr %flags54, align 4
  %213 = and i32 %212, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool15.not.i = icmp eq i32 %213, 0
  br i1 %tobool15.not.i, label %do.end25.i, label %do.end19.i

do.end19.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #9
  br label %bnx2fc_upload_session.exit

do.end25.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %call27.i126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #9
  br label %bnx2fc_upload_session.exit

bnx2fc_upload_session.exit:                       ; preds = %do.end25.i, %do.end19.i, %if.end.i125
  tail call fastcc void @bnx2fc_free_session_resc(ptr noundef %198, ptr noundef %arrayidx53) #6
  %fcoe_conn_id.i127 = getelementptr %struct.fc_rport_libfc_priv, ptr %191, i32 2
  %214 = ptrtoint ptr %fcoe_conn_id.i127 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %fcoe_conn_id.i127, align 4
  %hba_lock.i.i128 = getelementptr inbounds %struct.bnx2fc_hba, ptr %198, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %hba_lock.i.i128) #6
  %tgt_ofld_list.i.i129 = getelementptr inbounds %struct.bnx2fc_hba, ptr %198, i32 0, i32 30
  %216 = ptrtoint ptr %tgt_ofld_list.i.i129 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %tgt_ofld_list.i.i129, align 4
  %arrayidx.i.i130 = getelementptr ptr, ptr %217, i32 %215
  %218 = ptrtoint ptr %arrayidx.i.i130 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr null, ptr %arrayidx.i.i130, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %hba_lock.i.i128) #6
  %num_ofld_sess61 = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 41
  %219 = ptrtoint ptr %num_ofld_sess61 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %num_ofld_sess61, align 4
  %dec = add i32 %220, -1
  store i32 %dec, ptr %num_ofld_sess61, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %arrayidx53, ptr noundef nonnull @.str.26, i32 noundef %dec) #6
  %wait_for_link_down = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 40
  %221 = ptrtoint ptr %wait_for_link_down to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %wait_for_link_down, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool63.not = icmp eq i32 %222, 0
  br i1 %tobool63.not, label %bnx2fc_upload_session.exit.if.end68_crit_edge, label %land.lhs.true

bnx2fc_upload_session.exit.if.end68_crit_edge:    ; preds = %bnx2fc_upload_session.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

land.lhs.true:                                    ; preds = %bnx2fc_upload_session.exit
  %223 = ptrtoint ptr %num_ofld_sess61 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %num_ofld_sess61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %cmp65 = icmp eq i32 %224, 0
  br i1 %cmp65, label %if.then67, label %land.lhs.true.if.end68_crit_edge

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then67:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %shutdown_wait = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 39
  tail call void @__wake_up(ptr noundef %shutdown_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %land.lhs.true.if.end68_crit_edge, %bnx2fc_upload_session.exit.if.end68_crit_edge
  tail call void @mutex_unlock(ptr noundef %hba_mutex52) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then57, %do.end47, %sw.bb36.cleanup_crit_edge, %if.end34, %if.then25, %if.then21, %if.then17, %do.end9, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @BNX2FC_HBA_DBG(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bnx2fc_tgt_lookup(ptr noundef readonly %port, i32 noundef %port_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %hba1 = getelementptr inbounds %struct.bnx2fc_interface, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hba1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hba1, align 4
  %tgt_ofld_list = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %tgt_ofld_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tgt_ofld_list, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.030 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.030
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %cmp3 = icmp eq ptr %9, %port
  br i1 %cmp3, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %rdata4 = getelementptr inbounds %struct.bnx2fc_rport, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %rdata4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rdata4, align 4
  %port_id5 = getelementptr inbounds %struct.fc_rport_priv, ptr %11, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %port_id5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_id5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %port_id)
  %cmp6 = icmp eq i32 %13, %port_id
  br i1 %cmp6, label %if.then7, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then7:                                         ; preds = %if.then
  %rp_state = getelementptr inbounds %struct.fc_rport_priv, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %rp_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rp_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %15)
  %cmp8.not = icmp eq i32 %15, 8
  br i1 %cmp8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef nonnull %7, ptr noundef nonnull @.str.27) #6
  br label %cleanup

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef nonnull %7, ptr noundef nonnull @.str.28, i32 noundef %port_id) #6
  br label %cleanup

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.else, %if.then9
  %retval.0 = phi ptr [ %7, %if.then9 ], [ null, %if.else ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_send_session_ofld_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2fc_ofld_wait(ptr noundef %tgt) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ofld_timer = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 66
  tail call void @init_timer_key(ptr noundef %ofld_timer, ptr noundef nonnull @bnx2fc_ofld_timer, i32 noundef 0, ptr noundef nonnull @.str.80, ptr noundef nonnull @bnx2fc_ofld_wait.__key) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 300
  %call = tail call i32 @mod_timer(ptr noundef %ofld_timer, i32 noundef %add) #6
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 74) #6
  %flags = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 9
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %3 = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %ofld_wait = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 67
  %call946 = call i32 @prepare_to_wait_event(ptr noundef %ofld_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not47 = icmp eq i32 %7, 0
  br i1 %tobool12.not47, label %if.then.if.end_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then.if.end_crit_edge
  %call948 = phi i32 [ %call9, %cleanup.if.end_crit_edge ], [ %call946, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call948)
  %tobool14.not = icmp eq i32 %call948, 0
  br i1 %tobool14.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #6
  %call9 = call i32 @prepare_to_wait_event(ptr noundef %ofld_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 32
  %tobool12.not = icmp eq i32 %10, 0
  br i1 %tobool12.not, label %cleanup.if.end_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @finish_wait(ptr noundef %ofld_wait, ptr noundef nonnull %__wq_entry) #6
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end18

if.end18:                                         ; preds = %__out, %entry.if.end18_crit_edge
  %11 = call i32 @llvm.read_register.i32(metadata !168) #6
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stack.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %19 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end18.if.then23_crit_edge, !prof !180

if.end18.if.then23_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

signal_pending.exit:                              ; preds = %if.end18
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %16, align 4
  %and1.i.i.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool22.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool22.not, label %signal_pending.exit.if.end26_crit_edge, label %signal_pending.exit.if.then23_crit_edge

signal_pending.exit.if.then23_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

signal_pending.exit.if.end26_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then23:                                        ; preds = %signal_pending.exit.if.then23_crit_edge, %if.end18.if.then23_crit_edge
  call void @flush_signals(ptr noundef %14) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %signal_pending.exit.if.end26_crit_edge
  %call28 = call i32 @del_timer_sync(ptr noundef %ofld_timer) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_map_doorbell(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_send_session_enable_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2fc_free_session_resc(ptr nocapture noundef readonly %hba, ptr noundef %tgt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %tgt, ptr noundef nonnull @.str.82) #6
  %cq_lock = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 55
  tail call void @_raw_spin_lock_bh(ptr noundef %cq_lock) #6
  %ctx_base = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 3
  %0 = ptrtoint ptr %ctx_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx_base, align 4
  store ptr null, ptr %ctx_base, align 4
  %lcq = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 47
  %2 = ptrtoint ptr %lcq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lcq, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pcidev = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 2
  %4 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %lcq_mem_size = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 49
  %6 = ptrtoint ptr %lcq_mem_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lcq_mem_size, align 4
  %lcq_dma = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 48
  %8 = ptrtoint ptr %lcq_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lcq_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %7, ptr noundef nonnull %3, i32 noundef %9, i32 noundef 0) #6
  %10 = ptrtoint ptr %lcq to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %lcq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conn_db = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 44
  %11 = ptrtoint ptr %conn_db to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conn_db, align 4
  %tobool4.not = icmp eq ptr %12, null
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pcidev6 = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 2
  %13 = ptrtoint ptr %pcidev6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcidev6, align 4
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %conn_db_mem_size = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 46
  %15 = ptrtoint ptr %conn_db_mem_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %conn_db_mem_size, align 4
  %conn_db_dma = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 45
  %17 = ptrtoint ptr %conn_db_dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %conn_db_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev7, i32 noundef %16, ptr noundef nonnull %12, i32 noundef %18, i32 noundef 0) #6
  %19 = ptrtoint ptr %conn_db to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %conn_db, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  %confq_pbl = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 41
  %20 = ptrtoint ptr %confq_pbl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %confq_pbl, align 4
  %tobool11.not = icmp eq ptr %21, null
  br i1 %tobool11.not, label %if.end10.if.end17_crit_edge, label %if.then12

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %pcidev13 = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 2
  %22 = ptrtoint ptr %pcidev13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcidev13, align 4
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %confq_pbl_size = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 43
  %24 = ptrtoint ptr %confq_pbl_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %confq_pbl_size, align 4
  %confq_pbl_dma = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 42
  %26 = ptrtoint ptr %confq_pbl_dma to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %confq_pbl_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev14, i32 noundef %25, ptr noundef nonnull %21, i32 noundef %27, i32 noundef 0) #6
  %28 = ptrtoint ptr %confq_pbl to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %confq_pbl, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end10.if.end17_crit_edge
  %confq = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 38
  %29 = ptrtoint ptr %confq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %confq, align 4
  %tobool18.not = icmp eq ptr %30, null
  br i1 %tobool18.not, label %if.end17.if.end24_crit_edge, label %if.then19

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %pcidev20 = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 2
  %31 = ptrtoint ptr %pcidev20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcidev20, align 4
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %confq_mem_size = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 40
  %33 = ptrtoint ptr %confq_mem_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %confq_mem_size, align 4
  %confq_dma = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 39
  %35 = ptrtoint ptr %confq_dma to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %confq_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev21, i32 noundef %34, ptr noundef nonnull %30, i32 noundef %36, i32 noundef 0) #6
  %37 = ptrtoint ptr %confq to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %confq, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end17.if.end24_crit_edge
  %xferq = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 35
  %38 = ptrtoint ptr %xferq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xferq, align 4
  %tobool25.not = icmp eq ptr %39, null
  br i1 %tobool25.not, label %if.end24.if.end31_crit_edge, label %if.then26

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %pcidev27 = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 2
  %40 = ptrtoint ptr %pcidev27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pcidev27, align 4
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %xferq_mem_size = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 37
  %42 = ptrtoint ptr %xferq_mem_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %xferq_mem_size, align 4
  %xferq_dma = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 36
  %44 = ptrtoint ptr %xferq_dma to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %xferq_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev28, i32 noundef %43, ptr noundef nonnull %39, i32 noundef %45, i32 noundef 0) #6
  %46 = ptrtoint ptr %xferq to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %xferq, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end24.if.end31_crit_edge
  %rq_pbl = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 32
  %47 = ptrtoint ptr %rq_pbl to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rq_pbl, align 4
  %tobool32.not = icmp eq ptr %48, null
  br i1 %tobool32.not, label %if.end31.if.end38_crit_edge, label %if.then33

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %pcidev34 = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 2
  %49 = ptrtoint ptr %pcidev34 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pcidev34, align 4
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %rq_pbl_size = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 34
  %51 = ptrtoint ptr %rq_pbl_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rq_pbl_size, align 4
  %rq_pbl_dma = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 33
  %53 = ptrtoint ptr %rq_pbl_dma to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rq_pbl_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev35, i32 noundef %52, ptr noundef nonnull %48, i32 noundef %54, i32 noundef 0) #6
  %55 = ptrtoint ptr %rq_pbl to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %rq_pbl, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end31.if.end38_crit_edge
  %rq = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 27
  %56 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rq, align 4
  %tobool39.not = icmp eq ptr %57, null
  br i1 %tobool39.not, label %if.end38.if.end45_crit_edge, label %if.then40

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %pcidev41 = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 2
  %58 = ptrtoint ptr %pcidev41 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pcidev41, align 4
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  %rq_mem_size = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 31
  %60 = ptrtoint ptr %rq_mem_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rq_mem_size, align 4
  %rq_dma = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 28
  %62 = ptrtoint ptr %rq_dma to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rq_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev42, i32 noundef %61, ptr noundef nonnull %57, i32 noundef %63, i32 noundef 0) #6
  %64 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %rq, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %if.end38.if.end45_crit_edge
  %cq = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 22
  %65 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cq, align 4
  %tobool46.not = icmp eq ptr %66, null
  br i1 %tobool46.not, label %if.end45.if.end52_crit_edge, label %if.then47

if.end45.if.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %pcidev48 = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 2
  %67 = ptrtoint ptr %pcidev48 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pcidev48, align 4
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  %cq_mem_size = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 26
  %69 = ptrtoint ptr %cq_mem_size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cq_mem_size, align 4
  %cq_dma = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 23
  %71 = ptrtoint ptr %cq_dma to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cq_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev49, i32 noundef %70, ptr noundef nonnull %66, i32 noundef %72, i32 noundef 0) #6
  %73 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %cq, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %if.end45.if.end52_crit_edge
  %sq = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 17
  %74 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sq, align 4
  %tobool53.not = icmp eq ptr %75, null
  br i1 %tobool53.not, label %if.end52.if.end59_crit_edge, label %if.then54

if.end52.if.end59_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %pcidev55 = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 2
  %76 = ptrtoint ptr %pcidev55 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pcidev55, align 4
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  %sq_mem_size = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 21
  %78 = ptrtoint ptr %sq_mem_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sq_mem_size, align 4
  %sq_dma = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 18
  %80 = ptrtoint ptr %sq_dma to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sq_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev56, i32 noundef %79, ptr noundef nonnull %75, i32 noundef %81, i32 noundef 0) #6
  %82 = ptrtoint ptr %sq to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %sq, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %if.end52.if.end59_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %cq_lock) #6
  %tobool61.not = icmp eq ptr %1, null
  br i1 %tobool61.not, label %if.end59.if.end63_crit_edge, label %if.then62

if.end59.if.end63_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iounmap(ptr noundef nonnull %1) #6
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end59.if.end63_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_rport_logoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2fc_ofld_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1408
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %add.ptr, ptr noundef nonnull @.str.81) #6
  %flags = getelementptr i8, ptr %t, i32 -1372
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #6
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %flags) #6
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #6
  %ofld_wait = getelementptr i8, ptr %t, i32 48
  tail call void @__wake_up(ptr noundef %ofld_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signals(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_send_session_disable_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2fc_upld_wait(ptr noundef %tgt) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %upld_timer = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 68
  tail call void @init_timer_key(ptr noundef %upld_timer, ptr noundef nonnull @bnx2fc_upld_timer, i32 noundef 0, ptr noundef nonnull @.str.96, ptr noundef nonnull @bnx2fc_upld_wait.__key) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 300
  %call = tail call i32 @mod_timer(ptr noundef %upld_timer, i32 noundef %add) #6
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 285) #6
  %flags = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 9
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %3 = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %upld_wait = getelementptr inbounds %struct.bnx2fc_rport, ptr %tgt, i32 0, i32 69
  %call946 = call i32 @prepare_to_wait_event(ptr noundef %upld_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not47 = icmp eq i32 %7, 0
  br i1 %tobool12.not47, label %if.then.if.end_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then.if.end_crit_edge
  %call948 = phi i32 [ %call9, %cleanup.if.end_crit_edge ], [ %call946, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call948)
  %tobool14.not = icmp eq i32 %call948, 0
  br i1 %tobool14.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #6
  %call9 = call i32 @prepare_to_wait_event(ptr noundef %upld_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 128
  %tobool12.not = icmp eq i32 %10, 0
  br i1 %tobool12.not, label %cleanup.if.end_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @finish_wait(ptr noundef %upld_wait, ptr noundef nonnull %__wq_entry) #6
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end18

if.end18:                                         ; preds = %__out, %entry.if.end18_crit_edge
  %11 = call i32 @llvm.read_register.i32(metadata !168) #6
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stack.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %19 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end18.if.then23_crit_edge, !prof !180

if.end18.if.then23_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

signal_pending.exit:                              ; preds = %if.end18
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %16, align 4
  %and1.i.i.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool22.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool22.not, label %signal_pending.exit.if.end26_crit_edge, label %signal_pending.exit.if.then23_crit_edge

signal_pending.exit.if.then23_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

signal_pending.exit.if.end26_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then23:                                        ; preds = %signal_pending.exit.if.then23_crit_edge, %if.end18.if.then23_crit_edge
  call void @flush_signals(ptr noundef %14) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %signal_pending.exit.if.end26_crit_edge
  %call28 = call i32 @del_timer_sync(ptr noundef %upld_timer) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_send_session_destroy_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2fc_upld_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1508
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef %add.ptr, ptr noundef nonnull @.str.97) #6
  %flags = getelementptr i8, ptr %t, i32 -1472
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #6
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %flags) #6
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags) #6
  %upld_wait = getelementptr i8, ptr %t, i32 48
  tail call void @__wake_up(ptr noundef %upld_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !73, !74, !76, !77, !78, !80, !82, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !138, !140, !142, !144, !146, !148, !150, !151, !152, !153, !155, !157, !158, !159, !161, !162, !163, !165, !166}
!llvm.named.register.sp = !{!168}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 172, i32 22}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 182, i32 25}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 188, i32 27}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 212, i32 25}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 222, i32 25}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 246, i32 25}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 252, i32 27}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 263, i32 22}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 270, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bnx2fc_flush_active_ios._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @bnx2fc_flush_active_ios._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 451, i32 24}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 456, i32 4}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @bnx2fc_rport_event_handler._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @bnx2fc_rport_event_handler._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 468, i32 4}
!31 = !{ptr @bnx2fc_rport_event_handler._entry.14, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @bnx2fc_rport_event_handler._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 474, i32 26}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 479, i32 26}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 493, i32 24}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 504, i32 23}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 509, i32 24}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 520, i32 24}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 533, i32 4}
!47 = !{ptr @bnx2fc_rport_event_handler._entry.23, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @bnx2fc_rport_event_handler._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 553, i32 23}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 593, i32 26}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 597, i32 26}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 94, i32 3}
!57 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @bnx2fc_offload_session._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @bnx2fc_offload_session._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 102, i32 3}
!62 = !{ptr @bnx2fc_offload_session._entry.31, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @bnx2fc_offload_session._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 115, i32 3}
!66 = !{ptr @bnx2fc_offload_session._entry.34, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @bnx2fc_offload_session._entry_ptr.36, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 128, i32 24}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 140, i32 3}
!72 = !{ptr @bnx2fc_offload_session._entry.38, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @bnx2fc_offload_session._entry_ptr.40, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 146, i32 3}
!76 = !{ptr @bnx2fc_offload_session._entry.41, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @bnx2fc_offload_session._entry_ptr.43, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 156, i32 22}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 366, i32 23}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 375, i32 22}
!84 = !{ptr @bnx2fc_init_tgt.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 414, i32 2}
!86 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @bnx2fc_init_tgt.__key.48, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 415, i32 2}
!89 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @bnx2fc_init_tgt.__key.50, !91, !"__key", i1 false, i1 false}
!91 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 428, i32 2}
!92 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @bnx2fc_init_tgt.__key.52, !94, !"__key", i1 false, i1 false}
!94 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 429, i32 2}
!95 = !{ptr @.str.53, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.54, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 677, i32 3}
!98 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @bnx2fc_alloc_session_resc._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @bnx2fc_alloc_session_resc._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.57, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 690, i32 3}
!103 = !{ptr @bnx2fc_alloc_session_resc._entry.56, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @bnx2fc_alloc_session_resc._entry_ptr.58, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.60, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 703, i32 3}
!107 = !{ptr @bnx2fc_alloc_session_resc._entry.59, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @bnx2fc_alloc_session_resc._entry_ptr.61, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.63, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 715, i32 3}
!111 = !{ptr @bnx2fc_alloc_session_resc._entry.62, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @bnx2fc_alloc_session_resc._entry_ptr.64, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.66, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 741, i32 3}
!115 = !{ptr @bnx2fc_alloc_session_resc._entry.65, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @bnx2fc_alloc_session_resc._entry_ptr.67, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.69, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 755, i32 3}
!119 = !{ptr @bnx2fc_alloc_session_resc._entry.68, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @bnx2fc_alloc_session_resc._entry_ptr.70, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.72, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 769, i32 3}
!123 = !{ptr @bnx2fc_alloc_session_resc._entry.71, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @bnx2fc_alloc_session_resc._entry_ptr.73, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.75, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 793, i32 3}
!127 = !{ptr @bnx2fc_alloc_session_resc._entry.74, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @bnx2fc_alloc_session_resc._entry_ptr.76, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.78, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 808, i32 3}
!131 = !{ptr @bnx2fc_alloc_session_resc._entry.77, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @bnx2fc_alloc_session_resc._entry_ptr.79, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @bnx2fc_ofld_wait.__key, !134, !"__key", i1 false, i1 false}
!134 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 68, i32 2}
!135 = !{ptr @.str.80, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.81, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 48, i32 22}
!138 = !{ptr @.str.82, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 834, i32 22}
!140 = !{ptr @.str.83, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 297, i32 22}
!142 = !{ptr @.str.84, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 311, i32 22}
!144 = !{ptr @.str.85, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 318, i32 22}
!146 = !{ptr @.str.86, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 324, i32 23}
!148 = !{ptr @.str.87, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 332, i32 4}
!150 = !{ptr @.str.88, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @bnx2fc_upload_session._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @bnx2fc_upload_session._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.89, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 334, i32 23}
!155 = !{ptr @.str.91, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 338, i32 3}
!157 = !{ptr @bnx2fc_upload_session._entry.90, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @bnx2fc_upload_session._entry_ptr.92, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.94, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 341, i32 3}
!161 = !{ptr @bnx2fc_upload_session._entry.93, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @bnx2fc_upload_session._entry_ptr.95, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @bnx2fc_upld_wait.__key, !164, !"__key", i1 false, i1 false}
!164 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 280, i32 2}
!165 = !{ptr @.str.96, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.97, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/bnx2fc/bnx2fc_tgt.c", i32 35, i32 22}
!168 = !{!"sp"}
!169 = !{i32 1, !"wchar_size", i32 2}
!170 = !{i32 1, !"min_enum_size", i32 4}
!171 = !{i32 8, !"branch-target-enforcement", i32 0}
!172 = !{i32 8, !"sign-return-address", i32 0}
!173 = !{i32 8, !"sign-return-address-all", i32 0}
!174 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!175 = !{i32 7, !"uwtable", i32 1}
!176 = !{i32 7, !"frame-pointer", i32 2}
!177 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!178 = !{i64 2148469238}
!179 = !{i64 2148383678, i64 2148383710, i64 2148383739, i64 2148383773, i64 2148383804, i64 2148383827}
!180 = !{!"branch_weights", i32 2000, i32 1}
!181 = !{i64 2149345352}
!182 = !{i64 2157135202, i64 2157135699, i64 2157135239, i64 2157135295, i64 2157135329, i64 2157135353, i64 2157135394, i64 2157135415, i64 2157135443, i64 2157135477}
!183 = !{i64 2157150766, i64 2157151263, i64 2157150803, i64 2157150859, i64 2157150893, i64 2157150917, i64 2157150958, i64 2157150979, i64 2157151007, i64 2157151041}
