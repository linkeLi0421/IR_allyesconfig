; ModuleID = '/llk/IR_all_yes/drivers/net/can/usb/peak_usb/pcan_usb.c_pt.bc'
source_filename = "../drivers/net/can/usb/peak_usb/pcan_usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.peak_usb_adapter = type { ptr, i32, i32, %struct.can_clock, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [2 x i8], i8, i8, i32, i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pcan_usb = type { %struct.peak_usb_device, %struct.peak_time_ref, %struct.timer_list, %struct.can_berr_counter }
%struct.peak_usb_device = type { %struct.can_priv, ptr, i32, i32, ptr, ptr, %struct.atomic_t, %struct.usb_anchor, [10 x %struct.peak_tx_urb_context], ptr, %struct.usb_anchor, i32, i8, i8, i8, ptr, ptr }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.peak_tx_urb_context = type { ptr, i32, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.peak_time_ref = type { i64, i64, i32, i32, i64, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.can_berr_counter = type { i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.70, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%struct.llist_node = type { ptr }
%union.anon.22 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pcan_usb_msg_context = type { i16, i8, ptr, ptr, i8, i8, i8, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.can_frame = type { i32, %union.anon.149, i8, i8, i8, [8 x i8] }
%union.anon.149 = type { i8 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCAN-USB\00", [23 x i8] zeroinitializer }, align 32
@pcan_usb_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"pcan_usb\00\00\00\00\00\00\00\00", i32 1, i32 16, i32 1, i32 8, i32 4, i32 1, i32 64, i32 1 }, [48 x i8] zeroinitializer }, align 32
@pcan_usb_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcan_usb_set_phys_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@pcan_usb = dso_local constant { %struct.peak_usb_adapter, [40 x i8] } { %struct.peak_usb_adapter { ptr @.str, i32 12, i32 262, %struct.can_clock { i32 8000000 }, ptr @pcan_usb_const, ptr null, i32 1, ptr @pcan_usb_ethtool_ops, ptr @pcan_usb_probe, ptr @pcan_usb_init, ptr null, ptr null, ptr null, ptr null, ptr @pcan_usb_set_bittiming, ptr null, ptr @pcan_usb_write_mode, ptr @pcan_usb_get_device_id, ptr @pcan_usb_decode_buf, ptr @pcan_usb_encode_msg, ptr @pcan_usb_start, ptr null, ptr @pcan_usb_restart_async, ptr @pcan_usb_get_berr_counter, i8 -126, [2 x i8] c"\02\00", i8 16, i8 20, i32 44739243, i32 64, i32 64, i32 800 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sending cmd f=0x%x n=0x%x failure: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@pcan_usb_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&pdev->restart_timer)\00", [41 x i8] zeroinitializer }, align 32
@pcan_usb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 882, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to read %s serial number (err %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcan_usb_init\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/can/usb/peak_usb/pcan_usb.c\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcan_usb_init._entry_ptr = internal global ptr @pcan_usb_init._entry, section ".printk_index", align 4
@pcan_usb_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 889, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"PEAK-System %s adapter hwrev %u serial %08X (%u channel)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pcan_usb_init._entry_ptr.11 = internal global ptr @pcan_usb_init._entry.8, section ".printk_index", align 4
@pcan_usb_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 901, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Firmware update available. Please contact support@peak-system.com\0A\00", [61 x i8] zeroinitializer }, align 32
@pcan_usb_init._entry_ptr.14 = internal global ptr @pcan_usb_init._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"waiting rsp f=0x%x n=0x%x failure: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"setting BTR0=0x%02x BTR1=0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"getting device id failure: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"usb message length error (%u)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unexpected function %u\0A\00", [40 x i8] zeroinitializer }, align 32
@pcan_usb_decode_error.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.5, ptr @.str.22, i8 0, i8 117, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"peak_usb\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pcan_usb_decode_error\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"data overrun interrupt\0A\00", [40 x i8] zeroinitializer }, align 32
@pcan_usb_decode_error.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.5, ptr @.str.23, i8 0, i8 119, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"device Tx queue full)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Asking for BERR reporting error %u\0A\00", [60 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 128]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 985, i32 10 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"pcan_usb_const\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 972, i32 41 }
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"pcan_usb_ethtool_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 965, i32 33 }
@___asan_gen_.36 = private unnamed_addr constant [9 x i8] c"pcan_usb\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 984, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 176, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 871, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 880, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 886, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 900, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 204, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 285, i32 27 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 393, i32 27 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 741, i32 27 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 614, i32 26 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 469, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 479, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [43 x i8] c"../drivers/net/can/usb/peak_usb/pcan_usb.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 850, i32 8 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @pcan_usb_init._entry, ptr @pcan_usb_init._entry.12, ptr @pcan_usb_init._entry.8, ptr @pcan_usb_init._entry_ptr, ptr @pcan_usb_init._entry_ptr.11, ptr @pcan_usb_init._entry_ptr.14, ptr @.str, ptr @pcan_usb_const, ptr @pcan_usb_ethtool_ops, ptr @pcan_usb, ptr @.str.1, ptr @pcan_usb_init.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_usb_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_probe(ptr nocapture noundef readonly %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 8
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp9.not = icmp eq i8 %3, 0
  br i1 %cmp9.not, label %entry.cleanup4_crit_edge, label %for.body.lr.ph

entry.cleanup4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup4

for.body.lr.ph:                                   ; preds = %entry
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %endpoint, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.cleanup4_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.cleanup4_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup4

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %bEndpointAddress = getelementptr %struct.usb_host_endpoint, ptr %5, i32 %i.010, i32 0, i32 2
  %6 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bEndpointAddress, align 1
  %8 = add i8 %7, 127
  %switch.and = and i8 %8, 126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and)
  %switch.selectcmp = icmp eq i8 %switch.and, 0
  br i1 %switch.selectcmp, label %for.cond, label %for.body.cleanup4_crit_edge

for.body.cleanup4_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup4

cleanup4:                                         ; preds = %for.body.cleanup4_crit_edge, %for.cond.cleanup4_crit_edge, %entry.cleanup4_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup4_crit_edge ], [ 0, %for.cond.cleanup4_crit_edge ], [ -19, %for.body.cleanup4_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_init(ptr noundef %dev) #1 align 64 {
entry:
  %args.i = alloca [14 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %restart_timer = getelementptr inbounds %struct.pcan_usb, ptr %dev, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %restart_timer, ptr noundef nonnull @pcan_usb_restart, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @pcan_usb_init.__key) #9
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %args.i) #9
  %0 = call ptr @memset(ptr %args.i, i32 255, i32 14)
  %call.i = call fastcc i32 @pcan_usb_wait_rsp(ptr noundef %dev, i8 noundef zeroext 6, ptr noundef nonnull %args.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end7, label %do.end3

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %args.i) #9
  %netdev = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 133, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, i32 noundef %call.i) #12
  br label %cleanup

do.end7:                                          ; preds = %entry
  %5 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %args.i, align 4
  %7 = call i32 @llvm.bswap.i32(i32 %6) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %args.i) #9
  %netdev8 = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %8 = ptrtoint ptr %netdev8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev8, align 4
  %parent10 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 133, i32 1
  %10 = ptrtoint ptr %parent10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent10, align 8
  %device_rev = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 12
  %12 = ptrtoint ptr %device_rev to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %device_rev, align 4
  %conv = zext i8 %13 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %7, i32 noundef 1) #12
  %14 = ptrtoint ptr %device_rev to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %device_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %15)
  %cmp = icmp ugt i8 %15, 40
  %16 = ptrtoint ptr %netdev8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev8, align 4
  br i1 %cmp, label %if.then14, label %do.end19

if.then14:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %ctrlmode_supported = getelementptr i8, ptr %17, i32 2480
  %18 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctrlmode_supported, align 4
  %or = or i32 %19, 9
  store i32 %or, ptr %ctrlmode_supported, align 4
  br label %cleanup

do.end19:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %parent22 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 133, i32 1
  %20 = ptrtoint ptr %parent22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent22, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.13) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.then14, %do.end3
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_set_bittiming(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %bt) #1 align 64 {
entry:
  %actual_length.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %brp = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 7
  %0 = ptrtoint ptr %brp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %brp, align 4
  %sjw = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 6
  %2 = ptrtoint ptr %sjw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sjw, align 4
  %prop_seg = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 3
  %4 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prop_seg, align 4
  %phase_seg1 = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 4
  %6 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phase_seg1, align 4
  %add = add i32 %5, 15
  %sub3 = add i32 %add, %7
  %and4 = and i32 %sub3, 15
  %phase_seg2 = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 5
  %8 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phase_seg2, align 4
  %sub5 = shl i32 %9, 4
  %and6 = add i32 %sub5, 112
  %shl7 = and i32 %and6, 112
  %or8 = or i32 %shl7, %and4
  %conv9 = trunc i32 %or8 to i8
  %ctrlmode = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 22
  %10 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctrlmode, align 4
  %12 = trunc i32 %11 to i8
  %13 = shl i8 %12, 5
  %14 = and i8 %13, -128
  %15 = or i8 %14, %conv9
  %sub = add i32 %1, 63
  %and = and i32 %sub, 63
  %sub1 = shl i32 %3, 6
  %and2 = add i32 %sub1, 192
  %or = or i32 %and2, %and
  %netdev = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %16 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev, align 4
  %conv14 = and i32 %or, 255
  %conv15 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %17, ptr noundef nonnull @.str.16, i32 noundef %conv14, i32 noundef %conv15) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i) #9
  %18 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %actual_length.i, align 4, !annotation !62
  %state.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 3
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state.i, align 4
  %and.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.pcan_usb_send_cmd.exit_crit_edge, label %if.end.i

entry.pcan_usb_send_cmd.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcan_usb_send_cmd.exit

if.end.i:                                         ; preds = %entry
  %conv = trunc i32 %or to i8
  %cmd_buf.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 9
  %21 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmd_buf.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %22, align 1
  %24 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %24, i32 1
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %arrayidx2.i, align 1
  %26 = load ptr, ptr %cmd_buf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 2
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %15, ptr %add.ptr.i, align 1
  %args.sroa.5.0.add.ptr.i.sroa_idx = getelementptr i8, ptr %26, i32 3
  %28 = ptrtoint ptr %args.sroa.5.0.add.ptr.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %args.sroa.5.0.add.ptr.i.sroa_idx, align 1
  %args.sroa.7.0.add.ptr.i.sroa_idx = getelementptr i8, ptr %26, i32 4
  %udev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %29 = call ptr @memset(ptr %args.sroa.7.0.add.ptr.i.sroa_idx, i32 255, i32 12)
  %30 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %udev.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %shl.i.i = shl i32 %33, 8
  %or.i = or i32 %shl.i.i, -1073709056
  %34 = load ptr, ptr %cmd_buf.i, align 4
  %call9.i = call i32 @usb_bulk_msg(ptr noundef %31, i32 noundef %or.i, ptr noundef %34, i32 noundef 16, ptr noundef nonnull %actual_length.i, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end.i.pcan_usb_send_cmd.exit_crit_edge, label %if.then11.i

if.end.i.pcan_usb_send_cmd.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcan_usb_send_cmd.exit

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %36, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 2, i32 noundef %call9.i) #12
  br label %pcan_usb_send_cmd.exit

pcan_usb_send_cmd.exit:                           ; preds = %if.then11.i, %if.end.i.pcan_usb_send_cmd.exit_crit_edge, %entry.pcan_usb_send_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.pcan_usb_send_cmd.exit_crit_edge ], [ %call9.i, %if.then11.i ], [ 0, %if.end.i.pcan_usb_send_cmd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_write_mode(ptr nocapture noundef readonly %dev, i8 noundef zeroext %onoff) #1 align 64 {
entry:
  %actual_length.i.i76 = alloca i32, align 4
  %actual_length.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i.i) #9
  %0 = ptrtoint ptr %actual_length.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %actual_length.i.i, align 4, !annotation !62
  %state.i.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %if.end.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %onoff)
  %tobool.i = icmp ne i8 %onoff, 0
  %conv.i = zext i1 %tobool.i to i8
  %cmd_buf.i.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 9
  %3 = ptrtoint ptr %cmd_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd_buf.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %4, align 1
  %6 = load ptr, ptr %cmd_buf.i.i, align 4
  %arrayidx2.i.i = getelementptr i8, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %arrayidx2.i.i, align 1
  %8 = load ptr, ptr %cmd_buf.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 2
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %add.ptr.i.i, align 1
  %args.sroa.5.0.add.ptr.i.sroa_idx.i = getelementptr i8, ptr %8, i32 3
  %udev.i.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %10 = call ptr @memset(ptr %args.sroa.5.0.add.ptr.i.sroa_idx.i, i32 0, i32 13)
  %11 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i.i = shl i32 %14, 8
  %or.i.i = or i32 %shl.i.i.i, -1073709056
  %15 = load ptr, ptr %cmd_buf.i.i, align 4
  %call9.i.i = call i32 @usb_bulk_msg(ptr noundef %12, i32 noundef %or.i.i, ptr noundef %15, i32 noundef 16, ptr noundef nonnull %actual_length.i.i, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end.i.i.if.end_crit_edge, label %pcan_usb_set_bus.exit

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

pcan_usb_set_bus.exit:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %netdev.i.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %16 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str.1, i32 noundef 3, i32 noundef 2, i32 noundef %call9.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %onoff)
  %tobool1.not = icmp eq i8 %onoff, 0
  br i1 %tobool1.not, label %if.then2, label %__here

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i.i76) #9
  %18 = ptrtoint ptr %actual_length.i.i76 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %actual_length.i.i76, align 4, !annotation !62
  %19 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state.i.i, align 4
  %and.i.i78 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i78)
  %tobool.not.i.i79 = icmp eq i32 %and.i.i78, 0
  br i1 %tobool.not.i.i79, label %if.then2.pcan_usb_set_sja1000.exit_crit_edge, label %if.end.i.i89

if.then2.pcan_usb_set_sja1000.exit_crit_edge:     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcan_usb_set_sja1000.exit

if.end.i.i89:                                     ; preds = %if.then2
  %cmd_buf.i.i80 = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 9
  %21 = ptrtoint ptr %cmd_buf.i.i80 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmd_buf.i.i80, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 9, ptr %22, align 1
  %24 = load ptr, ptr %cmd_buf.i.i80, align 4
  %arrayidx2.i.i81 = getelementptr i8, ptr %24, i32 1
  %25 = ptrtoint ptr %arrayidx2.i.i81 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %arrayidx2.i.i81, align 1
  %26 = load ptr, ptr %cmd_buf.i.i80, align 4
  %add.ptr.i.i82 = getelementptr i8, ptr %26, i32 2
  %27 = ptrtoint ptr %add.ptr.i.i82 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %add.ptr.i.i82, align 1
  %args.sroa.5.0.add.ptr.i.sroa_idx.i83 = getelementptr i8, ptr %26, i32 3
  %28 = ptrtoint ptr %args.sroa.5.0.add.ptr.i.sroa_idx.i83 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %args.sroa.5.0.add.ptr.i.sroa_idx.i83, align 1
  %args.sroa.7.0.add.ptr.i.sroa_idx.i = getelementptr i8, ptr %26, i32 4
  %udev.i.i84 = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %29 = call ptr @memset(ptr %args.sroa.7.0.add.ptr.i.sroa_idx.i, i32 0, i32 12)
  %30 = ptrtoint ptr %udev.i.i84 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %udev.i.i84, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %shl.i.i.i85 = shl i32 %33, 8
  %or.i.i86 = or i32 %shl.i.i.i85, -1073709056
  %34 = load ptr, ptr %cmd_buf.i.i80, align 4
  %call9.i.i87 = call i32 @usb_bulk_msg(ptr noundef %31, i32 noundef %or.i.i86, ptr noundef %34, i32 noundef 16, ptr noundef nonnull %actual_length.i.i76, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i87)
  %tobool10.not.i.i88 = icmp eq i32 %call9.i.i87, 0
  br i1 %tobool10.not.i.i88, label %if.end.i.i89.pcan_usb_set_sja1000.exit_crit_edge, label %if.then11.i.i91

if.end.i.i89.pcan_usb_set_sja1000.exit_crit_edge: ; preds = %if.end.i.i89
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcan_usb_set_sja1000.exit

if.then11.i.i91:                                  ; preds = %if.end.i.i89
  call void @__sanitizer_cov_trace_pc() #11
  %netdev.i.i90 = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %35 = ptrtoint ptr %netdev.i.i90 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %netdev.i.i90, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %36, ptr noundef nonnull @.str.1, i32 noundef 9, i32 noundef 2, i32 noundef %call9.i.i87) #12
  br label %pcan_usb_set_sja1000.exit

pcan_usb_set_sja1000.exit:                        ; preds = %if.then11.i.i91, %if.end.i.i89.pcan_usb_set_sja1000.exit_crit_edge, %if.then2.pcan_usb_set_sja1000.exit_crit_edge
  %retval.0.i.i92 = phi i32 [ 0, %if.then2.pcan_usb_set_sja1000.exit_crit_edge ], [ %call9.i.i87, %if.then11.i.i91 ], [ 0, %if.end.i.i89.pcan_usb_set_sja1000.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i.i76) #9
  br label %cleanup

__here:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %37 = call i32 @llvm.read_register.i32(metadata !52) #9
  %and.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 212
  %41 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 ptrtoint (ptr blockaddress(@pcan_usb_write_mode, %__here) to i32), ptr %task_state_change, align 4
  %42 = load ptr, ptr %task, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 1, ptr %42, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  %call68 = call i32 @schedule_timeout(i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %__here, %pcan_usb_set_sja1000.exit, %pcan_usb_set_bus.exit
  %retval.0 = phi i32 [ %call9.i.i, %pcan_usb_set_bus.exit ], [ 0, %__here ], [ %retval.0.i.i92, %pcan_usb_set_sja1000.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_get_device_id(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %device_id) #1 align 64 {
entry:
  %args = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %args) #9
  %0 = call ptr @memset(ptr %args, i32 255, i32 14)
  %call = call fastcc i32 @pcan_usb_wait_rsp(ptr noundef %dev, i8 noundef zeroext 4, ptr noundef nonnull %args)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef %call) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %args, align 1
  %conv = zext i8 %4 to i32
  %5 = ptrtoint ptr %device_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %device_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %args) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_decode_buf(ptr noundef %dev, ptr nocapture noundef readonly %urb) #1 align 64 {
entry:
  %cf.i.i = alloca ptr, align 4
  %mc.i = alloca %struct.pcan_usb_msg_context, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %0 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mc.i) #9
  %4 = call ptr @memset(ptr %mc.i, i32 255, i32 16)
  %5 = ptrtoint ptr %mc.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %mc.i, align 4
  %prev_ts8.i = getelementptr inbounds %struct.pcan_usb_msg_context, ptr %mc.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev_ts8.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %prev_ts8.i, align 2
  %ptr.i = getelementptr inbounds %struct.pcan_usb_msg_context, ptr %mc.i, i32 0, i32 2
  %add.ptr.i = getelementptr i8, ptr %3, i32 2
  %7 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %ptr.i, align 4
  %end.i = getelementptr inbounds %struct.pcan_usb_msg_context, ptr %mc.i, i32 0, i32 3
  %add.ptr1.i = getelementptr i8, ptr %3, i32 %1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr1.i, ptr %end.i, align 4
  %rec_cnt.i = getelementptr inbounds %struct.pcan_usb_msg_context, ptr %mc.i, i32 0, i32 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %11 = ptrtoint ptr %rec_cnt.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %rec_cnt.i, align 4
  %rec_idx.i = getelementptr inbounds %struct.pcan_usb_msg_context, ptr %mc.i, i32 0, i32 5
  %12 = ptrtoint ptr %rec_idx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %rec_idx.i, align 1
  %rec_ts_idx.i = getelementptr inbounds %struct.pcan_usb_msg_context, ptr %mc.i, i32 0, i32 6
  %13 = ptrtoint ptr %rec_ts_idx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %rec_ts_idx.i, align 2
  %netdev.i = getelementptr inbounds %struct.pcan_usb_msg_context, ptr %mc.i, i32 0, i32 7
  %netdev2.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %14 = ptrtoint ptr %netdev2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev2.i, align 4
  %16 = ptrtoint ptr %netdev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %netdev.i, align 4
  %pdev.i = getelementptr inbounds %struct.pcan_usb_msg_context, ptr %mc.i, i32 0, i32 8
  %17 = ptrtoint ptr %pdev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %pdev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp45.not.i = icmp eq i8 %10, 0
  br i1 %cmp45.not.i, label %if.then.pcan_usb_decode_msg.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.pcan_usb_decode_msg.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcan_usb_decode_msg.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %18 = phi i8 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ptr.i, align 4
  %incdec.ptr.i = getelementptr i8, ptr %20, i32 1
  store ptr %incdec.ptr.i, ptr %ptr.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %23 = and i8 %22, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool10.not.i = icmp eq i8 %23, 0
  br i1 %tobool10.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %and.i.i = and i8 %22, 15
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 3
  %24 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %end.i, align 4
  %cmp.i.i = icmp ugt ptr %add.ptr.i.i, %25
  br i1 %cmp.i.i, label %if.then.i.if.end.i_crit_edge, label %if.end.i.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.then.i
  %26 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %incdec.ptr.i, align 1
  %arrayidx5.i.i = getelementptr i8, ptr %20, i32 2
  %28 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx5.i.i, align 1
  %30 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i.i, ptr %ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %tobool.not.i.i = icmp sgt i8 %22, -1
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end18.i.i_crit_edge, label %if.then10.i.i

if.end.i.i.if.end18.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  %31 = ptrtoint ptr %rec_ts_idx.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rec_ts_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool12.not.not.i.i = icmp eq i8 %32, 0
  br i1 %tobool12.not.not.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then10.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 5
  %cmp.i.i.i = icmp ugt ptr %add.ptr.i.i.i, %25
  br i1 %cmp.i.i.i, label %if.then.i.i.i.if.end.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.if.end.i_crit_edge:                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %add.ptr.i.i, align 1
  %35 = call i16 @llvm.bswap.i16(i16 %34) #9
  %36 = ptrtoint ptr %mc.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %mc.i, align 4
  %conv4.i.i.i = trunc i16 %35 to i8
  %37 = ptrtoint ptr %prev_ts8.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv4.i.i.i, ptr %prev_ts8.i, align 2
  %38 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr.i.i.i, ptr %ptr.i, align 4
  br label %if.end16.i.i

if.else.i.i.i:                                    ; preds = %if.then10.i.i
  %add.ptr8.i.i.i = getelementptr i8, ptr %20, i32 4
  %cmp10.i.i.i = icmp ugt ptr %add.ptr8.i.i.i, %25
  br i1 %cmp10.i.i.i, label %if.else.i.i.i.if.end.i_crit_edge, label %if.end13.i.i.i

if.else.i.i.i.if.end.i_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end13.i.i.i:                                   ; preds = %if.else.i.i.i
  %39 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr8.i.i.i, ptr %ptr.i, align 4
  %40 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr.i.i, align 1
  %conv15.i.i.i = zext i8 %41 to i16
  %42 = ptrtoint ptr %prev_ts8.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %prev_ts8.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %43)
  %cmp18.i.i.i = icmp ult i8 %41, %43
  br i1 %cmp18.i.i.i, label %if.then20.i.i.i, label %if.end13.i.i.i.cleanup.thread.i.i.i_crit_edge

if.end13.i.i.i.cleanup.thread.i.i.i_crit_edge:    ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i.i.i

if.then20.i.i.i:                                  ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %mc.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %mc.i, align 4
  %add.i.i.i = add i16 %45, 256
  store i16 %add.i.i.i, ptr %mc.i, align 4
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %if.then20.i.i.i, %if.end13.i.i.i.cleanup.thread.i.i.i_crit_edge
  %46 = ptrtoint ptr %mc.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %mc.i, align 4
  %48 = and i16 %47, -256
  %or.i.i.i = or i16 %48, %conv15.i.i.i
  store i16 %or.i.i.i, ptr %mc.i, align 4
  %49 = ptrtoint ptr %prev_ts8.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %41, ptr %prev_ts8.i, align 2
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %cleanup.thread.i.i.i, %if.end.i.i.i
  %inc.i.i = add i8 %32, 1
  %50 = ptrtoint ptr %rec_ts_idx.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %inc.i.i, ptr %rec_ts_idx.i, align 2
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.end16.i.i, %if.end.i.i.if.end18.i.i_crit_edge
  %51 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values)
  switch i8 %27, label %sw.default.i.i [
    i8 1, label %sw.bb.i.i
    i8 2, label %if.end18.i.i.sw.epilog.i.i_crit_edge
    i8 3, label %sw.bb25.i.i
    i8 4, label %sw.bb26.i.i
    i8 5, label %sw.bb31.i.i
  ]

if.end18.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end18.i.i
  %call20.i.i = call fastcc i32 @pcan_usb_decode_error(ptr noundef nonnull %mc.i, i8 noundef zeroext %29, i8 noundef zeroext %22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %sw.bb.i.i.sw.epilog.i.i_crit_edge, label %sw.bb.i.i.if.end.i_crit_edge

sw.bb.i.i.if.end.i_crit_edge:                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

sw.bb.i.i.sw.epilog.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.bb25.i.i:                                      ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.bb26.i.i:                                      ; preds = %if.end18.i.i
  %52 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ptr.i, align 4
  %add.ptr.i75.i.i = getelementptr i8, ptr %53, i32 2
  %cmp.i77.i.i = icmp ugt ptr %add.ptr.i75.i.i, %25
  br i1 %cmp.i77.i.i, label %sw.bb26.i.i.if.end.i_crit_edge, label %if.end.i78.i.i

sw.bb26.i.i.if.end.i_crit_edge:                   ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i78.i.i:                                   ; preds = %sw.bb26.i.i
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %53, align 1
  %56 = call i16 @llvm.bswap.i16(i16 %55) #9
  %57 = ptrtoint ptr %mc.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %mc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp2.not.i.i.i = icmp eq i8 %18, 0
  %58 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev.i, align 4
  %time_ref8.i.i.i = getelementptr inbounds %struct.pcan_usb, ptr %59, i32 0, i32 1
  %conv10.i.i.i = zext i16 %56 to i32
  br i1 %cmp2.not.i.i.i, label %if.else.i79.i.i, label %if.then4.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i78.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @peak_usb_update_ts_now(ptr noundef %time_ref8.i.i.i, i32 noundef %conv10.i.i.i) #9
  br label %sw.epilog.i.i

if.else.i79.i.i:                                  ; preds = %if.end.i78.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @peak_usb_set_ts_now(ptr noundef %time_ref8.i.i.i, i32 noundef %conv10.i.i.i) #9
  br label %sw.epilog.i.i

sw.bb31.i.i:                                      ; preds = %if.end18.i.i
  %60 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %29, label %sw.bb31.i.i.sw.epilog.i.i_crit_edge [
    i8 0, label %sw.bb31.i.i.sw.bb.i.i.i_crit_edge
    i8 -128, label %sw.bb31.i.i.sw.bb.i.i.i_crit_edge12
  ]

sw.bb31.i.i.sw.bb.i.i.i_crit_edge12:              ; preds = %sw.bb31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i.i

sw.bb31.i.i.sw.bb.i.i.i_crit_edge:                ; preds = %sw.bb31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i.i

sw.bb31.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.bb.i.i.i:                                      ; preds = %sw.bb31.i.i.sw.bb.i.i.i_crit_edge, %sw.bb31.i.i.sw.bb.i.i.i_crit_edge12
  %61 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev.i, align 4
  %63 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ptr.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %64, i32 1
  %65 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i.i = zext i8 %66 to i16
  %bec.i.i.i = getelementptr inbounds %struct.pcan_usb, ptr %62, i32 0, i32 3
  %rxerr.i.i.i = getelementptr inbounds %struct.pcan_usb, ptr %62, i32 0, i32 3, i32 1
  %67 = ptrtoint ptr %rxerr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv2.i.i.i, ptr %rxerr.i.i.i, align 2
  %arrayidx4.i.i.i = getelementptr i8, ptr %64, i32 2
  %68 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %69 to i16
  %70 = ptrtoint ptr %bec.i.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv5.i.i.i, ptr %bec.i.i.i, align 8
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv19.i.i = zext i8 %27 to i32
  %71 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %72, ptr noundef nonnull @.str.19, i32 noundef %conv19.i.i) #12
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.default.i.i, %sw.bb.i.i.i, %sw.bb31.i.i.sw.epilog.i.i_crit_edge, %if.else.i79.i.i, %if.then4.i.i.i, %sw.bb25.i.i, %sw.bb.i.i.sw.epilog.i.i_crit_edge, %if.end18.i.i.sw.epilog.i.i_crit_edge
  %rec_len.0.i.i = phi i8 [ %and.i.i, %sw.default.i.i ], [ 1, %sw.bb25.i.i ], [ %and.i.i, %sw.bb.i.i.sw.epilog.i.i_crit_edge ], [ %27, %if.end18.i.i.sw.epilog.i.i_crit_edge ], [ %and.i.i, %sw.bb31.i.i.sw.epilog.i.i_crit_edge ], [ %and.i.i, %sw.bb.i.i.i ], [ %and.i.i, %if.else.i79.i.i ], [ %and.i.i, %if.then4.i.i.i ]
  %73 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ptr.i, align 4
  %conv38.i.i = zext i8 %rec_len.0.i.i to i32
  %add.ptr39.i.i = getelementptr i8, ptr %74, i32 %conv38.i.i
  %75 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %end.i, align 4
  %cmp41.i.i = icmp ugt ptr %add.ptr39.i.i, %76
  br i1 %cmp41.i.i, label %sw.epilog.i.i.if.end.i_crit_edge, label %if.end44.i.i

sw.epilog.i.i.if.end.i_crit_edge:                 ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end44.i.i:                                     ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr39.i.i, ptr %ptr.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %for.body.i
  %conv.i.i = zext i8 %22 to i32
  %and.i19.i = and i8 %22, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i.i) #9
  %78 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i.i, align 4, !annotation !62
  %79 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %netdev.i, align 4
  %call.i.i = call ptr @alloc_can_skb(ptr noundef %80, ptr noundef nonnull %cf.i.i) #9
  %tobool.not.i21.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i21.i, label %if.else.i.pcan_usb_decode_data.exit.i_crit_edge, label %if.end.i22.i

if.else.i.pcan_usb_decode_data.exit.i_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcan_usb_decode_data.exit.i

if.end.i22.i:                                     ; preds = %if.else.i
  %and3.i.i = and i32 %conv.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  %81 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ptr.i, align 4
  br i1 %tobool4.not.i.i, label %if.else.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end.i22.i
  %add.ptr.i23.i = getelementptr i8, ptr %82, i32 4
  %83 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %end.i, align 4
  %cmp.i25.i = icmp ugt ptr %add.ptr.i23.i, %84
  br i1 %cmp.i25.i, label %if.then5.i.i.decode_failed.i.i_crit_edge, label %if.end8.i.i

if.then5.i.i.decode_failed.i.i_crit_edge:         ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %decode_failed.i.i

if.end8.i.i:                                      ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %82, align 1
  %87 = call i32 @llvm.bswap.i32(i32 %86) #9
  %shr.i.i = lshr i32 %87, 3
  %or.i.i = or i32 %shr.i.i, -2147483648
  %88 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cf.i.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %or.i.i, ptr %89, align 8
  br label %if.end27.i.i

if.else.i.i:                                      ; preds = %if.end.i22.i
  %add.ptr14.i.i = getelementptr i8, ptr %82, i32 2
  %91 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %end.i, align 4
  %cmp16.i.i = icmp ugt ptr %add.ptr14.i.i, %92
  br i1 %cmp16.i.i, label %if.else.i.i.decode_failed.i.i_crit_edge, label %if.end19.i.i

if.else.i.i.decode_failed.i.i_crit_edge:          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %decode_failed.i.i

if.end19.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %82 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %94 = load i16, ptr %82, align 1
  %95 = call i16 @llvm.bswap.i16(i16 %94) #9
  %conv22.i.i = zext i16 %95 to i32
  %shr23.i.i = lshr i32 %conv22.i.i, 5
  %96 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cf.i.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %shr23.i.i, ptr %97, align 8
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.end19.i.i, %if.end8.i.i
  %.sink111.i.i = phi i32 [ 2, %if.end19.i.i ], [ 4, %if.end8.i.i ]
  %can_id_flags.0.i.i = phi i32 [ %conv22.i.i, %if.end19.i.i ], [ %87, %if.end8.i.i ]
  %99 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ptr.i, align 4
  %add.ptr26.i.i = getelementptr i8, ptr %100, i32 %.sink111.i.i
  store ptr %add.ptr26.i.i, ptr %ptr.i, align 4
  %101 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cf.i.i, align 4
  %103 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pdev.i, align 4
  %ctrlmode.i.i = getelementptr inbounds %struct.can_priv, ptr %104, i32 0, i32 22
  %105 = ptrtoint ptr %ctrlmode.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ctrlmode.i.i, align 4
  %and.i.i.i = and i32 %106, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp ne i32 %and.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %and.i19.i)
  %cmp.i.i26.i = icmp ugt i8 %and.i19.i, 8
  %or.cond.i.i.i = and i1 %cmp.i.i26.i, %tobool.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.then.i.i27.i, label %if.end27.i.i.can_frame_set_cc_len.exit.i.i_crit_edge

if.end27.i.i.can_frame_set_cc_len.exit.i.i_crit_edge: ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_frame_set_cc_len.exit.i.i

if.then.i.i27.i:                                  ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %len8_dlc.i.i.i = getelementptr inbounds %struct.can_frame, ptr %102, i32 0, i32 4
  %107 = ptrtoint ptr %len8_dlc.i.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %and.i19.i, ptr %len8_dlc.i.i.i, align 1
  br label %can_frame_set_cc_len.exit.i.i

can_frame_set_cc_len.exit.i.i:                    ; preds = %if.then.i.i27.i, %if.end27.i.i.can_frame_set_cc_len.exit.i.i_crit_edge
  %108 = call i8 @llvm.umin.i8(i8 %and.i19.i, i8 8) #9
  %109 = getelementptr inbounds %struct.can_frame, ptr %102, i32 0, i32 1
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %108, ptr %109, align 4
  %111 = ptrtoint ptr %rec_ts_idx.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %rec_ts_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool28.not.not.i.i = icmp eq i8 %112, 0
  %113 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ptr.i, align 4
  br i1 %tobool28.not.not.i.i, label %if.then.i108.i.i, label %if.else.i.i35.i

if.then.i108.i.i:                                 ; preds = %can_frame_set_cc_len.exit.i.i
  %add.ptr.i.i29.i = getelementptr i8, ptr %114, i32 2
  %115 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %end.i, align 4
  %cmp.i107.i.i = icmp ugt ptr %add.ptr.i.i29.i, %116
  br i1 %cmp.i107.i.i, label %if.then.i108.i.i.decode_failed.i.i_crit_edge, label %if.end.i.i32.i

if.then.i108.i.i.decode_failed.i.i_crit_edge:     ; preds = %if.then.i108.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %decode_failed.i.i

if.end.i.i32.i:                                   ; preds = %if.then.i108.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %117 = ptrtoint ptr %114 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 2)
  %118 = load i16, ptr %114, align 1
  %119 = call i16 @llvm.bswap.i16(i16 %118) #9
  %120 = ptrtoint ptr %mc.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %119, ptr %mc.i, align 4
  %conv4.i.i30.i = trunc i16 %119 to i8
  %121 = ptrtoint ptr %prev_ts8.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv4.i.i30.i, ptr %prev_ts8.i, align 2
  %122 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %add.ptr.i.i29.i, ptr %ptr.i, align 4
  br label %if.end33.i.i

if.else.i.i35.i:                                  ; preds = %can_frame_set_cc_len.exit.i.i
  %add.ptr8.i.i33.i = getelementptr i8, ptr %114, i32 1
  %123 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %end.i, align 4
  %cmp10.i.i34.i = icmp ugt ptr %add.ptr8.i.i33.i, %124
  br i1 %cmp10.i.i34.i, label %if.else.i.i35.i.decode_failed.i.i_crit_edge, label %if.end13.i.i39.i

if.else.i.i35.i.decode_failed.i.i_crit_edge:      ; preds = %if.else.i.i35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %decode_failed.i.i

if.end13.i.i39.i:                                 ; preds = %if.else.i.i35.i
  %125 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %add.ptr8.i.i33.i, ptr %ptr.i, align 4
  %126 = ptrtoint ptr %114 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %114, align 1
  %conv15.i.i36.i = zext i8 %127 to i16
  %128 = ptrtoint ptr %prev_ts8.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %prev_ts8.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %127, i8 %129)
  %cmp18.i.i38.i = icmp ult i8 %127, %129
  br i1 %cmp18.i.i38.i, label %if.then20.i.i41.i, label %if.end13.i.i39.i.cleanup.thread.i.i43.i_crit_edge

if.end13.i.i39.i.cleanup.thread.i.i43.i_crit_edge: ; preds = %if.end13.i.i39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i.i43.i

if.then20.i.i41.i:                                ; preds = %if.end13.i.i39.i
  call void @__sanitizer_cov_trace_pc() #11
  %130 = ptrtoint ptr %mc.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %mc.i, align 4
  %add.i.i40.i = add i16 %131, 256
  store i16 %add.i.i40.i, ptr %mc.i, align 4
  br label %cleanup.thread.i.i43.i

cleanup.thread.i.i43.i:                           ; preds = %if.then20.i.i41.i, %if.end13.i.i39.i.cleanup.thread.i.i43.i_crit_edge
  %132 = ptrtoint ptr %mc.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %mc.i, align 4
  %134 = and i16 %133, -256
  %or.i.i42.i = or i16 %134, %conv15.i.i36.i
  store i16 %or.i.i42.i, ptr %mc.i, align 4
  %135 = ptrtoint ptr %prev_ts8.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %127, ptr %prev_ts8.i, align 2
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %cleanup.thread.i.i43.i, %if.end.i.i32.i
  %inc.i44.i = add i8 %112, 1
  %136 = ptrtoint ptr %rec_ts_idx.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %inc.i44.i, ptr %rec_ts_idx.i, align 2
  %data.i.i = getelementptr inbounds %struct.can_frame, ptr %102, i32 0, i32 5
  %137 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 0, ptr %data.i.i, align 8
  %and36.i.i = and i32 %conv.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i)
  %tobool37.not.i.i = icmp eq i32 %and36.i.i, 0
  br i1 %tobool37.not.i.i, label %if.else41.i.i, label %if.then38.i.i

if.then38.i.i:                                    ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %138 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %102, align 8
  %or40.i.i = or i32 %139, 1073741824
  store i32 %or40.i.i, ptr %102, align 8
  br label %if.end64.i.i

if.else41.i.i:                                    ; preds = %if.end33.i.i
  %140 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ptr.i, align 4
  %conv43.i.i = zext i8 %and.i19.i to i32
  %add.ptr44.i.i = getelementptr i8, ptr %141, i32 %conv43.i.i
  %142 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %end.i, align 4
  %cmp46.i.i = icmp ugt ptr %add.ptr44.i.i, %143
  br i1 %cmp46.i.i, label %if.else41.i.i.decode_failed.i.i_crit_edge, label %if.end49.i.i

if.else41.i.i.decode_failed.i.i_crit_edge:        ; preds = %if.else41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %decode_failed.i.i

if.end49.i.i:                                     ; preds = %if.else41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %144 = ptrtoint ptr %109 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %109, align 4
  %conv53.i.i = zext i8 %145 to i32
  %146 = call ptr @memcpy(ptr %data.i.i, ptr %141, i32 %conv53.i.i)
  %and57.i.i = and i32 %can_id_flags.0.i.i, 1
  %spec.select.i.i = getelementptr i8, ptr %add.ptr44.i.i, i32 %and57.i.i
  %147 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %spec.select.i.i, ptr %ptr.i, align 4
  %148 = load i8, ptr %109, align 4
  %conv62.i.i = zext i8 %148 to i32
  %149 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %netdev.i, align 4
  %rx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %150, i32 0, i32 36, i32 2
  %151 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %rx_bytes.i.i, align 8
  %add.i.i = add i32 %152, %conv62.i.i
  store i32 %add.i.i, ptr %rx_bytes.i.i, align 8
  br label %if.end64.i.i

if.end64.i.i:                                     ; preds = %if.end49.i.i, %if.then38.i.i
  %153 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %netdev.i, align 4
  %stats66.i.i = getelementptr inbounds %struct.net_device, ptr %154, i32 0, i32 36
  %155 = ptrtoint ptr %stats66.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %stats66.i.i, align 8
  %inc67.i.i = add i32 %156, 1
  store i32 %inc67.i.i, ptr %stats66.i.i, align 8
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %157 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %end.i.i.i.i, align 4
  %hwtstamps.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %158, i32 0, i32 7
  %159 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pdev.i, align 4
  %time_ref.i.i = getelementptr inbounds %struct.pcan_usb, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %mc.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %mc.i, align 4
  %conv70.i.i = zext i16 %162 to i32
  call void @peak_usb_get_ts_time(ptr noundef %time_ref.i.i, i32 noundef %conv70.i.i, ptr noundef %hwtstamps.i.i.i) #9
  %call71.i.i = call i32 @netif_rx(ptr noundef nonnull %call.i.i) #9
  br label %pcan_usb_decode_data.exit.i

decode_failed.i.i:                                ; preds = %if.else41.i.i.decode_failed.i.i_crit_edge, %if.else.i.i35.i.decode_failed.i.i_crit_edge, %if.then.i108.i.i.decode_failed.i.i_crit_edge, %if.else.i.i.decode_failed.i.i_crit_edge, %if.then5.i.i.decode_failed.i.i_crit_edge
  call void @consume_skb(ptr noundef nonnull %call.i.i) #9
  br label %pcan_usb_decode_data.exit.i

pcan_usb_decode_data.exit.i:                      ; preds = %decode_failed.i.i, %if.end64.i.i, %if.else.i.pcan_usb_decode_data.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -22, %decode_failed.i.i ], [ 0, %if.end64.i.i ], [ -12, %if.else.i.pcan_usb_decode_data.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %pcan_usb_decode_data.exit.i, %if.end44.i.i, %sw.epilog.i.i.if.end.i_crit_edge, %sw.bb26.i.i.if.end.i_crit_edge, %sw.bb.i.i.if.end.i_crit_edge, %if.else.i.i.i.if.end.i_crit_edge, %if.then.i.i.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %err.1.i = phi i32 [ %retval.0.i.i, %pcan_usb_decode_data.exit.i ], [ 0, %if.end44.i.i ], [ -22, %if.then.i.if.end.i_crit_edge ], [ %call20.i.i, %sw.bb.i.i.if.end.i_crit_edge ], [ -22, %sw.epilog.i.i.if.end.i_crit_edge ], [ -22, %if.then.i.i.i.if.end.i_crit_edge ], [ -22, %if.else.i.i.i.if.end.i_crit_edge ], [ -22, %sw.bb26.i.i.if.end.i_crit_edge ]
  %163 = ptrtoint ptr %rec_idx.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %rec_idx.i, align 1
  %inc.i = add i8 %164, 1
  store i8 %inc.i, ptr %rec_idx.i, align 1
  %165 = ptrtoint ptr %rec_cnt.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %rec_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %inc.i, i8 %166)
  %cmp.i = icmp ult i8 %inc.i, %166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool.not.i = icmp eq i32 %err.1.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.pcan_usb_decode_msg.exit_crit_edge

if.end.i.pcan_usb_decode_msg.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcan_usb_decode_msg.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

pcan_usb_decode_msg.exit:                         ; preds = %if.end.i.pcan_usb_decode_msg.exit_crit_edge, %if.then.pcan_usb_decode_msg.exit_crit_edge
  %err.0.lcssa.i = phi i32 [ 0, %if.then.pcan_usb_decode_msg.exit_crit_edge ], [ %err.1.i, %if.end.i.pcan_usb_decode_msg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mc.i) #9
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3.not = icmp eq i32 %1, 0
  br i1 %cmp3.not, label %if.else.if.end6_crit_edge, label %if.then4

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %167 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %168, ptr noundef nonnull @.str.18, i32 noundef %1) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.else.if.end6_crit_edge, %pcan_usb_decode_msg.exit
  %err.0 = phi i32 [ %err.0.lcssa.i, %pcan_usb_decode_msg.exit ], [ -22, %if.then4 ], [ 0, %if.else.if.end6_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcan_usb_encode_msg(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %skb, ptr nocapture noundef %obuf, ptr nocapture noundef readonly %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %6 = ptrtoint ptr %obuf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %obuf, align 1
  %arrayidx3 = getelementptr i8, ptr %obuf, i32 1
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %arrayidx3, align 1
  %add.ptr = getelementptr i8, ptr %obuf, i32 2
  %ctrlmode = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 22
  %8 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctrlmode, align 4
  %and.i = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %10 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %12)
  %cmp.i = icmp eq i8 %12, 8
  br i1 %cmp.i, label %land.lhs.true2.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %len8_dlc.i = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %len8_dlc.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %len8_dlc.i, align 1
  %15 = add i8 %14, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %15)
  %16 = icmp ult i8 %15, 7
  br i1 %16, label %land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge, label %land.lhs.true2.i.if.end.i_crit_edge

land.lhs.true2.i.if.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_get_cc_dlc.exit

if.end.i:                                         ; preds = %land.lhs.true2.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %17 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4
  br label %can_get_cc_dlc.exit

can_get_cc_dlc.exit:                              ; preds = %if.end.i, %land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge
  %retval.0.i = phi i8 [ %19, %if.end.i ], [ %14, %land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge ]
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %retval.0.i, ptr %add.ptr, align 1
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 8
  %and5 = and i32 %22, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %can_get_cc_dlc.exit.if.end_crit_edge, label %if.then

can_get_cc_dlc.exit.if.end_crit_edge:             ; preds = %can_get_cc_dlc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %can_get_cc_dlc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %23 = or i8 %retval.0.i, 16
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %add.ptr, align 1
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %can_get_cc_dlc.exit.if.end_crit_edge
  %26 = phi i32 [ %.pr, %if.then ], [ %22, %can_get_cc_dlc.exit.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %tobool9.not = icmp sgt i32 %26, -1
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr, align 1
  %29 = or i8 %28, 32
  store i8 %29, ptr %add.ptr, align 1
  %incdec.ptr = getelementptr i8, ptr %obuf, i32 3
  %shl = shl i32 %5, 3
  %30 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ctrlmode, align 4
  %and16 = and i32 %31, 1
  %32 = or i32 %and16, %shl
  %and23 = lshr i32 %31, 2
  %33 = and i32 %and23, 2
  %34 = or i32 %33, %32
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  %36 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %incdec.ptr, align 1
  br label %if.end47

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr29 = getelementptr i8, ptr %obuf, i32 3
  %shl30 = shl i32 %5, 5
  %37 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ctrlmode, align 4
  %and33 = and i32 %38, 1
  %39 = or i32 %and33, %shl30
  %and40 = lshr i32 %38, 2
  %40 = and i32 %and40, 2
  %41 = or i32 %40, %39
  %conv45 = trunc i32 %41 to i16
  %42 = tail call i16 @llvm.bswap.i16(i16 %conv45) #9
  %43 = ptrtoint ptr %incdec.ptr29 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %42, ptr %incdec.ptr29, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then10
  %.sink = phi i32 [ 5, %if.else ], [ 7, %if.then10 ]
  %can_id_flags.4 = phi i32 [ %41, %if.else ], [ %34, %if.then10 ]
  %add.ptr46 = getelementptr i8, ptr %obuf, i32 %.sink
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %3, align 8
  %and49 = and i32 %45, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.then51, label %if.end47.if.end56_crit_edge

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %data52 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 5
  %46 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 4
  %conv53 = zext i8 %48 to i32
  %49 = call ptr @memcpy(ptr %add.ptr46, ptr %data52, i32 %conv53)
  %50 = load i8, ptr %46, align 4
  %conv54 = zext i8 %50 to i32
  %add.ptr55 = getelementptr i8, ptr %add.ptr46, i32 %conv54
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %if.end47.if.end56_crit_edge
  %pc.1 = phi ptr [ %add.ptr46, %if.end47.if.end56_crit_edge ], [ %add.ptr55, %if.then51 ]
  %and57 = and i32 %can_id_flags.4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end61_crit_edge, label %if.then59

if.end56.if.end61_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %pc.1 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -128, ptr %pc.1, align 1
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end56.if.end61_crit_edge
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %52 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_packets, align 4
  %conv63 = trunc i32 %53 to i8
  %54 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size, align 4
  %sub = add i32 %55, -1
  %arrayidx64 = getelementptr i8, ptr %obuf, i32 %sub
  %56 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv63, ptr %arrayidx64, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_start(ptr noundef %dev) #1 align 64 {
entry:
  %actual_length.i.i40 = alloca i32, align 4
  %actual_length.i.i23 = alloca i32, align 4
  %actual_length.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %time_ref = getelementptr inbounds %struct.pcan_usb, ptr %dev, i32 0, i32 1
  tail call void @peak_usb_init_time_ref(ptr noundef %time_ref, ptr noundef nonnull @pcan_usb) #9
  %bec = getelementptr inbounds %struct.pcan_usb, ptr %dev, i32 0, i32 3
  %rxerr = getelementptr inbounds %struct.pcan_usb, ptr %dev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %rxerr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %rxerr, align 2
  %1 = ptrtoint ptr %bec to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %bec, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i.i) #9
  %2 = ptrtoint ptr %actual_length.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %actual_length.i.i, align 4, !annotation !62
  %state.i.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 3
  %3 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.pcan_usb_set_err_frame.exit.thread_crit_edge, label %if.end.i.i

entry.pcan_usb_set_err_frame.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcan_usb_set_err_frame.exit.thread

if.end.i.i:                                       ; preds = %entry
  %cmd_buf.i.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 9
  %5 = ptrtoint ptr %cmd_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd_buf.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 11, ptr %6, align 1
  %8 = load ptr, ptr %cmd_buf.i.i, align 4
  %arrayidx2.i.i = getelementptr i8, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %arrayidx2.i.i, align 1
  %10 = load ptr, ptr %cmd_buf.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 2
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 6, ptr %add.ptr.i.i, align 1
  %args.sroa.5.0.add.ptr.i.sroa_idx.i = getelementptr i8, ptr %10, i32 3
  %udev.i.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %12 = call ptr @memset(ptr %args.sroa.5.0.add.ptr.i.sroa_idx.i, i32 0, i32 13)
  %13 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udev.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i.i = shl i32 %16, 8
  %or.i.i = or i32 %shl.i.i.i, -1073709056
  %17 = load ptr, ptr %cmd_buf.i.i, align 4
  %call9.i.i = call i32 @usb_bulk_msg(ptr noundef %14, i32 noundef %or.i.i, ptr noundef %17, i32 noundef 16, ptr noundef nonnull %actual_length.i.i, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end.i.i.pcan_usb_set_err_frame.exit.thread_crit_edge, label %if.then

if.end.i.i.pcan_usb_set_err_frame.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcan_usb_set_err_frame.exit.thread

pcan_usb_set_err_frame.exit.thread:               ; preds = %if.end.i.i.pcan_usb_set_err_frame.exit.thread_crit_edge, %entry.pcan_usb_set_err_frame.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i.i) #9
  br label %if.end

if.then:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %netdev.i.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %18 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.1, i32 noundef 11, i32 noundef 2, i32 noundef %call9.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i.i) #9
  %20 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %21, ptr noundef nonnull @.str.24, i32 noundef %call9.i.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %pcan_usb_set_err_frame.exit.thread
  %device_rev = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 12
  %22 = ptrtoint ptr %device_rev to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %device_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %cmp = icmp ugt i8 %23, 3
  br i1 %cmp, label %if.then3, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %ctrlmode = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 22
  %24 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ctrlmode, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i.i23) #9
  %26 = ptrtoint ptr %actual_length.i.i23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %actual_length.i.i23, align 4, !annotation !62
  %27 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state.i.i, align 4
  %and.i.i25 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i25)
  %tobool.not.i.i26 = icmp eq i32 %and.i.i25, 0
  br i1 %tobool.not.i.i26, label %if.then3.pcan_usb_set_silent.exit.thread_crit_edge, label %if.end.i.i36

if.then3.pcan_usb_set_silent.exit.thread_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcan_usb_set_silent.exit.thread

if.end.i.i36:                                     ; preds = %if.then3
  %29 = trunc i32 %25 to i8
  %30 = lshr i8 %29, 1
  %31 = and i8 %30, 1
  %cmd_buf.i.i27 = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 9
  %32 = ptrtoint ptr %cmd_buf.i.i27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cmd_buf.i.i27, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 3, ptr %33, align 1
  %35 = load ptr, ptr %cmd_buf.i.i27, align 4
  %arrayidx2.i.i28 = getelementptr i8, ptr %35, i32 1
  %36 = ptrtoint ptr %arrayidx2.i.i28 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 3, ptr %arrayidx2.i.i28, align 1
  %37 = load ptr, ptr %cmd_buf.i.i27, align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %37, i32 2
  %38 = ptrtoint ptr %add.ptr.i.i29 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %31, ptr %add.ptr.i.i29, align 1
  %args.sroa.5.0.add.ptr.i.sroa_idx.i30 = getelementptr i8, ptr %37, i32 3
  %udev.i.i31 = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %39 = call ptr @memset(ptr %args.sroa.5.0.add.ptr.i.sroa_idx.i30, i32 0, i32 13)
  %40 = ptrtoint ptr %udev.i.i31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %udev.i.i31, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %shl.i.i.i32 = shl i32 %43, 8
  %or.i.i33 = or i32 %shl.i.i.i32, -1073709056
  %44 = load ptr, ptr %cmd_buf.i.i27, align 4
  %call9.i.i34 = call i32 @usb_bulk_msg(ptr noundef %41, i32 noundef %or.i.i33, ptr noundef %44, i32 noundef 16, ptr noundef nonnull %actual_length.i.i23, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i34)
  %tobool10.not.i.i35 = icmp eq i32 %call9.i.i34, 0
  br i1 %tobool10.not.i.i35, label %if.end.i.i36.pcan_usb_set_silent.exit.thread_crit_edge, label %pcan_usb_set_silent.exit

if.end.i.i36.pcan_usb_set_silent.exit.thread_crit_edge: ; preds = %if.end.i.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcan_usb_set_silent.exit.thread

pcan_usb_set_silent.exit.thread:                  ; preds = %if.end.i.i36.pcan_usb_set_silent.exit.thread_crit_edge, %if.then3.pcan_usb_set_silent.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i.i23) #9
  br label %if.end9

pcan_usb_set_silent.exit:                         ; preds = %if.end.i.i36
  call void @__sanitizer_cov_trace_pc() #11
  %netdev.i.i37 = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %45 = ptrtoint ptr %netdev.i.i37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netdev.i.i37, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %46, ptr noundef nonnull @.str.1, i32 noundef 3, i32 noundef 3, i32 noundef %call9.i.i34) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i.i23) #9
  br label %cleanup

if.end9:                                          ; preds = %pcan_usb_set_silent.exit.thread, %if.end.if.end9_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i.i40) #9
  %47 = ptrtoint ptr %actual_length.i.i40 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %actual_length.i.i40, align 4, !annotation !62
  %48 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %state.i.i, align 4
  %and.i.i42 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i42)
  %tobool.not.i.i43 = icmp eq i32 %and.i.i42, 0
  br i1 %tobool.not.i.i43, label %if.end9.pcan_usb_set_ext_vcc.exit_crit_edge, label %if.end.i.i52

if.end9.pcan_usb_set_ext_vcc.exit_crit_edge:      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcan_usb_set_ext_vcc.exit

if.end.i.i52:                                     ; preds = %if.end9
  %cmd_buf.i.i44 = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 9
  %50 = ptrtoint ptr %cmd_buf.i.i44 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cmd_buf.i.i44, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 10, ptr %51, align 1
  %53 = load ptr, ptr %cmd_buf.i.i44, align 4
  %arrayidx2.i.i45 = getelementptr i8, ptr %53, i32 1
  %54 = ptrtoint ptr %arrayidx2.i.i45 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 2, ptr %arrayidx2.i.i45, align 1
  %55 = load ptr, ptr %cmd_buf.i.i44, align 4
  %add.ptr.i.i46 = getelementptr i8, ptr %55, i32 2
  %udev.i.i47 = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %56 = call ptr @memset(ptr %add.ptr.i.i46, i32 0, i32 14)
  %57 = ptrtoint ptr %udev.i.i47 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %udev.i.i47, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 8
  %shl.i.i.i48 = shl i32 %60, 8
  %or.i.i49 = or i32 %shl.i.i.i48, -1073709056
  %61 = load ptr, ptr %cmd_buf.i.i44, align 4
  %call9.i.i50 = call i32 @usb_bulk_msg(ptr noundef %58, i32 noundef %or.i.i49, ptr noundef %61, i32 noundef 16, ptr noundef nonnull %actual_length.i.i40, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i50)
  %tobool10.not.i.i51 = icmp eq i32 %call9.i.i50, 0
  br i1 %tobool10.not.i.i51, label %if.end.i.i52.pcan_usb_set_ext_vcc.exit_crit_edge, label %if.then11.i.i54

if.end.i.i52.pcan_usb_set_ext_vcc.exit_crit_edge: ; preds = %if.end.i.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcan_usb_set_ext_vcc.exit

if.then11.i.i54:                                  ; preds = %if.end.i.i52
  call void @__sanitizer_cov_trace_pc() #11
  %netdev.i.i53 = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %62 = ptrtoint ptr %netdev.i.i53 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %netdev.i.i53, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %63, ptr noundef nonnull @.str.1, i32 noundef 10, i32 noundef 2, i32 noundef %call9.i.i50) #12
  br label %pcan_usb_set_ext_vcc.exit

pcan_usb_set_ext_vcc.exit:                        ; preds = %if.then11.i.i54, %if.end.i.i52.pcan_usb_set_ext_vcc.exit_crit_edge, %if.end9.pcan_usb_set_ext_vcc.exit_crit_edge
  %retval.0.i.i55 = phi i32 [ 0, %if.end9.pcan_usb_set_ext_vcc.exit_crit_edge ], [ %call9.i.i50, %if.then11.i.i54 ], [ 0, %if.end.i.i52.pcan_usb_set_ext_vcc.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i.i40) #9
  br label %cleanup

cleanup:                                          ; preds = %pcan_usb_set_ext_vcc.exit, %pcan_usb_set_silent.exit
  %retval.0 = phi i32 [ %retval.0.i.i55, %pcan_usb_set_ext_vcc.exit ], [ %call9.i.i34, %pcan_usb_set_silent.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_restart_async(ptr noundef %dev, ptr noundef %urb, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.pcan_usb, ptr %dev, i32 0, i32 2, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %buf, align 1
  %arrayidx1 = getelementptr i8, ptr %buf, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %buf, i32 2
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %arrayidx2, align 1
  %udev = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %5 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i = shl i32 %8, 8
  %or = or i32 %shl.i, -1073709056
  %dev1.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %9 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %10 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %11 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %12 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %13 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @pcan_usb_restart_pending, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %14 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %context4.i, align 4
  %call5 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcan_usb_get_berr_counter(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %bec) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bec1 = getelementptr i8, ptr %netdev, i32 3096
  %0 = ptrtoint ptr %bec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bec1, align 8
  %2 = ptrtoint ptr %bec to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %1, ptr %bec, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcan_usb_set_phys_id(ptr nocapture noundef readonly %netdev, i32 noundef %state) #1 align 64 {
entry:
  %actual_length.i.i8 = alloca i32, align 4
  %actual_length.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.cleanup_crit_edge
    i32 3, label %sw.bb1
    i32 2, label %entry.sw.bb4_crit_edge
    i32 0, label %entry.sw.bb4_crit_edge26
  ]

entry.sw.bb4_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i.i) #9
  %1 = ptrtoint ptr %actual_length.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %actual_length.i.i, align 4, !annotation !62
  %state.i.i = getelementptr i8, ptr %netdev, i32 2624
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb1.pcan_usb_set_led.exit_crit_edge, label %if.end.i.i

sw.bb1.pcan_usb_set_led.exit_crit_edge:           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcan_usb_set_led.exit

if.end.i.i:                                       ; preds = %sw.bb1
  %cmd_buf.i.i = getelementptr i8, ptr %netdev, i32 2872
  %4 = ptrtoint ptr %cmd_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd_buf.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 12, ptr %5, align 1
  %7 = load ptr, ptr %cmd_buf.i.i, align 4
  %arrayidx2.i.i = getelementptr i8, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %arrayidx2.i.i, align 1
  %9 = load ptr, ptr %cmd_buf.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 2
  %udev.i.i = getelementptr i8, ptr %netdev, i32 2628
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 14)
  %11 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i.i = shl i32 %14, 8
  %or.i.i = or i32 %shl.i.i.i, -1073709056
  %15 = load ptr, ptr %cmd_buf.i.i, align 4
  %call9.i.i = call i32 @usb_bulk_msg(ptr noundef %12, i32 noundef %or.i.i, ptr noundef %15, i32 noundef 16, ptr noundef nonnull %actual_length.i.i, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end.i.i.pcan_usb_set_led.exit_crit_edge, label %if.then11.i.i

if.end.i.i.pcan_usb_set_led.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcan_usb_set_led.exit

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %netdev.i.i = getelementptr i8, ptr %netdev, i32 2632
  %16 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str.1, i32 noundef 12, i32 noundef 2, i32 noundef %call9.i.i) #12
  br label %pcan_usb_set_led.exit

pcan_usb_set_led.exit:                            ; preds = %if.then11.i.i, %if.end.i.i.pcan_usb_set_led.exit_crit_edge, %sw.bb1.pcan_usb_set_led.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %sw.bb1.pcan_usb_set_led.exit_crit_edge ], [ %call9.i.i, %if.then11.i.i ], [ 0, %if.end.i.i.pcan_usb_set_led.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i.i) #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i.i8) #9
  %18 = ptrtoint ptr %actual_length.i.i8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %actual_length.i.i8, align 4, !annotation !62
  %state.i.i9 = getelementptr i8, ptr %netdev, i32 2624
  %19 = ptrtoint ptr %state.i.i9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state.i.i9, align 4
  %and.i.i10 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i10)
  %tobool.not.i.i11 = icmp eq i32 %and.i.i10, 0
  br i1 %tobool.not.i.i11, label %sw.bb4.pcan_usb_set_led.exit25_crit_edge, label %if.end.i.i21

sw.bb4.pcan_usb_set_led.exit25_crit_edge:         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcan_usb_set_led.exit25

if.end.i.i21:                                     ; preds = %sw.bb4
  %cmd_buf.i.i12 = getelementptr i8, ptr %netdev, i32 2872
  %21 = ptrtoint ptr %cmd_buf.i.i12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmd_buf.i.i12, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 12, ptr %22, align 1
  %24 = load ptr, ptr %cmd_buf.i.i12, align 4
  %arrayidx2.i.i13 = getelementptr i8, ptr %24, i32 1
  %25 = ptrtoint ptr %arrayidx2.i.i13 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %arrayidx2.i.i13, align 1
  %26 = load ptr, ptr %cmd_buf.i.i12, align 4
  %add.ptr.i.i14 = getelementptr i8, ptr %26, i32 2
  %27 = ptrtoint ptr %add.ptr.i.i14 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %add.ptr.i.i14, align 1
  %args.sroa.5.0.add.ptr.i.sroa_idx.i15 = getelementptr i8, ptr %26, i32 3
  %udev.i.i16 = getelementptr i8, ptr %netdev, i32 2628
  %28 = call ptr @memset(ptr %args.sroa.5.0.add.ptr.i.sroa_idx.i15, i32 0, i32 13)
  %29 = ptrtoint ptr %udev.i.i16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %udev.i.i16, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i.i.i17 = shl i32 %32, 8
  %or.i.i18 = or i32 %shl.i.i.i17, -1073709056
  %33 = load ptr, ptr %cmd_buf.i.i12, align 4
  %call9.i.i19 = call i32 @usb_bulk_msg(ptr noundef %30, i32 noundef %or.i.i18, ptr noundef %33, i32 noundef 16, ptr noundef nonnull %actual_length.i.i8, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i19)
  %tobool10.not.i.i20 = icmp eq i32 %call9.i.i19, 0
  br i1 %tobool10.not.i.i20, label %if.end.i.i21.pcan_usb_set_led.exit25_crit_edge, label %if.then11.i.i23

if.end.i.i21.pcan_usb_set_led.exit25_crit_edge:   ; preds = %if.end.i.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcan_usb_set_led.exit25

if.then11.i.i23:                                  ; preds = %if.end.i.i21
  call void @__sanitizer_cov_trace_pc() #11
  %netdev.i.i22 = getelementptr i8, ptr %netdev, i32 2632
  %34 = ptrtoint ptr %netdev.i.i22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netdev.i.i22, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %35, ptr noundef nonnull @.str.1, i32 noundef 12, i32 noundef 2, i32 noundef %call9.i.i19) #12
  br label %pcan_usb_set_led.exit25

pcan_usb_set_led.exit25:                          ; preds = %if.then11.i.i23, %if.end.i.i21.pcan_usb_set_led.exit25_crit_edge, %sw.bb4.pcan_usb_set_led.exit25_crit_edge
  %retval.0.i.i24 = phi i32 [ 0, %sw.bb4.pcan_usb_set_led.exit25_crit_edge ], [ %call9.i.i19, %if.then11.i.i23 ], [ 0, %if.end.i.i21.pcan_usb_set_led.exit25_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i.i8) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %pcan_usb_set_led.exit25, %pcan_usb_set_led.exit, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %retval.0.i.i24, %pcan_usb_set_led.exit25 ], [ %retval.0.i.i, %pcan_usb_set_led.exit ]
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %sw.epilog ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcan_usb_restart(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -744
  tail call void @peak_usb_restart_complete(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @peak_usb_restart_complete(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcan_usb_wait_rsp(ptr nocapture noundef readonly %dev, i8 noundef zeroext %f, ptr noundef writeonly %p) unnamed_addr #1 align 64 {
entry:
  %actual_length.i = alloca i32, align 4
  %actual_length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length) #9
  %0 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %actual_length, align 4, !annotation !62
  %state = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i) #9
  %3 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %actual_length.i, align 4, !annotation !62
  %cmd_buf.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd_buf.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %f, ptr %5, align 1
  %7 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %arrayidx2.i, align 1
  %udev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 4
  %9 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udev.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i = shl i32 %12, 8
  %or.i = or i32 %shl.i.i, -1073709056
  %13 = load ptr, ptr %cmd_buf.i, align 4
  %call9.i = call i32 @usb_bulk_msg(ptr noundef %10, i32 noundef %or.i, ptr noundef %13, i32 noundef 16, ptr noundef nonnull %actual_length.i, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end3, label %pcan_usb_send_cmd.exit

pcan_usb_send_cmd.exit:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %netdev.i = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %14 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev.i, align 4
  %conv.i = zext i8 %f to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.1, i32 noundef %conv.i, i32 noundef 1, i32 noundef %call9.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i) #9
  %16 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i = shl i32 %19, 8
  %or6 = or i32 %shl.i, -1069514624
  %20 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmd_buf.i, align 4
  %call7 = call i32 @usb_bulk_msg(ptr noundef %17, i32 noundef %or6, ptr noundef %21, i32 noundef 16, ptr noundef nonnull %actual_length, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %22 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev, align 4
  %conv = zext i8 %f to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.15, i32 noundef %conv, i32 noundef 1, i32 noundef %call7) #12
  br label %cleanup

if.else:                                          ; preds = %if.end3
  %tobool11.not = icmp eq ptr %p, null
  br i1 %tobool11.not, label %if.else.cleanup_crit_edge, label %if.then12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmd_buf.i, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 2
  %26 = call ptr @memcpy(ptr %p, ptr %add.ptr, i32 14)
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.else.cleanup_crit_edge, %if.then9, %pcan_usb_send_cmd.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call9.i, %pcan_usb_send_cmd.exit ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then12 ], [ %call7, %if.then9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length) #9
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcan_usb_decode_error(ptr nocapture noundef readonly %mc, i8 noundef zeroext %n, i8 noundef zeroext %status_len) unnamed_addr #1 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #9
  %0 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !62
  %conv = zext i8 %n to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %n)
  %cmp = icmp eq i8 %n, 64
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then:                                          ; preds = %entry
  %pdev = getelementptr inbounds %struct.pcan_usb_msg_context, ptr %mc, i32 0, i32 8
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 4
  %tick_count = getelementptr inbounds %struct.pcan_usb, ptr %2, i32 0, i32 1, i32 5
  %3 = ptrtoint ptr %tick_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tick_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %netdev = getelementptr inbounds %struct.pcan_usb_msg_context, ptr %mc, i32 0, i32 7
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 4
  %call = call ptr @alloc_can_err_skb(ptr noundef %6, ptr noundef nonnull %cf) #9
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end3.if.end28_crit_edge, label %do.body7

if.end3.if.end28_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

do.body7:                                         ; preds = %if.end3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcan_usb_decode_error.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcan_usb_decode_error, %do.end17)) #9
          to label %if.then13 [label %do.end17], !srcloc !64

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pcan_usb_decode_error.__UNIQUE_ID_ddebug465, ptr noundef %8, ptr noundef nonnull @.str.22) #9
  br label %do.end17

do.end17:                                         ; preds = %if.then13, %do.body7
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 36, i32 11
  %11 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_over_errors, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %rx_over_errors, align 4
  %13 = load ptr, ptr %netdev, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 36, i32 4
  %14 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_errors, align 8
  %inc21 = add i32 %15, 1
  store i32 %inc21, ptr %rx_errors, align 8
  %16 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cf, align 4
  %tobool22.not = icmp eq ptr %17, null
  br i1 %tobool22.not, label %do.end17.if.end28_crit_edge, label %if.then23

do.end17.if.end28_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then23:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %or = or i32 %19, 4
  store i32 %or, ptr %17, align 8
  %20 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cf, align 4
  %arrayidx = getelementptr %struct.can_frame, ptr %21, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  %24 = or i8 %23, 1
  store i8 %24, ptr %arrayidx, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %do.end17.if.end28_crit_edge, %if.end3.if.end28_crit_edge
  %and30 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end28.if.end55_crit_edge, label %do.body34

if.end28.if.end55_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

do.body34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcan_usb_decode_error.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcan_usb_decode_error, %if.end55)) #9
          to label %if.then48 [label %if.end55], !srcloc !64

if.then48:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pcan_usb_decode_error.__UNIQUE_ID_ddebug466, ptr noundef %26, ptr noundef nonnull @.str.23) #9
  br label %if.end55

if.end55:                                         ; preds = %if.then48, %do.body34, %if.end28.if.end55_crit_edge
  %and57 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.else, label %if.end55.if.end75_crit_edge

if.end55.if.end75_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.else:                                          ; preds = %if.end55
  %and61 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.else.if.end75_crit_edge, label %if.then63

if.else.if.end75_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then63:                                        ; preds = %if.else
  %pdev64 = getelementptr inbounds %struct.pcan_usb_msg_context, ptr %mc, i32 0, i32 8
  %27 = ptrtoint ptr %pdev64 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev64, align 4
  %bec = getelementptr inbounds %struct.pcan_usb, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %bec to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %bec, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %30)
  %cmp66 = icmp ugt i16 %30, 127
  br i1 %cmp66, label %if.then63.if.end75_crit_edge, label %lor.rhs

if.then63.if.end75_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

lor.rhs:                                          ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  %rxerr = getelementptr inbounds %struct.pcan_usb, ptr %28, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %rxerr to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rxerr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %32)
  %cmp71 = icmp ugt i16 %32, 127
  %phi.sel = select i1 %cmp71, i32 2, i32 1
  br label %if.end75

if.end75:                                         ; preds = %lor.rhs, %if.then63.if.end75_crit_edge, %if.else.if.end75_crit_edge, %if.end55.if.end75_crit_edge
  %new_state.0 = phi i32 [ 3, %if.end55.if.end75_crit_edge ], [ 2, %if.then63.if.end75_crit_edge ], [ %phi.sel, %lor.rhs ], [ 0, %if.else.if.end75_crit_edge ]
  %pdev76 = getelementptr inbounds %struct.pcan_usb_msg_context, ptr %mc, i32 0, i32 8
  %33 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev76, align 4
  %state = getelementptr inbounds %struct.can_priv, ptr %34, i32 0, i32 21
  %35 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %new_state.0, i32 %36)
  %cmp77.not = icmp eq i32 %new_state.0, %36
  br i1 %cmp77.not, label %if.end75.if.end130_crit_edge, label %if.then79

if.end75.if.end130_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

if.then79:                                        ; preds = %if.end75
  %bec81 = getelementptr inbounds %struct.pcan_usb, ptr %34, i32 0, i32 3
  %37 = ptrtoint ptr %bec81 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %bec81, align 8
  %rxerr86 = getelementptr inbounds %struct.pcan_usb, ptr %34, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %rxerr86 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %rxerr86, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %40)
  %cmp88.not = icmp ult i16 %38, %40
  %spec.select = select i1 %cmp88.not, i32 0, i32 %new_state.0
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %40)
  %cmp99.not = icmp ugt i16 %38, %40
  %cond104 = select i1 %cmp99.not, i32 0, i32 %new_state.0
  %41 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %netdev, align 4
  %43 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cf, align 4
  call void @can_change_state(ptr noundef %42, ptr noundef %44, i32 noundef %spec.select, i32 noundef %cond104) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %new_state.0)
  %cmp106 = icmp eq i32 %new_state.0, 3
  br i1 %cmp106, label %if.then108, label %if.else110

if.then108:                                       ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netdev, align 4
  call void @can_bus_off(ptr noundef %46) #9
  br label %if.end130

if.else110:                                       ; preds = %if.then79
  %47 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cf, align 4
  %tobool111.not = icmp eq ptr %48, null
  br i1 %tobool111.not, label %if.else110.if.end130_crit_edge, label %land.lhs.true

if.else110.if.end130_crit_edge:                   ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

land.lhs.true:                                    ; preds = %if.else110
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 8
  %and113 = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %land.lhs.true.if.end130_crit_edge, label %if.then115

land.lhs.true.if.end130_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

if.then115:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev76, align 4
  %bec117 = getelementptr inbounds %struct.pcan_usb, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %bec117 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %bec117, align 8
  %conv119 = trunc i16 %54 to i8
  %arrayidx121 = getelementptr %struct.can_frame, ptr %48, i32 0, i32 5, i32 6
  %55 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv119, ptr %arrayidx121, align 2
  %56 = load ptr, ptr %pdev76, align 4
  %rxerr124 = getelementptr inbounds %struct.pcan_usb, ptr %56, i32 0, i32 3, i32 1
  %57 = ptrtoint ptr %rxerr124 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %rxerr124, align 2
  %conv125 = trunc i16 %58 to i8
  %59 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cf, align 4
  %arrayidx127 = getelementptr %struct.can_frame, ptr %60, i32 0, i32 5, i32 7
  %61 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv125, ptr %arrayidx127, align 1
  br label %if.end130

if.end130:                                        ; preds = %if.then115, %land.lhs.true.if.end130_crit_edge, %if.else110.if.end130_crit_edge, %if.then108, %if.end75.if.end130_crit_edge
  %tobool131.not = icmp eq ptr %call, null
  br i1 %tobool131.not, label %if.end130.cleanup_crit_edge, label %if.end133

if.end130.cleanup_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end133:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %status_len)
  %tobool136.not = icmp sgt i8 %status_len, -1
  br i1 %tobool136.not, label %if.end133.if.end142_crit_edge, label %if.then137

if.end133.if.end142_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142

if.then137:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 17
  %62 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev76, align 4
  %time_ref140 = getelementptr inbounds %struct.pcan_usb, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %mc to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %mc, align 4
  %conv141 = zext i16 %67 to i32
  call void @peak_usb_get_ts_time(ptr noundef %time_ref140, i32 noundef %conv141, ptr noundef %hwtstamps.i) #9
  br label %if.end142

if.end142:                                        ; preds = %if.then137, %if.end133.if.end142_crit_edge
  %call143 = call i32 @netif_rx(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end142, %if.end130.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end142 ], [ 0, %if.then.cleanup_crit_edge ], [ -12, %if.end130.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #9
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_change_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @peak_usb_get_ts_time(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @peak_usb_update_ts_now(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @peak_usb_set_ts_now(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @peak_usb_init_time_ref(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcan_usb_restart_pending(ptr noundef %urb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %restart_timer = getelementptr inbounds %struct.pcan_usb, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 1
  %call1 = tail call i32 @mod_timer(ptr noundef %restart_timer, i32 noundef %add) #9
  tail call void @peak_usb_async_complete(ptr noundef %urb) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @peak_usb_async_complete(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50}
!llvm.named.register.sp = !{!52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb.c", i32 985, i32 10}
!2 = !{ptr @pcan_usb, !3, !"pcan_usb", i1 false, i1 false}
!3 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb.c", i32 984, i32 31}
!4 = !{ptr @pcan_usb_const, !5, !"pcan_usb_const", i1 false, i1 false}
!5 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb.c", i32 972, i32 41}
!6 = !{ptr @pcan_usb_ethtool_ops, !7, !"pcan_usb_ethtool_ops", i1 false, i1 false}
!7 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb.c", i32 965, i32 33}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb.c", i32 176, i32 4}
!10 = !{ptr @pcan_usb_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb.c", i32 871, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb.c", i32 880, i32 3}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pcan_usb_init._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @pcan_usb_init._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb.c", i32 886, i32 2}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @pcan_usb_init._entry.8, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @pcan_usb_init._entry_ptr.11, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb.c", i32 900, i32 3}
!28 = !{ptr @pcan_usb_init._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @pcan_usb_init._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb.c", i32 204, i32 4}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb.c", i32 285, i32 27}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb.c", i32 309, i32 3}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb.c", i32 393, i32 27}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb.c", i32 741, i32 27}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb.c", i32 614, i32 26}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb.c", i32 469, i32 3}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @pcan_usb_decode_error.__UNIQUE_ID_ddebug465, !43, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb.c", i32 479, i32 3}
!49 = !{ptr @pcan_usb_decode_error.__UNIQUE_ID_ddebug466, !48, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb.c", i32 850, i32 8}
!52 = !{!"sp"}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"auto-init"}
!63 = !{i64 2157269865}
!64 = !{i64 2149073957, i64 2149073962, i64 2149073975, i64 2149074019, i64 2149074053, i64 2149074074}
