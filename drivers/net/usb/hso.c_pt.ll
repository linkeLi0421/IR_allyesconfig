; ModuleID = '/llk/IR_all_yes/drivers/net/usb/hso.c_pt.bc'
source_filename = "../drivers/net/usb/hso.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.102 }
%union.anon.102 = type { ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rfkill_ops = type { ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.hso_shared_int = type { ptr, ptr, ptr, ptr, i32, i32, %struct.mutex }
%struct.hso_serial = type { ptr, i32, i8, ptr, [2 x ptr], i8, [2 x ptr], i16, ptr, ptr, ptr, i16, i16, i16, %struct.usb_ctrlrequest, %struct.usb_ctrlrequest, ptr, ptr, i32, i8, i8, i8, %struct.tty_port, %struct.spinlock, ptr, ptr, i32, [2 x i8], %struct.tasklet_struct }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.71, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.71 = type { ptr }
%struct.llist_head = type { ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.127, i32 }
%union.anon.127 = type { ptr }
%struct.hso_tiocmget = type { %struct.mutex, %struct.wait_queue_head, i32, ptr, ptr, ptr, i16, %struct.uart_icount }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hso_device = type { %union.anon.126, i32, i8, i8, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, %struct.kref, %struct.mutex }
%union.anon.126 = type { ptr }
%struct.hso_net = type { ptr, ptr, ptr, [24 x i8], ptr, ptr, [4 x ptr], ptr, [4 x ptr], ptr, ptr, ptr, i32, %struct.spinlock, i16, i16, %struct.iphdr, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.108, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.125, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.108 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.125 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.69, %struct.anon.70, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.69 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.70 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.hso_serial_state_notification = type { i8, i8, i16, i16, i16, i16 }
%struct.serial_icounter_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.88, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.88 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@hso_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 3293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016hso: unloaded\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hso_exit\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/net/usb/hso.c\00", [42 x i8] zeroinitializer }, align 32
@hso_exit._entry_ptr = internal global ptr @hso_exit._entry, section ".printk_index", align 4
@tty_drv = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@hso_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @driver_name, ptr @hso_probe, ptr @hso_disconnect, ptr null, ptr @hso_suspend, ptr @hso_resume, ptr @hso_resume, ptr null, ptr null, ptr @hso_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 96 }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_hso__361_3302_hso_init6 = internal global ptr @hso_init, section ".initcall6.init", align 4
@__exitcall_hso_exit = internal global ptr @hso_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author362 = internal constant [27 x i8] c"hso.author=Option Wireless\00", section ".modinfo", align 1
@__UNIQUE_ID_description363 = internal constant [45 x i8] c"hso.description=USB High Speed Option driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file364 = internal constant [29 x i8] c"hso.file=drivers/net/usb/hso\00", section ".modinfo", align 1
@__UNIQUE_ID_license365 = internal constant [16 x i8] c"hso.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_debug366 = internal constant [67 x i8] c"hso.parm=debug:debug level mask [0x01 | 0x02 | 0x04 | 0x08 | 0x10]\00", section ".modinfo", align 1
@__param_str_debug = internal constant [10 x i8] c"hso.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.102 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype367 = internal constant [23 x i8] c"hso.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_tty_major368 = internal constant [44 x i8] c"hso.parm=tty_major:Set the major tty number\00", section ".modinfo", align 1
@__param_str_tty_major = internal constant [14 x i8] c"hso.tty_major\00", align 1
@tty_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_tty_major = internal constant %struct.kernel_param { ptr @__param_str_tty_major, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.102 { ptr @tty_major } }, section "__param", align 4
@__UNIQUE_ID_tty_majortype369 = internal constant [27 x i8] c"hso.parmtype=tty_major:int\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_net370 = internal constant [51 x i8] c"hso.parm=disable_net:Disable the network interface\00", section ".modinfo", align 1
@__param_str_disable_net = internal constant [16 x i8] c"hso.disable_net\00", align 1
@disable_net = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_disable_net = internal constant %struct.kernel_param { ptr @__param_str_disable_net, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.102 { ptr @disable_net } }, section "__param", align 4
@__UNIQUE_ID_disable_nettype371 = internal constant [29 x i8] c"hso.parmtype=disable_net:int\00", section ".modinfo", align 1
@driver_name = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hso\00", [28 x i8] zeroinitializer }, align 32
@hso_ids = internal constant { [56 x %struct.usb_device_id], [320 x i8] } { [56 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2800, i16 26385, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @default_port_spec to i32) }, %struct.usb_device_id { i16 3, i16 2800, i16 26417, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @default_port_spec to i32) }, %struct.usb_device_id { i16 3, i16 2800, i16 26449, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @default_port_spec to i32) }, %struct.usb_device_id { i16 3, i16 2800, i16 26481, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @default_port_spec to i32) }, %struct.usb_device_id { i16 3, i16 2800, i16 26513, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @default_port_spec to i32) }, %struct.usb_device_id { i16 3, i16 2800, i16 26641, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @default_port_spec to i32) }, %struct.usb_device_id { i16 3, i16 2800, i16 26897, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @default_port_spec to i32) }, %struct.usb_device_id { i16 3, i16 2800, i16 26961, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @default_port_spec to i32) }, %struct.usb_device_id { i16 3, i16 2800, i16 26993, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @default_port_spec to i32) }, %struct.usb_device_id { i16 3, i16 2800, i16 28689, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @default_port_spec to i32) }, %struct.usb_device_id { i16 3, i16 2800, i16 28721, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @default_port_spec to i32) }, %struct.usb_device_id { i16 3, i16 2800, i16 28753, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @default_port_spec to i32) }, %struct.usb_device_id { i16 3, i16 2800, i16 28785, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @default_port_spec to i32) }, %struct.usb_device_id { i16 3, i16 2800, i16 28945, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @default_port_spec to i32) }, %struct.usb_device_id { i16 3, i16 2800, i16 29201, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @default_port_spec to i32) }, %struct.usb_device_id { i16 3, i16 2800, i16 29265, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @default_port_spec to i32) }, %struct.usb_device_id { i16 3, i16 2800, i16 29297, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @default_port_spec to i32) }, %struct.usb_device_id { i16 3, i16 2800, i16 29457, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @default_port_spec to i32) }, %struct.usb_device_id { i16 3, i16 2800, i16 -16335, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @default_port_spec to i32) }, %struct.usb_device_id { i16 3, i16 2800, i16 -12269, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @icon321_port_spec to i32) }, %struct.usb_device_id { i16 3, i16 2800, i16 -12239, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @icon321_port_spec to i32) }, %struct.usb_device_id { i16 3, i16 2800, i16 -12237, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @icon321_port_spec to i32) }, %struct.usb_device_id { i16 3, i16 2800, i16 29441, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 29537, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 29569, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 29697, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 29953, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 30209, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 30465, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 30470, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 30721, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 30977, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 31233, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 31237, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 -32256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 -32255, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 -32000, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 -31998, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 -31996, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 -31744, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 -31232, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 -30720, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 -30464, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 -28672, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 -28160, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 -12235, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 -12203, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 -11947, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 -11691, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 -12201, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 -11945, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 -11689, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 -11433, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 -12200, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 -16128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [320 x i8] zeroinitializer }, align 32
@hso_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 2881, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Not our interface\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hso_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hso_probe._entry_ptr = internal global ptr @hso_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hso%d\00", [26 x i8] zeroinitializer }, align 32
@hso_create_net_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 2496, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to create ethernet device\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hso_create_net_device\00", [42 x i8] zeroinitializer }, align 32
@hso_create_net_device._entry_ptr = internal global ptr @hso_create_net_device._entry, section ".printk_index", align 4
@hso_create_net_device._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 2509, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Can't find BULK IN endpoint\0A\00", [35 x i8] zeroinitializer }, align 32
@hso_create_net_device._entry_ptr.12 = internal global ptr @hso_create_net_device._entry.10, section ".printk_index", align 4
@hso_create_net_device._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 2515, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Can't find BULK OUT endpoint\0A\00", [34 x i8] zeroinitializer }, align 32
@hso_create_net_device._entry_ptr.15 = internal global ptr @hso_create_net_device._entry.13, section ".printk_index", align 4
@hso_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.76, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hso_create_net_device._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 2540, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to add net device\0A\00", [38 x i8] zeroinitializer }, align 32
@hso_create_net_device._entry_ptr.18 = internal global ptr @hso_create_net_device._entry.16, section ".printk_index", align 4
@hso_create_net_device._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.2, i32 2547, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register device\0A\00", [37 x i8] zeroinitializer }, align 32
@hso_create_net_device._entry_ptr.21 = internal global ptr @hso_create_net_device._entry.19, section ".printk_index", align 4
@hso_create_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&hso_dev->mutex\00", [16 x i8] zeroinitializer }, align 32
@hso_create_device.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&hso_dev->async_get_intf)\00", [52 x i8] zeroinitializer }, align 32
@hso_create_device.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&hso_dev->async_put_intf)\00", [52 x i8] zeroinitializer }, align 32
@hso_net_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 2396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016hso: [%d:%s] sizeof hso_net is %zu\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hso_net_init\00", [19 x i8] zeroinitializer }, align 32
@hso_net_init._entry_ptr = internal global ptr @hso_net_init._entry, section ".printk_index", align 4
@hso_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @hso_net_open, ptr @hso_net_close, ptr @hso_net_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hso_net_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@hso_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&hso_net->net_lock\00", [45 x i8] zeroinitializer }, align 32
@hso_net_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 699, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No net device !\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hso_net_open\00", [19 x i8] zeroinitializer }, align 32
@hso_net_open._entry_ptr = internal global ptr @hso_net_open._entry, section ".printk_index", align 4
@hso_start_net_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 2114, ptr @.str.34, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s failed mux_bulk_rx_urb[%d] %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hso_start_net_device\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hso_start_net_device._entry_ptr = internal global ptr @hso_start_net_device._entry, section ".printk_index", align 4
@__func__.read_bulk_callback = private unnamed_addr constant [19 x i8] c"read_bulk_callback\00", align 1
@read_bulk_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @__func__.read_bulk_callback, ptr @.str.2, i32 996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016hso: [%d:%s] BULK IN callback but driver is not active!\0A\00", [37 x i8] zeroinitializer }, align 32
@read_bulk_callback._entry_ptr = internal global ptr @read_bulk_callback._entry, section ".printk_index", align 4
@read_bulk_callback._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @__func__.read_bulk_callback, ptr @.str.2, i32 1038, ptr @.str.34, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s failed submit mux_bulk_rx_urb %d\0A\00", [59 x i8] zeroinitializer }, align 32
@read_bulk_callback._entry_ptr.38 = internal global ptr @read_bulk_callback._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no device\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"endpoint not enabled\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"endpoint stalled\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"not enough bandwidth\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"device disabled\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"device suspended\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"internal error\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"protocol error\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unknown status\00", [17 x i8] zeroinitializer }, align 32
@handle_usb_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016hso: [%d:%s] %s: received USB status - %s (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"handle_usb_error\00", [47 x i8] zeroinitializer }, align 32
@handle_usb_error._entry_ptr = internal global ptr @handle_usb_error._entry, section ".printk_index", align 4
@fix_crc_bug.crc_check = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\DE\AD\BE\EF", [28 x i8] zeroinitializer }, align 32
@packetizeRx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016hso: [%d:%s] Rx %d bytes\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"packetizeRx\00", [20 x i8] zeroinitializer }, align 32
@packetizeRx._entry_ptr = internal global ptr @packetizeRx._entry, section ".printk_index", align 4
@packetizeRx._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 879, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid frame (%d) length\0A\00", [37 x i8] zeroinitializer }, align 32
@packetizeRx._entry_ptr.54 = internal global ptr @packetizeRx._entry.52, section ".printk_index", align 4
@packetizeRx._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.2, i32 888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016hso: [%d:%s] could not allocate memory\0A\00", [54 x i8] zeroinitializer }, align 32
@packetizeRx._entry_ptr.57 = internal global ptr @packetizeRx._entry.55, section ".printk_index", align 4
@packetizeRx._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.2, i32 947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016hso: [%d:%s]  W_S\0A\00", [43 x i8] zeroinitializer }, align 32
@packetizeRx._entry_ptr.60 = internal global ptr @packetizeRx._entry.58, section ".printk_index", align 4
@packetizeRx._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.51, ptr @.str.2, i32 951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016hso: [%d:%s] \0A\00", [47 x i8] zeroinitializer }, align 32
@packetizeRx._entry_ptr.63 = internal global ptr @packetizeRx._entry.61, section ".printk_index", align 4
@hso_net_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016hso: [%d:%s] len: %d/%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hso_net_start_xmit\00", [45 x i8] zeroinitializer }, align 32
@hso_net_start_xmit._entry_ptr = internal global ptr @hso_net_start_xmit._entry, section ".printk_index", align 4
@hso_net_start_xmit._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 804, ptr @.str.34, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed mux_bulk_tx_urb %d\0A\00", [37 x i8] zeroinitializer }, align 32
@hso_net_start_xmit._entry_ptr.68 = internal global ptr @hso_net_start_xmit._entry.66, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@write_bulk_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 746, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: device not running\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"write_bulk_callback\00", [44 x i8] zeroinitializer }, align 32
@write_bulk_callback._entry_ptr = internal global ptr @write_bulk_callback._entry, section ".printk_index", align 4
@write_bulk_callback._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 753, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: net device not present\0A\00", [36 x i8] zeroinitializer }, align 32
@write_bulk_callback._entry_ptr.73 = internal global ptr @write_bulk_callback._entry.71, section ".printk_index", align 4
@hso_net_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 829, ptr @.str.34, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Tx timed out.\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hso_net_tx_timeout\00", [45 x i8] zeroinitializer }, align 32
@hso_net_tx_timeout._entry_ptr = internal global ptr @hso_net_tx_timeout._entry, section ".printk_index", align 4
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wwan\00", [27 x i8] zeroinitializer }, align 32
@network_table = internal global { [10 x ptr], [56 x i8] } zeroinitializer, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Control\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Application\00", [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPS\00", [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GPS control\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Application2\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCSC\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Diagnostic\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Diagnostic2\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Modem\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Network\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"/dev/%s%d\00", [22 x i8] zeroinitializer }, align 32
@tty_filename = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttyHS\00", [26 x i8] zeroinitializer }, align 32
@hso_log_port.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.90, ptr @.str.91, ptr @.str.2, ptr @.str.92, i8 2, i8 9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hso\00", [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hso_log_port\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HSO: Found %s port %s\0A\00", [41 x i8] zeroinitializer }, align 32
@hso_create_rfkill.rfkill_counter = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hso-%d\00", [25 x i8] zeroinitializer }, align 32
@hso_rfkill_ops = internal constant { %struct.rfkill_ops, [20 x i8] } { %struct.rfkill_ops { ptr null, ptr null, ptr @hso_rfkill_set_block }, [20 x i8] zeroinitializer }, align 32
@hso_create_rfkill._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 2469, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - Failed to register rfkill\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hso_create_rfkill\00", [46 x i8] zeroinitializer }, align 32
@hso_create_rfkill._entry_ptr = internal global ptr @hso_create_rfkill._entry, section ".printk_index", align 4
@hso_create_shared_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 2772, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Can't find INT IN endpoint\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hso_create_shared_int\00", [42 x i8] zeroinitializer }, align 32
@hso_create_shared_int._entry_ptr = internal global ptr @hso_create_shared_int._entry, section ".printk_index", align 4
@hso_create_shared_int.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.98 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&mux->shared_int_lock\00", [42 x i8] zeroinitializer }, align 32
@hso_serial_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @hso_serial_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@hso_serial_common_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&serial->serial_lock\00", [43 x i8] zeroinitializer }, align 32
@serial_table_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.102, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@serial_table = internal global { [256 x ptr], [256 x i8] } zeroinitializer, align 32
@obtain_minor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013hso: %s: no free serial devices in table\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"obtain_minor\00", [19 x i8] zeroinitializer }, align 32
@obtain_minor._entry_ptr = internal global ptr @obtain_minor._entry, section ".printk_index", align 4
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"serial_table_lock\00", [46 x i8] zeroinitializer }, align 32
@hso_serial_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @hso_serial_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@hso_serial_dev_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_hsotype, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_hsotype = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hsotype_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hsotype\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GPS Control\00", [20 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@mux_device_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 1759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013hso: %s: Wrong arguments\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mux_device_request\00", [45 x i8] zeroinitializer }, align 32
@mux_device_request._entry_ptr = internal global ptr @mux_device_request._entry, section ".printk_index", align 4
@mux_device_request._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.2, i32 1786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016hso: [%d:%s] %s command (%02x) len: %d, port: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@mux_device_request._entry_ptr.110 = internal global ptr @mux_device_request._entry.108, section ".printk_index", align 4
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Read\00", [27 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Write\00", [26 x i8] zeroinitializer }, align 32
@mux_device_request._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.107, ptr @.str.2, i32 1800, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s failed submit ctrl_urb %d type %d\0A\00", [58 x i8] zeroinitializer }, align 32
@mux_device_request._entry_ptr.115 = internal global ptr @mux_device_request._entry.113, section ".printk_index", align 4
@__func__.ctrl_callback = private unnamed_addr constant [14 x i8] c"ctrl_callback\00", align 1
@ctrl_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @__func__.ctrl_callback, ptr @.str.2, i32 1977, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016hso: [%d:%s] --- Got muxed ctrl callback 0x%02X ---\0A\00", [41 x i8] zeroinitializer }, align 32
@ctrl_callback._entry_ptr = internal global ptr @ctrl_callback._entry, section ".printk_index", align 4
@ctrl_callback._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @__func__.ctrl_callback, ptr @.str.2, i32 1978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016hso: [%d:%s] Actual length of urb = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ctrl_callback._entry_ptr.119 = internal global ptr @ctrl_callback._entry.117, section ".printk_index", align 4
@put_rxbuf_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.2, i32 2004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016hso: [%d:%s] serial = NULL\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"put_rxbuf_data\00", [17 x i8] zeroinitializer }, align 32
@put_rxbuf_data._entry_ptr = internal global ptr @put_rxbuf_data._entry, section ".printk_index", align 4
@put_rxbuf_data._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.2, i32 2016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016hso: [%d:%s] data to push to tty\0A\00", [60 x i8] zeroinitializer }, align 32
@put_rxbuf_data._entry_ptr.124 = internal global ptr @put_rxbuf_data._entry.122, section ".printk_index", align 4
@put_rxbuf_data._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.121, ptr @.str.2, i32 2024, ptr @.str.34, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dropping data, %d bytes lost\0A\00", [34 x i8] zeroinitializer }, align 32
@put_rxbuf_data._entry_ptr.127 = internal global ptr @put_rxbuf_data._entry.125, section ".printk_index", align 4
@hso_urb_to_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.2, i32 523, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hso_urb_to_index failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hso_urb_to_index\00", [47 x i8] zeroinitializer }, align 32
@hso_urb_to_index._entry_ptr = internal global ptr @hso_urb_to_index._entry, section ".printk_index", align 4
@hso_mux_serial_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.2, i32 1821, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ERROR: mux'd reads with multiple buffers not possible\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hso_mux_serial_read\00", [44 x i8] zeroinitializer }, align 32
@hso_mux_serial_read._entry_ptr = internal global ptr @hso_mux_serial_read._entry, section ".printk_index", align 4
@hso_create_bulk_serial_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.2, i32 2649, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to find INT IN ep\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hso_create_bulk_serial_device\00", [34 x i8] zeroinitializer }, align 32
@hso_create_bulk_serial_device._entry_ptr = internal global ptr @hso_create_bulk_serial_device._entry, section ".printk_index", align 4
@hso_create_bulk_serial_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.134 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&tiocmget->mutex\00", [47 x i8] zeroinitializer }, align 32
@hso_create_bulk_serial_device.__key.135 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.136 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&tiocmget->waitq\00", [47 x i8] zeroinitializer }, align 32
@hso_create_bulk_serial_device._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.133, ptr @.str.2, i32 2670, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to find BULK IN ep\0A\00", [37 x i8] zeroinitializer }, align 32
@hso_create_bulk_serial_device._entry_ptr.139 = internal global ptr @hso_create_bulk_serial_device._entry.137, section ".printk_index", align 4
@hso_create_bulk_serial_device._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.133, ptr @.str.2, i32 2677, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to find BULK OUT ep\0A\00", [36 x i8] zeroinitializer }, align 32
@hso_create_bulk_serial_device._entry_ptr.142 = internal global ptr @hso_create_bulk_serial_device._entry.140, section ".printk_index", align 4
@hso_std_serial_write_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.2, i32 1948, ptr @.str.34, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to submit urb - res %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hso_std_serial_write_data\00", [38 x i8] zeroinitializer }, align 32
@hso_std_serial_write_data._entry_ptr = internal global ptr @hso_std_serial_write_data._entry, section ".printk_index", align 4
@hso_std_serial_write_bulk_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.2, i32 1913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016hso: [%d:%s] serial == NULL\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"hso_std_serial_write_bulk_callback\00", [61 x i8] zeroinitializer }, align 32
@hso_std_serial_write_bulk_callback._entry_ptr = internal global ptr @hso_std_serial_write_bulk_callback._entry, section ".printk_index", align 4
@hso_std_serial_write_bulk_callback._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.146, ptr @.str.2, i32 1928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hso_std_serial_write_bulk_callback._entry_ptr.148 = internal global ptr @hso_std_serial_write_bulk_callback._entry.147, section ".printk_index", align 4
@hso_resume.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.90, ptr @.str.149, ptr @.str.2, ptr @.str.150, i8 3, i8 2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hso_resume\00", [21 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Transmitting lingering data\0A\00", [35 x i8] zeroinitializer }, align 32
@hso_start_serial_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.151, ptr @.str.2, i32 2165, ptr @.str.34, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hso_start_serial_device\00", [40 x i8] zeroinitializer }, align 32
@hso_start_serial_device._entry_ptr = internal global ptr @hso_start_serial_device._entry, section ".printk_index", align 4
@hso_std_serial_read_bulk_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.2, i32 1181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016hso: [%d:%s] --- Got serial_read_bulk callback %02x ---\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"hso_std_serial_read_bulk_callback\00", [62 x i8] zeroinitializer }, align 32
@hso_std_serial_read_bulk_callback._entry_ptr = internal global ptr @hso_std_serial_read_bulk_callback._entry, section ".printk_index", align 4
@hso_std_serial_read_bulk_callback._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.153, ptr @.str.2, i32 1185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hso_std_serial_read_bulk_callback._entry_ptr.155 = internal global ptr @hso_std_serial_read_bulk_callback._entry.154, section ".printk_index", align 4
@hso_std_serial_read_bulk_callback._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.153, ptr @.str.2, i32 1193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016hso: [%d:%s] Actual length = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@hso_std_serial_read_bulk_callback._entry_ptr.158 = internal global ptr @hso_std_serial_read_bulk_callback._entry.156, section ".printk_index", align 4
@hso_resubmit_rx_bulk_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.2, i32 1126, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s failed submit serial rx_urb %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hso_resubmit_rx_bulk_urb\00", [39 x i8] zeroinitializer }, align 32
@hso_resubmit_rx_bulk_urb._entry_ptr = internal global ptr @hso_resubmit_rx_bulk_urb._entry, section ".printk_index", align 4
@hso_mux_submit_intr_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.2, i32 3201, ptr @.str.34, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s failed mux_intr_urb %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hso_mux_submit_intr_urb\00", [40 x i8] zeroinitializer }, align 32
@hso_mux_submit_intr_urb._entry_ptr = internal global ptr @hso_mux_submit_intr_urb._entry, section ".printk_index", align 4
@__func__.intr_callback = private unnamed_addr constant [14 x i8] c"intr_callback\00", align 1
@intr_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @__func__.intr_callback, ptr @.str.2, i32 1853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016hso: [%d:%s] --- Got intr callback 0x%02X ---\0A\00", [47 x i8] zeroinitializer }, align 32
@intr_callback._entry_ptr = internal global ptr @intr_callback._entry, section ".printk_index", align 4
@intr_callback._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @__func__.intr_callback, ptr @.str.2, i32 1857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016hso: [%d:%s] port_req = 0x%.2X\0A\00", [62 x i8] zeroinitializer }, align 32
@intr_callback._entry_ptr.166 = internal global ptr @intr_callback._entry.164, section ".printk_index", align 4
@intr_callback._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @__func__.intr_callback, ptr @.str.2, i32 1866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016hso: [%d:%s] Pending read interrupt on port %d\0A\00", [46 x i8] zeroinitializer }, align 32
@intr_callback._entry_ptr.169 = internal global ptr @intr_callback._entry.167, section ".printk_index", align 4
@intr_callback._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @__func__.intr_callback, ptr @.str.2, i32 1879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016hso: [%d:%s] Already a read pending on port %d or port not open\0A\00", [61 x i8] zeroinitializer }, align 32
@intr_callback._entry_ptr.172 = internal global ptr @intr_callback._entry.170, section ".printk_index", align 4
@tiocmget_submit_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.2, i32 1440, ptr @.str.34, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s usb_submit_urb failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tiocmget_submit_urb\00", [44 x i8] zeroinitializer }, align 32
@tiocmget_submit_urb._entry_ptr = internal global ptr @tiocmget_submit_urb._entry, section ".printk_index", align 4
@__func__.tiocmget_intr_callback = private unnamed_addr constant [23 x i8] c"tiocmget_intr_callback\00", align 1
@tiocmget_intr_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @__func__.tiocmget_intr_callback, ptr @.str.2, i32 1487, ptr @.str.34, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"hso received invalid serial state notification\0A\00", [48 x i8] zeroinitializer }, align 32
@tiocmget_intr_callback._entry_ptr = internal global ptr @tiocmget_intr_callback._entry, section ".printk_index", align 4
@default_port_spec = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 274, i32 528, i32 529, i32 0], [16 x i8] zeroinitializer }, align 32
@icon321_port_spec = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 274, i32 521, i32 529, i32 528, i32 0], [44 x i8] zeroinitializer }, align 32
@hso_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.2, i32 3240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\016hso: %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hso_init\00", [23 x i8] zeroinitializer }, align 32
@hso_init._entry_ptr = internal global ptr @hso_init._entry, section ".printk_index", align 4
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@hso_serial_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr null, ptr null, ptr @hso_serial_open, ptr @hso_serial_close, ptr null, ptr @hso_serial_cleanup, ptr @hso_serial_write, ptr null, ptr null, ptr @hso_serial_write_room, ptr @hso_serial_chars_in_buffer, ptr @hso_serial_ioctl, ptr null, ptr @hso_serial_set_termios, ptr null, ptr @hso_unthrottle, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hso_serial_tiocmget, ptr @hso_serial_tiocmset, ptr null, ptr @hso_get_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@hso_init._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.177, ptr @.str.2, i32 3271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013hso: %s - tty_register_driver failed(%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@hso_init._entry_ptr.180 = internal global ptr @hso_init._entry.178, section ".printk_index", align 4
@hso_init._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.177, ptr @.str.2, i32 3278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013hso: Could not register hso driver - error: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@hso_init._entry_ptr.183 = internal global ptr @hso_init._entry.181, section ".printk_index", align 4
@.str.184 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/usb/hso.c: Option Wireless\00", [57 x i8] zeroinitializer }, align 32
@hso_serial_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.186, ptr @.str.2, i32 1244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016hso: [%d:%s] Failed to open port\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hso_serial_open\00", [16 x i8] zeroinitializer }, align 32
@hso_serial_open._entry_ptr = internal global ptr @hso_serial_open._entry, section ".printk_index", align 4
@hso_serial_open._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.186, ptr @.str.2, i32 1253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016hso: [%d:%s] Opening %d\0A\00", [37 x i8] zeroinitializer }, align 32
@hso_serial_open._entry_ptr.189 = internal global ptr @hso_serial_open._entry.187, section ".printk_index", align 4
@hso_serial_open._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.186, ptr @.str.2, i32 1275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016hso: [%d:%s] Port was already open\0A\00", [58 x i8] zeroinitializer }, align 32
@hso_serial_open._entry_ptr.192 = internal global ptr @hso_serial_open._entry.190, section ".printk_index", align 4
@_hso_serial_set_termios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.194, ptr @.str.2, i32 1087, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013hso: %s: no tty structures\00", [35 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_hso_serial_set_termios\00", [40 x i8] zeroinitializer }, align 32
@_hso_serial_set_termios._entry_ptr = internal global ptr @_hso_serial_set_termios._entry, section ".printk_index", align 4
@_hso_serial_set_termios._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.194, ptr @.str.2, i32 1091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016hso: [%d:%s] port %d\0A\00", [40 x i8] zeroinitializer }, align 32
@_hso_serial_set_termios._entry_ptr.197 = internal global ptr @_hso_serial_set_termios._entry.195, section ".printk_index", align 4
@hso_serial_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.199, ptr @.str.2, i32 1294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016hso: [%d:%s] Closing serial port\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hso_serial_close\00", [47 x i8] zeroinitializer }, align 32
@hso_serial_close._entry_ptr = internal global ptr @hso_serial_close._entry, section ".printk_index", align 4
@hso_serial_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.201, ptr @.str.2, i32 1334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013hso: %s: serial is NULL\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hso_serial_write\00", [47 x i8] zeroinitializer }, align 32
@hso_serial_write._entry_ptr = internal global ptr @hso_serial_write._entry, section ".printk_index", align 4
@hso_serial_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.203, ptr @.str.2, i32 1700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016hso: [%d:%s] IOCTL cmd: %d, arg: %ld\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hso_serial_ioctl\00", [47 x i8] zeroinitializer }, align 32
@hso_serial_ioctl._entry_ptr = internal global ptr @hso_serial_ioctl._entry, section ".printk_index", align 4
@hso_serial_set_termios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.206, ptr @.str.2, i32 1391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016hso: [%d:%s] Termios called with: cflags new[%u] - old[%u]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hso_serial_set_termios\00", [41 x i8] zeroinitializer }, align 32
@hso_serial_set_termios._entry_ptr = internal global ptr @hso_serial_set_termios._entry, section ".printk_index", align 4
@hso_serial_tiocmget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.208, ptr @.str.2, i32 1628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016hso: [%d:%s] no tty structures\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hso_serial_tiocmget\00", [44 x i8] zeroinitializer }, align 32
@hso_serial_tiocmget._entry_ptr = internal global ptr @hso_serial_tiocmget._entry, section ".printk_index", align 4
@hso_serial_tiocmset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.209, ptr @.str.2, i32 1661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hso_serial_tiocmset\00", [44 x i8] zeroinitializer }, align 32
@hso_serial_tiocmset._entry_ptr = internal global ptr @hso_serial_tiocmset._entry, section ".printk_index", align 4
@switch.table.hso_probe = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 528, i32 515, i32 518, i32 514, i32 517, i32 513, i32 530, i32 529, i32 519, i32 516, i32 520], [52 x i8] zeroinitializer }, align 32
@switch.table.hso_log_port = internal constant { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.82, ptr @.str.81, ptr @.str.80, ptr @.str.87, ptr @.str.87, ptr @.str.84, ptr @.str.87, ptr @.str.87, ptr @.str.87, ptr @.str.87, ptr @.str.87, ptr @.str.87, ptr @.str.83, ptr @.str.85, ptr @.str.86], [56 x i8] zeroinitializer }, align 32
@switch.table.hsotype_show = internal constant { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.82, ptr @.str.81, ptr @.str.104, ptr @.str.87, ptr @.str.87, ptr @.str.84, ptr @.str.87, ptr @.str.87, ptr @.str.87, ptr @.str.87, ptr @.str.87, ptr @.str.87, ptr @.str.83, ptr @.str.85, ptr @.str.86], [56 x i8] zeroinitializer }, align 32
@switch.table.mux_device_request = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 256, i16 768, i16 512, i16 1024], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 512]
@__sancov_gen_cov_switch_values.210 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.211 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.212 = internal global [16 x i64] [i64 14, i64 32, i64 4294967183, i64 4294967186, i64 4294967188, i64 4294967206, i64 4294967212, i64 4294967225, i64 4294967234, i64 4294967264, i64 4294967268, i64 4294967269, i64 4294967274, i64 4294967277, i64 4294967285, i64 4294967294]
@__sancov_gen_cov_switch_values.213 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.214 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.215 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 3293, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [8 x i8] c"tty_drv\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 370, i32 27 }
@___asan_gen_.231 = private unnamed_addr constant [11 x i8] c"hso_driver\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 3222, i32 26 }
@___asan_gen_.234 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 359, i32 12 }
@___asan_gen_.237 = private unnamed_addr constant [10 x i8] c"tty_major\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 360, i32 12 }
@___asan_gen_.240 = private unnamed_addr constant [12 x i8] c"disable_net\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 361, i32 12 }
@___asan_gen_.243 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 364, i32 19 }
@___asan_gen_.246 = private unnamed_addr constant [8 x i8] c"hso_ids\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 399, i32 35 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2881, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2493, i32 8 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2496, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2509, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2515, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [9 x i8] c"hso_type\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2474, i32 27 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2540, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2547, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2330, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2332, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2333, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2396, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant [15 x i8] c"hso_netdev_ops\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2384, i32 36 }
@___asan_gen_.333 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 816, i32 33 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2408, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 699, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2112, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 996, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1036, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 649, i32 17 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 652, i32 17 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 655, i32 17 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 658, i32 17 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 661, i32 17 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 664, i32 17 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 670, i32 17 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 676, i32 17 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 681, i32 17 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 686, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant [10 x i8] c"crc_check\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 969, i32 18 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 848, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 877, i32 6 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 888, i32 6 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 947, i32 4 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 951, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 786, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 803, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 746, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 752, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 829, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2475, i32 10 }
@___asan_gen_.489 = private unnamed_addr constant [14 x i8] c"network_table\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 372, i32 27 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2044, i32 15 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2047, i32 15 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2050, i32 15 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2053, i32 15 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2056, i32 15 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2059, i32 15 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2062, i32 15 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2065, i32 15 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2068, i32 15 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2071, i32 15 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2074, i32 15 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2080, i32 21 }
@___asan_gen_.528 = private unnamed_addr constant [13 x i8] c"tty_filename\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 365, i32 19 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2083, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant [15 x i8] c"rfkill_counter\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2454, i32 13 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2456, i32 49 }
@___asan_gen_.546 = private unnamed_addr constant [15 x i8] c"hso_rfkill_ops\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2444, i32 32 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2469, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2772, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2785, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant [22 x i8] c"hso_serial_dev_groups\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2271, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant [18 x i8] c"serial_table_lock\00", align 1
@___asan_gen_.585 = private unnamed_addr constant [13 x i8] c"serial_table\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 371, i32 27 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 629, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 373, i32 8 }
@___asan_gen_.600 = private unnamed_addr constant [21 x i8] c"hso_serial_dev_group\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 514, i32 1 }
@___asan_gen_.603 = private unnamed_addr constant [21 x i8] c"hso_serial_dev_attrs\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 509, i32 26 }
@___asan_gen_.606 = private unnamed_addr constant [17 x i8] c"dev_attr_hsotype\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 507, i32 8 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 483, i32 15 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 505, i32 22 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1759, i32 3 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1784, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1798, i32 3 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1977, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1978, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2004, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2016, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2023, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 523, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1819, i32 3 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2649, i32 4 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2657, i32 3 }
@___asan_gen_.711 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2658, i32 3 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2670, i32 3 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2677, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1947, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1913, i32 3 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1928, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 3079, i32 6 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 2163, i32 5 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1181, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1185, i32 3 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1193, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1125, i32 3 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 3200, i32 3 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1853, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1857, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1865, i32 5 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1878, i32 6 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1439, i32 3 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1486, i32 3 }
@___asan_gen_.837 = private unnamed_addr constant [18 x i8] c"default_port_spec\00", align 1
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 375, i32 18 }
@___asan_gen_.840 = private unnamed_addr constant [18 x i8] c"icon321_port_spec\00", align 1
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 382, i32 18 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 3240, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant [15 x i8] c"hso_serial_ops\00", align 1
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 3207, i32 36 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 3270, i32 3 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 3278, i32 3 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 366, i32 30 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1244, i32 3 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1253, i32 2 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1275, i32 3 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1087, i32 3 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1091, i32 2 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1294, i32 2 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1334, i32 3 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1700, i32 2 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1389, i32 3 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1628, i32 3 }
@___asan_gen_.951 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.954 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.955 = private constant [25 x i8] c"../drivers/net/usb/hso.c\00", align 1
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1661, i32 3 }
@___asan_gen_.957 = private unnamed_addr constant [23 x i8] c"switch.table.hso_probe\00", align 1
@___asan_gen_.958 = private unnamed_addr constant [26 x i8] c"switch.table.hso_log_port\00", align 1
@___asan_gen_.959 = private unnamed_addr constant [26 x i8] c"switch.table.hsotype_show\00", align 1
@___asan_gen_.960 = private unnamed_addr constant [32 x i8] c"switch.table.mux_device_request\00", align 1
@llvm.compiler.used = appending global [335 x ptr] [ptr @__UNIQUE_ID_author362, ptr @__UNIQUE_ID_debug366, ptr @__UNIQUE_ID_debugtype367, ptr @__UNIQUE_ID_description363, ptr @__UNIQUE_ID_disable_net370, ptr @__UNIQUE_ID_disable_nettype371, ptr @__UNIQUE_ID_file364, ptr @__UNIQUE_ID_license365, ptr @__UNIQUE_ID_tty_major368, ptr @__UNIQUE_ID_tty_majortype369, ptr @__exitcall_hso_exit, ptr @__initcall__kmod_hso__361_3302_hso_init6, ptr @__param_debug, ptr @__param_disable_net, ptr @__param_tty_major, ptr @_hso_serial_set_termios._entry, ptr @_hso_serial_set_termios._entry.195, ptr @_hso_serial_set_termios._entry_ptr, ptr @_hso_serial_set_termios._entry_ptr.197, ptr @ctrl_callback._entry, ptr @ctrl_callback._entry.117, ptr @ctrl_callback._entry_ptr, ptr @ctrl_callback._entry_ptr.119, ptr @handle_usb_error._entry, ptr @handle_usb_error._entry_ptr, ptr @hso_create_bulk_serial_device._entry, ptr @hso_create_bulk_serial_device._entry.137, ptr @hso_create_bulk_serial_device._entry.140, ptr @hso_create_bulk_serial_device._entry_ptr, ptr @hso_create_bulk_serial_device._entry_ptr.139, ptr @hso_create_bulk_serial_device._entry_ptr.142, ptr @hso_create_net_device._entry, ptr @hso_create_net_device._entry.10, ptr @hso_create_net_device._entry.13, ptr @hso_create_net_device._entry.16, ptr @hso_create_net_device._entry.19, ptr @hso_create_net_device._entry_ptr, ptr @hso_create_net_device._entry_ptr.12, ptr @hso_create_net_device._entry_ptr.15, ptr @hso_create_net_device._entry_ptr.18, ptr @hso_create_net_device._entry_ptr.21, ptr @hso_create_rfkill._entry, ptr @hso_create_rfkill._entry_ptr, ptr @hso_create_shared_int._entry, ptr @hso_create_shared_int._entry_ptr, ptr @hso_exit, ptr @hso_exit._entry, ptr @hso_exit._entry_ptr, ptr @hso_init._entry, ptr @hso_init._entry.178, ptr @hso_init._entry.181, ptr @hso_init._entry_ptr, ptr @hso_init._entry_ptr.180, ptr @hso_init._entry_ptr.183, ptr @hso_mux_serial_read._entry, ptr @hso_mux_serial_read._entry_ptr, ptr @hso_mux_submit_intr_urb._entry, ptr @hso_mux_submit_intr_urb._entry_ptr, ptr @hso_net_init._entry, ptr @hso_net_init._entry_ptr, ptr @hso_net_open._entry, ptr @hso_net_open._entry_ptr, ptr @hso_net_start_xmit._entry, ptr @hso_net_start_xmit._entry.66, ptr @hso_net_start_xmit._entry_ptr, ptr @hso_net_start_xmit._entry_ptr.68, ptr @hso_net_tx_timeout._entry, ptr @hso_net_tx_timeout._entry_ptr, ptr @hso_probe._entry, ptr @hso_probe._entry_ptr, ptr @hso_resubmit_rx_bulk_urb._entry, ptr @hso_resubmit_rx_bulk_urb._entry_ptr, ptr @hso_serial_close._entry, ptr @hso_serial_close._entry_ptr, ptr @hso_serial_ioctl._entry, ptr @hso_serial_ioctl._entry_ptr, ptr @hso_serial_open._entry, ptr @hso_serial_open._entry.187, ptr @hso_serial_open._entry.190, ptr @hso_serial_open._entry_ptr, ptr @hso_serial_open._entry_ptr.189, ptr @hso_serial_open._entry_ptr.192, ptr @hso_serial_set_termios._entry, ptr @hso_serial_set_termios._entry_ptr, ptr @hso_serial_tiocmget._entry, ptr @hso_serial_tiocmget._entry_ptr, ptr @hso_serial_tiocmset._entry, ptr @hso_serial_tiocmset._entry_ptr, ptr @hso_serial_write._entry, ptr @hso_serial_write._entry_ptr, ptr @hso_start_net_device._entry, ptr @hso_start_net_device._entry_ptr, ptr @hso_start_serial_device._entry, ptr @hso_start_serial_device._entry_ptr, ptr @hso_std_serial_read_bulk_callback._entry, ptr @hso_std_serial_read_bulk_callback._entry.154, ptr @hso_std_serial_read_bulk_callback._entry.156, ptr @hso_std_serial_read_bulk_callback._entry_ptr, ptr @hso_std_serial_read_bulk_callback._entry_ptr.155, ptr @hso_std_serial_read_bulk_callback._entry_ptr.158, ptr @hso_std_serial_write_bulk_callback._entry, ptr @hso_std_serial_write_bulk_callback._entry.147, ptr @hso_std_serial_write_bulk_callback._entry_ptr, ptr @hso_std_serial_write_bulk_callback._entry_ptr.148, ptr @hso_std_serial_write_data._entry, ptr @hso_std_serial_write_data._entry_ptr, ptr @hso_urb_to_index._entry, ptr @hso_urb_to_index._entry_ptr, ptr @intr_callback._entry, ptr @intr_callback._entry.164, ptr @intr_callback._entry.167, ptr @intr_callback._entry.170, ptr @intr_callback._entry_ptr, ptr @intr_callback._entry_ptr.166, ptr @intr_callback._entry_ptr.169, ptr @intr_callback._entry_ptr.172, ptr @mux_device_request._entry, ptr @mux_device_request._entry.108, ptr @mux_device_request._entry.113, ptr @mux_device_request._entry_ptr, ptr @mux_device_request._entry_ptr.110, ptr @mux_device_request._entry_ptr.115, ptr @obtain_minor._entry, ptr @obtain_minor._entry_ptr, ptr @packetizeRx._entry, ptr @packetizeRx._entry.52, ptr @packetizeRx._entry.55, ptr @packetizeRx._entry.58, ptr @packetizeRx._entry.61, ptr @packetizeRx._entry_ptr, ptr @packetizeRx._entry_ptr.54, ptr @packetizeRx._entry_ptr.57, ptr @packetizeRx._entry_ptr.60, ptr @packetizeRx._entry_ptr.63, ptr @put_rxbuf_data._entry, ptr @put_rxbuf_data._entry.122, ptr @put_rxbuf_data._entry.125, ptr @put_rxbuf_data._entry_ptr, ptr @put_rxbuf_data._entry_ptr.124, ptr @put_rxbuf_data._entry_ptr.127, ptr @read_bulk_callback._entry, ptr @read_bulk_callback._entry.36, ptr @read_bulk_callback._entry_ptr, ptr @read_bulk_callback._entry_ptr.38, ptr @tiocmget_intr_callback._entry, ptr @tiocmget_intr_callback._entry_ptr, ptr @tiocmget_submit_urb._entry, ptr @tiocmget_submit_urb._entry_ptr, ptr @write_bulk_callback._entry, ptr @write_bulk_callback._entry.71, ptr @write_bulk_callback._entry_ptr, ptr @write_bulk_callback._entry_ptr.73, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tty_drv, ptr @hso_driver, ptr @debug, ptr @tty_major, ptr @disable_net, ptr @driver_name, ptr @hso_ids, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @hso_type, ptr @.str.17, ptr @.str.20, ptr @hso_create_device.__key, ptr @.str.22, ptr @hso_create_device.__key.23, ptr @.str.24, ptr @hso_create_device.__key.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @hso_netdev_ops, ptr @ops, ptr @hso_net_init.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @fix_crc_bug.crc_check, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @network_table, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @tty_filename, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @hso_create_rfkill.rfkill_counter, ptr @.str.93, ptr @hso_rfkill_ops, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @hso_create_shared_int.__key, ptr @.str.98, ptr @hso_serial_dev_groups, ptr @hso_serial_common_create.__key, ptr @.str.99, ptr @serial_table_lock, ptr @serial_table, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @hso_serial_dev_group, ptr @hso_serial_dev_attrs, ptr @dev_attr_hsotype, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.116, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @hso_create_bulk_serial_device.__key, ptr @.str.134, ptr @hso_create_bulk_serial_device.__key.135, ptr @.str.136, ptr @.str.138, ptr @.str.141, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.157, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.165, ptr @.str.168, ptr @.str.171, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @default_port_spec, ptr @icon321_port_spec, ptr @.str.176, ptr @.str.177, ptr @hso_serial_ops, ptr @.str.179, ptr @.str.182, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.188, ptr @.str.191, ptr @.str.193, ptr @.str.194, ptr @.str.196, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @switch.table.hso_probe, ptr @switch.table.hso_log_port, ptr @switch.table.hsotype_show, ptr @switch.table.mux_device_request], section "llvm.metadata"
@0 = internal global [251 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tty_drv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tty_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_net to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_ids to i32), i32 1344, i32 1664, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_create_net_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_create_net_device._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_create_net_device._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_create_net_device._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_create_net_device._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_create_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_create_device.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_create_device.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_net_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_net_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_start_net_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_bulk_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_bulk_callback._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_usb_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fix_crc_bug.crc_check to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @packetizeRx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @packetizeRx._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @packetizeRx._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @packetizeRx._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @packetizeRx._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_net_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_net_start_xmit._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_bulk_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_bulk_callback._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_net_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @network_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tty_filename to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_create_rfkill.rfkill_counter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_rfkill_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_create_rfkill._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_create_shared_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_create_shared_int.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_serial_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_serial_common_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_table_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_table to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @obtain_minor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_serial_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_serial_dev_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hsotype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_device_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_device_request._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_device_request._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_callback._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @put_rxbuf_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @put_rxbuf_data._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @put_rxbuf_data._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_urb_to_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_mux_serial_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_create_bulk_serial_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_create_bulk_serial_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_create_bulk_serial_device.__key.135 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_create_bulk_serial_device._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_create_bulk_serial_device._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_std_serial_write_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_std_serial_write_bulk_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_std_serial_write_bulk_callback._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_start_serial_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_std_serial_read_bulk_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_std_serial_read_bulk_callback._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_std_serial_read_bulk_callback._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_resubmit_rx_bulk_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_mux_submit_intr_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_callback._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_callback._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_callback._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tiocmget_submit_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tiocmget_intr_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_port_spec to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icon321_port_spec to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_serial_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_init._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_init._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_serial_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_serial_open._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_serial_open._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hso_serial_set_termios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hso_serial_set_termios._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_serial_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_serial_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_serial_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_serial_set_termios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_serial_tiocmget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hso_serial_tiocmset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hso_probe to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hso_log_port to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hsotype_show to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mux_device_request to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hso_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #19
  %0 = load ptr, ptr @tty_drv, align 4
  tail call void @tty_unregister_driver(ptr noundef %0) #16
  tail call void @usb_deregister(ptr noundef nonnull @hso_driver) #16
  %1 = load ptr, ptr @tty_drv, align 4
  tail call void @tty_driver_kref_put(ptr noundef %1) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hso_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.184) #19
  %0 = call ptr @memset(ptr @serial_table, i32 0, i32 1024)
  %call1 = tail call ptr @__tty_alloc_driver(i32 noundef 256, ptr noundef null, i32 noundef 12) #16
  store ptr %call1, ptr @tty_drv, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_name = getelementptr inbounds %struct.tty_driver, ptr %call1, i32 0, i32 4
  %2 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @driver_name, ptr %driver_name, align 4
  %name = getelementptr inbounds %struct.tty_driver, ptr %call1, i32 0, i32 5
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @tty_filename, ptr %name, align 4
  %4 = load i32, ptr @tty_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %major = getelementptr inbounds %struct.tty_driver, ptr %call1, i32 0, i32 7
  %5 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %major, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %minor_start = getelementptr inbounds %struct.tty_driver, ptr %call1, i32 0, i32 8
  %6 = ptrtoint ptr %minor_start to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %minor_start, align 4
  %type = getelementptr inbounds %struct.tty_driver, ptr %call1, i32 0, i32 10
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 3, ptr %type, align 4
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %call1, i32 0, i32 11
  %8 = ptrtoint ptr %subtype to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %subtype, align 2
  %init_termios = getelementptr inbounds %struct.tty_driver, ptr %call1, i32 0, i32 12
  %9 = call ptr @memcpy(ptr %init_termios, ptr @tty_std_termios, i32 44)
  %10 = ptrtoint ptr %init_termios to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %init_termios, align 4
  %and.i = and i32 %11, -1516
  store i32 %and.i, ptr %init_termios, align 4
  %c_oflag.i = getelementptr inbounds %struct.tty_driver, ptr %call1, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %c_oflag.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %c_oflag.i, align 4
  %and1.i = and i32 %13, -2
  store i32 %and1.i, ptr %c_oflag.i, align 4
  %c_lflag.i = getelementptr inbounds %struct.tty_driver, ptr %call1, i32 0, i32 12, i32 3
  %14 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %c_lflag.i, align 4
  %and2.i = and i32 %15, -32844
  store i32 %and2.i, ptr %c_lflag.i, align 4
  %c_cflag.i = getelementptr inbounds %struct.tty_driver, ptr %call1, i32 0, i32 12, i32 2
  %16 = ptrtoint ptr %c_cflag.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %c_cflag.i, align 4
  %and3.i = and i32 %17, -4416
  %or.i = or i32 %and3.i, 48
  store i32 %or.i, ptr %c_cflag.i, align 4
  tail call void @tty_termios_encode_baud_rate(ptr noundef %init_termios, i32 noundef 115200, i32 noundef 115200) #16
  %18 = load ptr, ptr @tty_drv, align 4
  %ops.i = getelementptr inbounds %struct.tty_driver, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @hso_serial_ops, ptr %ops.i, align 4
  %call7 = tail call i32 @tty_register_driver(ptr noundef %18) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end15, label %do.end12

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.177, i32 noundef %call7) #19
  br label %err_free_tty

if.end15:                                         ; preds = %if.end5
  %call16 = tail call i32 @usb_register_driver(ptr noundef nonnull @hso_driver, ptr noundef null, ptr noundef nonnull @.str.90) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %do.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, i32 noundef %call16) #19
  %20 = load ptr, ptr @tty_drv, align 4
  tail call void @tty_unregister_driver(ptr noundef %20) #16
  br label %err_free_tty

err_free_tty:                                     ; preds = %do.end21, %do.end12
  %result.0 = phi i32 [ %call7, %do.end12 ], [ %call16, %do.end21 ]
  %21 = load ptr, ptr @tty_drv, align 4
  tail call void @tty_driver_kref_put(ptr noundef %21) #16
  br label %cleanup

cleanup:                                          ; preds = %err_free_tty, %if.end15.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %result.0, %err_free_tty ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hso_probe(ptr noundef %interface, ptr nocapture noundef readonly %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.not = icmp eq i8 %3, -1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceNumber, align 2
  %conv4 = zext i8 %5 to i32
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %6 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %8 = inttoptr i32 %7 to ptr
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0193, 1
  %exitcond = icmp eq i32 %i.0193, %conv4
  br i1 %exitcond, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %i.0193 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %8, i32 %i.0193
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp9 = icmp eq i32 %10, 0
  br i1 %cmp9, label %for.body.exit_crit_edge, label %for.cond

for.body.exit_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx14 = getelementptr i32, ptr %8, i32 %conv4
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx14, align 4
  br label %if.end19

if.else:                                          ; preds = %if.end
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 17) #20
  %16 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv.i = zext i8 %19 to i32
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.else.exit_crit_edge, label %if.end.i

if.else.exit_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end.i:                                         ; preds = %if.else
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 -128
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i.i = shl i32 %21, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i.i, i32 noundef %or3.i, i8 noundef zeroext -122, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 17, i32 noundef 5000) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call4.i)
  %cmp.not.i = icmp ne i32 %call4.i, 17
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %19)
  %cmp8.i = icmp ugt i8 %19, 16
  %or.cond = select i1 %cmp.not.i, i1 true, i1 %cmp8.i
  br i1 %or.cond, label %if.end.i.exit.sink.split_crit_edge, label %if.end11.i

if.end.i.exit.sink.split_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit.sink.split

if.end11.i:                                       ; preds = %if.end.i
  %arrayidx.i = getelementptr i8, ptr %call7.i.i, i32 %conv.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %switch.tableidx = add i8 %23, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %switch.tableidx)
  %24 = icmp ult i8 %switch.tableidx, 11
  br i1 %24, label %switch.lookup, label %if.end11.i.hso_get_config_data.exit_crit_edge

if.end11.i.hso_get_config_data.exit_crit_edge:    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_get_config_data.exit

switch.lookup:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  %25 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.hso_probe, i32 0, i32 %25
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %hso_get_config_data.exit

hso_get_config_data.exit:                         ; preds = %switch.lookup, %if.end11.i.hso_get_config_data.exit_crit_edge
  %27 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end11.i.hso_get_config_data.exit_crit_edge ]
  %arrayidx28.i = getelementptr i8, ptr %call7.i.i, i32 16
  %28 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx28.i, align 8
  %30 = and i8 %29, 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 24
  %33 = or i32 %32, %27
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp15 = icmp slt i32 %33, 0
  br i1 %cmp15, label %hso_get_config_data.exit.exit_crit_edge, label %hso_get_config_data.exit.if.end19_crit_edge

hso_get_config_data.exit.if.end19_crit_edge:      ; preds = %hso_get_config_data.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

hso_get_config_data.exit.exit_crit_edge:          ; preds = %hso_get_config_data.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end19:                                         ; preds = %hso_get_config_data.exit.if.end19_crit_edge, %for.end
  %port_spec.0 = phi i32 [ %12, %for.end ], [ %33, %hso_get_config_data.exit.if.end19_crit_edge ]
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 2
  %34 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp20 = icmp ugt i32 %35, 1
  br i1 %cmp20, label %if.then22, label %if.end19.if.end25_crit_edge

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %36 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %37, i32 -128
  %call24 = tail call i32 @usb_set_interface(ptr noundef %add.ptr.i, i32 noundef %conv4, i32 noundef 1) #16
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end19.if.end25_crit_edge
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 6
  %38 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %needs_remote_wakeup, align 8
  %39 = trunc i32 %port_spec.0 to i16
  %trunc = and i16 %39, -256
  %40 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %if.end25.exit_crit_edge [
    i16 256, label %sw.bb
    i16 512, label %sw.bb65
  ]

if.end25.exit_crit_edge:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

sw.bb:                                            ; preds = %if.end25
  %and26 = and i32 %port_spec.0, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %and26)
  %cmp27 = icmp eq i32 %and26, 18
  br i1 %cmp27, label %if.then29, label %sw.bb.if.end37_crit_edge

sw.bb.if.end37_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.then29:                                        ; preds = %sw.bb
  %41 = load i32, ptr @disable_net, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool30.not = icmp eq i32 %41, 0
  br i1 %tobool30.not, label %if.then31, label %if.then29.if.end37_crit_edge

if.then29.if.end37_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.then31:                                        ; preds = %if.then29
  %call32 = tail call fastcc ptr @hso_create_net_device(ptr noundef %interface, i32 noundef %port_spec.0)
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.then31.exit_crit_edge, label %if.then31.if.end37_crit_edge

if.then31.if.end37_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.then31.exit_crit_edge:                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end37:                                         ; preds = %if.then31.if.end37_crit_edge, %if.then29.if.end37_crit_edge, %sw.bb.if.end37_crit_edge
  %tmp_dev.0 = phi ptr [ null, %if.then29.if.end37_crit_edge ], [ null, %sw.bb.if.end37_crit_edge ], [ %call32, %if.then31.if.end37_crit_edge ]
  %42 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cur_altsetting, align 4
  %extralen.i = getelementptr inbounds %struct.usb_host_interface, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %extralen.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %extralen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp.i = icmp eq i32 %45, 3
  br i1 %cmp.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end37
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %43, i32 0, i32 4
  %46 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bNumEndpoints.i, align 4
  %conv.i124 = zext i8 %47 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp123.not.i = icmp eq i8 %47, 0
  br i1 %cmp123.not.i, label %for.cond.preheader.i.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.exit_crit_edge:              ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %endpoint.i = getelementptr inbounds %struct.usb_host_interface, ptr %43, i32 0, i32 3
  %48 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %endpoint.i, align 4
  br label %for.body.i

if.then.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  %extra.i = getelementptr inbounds %struct.usb_host_interface, ptr %43, i32 0, i32 2
  br label %if.end41

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %extralen4.i = getelementptr %struct.usb_host_endpoint, ptr %49, i32 %i.024.i, i32 8
  %50 = ptrtoint ptr %extralen4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %extralen4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %51)
  %cmp5.i = icmp eq i32 %51, 3
  br i1 %cmp5.i, label %if.then7.i, label %for.inc.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %extra10.i = getelementptr %struct.usb_host_endpoint, ptr %49, i32 %i.024.i, i32 7
  br label %if.end41

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i124
  br i1 %exitcond.not.i, label %for.inc.i.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.exit_crit_edge:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end41:                                         ; preds = %if.then7.i, %if.then.i
  %extra10.sink.i = phi ptr [ %extra10.i, %if.then7.i ], [ %extra.i, %if.then.i ]
  %52 = ptrtoint ptr %extra10.sink.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %extra10.sink.i, align 4
  %arrayidx11.i = getelementptr i8, ptr %53, i32 2
  %54 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx11.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3520, i32 noundef 116) #20
  %tobool.not.i127 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i127, label %if.end41.exit_crit_edge, label %if.end.i128

if.end41.exit_crit_edge:                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end.i128:                                      ; preds = %if.end41
  %57 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %bNumEndpoints.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bNumEndpoints.i.i, align 4
  %conv.i.i = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp15.not.i.i = icmp eq i8 %60, 0
  br i1 %cmp15.not.i.i, label %if.end.i128.hso_get_ep.exit.thread.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i128.hso_get_ep.exit.thread.i_crit_edge:   ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_get_ep.exit.thread.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i128
  %endpoint.i.i = getelementptr inbounds %struct.usb_host_interface, ptr %58, i32 0, i32 3
  %61 = ptrtoint ptr %endpoint.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %endpoint.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.016.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.usb_host_endpoint, ptr %62, i32 %i.016.i.i
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 2
  %63 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp4.i.i = icmp slt i8 %64, 0
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %bmAttributes.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 3
  %65 = ptrtoint ptr %bmAttributes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bmAttributes.i.i.i, align 1
  %67 = and i8 %66, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %67)
  %cmp6.i.i = icmp eq i8 %67, 3
  br i1 %cmp6.i.i, label %hso_get_ep.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.016.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.hso_get_ep.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.inc.i.i.hso_get_ep.exit.thread.i_crit_edge:   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_get_ep.exit.thread.i

hso_get_ep.exit.thread.i:                         ; preds = %for.inc.i.i.hso_get_ep.exit.thread.i_crit_edge, %if.end.i128.hso_get_ep.exit.thread.i_crit_edge
  %68 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %call7.i.i.i, align 8
  br label %do.end.i

hso_get_ep.exit.i:                                ; preds = %land.lhs.true.i.i
  %69 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %arrayidx.i.i, ptr %call7.i.i.i, align 8
  %tobool3.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool3.not.i, label %hso_get_ep.exit.i.do.end.i_crit_edge, label %if.end5.i

hso_get_ep.exit.i.do.end.i_crit_edge:             ; preds = %hso_get_ep.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

do.end.i:                                         ; preds = %hso_get_ep.exit.i.do.end.i_crit_edge, %hso_get_ep.exit.thread.i
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.96) #19
  br label %exit.i

if.end5.i:                                        ; preds = %hso_get_ep.exit.i
  %call6.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #16
  %shared_intr_urb.i = getelementptr inbounds %struct.hso_shared_int, ptr %call7.i.i.i, i32 0, i32 2
  %70 = ptrtoint ptr %shared_intr_urb.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call6.i, ptr %shared_intr_urb.i, align 8
  %tobool8.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool8.not.i, label %if.end5.i.exit.i_crit_edge, label %if.end8.i.i.i

if.end5.i.exit.i_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit.i

if.end8.i.i.i:                                    ; preds = %if.end5.i
  %71 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call7.i.i.i, align 8
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %wMaxPacketSize.i, align 1
  %75 = tail call i16 @llvm.bswap.i16(i16 %74) #16
  %conv.i129 = zext i16 %75 to i32
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv.i129, i32 noundef 3520) #21
  %shared_intr_buf.i = getelementptr inbounds %struct.hso_shared_int, ptr %call7.i.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %shared_intr_buf.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call9.i.i.i, ptr %shared_intr_buf.i, align 4
  %tobool14.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool14.not.i, label %if.end8.i.i.i.exit.i_crit_edge, label %hso_create_shared_int.exit

if.end8.i.i.i.exit.i_crit_edge:                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit.i

exit.i:                                           ; preds = %if.end8.i.i.i.exit.i_crit_edge, %if.end5.i.exit.i_crit_edge, %do.end.i
  %shared_intr_buf20.i = getelementptr inbounds %struct.hso_shared_int, ptr %call7.i.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %shared_intr_buf20.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %shared_intr_buf20.i, align 4
  tail call void @kfree(ptr noundef %78) #16
  %shared_intr_urb21.i = getelementptr inbounds %struct.hso_shared_int, ptr %call7.i.i.i, i32 0, i32 2
  %79 = ptrtoint ptr %shared_intr_urb21.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %shared_intr_urb21.i, align 8
  tail call void @usb_free_urb(ptr noundef %80) #16
  br label %exit.sink.split

hso_create_shared_int.exit:                       ; preds = %if.end8.i.i.i
  %shared_int_lock.i = getelementptr inbounds %struct.hso_shared_int, ptr %call7.i.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %shared_int_lock.i, ptr noundef nonnull @.str.98, ptr noundef nonnull @hso_create_shared_int.__key) #16
  %conv50 = zext i8 %55 to i32
  br label %for.body49

for.body49:                                       ; preds = %for.inc59.for.body49_crit_edge, %hso_create_shared_int.exit
  %hso_dev.1196 = phi ptr [ %tmp_dev.0, %hso_create_shared_int.exit ], [ %hso_dev.2, %for.inc59.for.body49_crit_edge ]
  %i.1194 = phi i32 [ 1, %hso_create_shared_int.exit ], [ %shl, %for.inc59.for.body49_crit_edge ]
  %and51 = and i32 %i.1194, %conv50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %for.body49.for.inc59_crit_edge, label %if.then53

for.body49.for.inc59_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc59

if.then53:                                        ; preds = %for.body49
  %81 = zext i32 %i.1194 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.210)
  switch i32 %i.1194, label %if.then53.exit_crit_edge [
    i32 1, label %if.then53.if.end.i132_crit_edge
    i32 2, label %sw.bb1.i.i
    i32 4, label %sw.bb2.i.i
    i32 8, label %sw.bb3.i.i
    i32 16, label %sw.bb4.i.i
  ]

if.then53.if.end.i132_crit_edge:                  ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i132

if.then53.exit_crit_edge:                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

sw.bb1.i.i:                                       ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i132

sw.bb2.i.i:                                       ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i132

sw.bb3.i.i:                                       ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i132

sw.bb4.i.i:                                       ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i132

if.end.i132:                                      ; preds = %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.then53.if.end.i132_crit_edge
  %result.0.i.ph.i = phi i32 [ 257, %if.then53.if.end.i132_crit_edge ], [ 258, %sw.bb1.i.i ], [ 260, %sw.bb2.i.i ], [ 259, %sw.bb3.i.i ], [ 261, %sw.bb4.i.i ]
  %call2.i = tail call fastcc ptr @hso_create_device(ptr noundef %interface, i32 noundef %result.0.i.ph.i) #16
  %tobool.not.i131 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i131, label %if.end.i132.exit_crit_edge, label %if.end4.i

if.end.i132.exit_crit_edge:                       ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end4.i:                                        ; preds = %if.end.i132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %82 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i133 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %82, i32 noundef 3520, i32 noundef 752) #20
  %tobool6.not.i = icmp eq ptr %call7.i.i.i133, null
  br i1 %tobool6.not.i, label %if.end4.i.exit.sink.split_crit_edge, label %if.end8.i

if.end4.i.exit.sink.split_crit_edge:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit.sink.split

if.end8.i:                                        ; preds = %if.end4.i
  %83 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call7.i.i.i133, ptr %call2.i, align 4
  %84 = ptrtoint ptr %call7.i.i.i133 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call2.i, ptr %call7.i.i.i133, align 8
  %call9.i = tail call fastcc i32 @hso_serial_common_create(ptr noundef nonnull %call7.i.i.i133, i32 noundef 1, i32 noundef 1024, i32 noundef 64) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %hso_create_mux_serial_device.exit, label %err_free_serial.i

err_free_serial.i:                                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i133) #16
  br label %exit.sink.split

hso_create_mux_serial_device.exit:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  %tx_data_length.i = getelementptr inbounds %struct.hso_serial, ptr %call7.i.i.i133, i32 0, i32 11
  %85 = ptrtoint ptr %tx_data_length.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %tx_data_length.i, align 4
  %dec.i = add i16 %86, -1
  store i16 %dec.i, ptr %tx_data_length.i, align 4
  %write_data.i = getelementptr inbounds %struct.hso_serial, ptr %call7.i.i.i133, i32 0, i32 24
  %87 = ptrtoint ptr %write_data.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @hso_mux_serial_write_data, ptr %write_data.i, align 8
  %shared_int.i = getelementptr inbounds %struct.hso_serial, ptr %call7.i.i.i133, i32 0, i32 3
  %88 = ptrtoint ptr %shared_int.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call7.i.i.i, ptr %shared_int.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %shared_int_lock.i, i32 noundef 0) #16
  %89 = ptrtoint ptr %shared_int.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %shared_int.i, align 4
  %ref_count.i = getelementptr inbounds %struct.hso_shared_int, ptr %90, i32 0, i32 5
  %91 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ref_count.i, align 4
  %inc.i135 = add i32 %92, 1
  store i32 %inc.i135, ptr %ref_count.i, align 4
  %93 = load ptr, ptr %shared_int.i, align 4
  %shared_int_lock16.i = getelementptr inbounds %struct.hso_shared_int, ptr %93, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %shared_int_lock16.i) #16
  tail call fastcc void @hso_log_port(ptr noundef nonnull %call2.i) #16
  br label %for.inc59

for.inc59:                                        ; preds = %hso_create_mux_serial_device.exit, %for.body49.for.inc59_crit_edge
  %hso_dev.2 = phi ptr [ %call2.i, %hso_create_mux_serial_device.exit ], [ %hso_dev.1196, %for.body49.for.inc59_crit_edge ]
  %shl = shl i32 %i.1194, 1
  %cmp47 = icmp slt i32 %shl, 256
  br i1 %cmp47, label %for.inc59.for.body49_crit_edge, label %for.end61

for.inc59.for.body49_crit_edge:                   ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body49

for.end61:                                        ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #18
  %tobool62.not = icmp eq ptr %tmp_dev.0, null
  %spec.select = select i1 %tobool62.not, ptr %hso_dev.2, ptr %tmp_dev.0
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end25
  %and66 = and i32 %port_spec.0, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %and66)
  %cmp67 = icmp eq i32 %and66, 18
  br i1 %cmp67, label %if.then69, label %if.else74

if.then69:                                        ; preds = %sw.bb65
  %94 = load i32, ptr @disable_net, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool70.not = icmp eq i32 %94, 0
  br i1 %tobool70.not, label %if.then71, label %if.then69.exit_crit_edge

if.then69.exit_crit_edge:                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.then71:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #18
  %call72 = tail call fastcc ptr @hso_create_net_device(ptr noundef %interface, i32 noundef %port_spec.0)
  br label %if.end76

if.else74:                                        ; preds = %sw.bb65
  %call.i = tail call fastcc ptr @hso_create_device(ptr noundef %interface, i32 noundef %port_spec.0) #16
  %tobool.not.i137 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i137, label %if.else74.exit_crit_edge, label %if.end.i139

if.else74.exit_crit_edge:                         ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end.i139:                                      ; preds = %if.else74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %95 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i138 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %95, i32 noundef 3520, i32 noundef 752) #20
  %tobool2.not.i = icmp eq ptr %call7.i.i.i138, null
  br i1 %tobool2.not.i, label %if.end.i139.hso_free_tiomget.exit.i_crit_edge, label %if.end4.i141

if.end.i139.hso_free_tiomget.exit.i_crit_edge:    ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_free_tiomget.exit.i

if.end4.i141:                                     ; preds = %if.end.i139
  %96 = ptrtoint ptr %call7.i.i.i138 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call.i, ptr %call7.i.i.i138, align 8
  %97 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call7.i.i.i138, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and66)
  %cmp.i140 = icmp eq i32 %and66, 17
  br i1 %cmp.i140, label %if.then5.i, label %if.end4.i141.if.end36.i_crit_edge

if.end4.i141.if.end36.i_crit_edge:                ; preds = %if.end4.i141
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36.i

if.then5.i:                                       ; preds = %if.end4.i141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %98 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i94.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %98, i32 noundef 3520, i32 noundef 208) #20
  %tiocmget7.i = getelementptr inbounds %struct.hso_serial, ptr %call7.i.i.i138, i32 0, i32 25
  %99 = ptrtoint ptr %tiocmget7.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call7.i.i94.i, ptr %tiocmget7.i, align 4
  %tobool9.not.i = icmp eq ptr %call7.i.i94.i, null
  br i1 %tobool9.not.i, label %if.then5.i.if.end.i.i_crit_edge, label %if.end11.i142

if.then5.i.if.end.i.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.end11.i142:                                    ; preds = %if.then5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %100 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i95.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %100, i32 noundef 3520, i32 noundef 10) #20
  %101 = ptrtoint ptr %tiocmget7.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %tiocmget7.i, align 4
  %serial_state_notification.i = getelementptr inbounds %struct.hso_tiocmget, ptr %102, i32 0, i32 5
  %103 = ptrtoint ptr %serial_state_notification.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call7.i.i95.i, ptr %serial_state_notification.i, align 4
  %104 = load ptr, ptr %tiocmget7.i, align 4
  %serial_state_notification15.i = getelementptr inbounds %struct.hso_tiocmget, ptr %104, i32 0, i32 5
  %105 = ptrtoint ptr %serial_state_notification15.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %serial_state_notification15.i, align 4
  %tobool16.not.i = icmp eq ptr %106, null
  br i1 %tobool16.not.i, label %if.end11.i142.if.end.i.i_crit_edge, label %if.end18.i

if.end11.i142.if.end.i.i_crit_edge:               ; preds = %if.end11.i142
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.end18.i:                                       ; preds = %if.end11.i142
  %107 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints.i.i144 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %108, i32 0, i32 4
  %109 = ptrtoint ptr %bNumEndpoints.i.i144 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %bNumEndpoints.i.i144, align 4
  %conv.i.i145 = zext i8 %110 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp15.not.i.i146 = icmp eq i8 %110, 0
  br i1 %cmp15.not.i.i146, label %if.end18.i.hso_get_ep.exit.thread.i160_crit_edge, label %for.body.lr.ph.i.i148

if.end18.i.hso_get_ep.exit.thread.i160_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_get_ep.exit.thread.i160

for.body.lr.ph.i.i148:                            ; preds = %if.end18.i
  %endpoint.i.i147 = getelementptr inbounds %struct.usb_host_interface, ptr %108, i32 0, i32 3
  %111 = ptrtoint ptr %endpoint.i.i147 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %endpoint.i.i147, align 4
  br label %for.body.i.i153

for.body.i.i153:                                  ; preds = %for.inc.i.i159.for.body.i.i153_crit_edge, %for.body.lr.ph.i.i148
  %i.016.i.i149 = phi i32 [ 0, %for.body.lr.ph.i.i148 ], [ %inc.i.i157, %for.inc.i.i159.for.body.i.i153_crit_edge ]
  %arrayidx.i.i150 = getelementptr %struct.usb_host_endpoint, ptr %112, i32 %i.016.i.i149
  %bEndpointAddress.i.i151 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i150, i32 0, i32 2
  %113 = ptrtoint ptr %bEndpointAddress.i.i151 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %bEndpointAddress.i.i151, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %cmp4.i.i152 = icmp slt i8 %114, 0
  br i1 %cmp4.i.i152, label %land.lhs.true.i.i156, label %for.body.i.i153.for.inc.i.i159_crit_edge

for.body.i.i153.for.inc.i.i159_crit_edge:         ; preds = %for.body.i.i153
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i159

land.lhs.true.i.i156:                             ; preds = %for.body.i.i153
  %bmAttributes.i.i.i154 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i150, i32 0, i32 3
  %115 = ptrtoint ptr %bmAttributes.i.i.i154 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %bmAttributes.i.i.i154, align 1
  %117 = and i8 %116, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %117)
  %cmp6.i.i155 = icmp eq i8 %117, 3
  br i1 %cmp6.i.i155, label %hso_get_ep.exit.i161, label %land.lhs.true.i.i156.for.inc.i.i159_crit_edge

land.lhs.true.i.i156.for.inc.i.i159_crit_edge:    ; preds = %land.lhs.true.i.i156
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i159

for.inc.i.i159:                                   ; preds = %land.lhs.true.i.i156.for.inc.i.i159_crit_edge, %for.body.i.i153.for.inc.i.i159_crit_edge
  %inc.i.i157 = add nuw nsw i32 %i.016.i.i149, 1
  %exitcond.not.i.i158 = icmp eq i32 %inc.i.i157, %conv.i.i145
  br i1 %exitcond.not.i.i158, label %for.inc.i.i159.hso_get_ep.exit.thread.i160_crit_edge, label %for.inc.i.i159.for.body.i.i153_crit_edge

for.inc.i.i159.for.body.i.i153_crit_edge:         ; preds = %for.inc.i.i159
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i153

for.inc.i.i159.hso_get_ep.exit.thread.i160_crit_edge: ; preds = %for.inc.i.i159
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_get_ep.exit.thread.i160

hso_get_ep.exit.thread.i160:                      ; preds = %for.inc.i.i159.hso_get_ep.exit.thread.i160_crit_edge, %if.end18.i.hso_get_ep.exit.thread.i160_crit_edge
  %endp139.i = getelementptr inbounds %struct.hso_tiocmget, ptr %104, i32 0, i32 3
  %118 = ptrtoint ptr %endp139.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %endp139.i, align 4
  br label %do.end.i163

hso_get_ep.exit.i161:                             ; preds = %land.lhs.true.i.i156
  %endp.i = getelementptr inbounds %struct.hso_tiocmget, ptr %104, i32 0, i32 3
  %119 = ptrtoint ptr %endp.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %arrayidx.i.i150, ptr %endp.i, align 4
  %tobool22.not.i = icmp eq ptr %arrayidx.i.i150, null
  br i1 %tobool22.not.i, label %hso_get_ep.exit.i161.do.end.i163_crit_edge, label %if.end24.i

hso_get_ep.exit.i161.do.end.i163_crit_edge:       ; preds = %hso_get_ep.exit.i161
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i163

do.end.i163:                                      ; preds = %hso_get_ep.exit.i161.do.end.i163_crit_edge, %hso_get_ep.exit.thread.i160
  %dev.i162 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i162, ptr noundef nonnull @.str.132) #19
  br label %if.end.i.i

if.end24.i:                                       ; preds = %hso_get_ep.exit.i161
  %call25.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #16
  %urb.i = getelementptr inbounds %struct.hso_tiocmget, ptr %104, i32 0, i32 4
  %120 = ptrtoint ptr %urb.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call25.i, ptr %urb.i, align 4
  %tobool27.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool27.not.i, label %if.end24.i.if.end.i.i_crit_edge, label %do.body30.i

if.end24.i.if.end.i.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

do.body30.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__mutex_init(ptr noundef %104, ptr noundef nonnull @.str.134, ptr noundef nonnull @hso_create_bulk_serial_device.__key) #16
  %waitq.i = getelementptr inbounds %struct.hso_tiocmget, ptr %104, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %waitq.i, ptr noundef nonnull @.str.136, ptr noundef nonnull @hso_create_bulk_serial_device.__key.135) #16
  br label %if.end36.i

if.end36.i:                                       ; preds = %do.body30.i, %if.end4.i141.if.end36.i_crit_edge
  %num_urbs.0.i = phi i32 [ 2, %do.body30.i ], [ 1, %if.end4.i141.if.end36.i_crit_edge ]
  %call37.i = tail call fastcc i32 @hso_serial_common_create(ptr noundef nonnull %call7.i.i.i138, i32 noundef %num_urbs.0.i, i32 noundef 4096, i32 noundef 8192) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end36.i.if.end.i.i_crit_edge

if.end36.i.if.end.i.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.end40.i:                                       ; preds = %if.end36.i
  %121 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints.i97.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %122, i32 0, i32 4
  %123 = ptrtoint ptr %bNumEndpoints.i97.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %bNumEndpoints.i97.i, align 4
  %conv.i98.i = zext i8 %124 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %cmp15.not.i99.i = icmp eq i8 %124, 0
  br i1 %cmp15.not.i99.i, label %if.end40.i.hso_get_ep.exit116.thread.i_crit_edge, label %for.body.lr.ph.i101.i

if.end40.i.hso_get_ep.exit116.thread.i_crit_edge: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_get_ep.exit116.thread.i

for.body.lr.ph.i101.i:                            ; preds = %if.end40.i
  %endpoint.i100.i = getelementptr inbounds %struct.usb_host_interface, ptr %122, i32 0, i32 3
  %125 = ptrtoint ptr %endpoint.i100.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %endpoint.i100.i, align 4
  br label %for.body.i107.i

for.body.i107.i:                                  ; preds = %for.inc.i114.i.for.body.i107.i_crit_edge, %for.body.lr.ph.i101.i
  %i.016.i102.i = phi i32 [ 0, %for.body.lr.ph.i101.i ], [ %inc.i112.i, %for.inc.i114.i.for.body.i107.i_crit_edge ]
  %arrayidx.i103.i = getelementptr %struct.usb_host_endpoint, ptr %126, i32 %i.016.i102.i
  %bEndpointAddress.i104.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i103.i, i32 0, i32 2
  %127 = ptrtoint ptr %bEndpointAddress.i104.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %bEndpointAddress.i104.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %cmp4.i106.i = icmp slt i8 %128, 0
  br i1 %cmp4.i106.i, label %land.lhs.true.i111.i, label %for.body.i107.i.for.inc.i114.i_crit_edge

for.body.i107.i.for.inc.i114.i_crit_edge:         ; preds = %for.body.i107.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i114.i

land.lhs.true.i111.i:                             ; preds = %for.body.i107.i
  %bmAttributes.i.i108.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i103.i, i32 0, i32 3
  %129 = ptrtoint ptr %bmAttributes.i.i108.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %bmAttributes.i.i108.i, align 1
  %131 = and i8 %130, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %131)
  %cmp6.i110.i = icmp eq i8 %131, 2
  br i1 %cmp6.i110.i, label %hso_get_ep.exit116.i, label %land.lhs.true.i111.i.for.inc.i114.i_crit_edge

land.lhs.true.i111.i.for.inc.i114.i_crit_edge:    ; preds = %land.lhs.true.i111.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i114.i

for.inc.i114.i:                                   ; preds = %land.lhs.true.i111.i.for.inc.i114.i_crit_edge, %for.body.i107.i.for.inc.i114.i_crit_edge
  %inc.i112.i = add nuw nsw i32 %i.016.i102.i, 1
  %exitcond.not.i113.i = icmp eq i32 %inc.i112.i, %conv.i98.i
  br i1 %exitcond.not.i113.i, label %for.inc.i114.i.hso_get_ep.exit116.thread.i_crit_edge, label %for.inc.i114.i.for.body.i107.i_crit_edge

for.inc.i114.i.for.body.i107.i_crit_edge:         ; preds = %for.inc.i114.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i107.i

for.inc.i114.i.hso_get_ep.exit116.thread.i_crit_edge: ; preds = %for.inc.i114.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_get_ep.exit116.thread.i

hso_get_ep.exit116.thread.i:                      ; preds = %for.inc.i114.i.hso_get_ep.exit116.thread.i_crit_edge, %if.end40.i.hso_get_ep.exit116.thread.i_crit_edge
  %in_endp142.i = getelementptr inbounds %struct.hso_serial, ptr %call7.i.i.i138, i32 0, i32 16
  %132 = ptrtoint ptr %in_endp142.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %in_endp142.i, align 4
  br label %exit2.i

hso_get_ep.exit116.i:                             ; preds = %land.lhs.true.i111.i
  %in_endp.i = getelementptr inbounds %struct.hso_serial, ptr %call7.i.i.i138, i32 0, i32 16
  %133 = ptrtoint ptr %in_endp.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %arrayidx.i103.i, ptr %in_endp.i, align 4
  %tobool43.not.i = icmp eq ptr %arrayidx.i103.i, null
  br i1 %tobool43.not.i, label %hso_get_ep.exit116.i.exit2.i_crit_edge, label %if.end49.i

hso_get_ep.exit116.i.exit2.i_crit_edge:           ; preds = %hso_get_ep.exit116.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit2.i

if.end49.i:                                       ; preds = %hso_get_ep.exit116.i
  %134 = ptrtoint ptr %bNumEndpoints.i97.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %bNumEndpoints.i97.i, align 4
  %conv.i119.i = zext i8 %135 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %cmp15.not.i120.i = icmp eq i8 %135, 0
  br i1 %cmp15.not.i120.i, label %if.end49.i.hso_get_ep.exit137.thread.i_crit_edge, label %for.body.lr.ph.i122.i

if.end49.i.hso_get_ep.exit137.thread.i_crit_edge: ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_get_ep.exit137.thread.i

for.body.lr.ph.i122.i:                            ; preds = %if.end49.i
  %136 = ptrtoint ptr %endpoint.i100.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %endpoint.i100.i, align 4
  br label %for.body.i128.i

for.body.i128.i:                                  ; preds = %for.inc.i135.i.for.body.i128.i_crit_edge, %for.body.lr.ph.i122.i
  %i.016.i123.i = phi i32 [ 0, %for.body.lr.ph.i122.i ], [ %inc.i133.i, %for.inc.i135.i.for.body.i128.i_crit_edge ]
  %arrayidx.i124.i = getelementptr %struct.usb_host_endpoint, ptr %137, i32 %i.016.i123.i
  %bEndpointAddress.i125.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i124.i, i32 0, i32 2
  %138 = ptrtoint ptr %bEndpointAddress.i125.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %bEndpointAddress.i125.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %139)
  %cmp4.i127.i = icmp sgt i8 %139, -1
  br i1 %cmp4.i127.i, label %land.lhs.true.i132.i, label %for.body.i128.i.for.inc.i135.i_crit_edge

for.body.i128.i.for.inc.i135.i_crit_edge:         ; preds = %for.body.i128.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i135.i

land.lhs.true.i132.i:                             ; preds = %for.body.i128.i
  %bmAttributes.i.i129.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i124.i, i32 0, i32 3
  %140 = ptrtoint ptr %bmAttributes.i.i129.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %bmAttributes.i.i129.i, align 1
  %142 = and i8 %141, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %142)
  %cmp6.i131.i = icmp eq i8 %142, 2
  br i1 %cmp6.i131.i, label %hso_get_ep.exit137.i, label %land.lhs.true.i132.i.for.inc.i135.i_crit_edge

land.lhs.true.i132.i.for.inc.i135.i_crit_edge:    ; preds = %land.lhs.true.i132.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i135.i

for.inc.i135.i:                                   ; preds = %land.lhs.true.i132.i.for.inc.i135.i_crit_edge, %for.body.i128.i.for.inc.i135.i_crit_edge
  %inc.i133.i = add nuw nsw i32 %i.016.i123.i, 1
  %exitcond.not.i134.i = icmp eq i32 %inc.i133.i, %conv.i119.i
  br i1 %exitcond.not.i134.i, label %for.inc.i135.i.hso_get_ep.exit137.thread.i_crit_edge, label %for.inc.i135.i.for.body.i128.i_crit_edge

for.inc.i135.i.for.body.i128.i_crit_edge:         ; preds = %for.inc.i135.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i128.i

for.inc.i135.i.hso_get_ep.exit137.thread.i_crit_edge: ; preds = %for.inc.i135.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_get_ep.exit137.thread.i

hso_get_ep.exit137.thread.i:                      ; preds = %for.inc.i135.i.hso_get_ep.exit137.thread.i_crit_edge, %if.end49.i.hso_get_ep.exit137.thread.i_crit_edge
  %out_endp145.i = getelementptr inbounds %struct.hso_serial, ptr %call7.i.i.i138, i32 0, i32 17
  %143 = ptrtoint ptr %out_endp145.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %out_endp145.i, align 8
  br label %exit2.i

hso_get_ep.exit137.i:                             ; preds = %land.lhs.true.i132.i
  %out_endp.i = getelementptr inbounds %struct.hso_serial, ptr %call7.i.i.i138, i32 0, i32 17
  %144 = ptrtoint ptr %out_endp.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %arrayidx.i124.i, ptr %out_endp.i, align 8
  %tobool51.not.i = icmp eq ptr %arrayidx.i124.i, null
  br i1 %tobool51.not.i, label %hso_get_ep.exit137.i.exit2.i_crit_edge, label %if.end57.i

hso_get_ep.exit137.i.exit2.i_crit_edge:           ; preds = %hso_get_ep.exit137.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit2.i

if.end57.i:                                       ; preds = %hso_get_ep.exit137.i
  call void @__sanitizer_cov_trace_pc() #18
  %write_data.i164 = getelementptr inbounds %struct.hso_serial, ptr %call7.i.i.i138, i32 0, i32 24
  %145 = ptrtoint ptr %write_data.i164 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @hso_std_serial_write_data, ptr %write_data.i164, align 8
  tail call fastcc void @hso_log_port(ptr noundef nonnull %call.i) #16
  br label %if.end76

exit2.i:                                          ; preds = %hso_get_ep.exit137.i.exit2.i_crit_edge, %hso_get_ep.exit137.thread.i, %hso_get_ep.exit116.i.exit2.i_crit_edge, %hso_get_ep.exit116.thread.i
  %.str.141.sink.i = phi ptr [ @.str.138, %hso_get_ep.exit116.thread.i ], [ @.str.138, %hso_get_ep.exit116.i.exit2.i_crit_edge ], [ @.str.141, %hso_get_ep.exit137.thread.i ], [ @.str.141, %hso_get_ep.exit137.i.exit2.i_crit_edge ]
  %dev56.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev56.i, ptr noundef nonnull %.str.141.sink.i) #19
  tail call fastcc void @hso_serial_tty_unregister(ptr noundef nonnull %call7.i.i.i138) #16
  tail call fastcc void @hso_serial_common_free(ptr noundef nonnull %call7.i.i.i138) #16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %exit2.i, %if.end36.i.if.end.i.i_crit_edge, %if.end24.i.if.end.i.i_crit_edge, %do.end.i163, %if.end11.i142.if.end.i.i_crit_edge, %if.then5.i.if.end.i.i_crit_edge
  %tiocmget1.i.i = getelementptr inbounds %struct.hso_serial, ptr %call7.i.i.i138, i32 0, i32 25
  %146 = ptrtoint ptr %tiocmget1.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %tiocmget1.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %147, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.hso_free_tiomget.exit.i_crit_edge, label %if.then3.i.i

if.end.i.i.hso_free_tiomget.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_free_tiomget.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %urb.i.i = getelementptr inbounds %struct.hso_tiocmget, ptr %147, i32 0, i32 4
  %148 = ptrtoint ptr %urb.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %urb.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %149) #16
  %150 = ptrtoint ptr %urb.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %urb.i.i, align 4
  %151 = ptrtoint ptr %tiocmget1.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr null, ptr %tiocmget1.i.i, align 4
  %serial_state_notification.i.i = getelementptr inbounds %struct.hso_tiocmget, ptr %147, i32 0, i32 5
  %152 = ptrtoint ptr %serial_state_notification.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %serial_state_notification.i.i, align 4
  tail call void @kfree(ptr noundef %153) #16
  %154 = ptrtoint ptr %serial_state_notification.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %serial_state_notification.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %147) #16
  br label %hso_free_tiomget.exit.i

hso_free_tiomget.exit.i:                          ; preds = %if.then3.i.i, %if.end.i.i.hso_free_tiomget.exit.i_crit_edge, %if.end.i139.hso_free_tiomget.exit.i_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i.i138) #16
  br label %exit.sink.split

if.end76:                                         ; preds = %if.end57.i, %if.then71
  %hso_dev.3 = phi ptr [ %call72, %if.then71 ], [ %call.i, %if.end57.i ]
  %tobool77.not = icmp eq ptr %hso_dev.3, null
  br i1 %tobool77.not, label %if.end76.exit_crit_edge, label %if.end76.sw.epilog_crit_edge

if.end76.sw.epilog_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end76.exit_crit_edge:                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

sw.epilog:                                        ; preds = %if.end76.sw.epilog_crit_edge, %for.end61
  %hso_dev.4 = phi ptr [ %hso_dev.3, %if.end76.sw.epilog_crit_edge ], [ %spec.select, %for.end61 ]
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %155 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %hso_dev.4, ptr %driver_data.i.i, align 4
  br label %cleanup

exit.sink.split:                                  ; preds = %hso_free_tiomget.exit.i, %err_free_serial.i, %if.end4.i.exit.sink.split_crit_edge, %exit.i, %if.end.i.exit.sink.split_crit_edge
  %call.i.sink = phi ptr [ %call.i, %hso_free_tiomget.exit.i ], [ %call7.i.i.i, %exit.i ], [ %call7.i.i, %if.end.i.exit.sink.split_crit_edge ], [ %call2.i, %err_free_serial.i ], [ %call2.i, %if.end4.i.exit.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call.i.sink) #16
  br label %exit

exit:                                             ; preds = %exit.sink.split, %if.end76.exit_crit_edge, %if.else74.exit_crit_edge, %if.then69.exit_crit_edge, %if.end.i132.exit_crit_edge, %if.then53.exit_crit_edge, %if.end41.exit_crit_edge, %for.inc.i.exit_crit_edge, %for.cond.preheader.i.exit_crit_edge, %if.then31.exit_crit_edge, %if.end25.exit_crit_edge, %hso_get_config_data.exit.exit_crit_edge, %if.else.exit_crit_edge, %for.body.exit_crit_edge
  tail call fastcc void @hso_free_interface(ptr noundef %interface)
  br label %cleanup

cleanup:                                          ; preds = %exit, %sw.epilog, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %exit ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hso_disconnect(ptr noundef %interface) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @hso_free_interface(ptr noundef %interface)
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hso_suspend(ptr noundef readnone %iface, [1 x i32] %message.coerce) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.039 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x ptr], ptr @serial_table, i32 0, i32 %i.039
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %interface = getelementptr inbounds %struct.hso_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interface, align 4
  %cmp2 = icmp eq ptr %3, %iface
  br i1 %cmp2, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %call = tail call fastcc i32 @hso_stop_serial_device(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then.for.inc_crit_edge, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.inc.for.body9_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.body9_crit_edge:                      ; preds = %for.inc
  br label %for.body9

for.body9:                                        ; preds = %for.body9.backedge, %for.inc.for.body9_crit_edge
  %i.140 = phi i32 [ %i.140.be, %for.body9.backedge ], [ 0, %for.inc.for.body9_crit_edge ]
  %arrayidx10 = getelementptr [10 x ptr], ptr @network_table, i32 0, i32 %i.140
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %for.body9.for.inc23_crit_edge, label %land.lhs.true12

for.body9.for.inc23_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc23

land.lhs.true12:                                  ; preds = %for.body9
  %interface14 = getelementptr inbounds %struct.hso_device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %interface14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %interface14, align 4
  %cmp15 = icmp eq ptr %7, %iface
  br i1 %cmp15, label %if.then16, label %land.lhs.true12.for.inc23_crit_edge

land.lhs.true12.for.inc23_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc23

if.then16:                                        ; preds = %land.lhs.true12
  %call18 = tail call fastcc i32 @hso_stop_net_device(ptr noundef nonnull %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.140)
  %cmp8 = icmp ult i32 %i.140, 9
  %or.cond = select i1 %tobool19.not, i1 %cmp8, i1 false
  br i1 %or.cond, label %if.then16.for.body9.backedge_crit_edge, label %if.then16.out_crit_edge

if.then16.out_crit_edge:                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then16.for.body9.backedge_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body9.backedge

for.inc23:                                        ; preds = %land.lhs.true12.for.inc23_crit_edge, %for.body9.for.inc23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.140)
  %cmp8.old = icmp ult i32 %i.140, 9
  br i1 %cmp8.old, label %for.inc23.for.body9.backedge_crit_edge, label %for.inc23.out_crit_edge

for.inc23.out_crit_edge:                          ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

for.inc23.for.body9.backedge_crit_edge:           ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body9.backedge

for.body9.backedge:                               ; preds = %for.inc23.for.body9.backedge_crit_edge, %if.then16.for.body9.backedge_crit_edge
  %i.140.be = add nuw nsw i32 %i.140, 1
  br label %for.body9

out:                                              ; preds = %for.inc23.out_crit_edge, %if.then16.out_crit_edge, %if.then.out_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hso_resume(ptr noundef %iface) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.cond14.preheader:                             ; preds = %for.inc
  %dev = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7
  br label %for.body16

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.073 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x ptr], ptr @serial_table, i32 0, i32 %i.073
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %interface = getelementptr inbounds %struct.hso_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interface, align 4
  %cmp2 = icmp eq ptr %3, %iface
  br i1 %cmp2, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %count = getelementptr inbounds %struct.hso_serial, ptr %5, i32 0, i32 22, i32 7
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.then.for.inc_crit_edge, label %if.then5

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then5:                                         ; preds = %if.then
  %call7 = tail call fastcc i32 @hso_start_serial_device(ptr noundef nonnull %1, i32 noundef 3072)
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call fastcc void @hso_kick_transmit(ptr noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool10.not = icmp eq i32 %call7, 0
  br i1 %tobool10.not, label %if.then5.for.inc_crit_edge, label %if.then5.out_crit_edge

if.then5.out_crit_edge:                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then5.for.inc_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %if.then5.for.inc_crit_edge, %if.then.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.cond14.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body16:                                       ; preds = %for.inc47.for.body16_crit_edge, %for.cond14.preheader
  %i.174 = phi i32 [ 0, %for.cond14.preheader ], [ %inc48, %for.inc47.for.body16_crit_edge ]
  %arrayidx17 = getelementptr [10 x ptr], ptr @network_table, i32 0, i32 %i.174
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %13, null
  br i1 %tobool18.not, label %for.body16.for.inc47_crit_edge, label %land.lhs.true19

for.body16.for.inc47_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc47

land.lhs.true19:                                  ; preds = %for.body16
  %interface21 = getelementptr inbounds %struct.hso_device, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %interface21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %interface21, align 4
  %cmp22 = icmp eq ptr %15, %iface
  br i1 %cmp22, label %if.then23, label %land.lhs.true19.for.inc47_crit_edge

land.lhs.true19.for.inc47_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc47

if.then23:                                        ; preds = %land.lhs.true19
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %flags = getelementptr inbounds %struct.hso_net, ptr %17, i32 0, i32 17
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.then23.for.inc47_crit_edge, label %if.then27

if.then23.for.inc47_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc47

if.then27:                                        ; preds = %if.then23
  %skb_tx_buf = getelementptr inbounds %struct.hso_net, ptr %17, i32 0, i32 11
  %20 = ptrtoint ptr %skb_tx_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb_tx_buf, align 4
  %tobool28.not = icmp eq ptr %21, null
  br i1 %tobool28.not, label %if.then27.if.end39_crit_edge, label %do.body

if.then27.if.end39_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

do.body:                                          ; preds = %if.then27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hso_resume.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hso_resume, %if.then34)) #16
          to label %do.end [label %if.then34], !srcloc !500

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hso_resume.__UNIQUE_ID_ddebug360, ptr noundef %dev, ptr noundef nonnull @.str.150) #16
  br label %do.end

do.end:                                           ; preds = %if.then34, %do.body
  %22 = ptrtoint ptr %skb_tx_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb_tx_buf, align 4
  %net = getelementptr inbounds %struct.hso_net, ptr %17, i32 0, i32 1
  %24 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net, align 4
  %call37 = tail call i32 @hso_net_start_xmit(ptr noundef %23, ptr noundef %25)
  %26 = ptrtoint ptr %skb_tx_buf to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %skb_tx_buf, align 4
  br label %if.end39

if.end39:                                         ; preds = %do.end, %if.then27.if.end39_crit_edge
  %27 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx17, align 4
  %call41 = tail call fastcc i32 @hso_start_net_device(ptr noundef %28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end39.for.inc47_crit_edge, label %if.end39.out_crit_edge

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end39.for.inc47_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc47

for.inc47:                                        ; preds = %if.end39.for.inc47_crit_edge, %if.then23.for.inc47_crit_edge, %land.lhs.true19.for.inc47_crit_edge, %for.body16.for.inc47_crit_edge
  %inc48 = add nuw nsw i32 %i.174, 1
  %exitcond76.not = icmp eq i32 %inc48, 10
  br i1 %exitcond76.not, label %for.inc47.out_crit_edge, label %for.inc47.for.body16_crit_edge

for.inc47.for.body16_crit_edge:                   ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body16

for.inc47.out_crit_edge:                          ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

out:                                              ; preds = %for.inc47.out_crit_edge, %if.end39.out_crit_edge, %if.then5.out_crit_edge
  %result.4 = phi i32 [ 0, %for.inc47.out_crit_edge ], [ %call41, %if.end39.out_crit_edge ], [ %call7, %if.then5.out_crit_edge ]
  ret i32 %result.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hso_create_net_device(ptr noundef %interface, i32 noundef %port_spec) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @hso_create_device(ptr noundef %interface, i32 noundef %port_spec)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @alloc_netdev_mqs(i32 noundef 168, ptr noundef nonnull @.str.7, i8 noundef zeroext 0, ptr noundef nonnull @hso_net_init, i32 noundef 1, i32 noundef 1) #16
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #19
  br label %err_hso_dev

if.end4:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %call1, i32 2304
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %add.ptr.i, ptr %call, align 4
  %net6 = getelementptr i8, ptr %call1, i32 2308
  %1 = ptrtoint ptr %net6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %net6, align 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %add.ptr.i, align 4
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %3 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cur_altsetting.i, align 4
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bNumEndpoints.i, align 4
  %conv.i = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp15.not.i = icmp eq i8 %6, 0
  br i1 %cmp15.not.i, label %if.end4.hso_get_ep.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end4.hso_get_ep.exit.thread_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_get_ep.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end4
  %endpoint.i = getelementptr inbounds %struct.usb_host_interface, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %endpoint.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.usb_host_endpoint, ptr %8, i32 %i.016.i
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 2
  %9 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp4.i = icmp slt i8 %10, 0
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 3
  %11 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bmAttributes.i.i, align 1
  %13 = and i8 %12, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp6.i = icmp eq i8 %13, 2
  br i1 %cmp6.i, label %hso_get_ep.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.hso_get_ep.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.hso_get_ep.exit.thread_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_get_ep.exit.thread

hso_get_ep.exit.thread:                           ; preds = %for.inc.i.hso_get_ep.exit.thread_crit_edge, %if.end4.hso_get_ep.exit.thread_crit_edge
  %in_endp161 = getelementptr i8, ptr %call1, i32 2340
  %14 = ptrtoint ptr %in_endp161 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %in_endp161, align 4
  br label %do.end13

hso_get_ep.exit:                                  ; preds = %land.lhs.true.i
  %in_endp = getelementptr i8, ptr %call1, i32 2340
  %15 = ptrtoint ptr %in_endp to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx.i, ptr %in_endp, align 4
  %tobool9.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool9.not, label %hso_get_ep.exit.do.end13_crit_edge, label %if.end15

hso_get_ep.exit.do.end13_crit_edge:               ; preds = %hso_get_ep.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end13

do.end13:                                         ; preds = %hso_get_ep.exit.do.end13_crit_edge, %hso_get_ep.exit.thread
  %dev14 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.11) #19
  br label %err_net

if.end15:                                         ; preds = %hso_get_ep.exit
  %16 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur_altsetting.i, align 4
  %bNumEndpoints.i137 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %bNumEndpoints.i137 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bNumEndpoints.i137, align 4
  %conv.i138 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp15.not.i139 = icmp eq i8 %19, 0
  br i1 %cmp15.not.i139, label %if.end15.hso_get_ep.exit156.thread_crit_edge, label %for.body.lr.ph.i141

if.end15.hso_get_ep.exit156.thread_crit_edge:     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_get_ep.exit156.thread

for.body.lr.ph.i141:                              ; preds = %if.end15
  %endpoint.i140 = getelementptr inbounds %struct.usb_host_interface, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %endpoint.i140 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %endpoint.i140, align 4
  br label %for.body.i147

for.body.i147:                                    ; preds = %for.inc.i154.for.body.i147_crit_edge, %for.body.lr.ph.i141
  %i.016.i142 = phi i32 [ 0, %for.body.lr.ph.i141 ], [ %inc.i152, %for.inc.i154.for.body.i147_crit_edge ]
  %arrayidx.i143 = getelementptr %struct.usb_host_endpoint, ptr %21, i32 %i.016.i142
  %bEndpointAddress.i144 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i143, i32 0, i32 2
  %22 = ptrtoint ptr %bEndpointAddress.i144 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bEndpointAddress.i144, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp4.i146 = icmp sgt i8 %23, -1
  br i1 %cmp4.i146, label %land.lhs.true.i151, label %for.body.i147.for.inc.i154_crit_edge

for.body.i147.for.inc.i154_crit_edge:             ; preds = %for.body.i147
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i154

land.lhs.true.i151:                               ; preds = %for.body.i147
  %bmAttributes.i.i148 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i143, i32 0, i32 3
  %24 = ptrtoint ptr %bmAttributes.i.i148 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bmAttributes.i.i148, align 1
  %26 = and i8 %25, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp6.i150 = icmp eq i8 %26, 2
  br i1 %cmp6.i150, label %hso_get_ep.exit156, label %land.lhs.true.i151.for.inc.i154_crit_edge

land.lhs.true.i151.for.inc.i154_crit_edge:        ; preds = %land.lhs.true.i151
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i154

for.inc.i154:                                     ; preds = %land.lhs.true.i151.for.inc.i154_crit_edge, %for.body.i147.for.inc.i154_crit_edge
  %inc.i152 = add nuw nsw i32 %i.016.i142, 1
  %exitcond.not.i153 = icmp eq i32 %inc.i152, %conv.i138
  br i1 %exitcond.not.i153, label %for.inc.i154.hso_get_ep.exit156.thread_crit_edge, label %for.inc.i154.for.body.i147_crit_edge

for.inc.i154.for.body.i147_crit_edge:             ; preds = %for.inc.i154
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i147

for.inc.i154.hso_get_ep.exit156.thread_crit_edge: ; preds = %for.inc.i154
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_get_ep.exit156.thread

hso_get_ep.exit156.thread:                        ; preds = %for.inc.i154.hso_get_ep.exit156.thread_crit_edge, %if.end15.hso_get_ep.exit156.thread_crit_edge
  %out_endp164 = getelementptr i8, ptr %call1, i32 2344
  %27 = ptrtoint ptr %out_endp164 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %out_endp164, align 4
  br label %do.end22

hso_get_ep.exit156:                               ; preds = %land.lhs.true.i151
  %out_endp = getelementptr i8, ptr %call1, i32 2344
  %28 = ptrtoint ptr %out_endp to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx.i143, ptr %out_endp, align 4
  %tobool18.not = icmp eq ptr %arrayidx.i143, null
  br i1 %tobool18.not, label %hso_get_ep.exit156.do.end22_crit_edge, label %if.end24

hso_get_ep.exit156.do.end22_crit_edge:            ; preds = %hso_get_ep.exit156
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end22

do.end22:                                         ; preds = %hso_get_ep.exit156.do.end22_crit_edge, %hso_get_ep.exit156.thread
  %dev23 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.14) #19
  br label %err_net

if.end24:                                         ; preds = %hso_get_ep.exit156
  %dev25 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %parent27 = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 133, i32 1
  %29 = ptrtoint ptr %parent27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev25, ptr %parent27, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 133, i32 4
  %30 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @hso_type, ptr %type, align 4
  %call29 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #16
  %arrayidx = getelementptr i8, ptr %call1, i32 2348
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call29, ptr %arrayidx, align 4
  %tobool32.not = icmp eq ptr %call29, null
  br i1 %tobool32.not, label %if.end24.err_mux_bulk_rx_crit_edge, label %if.end34

if.end24.err_mux_bulk_rx_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_mux_bulk_rx

for.cond:                                         ; preds = %if.end34
  %call29.1 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #16
  %arrayidx.1 = getelementptr i8, ptr %call1, i32 2352
  %32 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call29.1, ptr %arrayidx.1, align 4
  %tobool32.not.1 = icmp eq ptr %call29.1, null
  br i1 %tobool32.not.1, label %for.cond.err_mux_bulk_rx_crit_edge, label %if.end34.1

for.cond.err_mux_bulk_rx_crit_edge:               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_mux_bulk_rx

if.end34.1:                                       ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 2048) #20
  %arrayidx36.1 = getelementptr i8, ptr %call1, i32 2372
  %34 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i.1, ptr %arrayidx36.1, align 4
  %tobool39.not.1 = icmp eq ptr %call7.i.i.1, null
  br i1 %tobool39.not.1, label %if.end34.1.err_mux_bulk_rx_crit_edge, label %for.cond.1

if.end34.1.err_mux_bulk_rx_crit_edge:             ; preds = %if.end34.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_mux_bulk_rx

for.cond.1:                                       ; preds = %if.end34.1
  %call29.2 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #16
  %arrayidx.2 = getelementptr i8, ptr %call1, i32 2356
  %35 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call29.2, ptr %arrayidx.2, align 4
  %tobool32.not.2 = icmp eq ptr %call29.2, null
  br i1 %tobool32.not.2, label %for.cond.1.err_mux_bulk_rx_crit_edge, label %if.end34.2

for.cond.1.err_mux_bulk_rx_crit_edge:             ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_mux_bulk_rx

if.end34.2:                                       ; preds = %for.cond.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 2048) #20
  %arrayidx36.2 = getelementptr i8, ptr %call1, i32 2376
  %37 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i.2, ptr %arrayidx36.2, align 4
  %tobool39.not.2 = icmp eq ptr %call7.i.i.2, null
  br i1 %tobool39.not.2, label %if.end34.2.err_mux_bulk_rx_crit_edge, label %for.cond.2

if.end34.2.err_mux_bulk_rx_crit_edge:             ; preds = %if.end34.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_mux_bulk_rx

for.cond.2:                                       ; preds = %if.end34.2
  %call29.3 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #16
  %arrayidx.3 = getelementptr i8, ptr %call1, i32 2360
  %38 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call29.3, ptr %arrayidx.3, align 4
  %tobool32.not.3 = icmp eq ptr %call29.3, null
  br i1 %tobool32.not.3, label %for.cond.2.err_mux_bulk_rx_crit_edge, label %if.end34.3

for.cond.2.err_mux_bulk_rx_crit_edge:             ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_mux_bulk_rx

if.end34.3:                                       ; preds = %for.cond.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 2048) #20
  %arrayidx36.3 = getelementptr i8, ptr %call1, i32 2380
  %40 = ptrtoint ptr %arrayidx36.3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i.3, ptr %arrayidx36.3, align 4
  %tobool39.not.3 = icmp eq ptr %call7.i.i.3, null
  br i1 %tobool39.not.3, label %if.end34.3.err_mux_bulk_rx_crit_edge, label %for.cond.3

if.end34.3.err_mux_bulk_rx_crit_edge:             ; preds = %if.end34.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_mux_bulk_rx

for.cond.3:                                       ; preds = %if.end34.3
  %call42 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #16
  %mux_bulk_tx_urb = getelementptr i8, ptr %call1, i32 2364
  %41 = ptrtoint ptr %mux_bulk_tx_urb to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call42, ptr %mux_bulk_tx_urb, align 4
  %tobool44.not = icmp eq ptr %call42, null
  br i1 %tobool44.not, label %for.cond.3.err_mux_bulk_rx_crit_edge, label %if.end46

for.cond.3.err_mux_bulk_rx_crit_edge:             ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_mux_bulk_rx

if.end34:                                         ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3520, i32 noundef 2048) #20
  %arrayidx36 = getelementptr i8, ptr %call1, i32 2368
  %43 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i, ptr %arrayidx36, align 4
  %tobool39.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool39.not, label %if.end34.err_mux_bulk_rx_crit_edge, label %for.cond

if.end34.err_mux_bulk_rx_crit_edge:               ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_mux_bulk_rx

if.end46:                                         ; preds = %for.cond.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i157 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 2048) #20
  %mux_bulk_tx_buf = getelementptr i8, ptr %call1, i32 2384
  %45 = ptrtoint ptr %mux_bulk_tx_buf to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i157, ptr %mux_bulk_tx_buf, align 4
  %tobool49.not = icmp eq ptr %call7.i.i157, null
  br i1 %tobool49.not, label %if.end46.err_free_tx_urb_crit_edge, label %if.end51

if.end46.err_free_tx_urb_crit_edge:               ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_free_tx_urb

if.end51:                                         ; preds = %if.end46
  %46 = load ptr, ptr @network_table, align 4
  %cmp1.i = icmp eq ptr %46, null
  br i1 %cmp1.i, label %if.end51.if.end59_crit_edge, label %for.inc.i158

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

for.inc.i158:                                     ; preds = %if.end51
  %47 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 1), align 4
  %cmp1.1.i = icmp eq ptr %47, null
  br i1 %cmp1.1.i, label %for.inc.i158.if.end59_crit_edge, label %for.inc.1.i

for.inc.i158.if.end59_crit_edge:                  ; preds = %for.inc.i158
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

for.inc.1.i:                                      ; preds = %for.inc.i158
  %48 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 2), align 4
  %cmp1.2.i = icmp eq ptr %48, null
  br i1 %cmp1.2.i, label %for.inc.1.i.if.end59_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end59_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %49 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 3), align 4
  %cmp1.3.i = icmp eq ptr %49, null
  br i1 %cmp1.3.i, label %for.inc.2.i.if.end59_crit_edge, label %for.inc.3.i

for.inc.2.i.if.end59_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %50 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 4), align 4
  %cmp1.4.i = icmp eq ptr %50, null
  br i1 %cmp1.4.i, label %for.inc.3.i.if.end59_crit_edge, label %for.inc.4.i

for.inc.3.i.if.end59_crit_edge:                   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %51 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 5), align 4
  %cmp1.5.i = icmp eq ptr %51, null
  br i1 %cmp1.5.i, label %for.inc.4.i.if.end59_crit_edge, label %for.inc.5.i

for.inc.4.i.if.end59_crit_edge:                   ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %52 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 6), align 4
  %cmp1.6.i = icmp eq ptr %52, null
  br i1 %cmp1.6.i, label %for.inc.5.i.if.end59_crit_edge, label %for.inc.6.i

for.inc.5.i.if.end59_crit_edge:                   ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %53 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 7), align 4
  %cmp1.7.i = icmp eq ptr %53, null
  br i1 %cmp1.7.i, label %for.inc.6.i.if.end59_crit_edge, label %for.inc.7.i

for.inc.6.i.if.end59_crit_edge:                   ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %54 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 8), align 4
  %cmp1.8.i = icmp eq ptr %54, null
  br i1 %cmp1.8.i, label %for.inc.7.i.if.end59_crit_edge, label %for.inc.8.i

for.inc.7.i.if.end59_crit_edge:                   ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %55 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 9), align 4
  %cmp1.9.i = icmp eq ptr %55, null
  br i1 %cmp1.9.i, label %for.inc.8.i.if.end59_crit_edge, label %do.end57

for.inc.8.i.if.end59_crit_edge:                   ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

do.end57:                                         ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.17) #19
  br label %err_free_tx_buf

if.end59:                                         ; preds = %for.inc.8.i.if.end59_crit_edge, %for.inc.7.i.if.end59_crit_edge, %for.inc.6.i.if.end59_crit_edge, %for.inc.5.i.if.end59_crit_edge, %for.inc.4.i.if.end59_crit_edge, %for.inc.3.i.if.end59_crit_edge, %for.inc.2.i.if.end59_crit_edge, %for.inc.1.i.if.end59_crit_edge, %for.inc.i158.if.end59_crit_edge, %if.end51.if.end59_crit_edge
  %arrayidx.lcssa.i = phi ptr [ @network_table, %if.end51.if.end59_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 1), %for.inc.i158.if.end59_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 2), %for.inc.1.i.if.end59_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 3), %for.inc.2.i.if.end59_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 4), %for.inc.3.i.if.end59_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 5), %for.inc.4.i.if.end59_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 6), %for.inc.5.i.if.end59_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 7), %for.inc.6.i.if.end59_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 8), %for.inc.7.i.if.end59_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 9), %for.inc.8.i.if.end59_crit_edge ]
  %56 = ptrtoint ptr %arrayidx.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call, ptr %arrayidx.lcssa.i, align 4
  %call60 = tail call i32 @register_netdev(ptr noundef nonnull %call1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end67, label %do.end65

do.end65:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.20) #19
  tail call fastcc void @remove_net_device(ptr noundef nonnull %call)
  br label %err_free_tx_buf

if.end67:                                         ; preds = %if.end59
  tail call fastcc void @hso_log_port(ptr noundef nonnull %call)
  %57 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call, align 4
  %net.i = getelementptr inbounds %struct.hso_net, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %net.i, align 4
  %dev1.i = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 133
  %name.i = getelementptr inbounds %struct.hso_net, ptr %58, i32 0, i32 3
  %61 = load i32, ptr @hso_create_rfkill.rfkill_counter, align 4
  %inc.i159 = add i32 %61, 1
  store i32 %inc.i159, ptr @hso_create_rfkill.rfkill_counter, align 4
  %call2.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 24, ptr noundef nonnull @.str.93, i32 noundef %61) #16
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %62 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %parent.i.i, align 8
  %call7.i = tail call ptr @rfkill_alloc(ptr noundef %name.i, ptr noundef %63, i32 noundef 5, ptr noundef nonnull @hso_rfkill_ops, ptr noundef nonnull %call) #16
  %rfkill.i = getelementptr inbounds %struct.hso_net, ptr %58, i32 0, i32 2
  %64 = ptrtoint ptr %rfkill.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call7.i, ptr %rfkill.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool.not.i, label %if.end67.cleanup_crit_edge, label %if.end.i

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %if.end67
  %call10.i = tail call i32 @rfkill_register(ptr noundef nonnull %call7.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.i = icmp slt i32 %call10.i, 0
  br i1 %cmp.i, label %if.then11.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %65 = ptrtoint ptr %rfkill.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rfkill.i, align 4
  tail call void @rfkill_destroy(ptr noundef %66) #16
  %67 = ptrtoint ptr %rfkill.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %rfkill.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #19
  br label %cleanup

err_free_tx_buf:                                  ; preds = %do.end65, %do.end57
  %68 = ptrtoint ptr %mux_bulk_tx_buf to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mux_bulk_tx_buf, align 4
  tail call void @kfree(ptr noundef %69) #16
  br label %err_free_tx_urb

err_free_tx_urb:                                  ; preds = %err_free_tx_buf, %if.end46.err_free_tx_urb_crit_edge
  %70 = ptrtoint ptr %mux_bulk_tx_urb to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mux_bulk_tx_urb, align 4
  tail call void @usb_free_urb(ptr noundef %71) #16
  br label %err_mux_bulk_rx

err_mux_bulk_rx:                                  ; preds = %err_free_tx_urb, %if.end34.err_mux_bulk_rx_crit_edge, %for.cond.3.err_mux_bulk_rx_crit_edge, %if.end34.3.err_mux_bulk_rx_crit_edge, %for.cond.2.err_mux_bulk_rx_crit_edge, %if.end34.2.err_mux_bulk_rx_crit_edge, %for.cond.1.err_mux_bulk_rx_crit_edge, %if.end34.1.err_mux_bulk_rx_crit_edge, %for.cond.err_mux_bulk_rx_crit_edge, %if.end24.err_mux_bulk_rx_crit_edge
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_free_urb(ptr noundef %73) #16
  %arrayidx77 = getelementptr i8, ptr %call1, i32 2368
  %74 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx77, align 4
  tail call void @kfree(ptr noundef %75) #16
  %arrayidx75.1 = getelementptr i8, ptr %call1, i32 2352
  %76 = ptrtoint ptr %arrayidx75.1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx75.1, align 4
  tail call void @usb_free_urb(ptr noundef %77) #16
  %arrayidx77.1 = getelementptr i8, ptr %call1, i32 2372
  %78 = ptrtoint ptr %arrayidx77.1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx77.1, align 4
  tail call void @kfree(ptr noundef %79) #16
  %arrayidx75.2 = getelementptr i8, ptr %call1, i32 2356
  %80 = ptrtoint ptr %arrayidx75.2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx75.2, align 4
  tail call void @usb_free_urb(ptr noundef %81) #16
  %arrayidx77.2 = getelementptr i8, ptr %call1, i32 2376
  %82 = ptrtoint ptr %arrayidx77.2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx77.2, align 4
  tail call void @kfree(ptr noundef %83) #16
  %arrayidx75.3 = getelementptr i8, ptr %call1, i32 2360
  %84 = ptrtoint ptr %arrayidx75.3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx75.3, align 4
  tail call void @usb_free_urb(ptr noundef %85) #16
  %arrayidx77.3 = getelementptr i8, ptr %call1, i32 2380
  %86 = ptrtoint ptr %arrayidx77.3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx77.3, align 4
  tail call void @kfree(ptr noundef %87) #16
  br label %err_net

err_net:                                          ; preds = %err_mux_bulk_rx, %do.end22, %do.end13
  tail call void @free_netdev(ptr noundef nonnull %call1) #16
  br label %err_hso_dev

err_hso_dev:                                      ; preds = %err_net, %do.end
  tail call void @kfree(ptr noundef nonnull %call) #16
  br label %cleanup

cleanup:                                          ; preds = %err_hso_dev, %if.then11.i, %if.end.i.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %err_hso_dev ], [ null, %entry.cleanup_crit_edge ], [ %call, %if.end67.cleanup_crit_edge ], [ %call, %if.end.i.cleanup_crit_edge ], [ %call, %if.then11.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hso_free_interface(ptr noundef readnone %interface) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.070 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x ptr], ptr @serial_table, i32 0, i32 %i.070
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %interface2 = getelementptr inbounds %struct.hso_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %interface2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interface2, align 4
  %cmp3 = icmp eq ptr %3, %interface
  br i1 %cmp3, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %port = getelementptr inbounds %struct.hso_serial, ptr %5, i32 0, i32 22
  tail call void @tty_port_tty_hangup(ptr noundef %port, i1 noundef zeroext false) #16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %mutex = getelementptr inbounds %struct.hso_device, ptr %7, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #16
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %usb_gone = getelementptr inbounds %struct.hso_device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %usb_gone to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %usb_gone, align 1
  %11 = load ptr, ptr %5, align 4
  %mutex7 = getelementptr inbounds %struct.hso_device, ptr %11, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %mutex7) #16
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %async_put_intf = getelementptr inbounds %struct.hso_device, ptr %13, i32 0, i32 5
  %call9 = tail call zeroext i1 @cancel_work_sync(ptr noundef %async_put_intf) #16
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %async_get_intf = getelementptr inbounds %struct.hso_device, ptr %15, i32 0, i32 4
  %call11 = tail call zeroext i1 @cancel_work_sync(ptr noundef %async_get_intf) #16
  %16 = load ptr, ptr @tty_drv, align 4
  %minor.i = getelementptr inbounds %struct.hso_serial, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %minor.i, align 4
  %conv.i = zext i8 %18 to i32
  tail call void @tty_unregister_device(ptr noundef %16, i32 noundef %conv.i) #16
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @serial_table_lock) #16
  %19 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %minor.i, align 4
  %idxprom.i.i = zext i8 %20 to i32
  %arrayidx.i.i = getelementptr [256 x ptr], ptr @serial_table, i32 0, i32 %idxprom.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serial_table_lock, i32 noundef %call2.i.i) #16
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 4
  %ref = getelementptr inbounds %struct.hso_device, ptr %23, i32 0, i32 9
  tail call fastcc void @kref_put(ptr noundef %ref)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.inc.for.body16_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.body16_crit_edge:                     ; preds = %for.inc
  br label %for.body16

for.body16:                                       ; preds = %for.inc41.for.body16_crit_edge, %for.inc.for.body16_crit_edge
  %i.171 = phi i32 [ %inc42, %for.inc41.for.body16_crit_edge ], [ 0, %for.inc.for.body16_crit_edge ]
  %arrayidx17 = getelementptr [10 x ptr], ptr @network_table, i32 0, i32 %i.171
  %24 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %25, null
  br i1 %tobool18.not, label %for.body16.for.inc41_crit_edge, label %land.lhs.true19

for.body16.for.inc41_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc41

land.lhs.true19:                                  ; preds = %for.body16
  %interface21 = getelementptr inbounds %struct.hso_device, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %interface21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %interface21, align 4
  %cmp22 = icmp eq ptr %27, %interface
  br i1 %cmp22, label %if.then23, label %land.lhs.true19.for.inc41_crit_edge

land.lhs.true19.for.inc41_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc41

if.then23:                                        ; preds = %land.lhs.true19
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  %rfkill = getelementptr inbounds %struct.hso_net, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %rfkill to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rfkill, align 4
  %net = getelementptr inbounds %struct.hso_net, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 103
  %34 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %35, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  %36 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx17, align 4
  %call29 = tail call fastcc i32 @hso_stop_net_device(ptr noundef %37)
  %38 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx17, align 4
  %async_put_intf31 = getelementptr inbounds %struct.hso_device, ptr %39, i32 0, i32 5
  %call32 = tail call zeroext i1 @cancel_work_sync(ptr noundef %async_put_intf31) #16
  %40 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx17, align 4
  %async_get_intf34 = getelementptr inbounds %struct.hso_device, ptr %41, i32 0, i32 4
  %call35 = tail call zeroext i1 @cancel_work_sync(ptr noundef %async_get_intf34) #16
  %tobool36.not = icmp eq ptr %31, null
  br i1 %tobool36.not, label %if.then23.if.end38_crit_edge, label %if.then37

if.then23.if.end38_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

if.then37:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @rfkill_unregister(ptr noundef nonnull %31) #16
  tail call void @rfkill_destroy(ptr noundef nonnull %31) #16
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.then23.if.end38_crit_edge
  %42 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx17, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %tobool.not.i = icmp eq ptr %45, null
  br i1 %tobool.not.i, label %if.end38.for.inc41_crit_edge, label %if.end.i

if.end38.for.inc41_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc41

if.end.i:                                         ; preds = %if.end38
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %48 = load ptr, ptr @network_table, align 4
  %cmp1.i.i = icmp eq ptr %48, %47
  br i1 %cmp1.i.i, label %if.end.i.if.then.i.i_crit_edge, label %for.cond.i.i

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

for.cond.i.i:                                     ; preds = %if.end.i
  %49 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 1), align 4
  %cmp1.1.i.i = icmp eq ptr %49, %47
  br i1 %cmp1.1.i.i, label %for.cond.i.i.if.then.i.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.if.then.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %50 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 2), align 4
  %cmp1.2.i.i = icmp eq ptr %50, %47
  br i1 %cmp1.2.i.i, label %for.cond.1.i.i.if.then.i.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %51 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 3), align 4
  %cmp1.3.i.i = icmp eq ptr %51, %47
  br i1 %cmp1.3.i.i, label %for.cond.2.i.i.if.then.i.i_crit_edge, label %for.cond.3.i.i

for.cond.2.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %52 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 4), align 4
  %cmp1.4.i.i = icmp eq ptr %52, %47
  br i1 %cmp1.4.i.i, label %for.cond.3.i.i.if.then.i.i_crit_edge, label %for.cond.4.i.i

for.cond.3.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  %53 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 5), align 4
  %cmp1.5.i.i = icmp eq ptr %53, %47
  br i1 %cmp1.5.i.i, label %for.cond.4.i.i.if.then.i.i_crit_edge, label %for.cond.5.i.i

for.cond.4.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  %54 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 6), align 4
  %cmp1.6.i.i = icmp eq ptr %54, %47
  br i1 %cmp1.6.i.i, label %for.cond.5.i.i.if.then.i.i_crit_edge, label %for.cond.6.i.i

for.cond.5.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

for.cond.6.i.i:                                   ; preds = %for.cond.5.i.i
  %55 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 7), align 4
  %cmp1.7.i.i = icmp eq ptr %55, %47
  br i1 %cmp1.7.i.i, label %for.cond.6.i.i.if.then.i.i_crit_edge, label %for.cond.7.i.i

for.cond.6.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

for.cond.7.i.i:                                   ; preds = %for.cond.6.i.i
  %56 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 8), align 4
  %cmp1.8.i.i = icmp eq ptr %56, %47
  br i1 %cmp1.8.i.i, label %for.cond.7.i.i.if.then.i.i_crit_edge, label %for.cond.8.i.i

for.cond.7.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

for.cond.8.i.i:                                   ; preds = %for.cond.7.i.i
  %57 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 9), align 4
  %cmp1.9.i.i = icmp eq ptr %57, %47
  br i1 %cmp1.9.i.i, label %for.cond.8.i.i.if.then.i.i_crit_edge, label %for.cond.8.i.i.remove_net_device.exit.i_crit_edge

for.cond.8.i.i.remove_net_device.exit.i_crit_edge: ; preds = %for.cond.8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %remove_net_device.exit.i

for.cond.8.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.cond.8.i.i.if.then.i.i_crit_edge, %for.cond.7.i.i.if.then.i.i_crit_edge, %for.cond.6.i.i.if.then.i.i_crit_edge, %for.cond.5.i.i.if.then.i.i_crit_edge, %for.cond.4.i.i.if.then.i.i_crit_edge, %for.cond.3.i.i.if.then.i.i_crit_edge, %for.cond.2.i.i.if.then.i.i_crit_edge, %for.cond.1.i.i.if.then.i.i_crit_edge, %for.cond.i.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge
  %arrayidx.lcssa.i.i = phi ptr [ @network_table, %if.end.i.if.then.i.i_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 1), %for.cond.i.i.if.then.i.i_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 2), %for.cond.1.i.i.if.then.i.i_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 3), %for.cond.2.i.i.if.then.i.i_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 4), %for.cond.3.i.i.if.then.i.i_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 5), %for.cond.4.i.i.if.then.i.i_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 6), %for.cond.5.i.i.if.then.i.i_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 7), %for.cond.6.i.i.if.then.i.i_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 8), %for.cond.7.i.i.if.then.i.i_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 9), %for.cond.8.i.i.if.then.i.i_crit_edge ]
  %58 = ptrtoint ptr %arrayidx.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %arrayidx.lcssa.i.i, align 4
  br label %remove_net_device.exit.i

remove_net_device.exit.i:                         ; preds = %if.then.i.i, %for.cond.8.i.i.remove_net_device.exit.i_crit_edge
  %net.i = getelementptr inbounds %struct.hso_net, ptr %45, i32 0, i32 1
  %59 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %net.i, align 4
  %tobool2.not.i = icmp eq ptr %60, null
  br i1 %tobool2.not.i, label %remove_net_device.exit.i.if.end5.i_crit_edge, label %if.then3.i

remove_net_device.exit.i.if.end5.i_crit_edge:     ; preds = %remove_net_device.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5.i

if.then3.i:                                       ; preds = %remove_net_device.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @unregister_netdev(ptr noundef nonnull %60) #16
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %remove_net_device.exit.i.if.end5.i_crit_edge
  %arrayidx.i = getelementptr %struct.hso_net, ptr %45, i32 0, i32 6, i32 0
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_free_urb(ptr noundef %62) #16
  %arrayidx6.i = getelementptr %struct.hso_net, ptr %45, i32 0, i32 8, i32 0
  %63 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx6.i, align 4
  tail call void @kfree(ptr noundef %64) #16
  %65 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %arrayidx6.i, align 4
  %arrayidx.1.i = getelementptr %struct.hso_net, ptr %45, i32 0, i32 6, i32 1
  %66 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @usb_free_urb(ptr noundef %67) #16
  %arrayidx6.1.i = getelementptr %struct.hso_net, ptr %45, i32 0, i32 8, i32 1
  %68 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx6.1.i, align 4
  tail call void @kfree(ptr noundef %69) #16
  %70 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %arrayidx6.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.hso_net, ptr %45, i32 0, i32 6, i32 2
  %71 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.2.i, align 4
  tail call void @usb_free_urb(ptr noundef %72) #16
  %arrayidx6.2.i = getelementptr %struct.hso_net, ptr %45, i32 0, i32 8, i32 2
  %73 = ptrtoint ptr %arrayidx6.2.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx6.2.i, align 4
  tail call void @kfree(ptr noundef %74) #16
  %75 = ptrtoint ptr %arrayidx6.2.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %arrayidx6.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.hso_net, ptr %45, i32 0, i32 6, i32 3
  %76 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.3.i, align 4
  tail call void @usb_free_urb(ptr noundef %77) #16
  %arrayidx6.3.i = getelementptr %struct.hso_net, ptr %45, i32 0, i32 8, i32 3
  %78 = ptrtoint ptr %arrayidx6.3.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx6.3.i, align 4
  tail call void @kfree(ptr noundef %79) #16
  %80 = ptrtoint ptr %arrayidx6.3.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %arrayidx6.3.i, align 4
  %mux_bulk_tx_urb.i = getelementptr inbounds %struct.hso_net, ptr %45, i32 0, i32 7
  %81 = ptrtoint ptr %mux_bulk_tx_urb.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mux_bulk_tx_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %82) #16
  %mux_bulk_tx_buf.i = getelementptr inbounds %struct.hso_net, ptr %45, i32 0, i32 9
  %83 = ptrtoint ptr %mux_bulk_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mux_bulk_tx_buf.i, align 4
  tail call void @kfree(ptr noundef %84) #16
  %85 = ptrtoint ptr %mux_bulk_tx_buf.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %mux_bulk_tx_buf.i, align 4
  %86 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %net.i, align 4
  %tobool11.not.i = icmp eq ptr %87, null
  br i1 %tobool11.not.i, label %if.end5.i.if.end14.i_crit_edge, label %if.then12.i

if.end5.i.if.end14.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @free_netdev(ptr noundef nonnull %87) #16
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end5.i.if.end14.i_crit_edge
  tail call void @kfree(ptr noundef %43) #16
  br label %for.inc41

for.inc41:                                        ; preds = %if.end14.i, %if.end38.for.inc41_crit_edge, %land.lhs.true19.for.inc41_crit_edge, %for.body16.for.inc41_crit_edge
  %inc42 = add nuw nsw i32 %i.171, 1
  %exitcond72.not = icmp eq i32 %inc42, 10
  br i1 %exitcond72.not, label %for.end43, label %for.inc41.for.body16_crit_edge

for.inc41.for.body16_crit_edge:                   ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body16

for.end43:                                        ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hso_create_device(ptr noundef %intf, i32 noundef %port_spec) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 208) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %port_spec1 = getelementptr inbounds %struct.hso_device, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %port_spec1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %port_spec, ptr %port_spec1, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  %usb = getelementptr inbounds %struct.hso_device, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %usb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i, ptr %usb, align 4
  %interface = getelementptr inbounds %struct.hso_device, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %interface to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %intf, ptr %interface, align 8
  %ref = getelementptr inbounds %struct.hso_device, ptr %call7.i.i, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #16
  %6 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %ref, align 8
  %mutex = getelementptr inbounds %struct.hso_device, ptr %call7.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.22, ptr noundef nonnull @hso_create_device.__key) #16
  %async_get_intf = getelementptr inbounds %struct.hso_device, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %async_get_intf, i32 noundef 0) #16
  %7 = ptrtoint ptr %async_get_intf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %async_get_intf, align 4
  %lockdep_map = getelementptr inbounds %struct.hso_device, ptr %call7.i.i, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.24, ptr noundef nonnull @hso_create_device.__key.23, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry7 = getelementptr inbounds %struct.hso_device, ptr %call7.i.i, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry7, ptr %entry7, align 8
  %prev.i = getelementptr inbounds %struct.hso_device, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.hso_device, ptr %call7.i.i, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @async_get_intf, ptr %func, align 8
  %async_put_intf = getelementptr inbounds %struct.hso_device, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %async_put_intf, i32 noundef 0) #16
  %11 = ptrtoint ptr %async_put_intf to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %async_put_intf, align 8
  %lockdep_map17 = getelementptr inbounds %struct.hso_device, ptr %call7.i.i, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map17, ptr noundef nonnull @.str.26, ptr noundef nonnull @hso_create_device.__key.25, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry19 = getelementptr inbounds %struct.hso_device, ptr %call7.i.i, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %entry19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry19, ptr %entry19, align 4
  %prev.i41 = getelementptr inbounds %struct.hso_device, ptr %call7.i.i, i32 0, i32 5, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i41 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry19, ptr %prev.i41, align 8
  %func21 = getelementptr inbounds %struct.hso_device, ptr %call7.i.i, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %func21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @async_put_intf, ptr %func21, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hso_net_init(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef 2396, ptr noundef nonnull @.str.28, i32 noundef 168) #19
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 16
  %1 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @hso_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 115
  %2 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1000, ptr %watchdog_timeo, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4240, ptr %flags, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 32
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -2, ptr %type, align 16
  %mtu = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 20
  %5 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1486, ptr %mtu, align 4
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 107
  %6 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 10, ptr %tx_queue_len, align 16
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 44
  %7 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ops, ptr %ethtool_ops, align 16
  %net_lock = getelementptr i8, ptr %net, i32 2400
  tail call void @__raw_spin_lock_init(ptr noundef %net_lock, ptr noundef nonnull @.str.29, ptr noundef nonnull @hso_net_init.__key, i16 noundef signext 3) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hso_log_port(ptr nocapture noundef readonly %hso_dev) unnamed_addr #3 align 64 {
entry:
  %port_dev = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %port_dev) #16
  %port_spec = getelementptr inbounds %struct.hso_device, ptr %hso_dev, i32 0, i32 1
  %0 = call ptr @memset(ptr %port_dev, i32 255, i32 20)
  %1 = ptrtoint ptr %port_spec to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port_spec, align 4
  %trunc = trunc i32 %2 to i8
  %switch.tableidx = add i8 %trunc, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %switch.tableidx)
  %3 = icmp ult i8 %switch.tableidx, 18
  br i1 %3, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %4 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [18 x ptr], ptr @switch.table.hso_log_port, i32 0, i32 %4
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %port_type.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.87, %entry.sw.epilog_crit_edge ]
  %and11 = and i32 %2, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %and11)
  %cmp = icmp eq i32 %and11, 18
  %6 = ptrtoint ptr %hso_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hso_dev, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  %net = getelementptr inbounds %struct.hso_net, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net, align 4
  %strcpy = call ptr @strcpy(ptr noundef nonnull %port_dev, ptr noundef %9) #22
  br label %do.body

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  %minor = getelementptr inbounds %struct.hso_serial, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %minor, align 4
  %conv = zext i8 %11 to i32
  %call16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %port_dev, ptr noundef nonnull @.str.89, ptr noundef nonnull @tty_filename, i32 noundef %conv)
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hso_log_port.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hso_log_port, %if.then20)) #16
          to label %do.end [label %if.then20], !srcloc !500

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %interface = getelementptr inbounds %struct.hso_device, ptr %hso_dev, i32 0, i32 7
  %12 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %interface, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hso_log_port.__UNIQUE_ID_ddebug359, ptr noundef %dev, ptr noundef nonnull @.str.92, ptr noundef nonnull %port_type.0, ptr noundef nonnull %port_dev) #16
  br label %do.end

do.end:                                           ; preds = %if.then20, %do.body
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %port_dev) #16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @remove_net_device(ptr noundef readnone %hso_dev) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @network_table, align 4
  %cmp1 = icmp eq ptr %0, %hso_dev
  br i1 %cmp1, label %entry.if.then_crit_edge, label %for.cond

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.cond:                                         ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 1), align 4
  %cmp1.1 = icmp eq ptr %1, %hso_dev
  br i1 %cmp1.1, label %for.cond.if.then_crit_edge, label %for.cond.1

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.cond.1:                                       ; preds = %for.cond
  %2 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 2), align 4
  %cmp1.2 = icmp eq ptr %2, %hso_dev
  br i1 %cmp1.2, label %for.cond.1.if.then_crit_edge, label %for.cond.2

for.cond.1.if.then_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.cond.2:                                       ; preds = %for.cond.1
  %3 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 3), align 4
  %cmp1.3 = icmp eq ptr %3, %hso_dev
  br i1 %cmp1.3, label %for.cond.2.if.then_crit_edge, label %for.cond.3

for.cond.2.if.then_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.cond.3:                                       ; preds = %for.cond.2
  %4 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 4), align 4
  %cmp1.4 = icmp eq ptr %4, %hso_dev
  br i1 %cmp1.4, label %for.cond.3.if.then_crit_edge, label %for.cond.4

for.cond.3.if.then_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.cond.4:                                       ; preds = %for.cond.3
  %5 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 5), align 4
  %cmp1.5 = icmp eq ptr %5, %hso_dev
  br i1 %cmp1.5, label %for.cond.4.if.then_crit_edge, label %for.cond.5

for.cond.4.if.then_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.cond.5:                                       ; preds = %for.cond.4
  %6 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 6), align 4
  %cmp1.6 = icmp eq ptr %6, %hso_dev
  br i1 %cmp1.6, label %for.cond.5.if.then_crit_edge, label %for.cond.6

for.cond.5.if.then_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.cond.6:                                       ; preds = %for.cond.5
  %7 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 7), align 4
  %cmp1.7 = icmp eq ptr %7, %hso_dev
  br i1 %cmp1.7, label %for.cond.6.if.then_crit_edge, label %for.cond.7

for.cond.6.if.then_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.cond.7:                                       ; preds = %for.cond.6
  %8 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 8), align 4
  %cmp1.8 = icmp eq ptr %8, %hso_dev
  br i1 %cmp1.8, label %for.cond.7.if.then_crit_edge, label %for.cond.8

for.cond.7.if.then_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.cond.8:                                       ; preds = %for.cond.7
  %9 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 9), align 4
  %cmp1.9 = icmp eq ptr %9, %hso_dev
  br i1 %cmp1.9, label %for.cond.8.if.then_crit_edge, label %for.cond.8.cleanup_crit_edge

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.8.if.then_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %for.cond.8.if.then_crit_edge, %for.cond.7.if.then_crit_edge, %for.cond.6.if.then_crit_edge, %for.cond.5.if.then_crit_edge, %for.cond.4.if.then_crit_edge, %for.cond.3.if.then_crit_edge, %for.cond.2.if.then_crit_edge, %for.cond.1.if.then_crit_edge, %for.cond.if.then_crit_edge, %entry.if.then_crit_edge
  %arrayidx.lcssa = phi ptr [ @network_table, %entry.if.then_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 1), %for.cond.if.then_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 2), %for.cond.1.if.then_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 3), %for.cond.2.if.then_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 4), %for.cond.3.if.then_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 5), %for.cond.4.if.then_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 6), %for.cond.5.if.then_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 7), %for.cond.6.if.then_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 8), %for.cond.7.if.then_crit_edge ], [ getelementptr inbounds ([10 x ptr], ptr @network_table, i32 0, i32 9), %for.cond.8.if.then_crit_edge ]
  %10 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx.lcssa, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.8.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @async_get_intf(ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr i8, ptr %data, i32 92
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %call = tail call i32 @usb_autopm_get_interface(ptr noundef %1) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @async_put_intf(ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr i8, ptr %data, i32 48
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hso_net_open(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %skb_tx_buf = getelementptr i8, ptr %net, i32 2392
  %0 = ptrtoint ptr %skb_tx_buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %skb_tx_buf, align 4
  %net_lock = getelementptr i8, ptr %net, i32 2400
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %net_lock) #16
  %rx_parse_state = getelementptr i8, ptr %net, i32 2396
  %1 = ptrtoint ptr %rx_parse_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %rx_parse_state, align 4
  %rx_buf_size = getelementptr i8, ptr %net, i32 2444
  %2 = ptrtoint ptr %rx_buf_size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %rx_buf_size, align 4
  %rx_buf_missing = getelementptr i8, ptr %net, i32 2446
  %3 = ptrtoint ptr %rx_buf_missing to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 20, ptr %rx_buf_missing, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %net_lock, i32 noundef %call4) #16
  %flags10 = getelementptr i8, ptr %net, i32 2468
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags10) #16
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %call11 = tail call fastcc i32 @hso_start_net_device(ptr noundef %5)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hso_net_close(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  %flags = getelementptr i8, ptr %net, i32 2468
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #16
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %call1 = tail call fastcc i32 @hso_stop_net_device(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hso_net_start_xmit(ptr noundef %skb, ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %usb.i = getelementptr inbounds %struct.hso_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb.i, align 4
  %state.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp.i = icmp eq i32 %7, 8
  br i1 %cmp.i, label %if.then.i, label %entry.if.end3.i_crit_edge

entry.if.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3.i

if.then.i:                                        ; preds = %entry
  %is_active.i = getelementptr inbounds %struct.hso_device, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %is_active.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then1.i, label %if.then.i.if.end3.i_crit_edge

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %is_active.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %is_active.i, align 4
  %async_get_intf.i = getelementptr inbounds %struct.hso_device, ptr %3, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %async_get_intf.i) #16
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %if.then.i.if.end3.i_crit_edge, %entry.if.end3.i_crit_edge
  %12 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb.i, align 4
  %state5.i = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %state5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %15)
  %cmp6.not.i = icmp eq i32 %15, 7
  br i1 %cmp6.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  %skb_tx_buf = getelementptr i8, ptr %net, i32 2392
  %16 = ptrtoint ptr %skb_tx_buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %skb, ptr %skb_tx_buf, align 4
  br label %cleanup

if.end:                                           ; preds = %if.end3.i
  %call.i.i15.i = tail call i64 @ktime_get_mono_fast_ns() #16
  %last_busy.i.i.i = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15, i32 12, i32 22
  %17 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store volatile i64 %call.i.i15.i, ptr %last_busy.i.i.i, align 8
  %mux_bulk_tx_buf = getelementptr i8, ptr %net, i32 2384
  %18 = ptrtoint ptr %mux_bulk_tx_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mux_bulk_tx_buf, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %24 = call ptr @memcpy(ptr %19, ptr %21, i32 %23)
  %25 = load i32, ptr @debug, align 4
  %and = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end8_crit_edge, label %do.end

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef 786, ptr noundef nonnull @.str.65, i32 noundef %27, i32 noundef 2048) #19
  br label %do.end8

do.end8:                                          ; preds = %do.end, %if.end.do.end8_crit_edge
  %mux_bulk_tx_urb = getelementptr i8, ptr %net, i32 2364
  %28 = ptrtoint ptr %mux_bulk_tx_urb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mux_bulk_tx_urb, align 4
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 4
  %usb = getelementptr inbounds %struct.hso_device, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb, align 4
  %out_endp = getelementptr i8, ptr %net, i32 2344
  %34 = ptrtoint ptr %out_endp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %out_endp, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bEndpointAddress, align 1
  %38 = and i8 %37, 127
  %and12 = zext i8 %38 to i32
  %39 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %33, align 8
  %shl.i = shl i32 %40, 8
  %shl1.i = shl nuw nsw i32 %and12, 15
  %or.i = or i32 %shl.i, %shl1.i
  %or = or i32 %or.i, -1073741824
  %41 = ptrtoint ptr %mux_bulk_tx_buf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mux_bulk_tx_buf, align 4
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 8
  %45 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %33, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 10
  %46 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 14
  %47 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %42, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 19
  %48 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %44, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 28
  %49 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @write_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 27
  %50 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr.i, ptr %context4.i, align 4
  %51 = load ptr, ptr %mux_bulk_tx_urb, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 13
  %52 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %transfer_flags, align 4
  %or17 = or i32 %53, 64
  store i32 %or17, ptr %transfer_flags, align 4
  %54 = load ptr, ptr %mux_bulk_tx_urb, align 4
  %call19 = tail call i32 @usb_submit_urb(ptr noundef %54, i32 noundef 2592) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.else, label %do.end24

do.end24:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #18
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i, align 4
  %interface = getelementptr inbounds %struct.hso_device, ptr %56, i32 0, i32 7
  %57 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %interface, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %58, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.67, i32 noundef %call19) #19
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 5
  %59 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %60, 1
  store i32 %inc, ptr %tx_errors, align 4
  %61 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i56 = getelementptr inbounds %struct.netdev_queue, ptr %62, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i56) #16
  br label %if.end30

if.else:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #18
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 1
  %63 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_packets, align 4
  %inc27 = add i32 %64, 1
  store i32 %inc27, ptr %tx_packets, align 4
  %65 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 3
  %67 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %68, %66
  store i32 %add, ptr %tx_bytes, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else, %do.end24
  tail call void @consume_skb(ptr noundef %skb) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hso_net_tx_timeout(ptr noundef %net, i32 noundef %txqueue) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.74) #19
  %mux_bulk_tx_urb = getelementptr i8, ptr %net, i32 2364
  %0 = ptrtoint ptr %mux_bulk_tx_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mux_bulk_tx_urb, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %do.end.if.end5_crit_edge, label %if.then2

do.end.if.end5_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then2:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call4 = tail call i32 @usb_unlink_urb(ptr noundef nonnull %1) #16
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %do.end.if.end5_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 5
  %2 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %tx_errors, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hso_start_net_device(ptr nocapture noundef readonly %hso_dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hso_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hso_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %usb = getelementptr inbounds %struct.hso_device, ptr %hso_dev, i32 0, i32 6
  %in_endp = getelementptr inbounds %struct.hso_net, ptr %1, i32 0, i32 4
  %arrayidx = getelementptr %struct.hso_net, ptr %1, i32 0, i32 6, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb, align 4
  %6 = ptrtoint ptr %in_endp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %in_endp, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bEndpointAddress, align 1
  %10 = and i8 %9, 127
  %and = zext i8 %10 to i32
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %5, align 8
  %shl.i = shl i32 %12, 8
  %shl1.i = shl nuw nsw i32 %and, 15
  %or.i = or i32 %shl.i, %shl1.i
  %or3 = or i32 %or.i, -1073741696
  %arrayidx4 = getelementptr %struct.hso_net, ptr %1, i32 0, i32 8, i32 0
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx4, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 8
  %15 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %5, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 10
  %16 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or3, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 14
  %17 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 19
  %18 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2048, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 28
  %19 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @read_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 27
  %20 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %1, ptr %context4.i, align 4
  %21 = load ptr, ptr %arrayidx, align 4
  %call7 = tail call i32 @usb_submit_urb(ptr noundef %21, i32 noundef 3072) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %for.cond.preheader.for.inc_crit_edge, label %do.end

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

do.end:                                           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef %call7) #19
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.cond.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.hso_net, ptr %1, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.1, align 4
  %26 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb, align 4
  %28 = ptrtoint ptr %in_endp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %in_endp, align 4
  %bEndpointAddress.1 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %bEndpointAddress.1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bEndpointAddress.1, align 1
  %32 = and i8 %31, 127
  %and.1 = zext i8 %32 to i32
  %33 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %27, align 8
  %shl.i.1 = shl i32 %34, 8
  %shl1.i.1 = shl nuw nsw i32 %and.1, 15
  %or.i.1 = or i32 %shl.i.1, %shl1.i.1
  %or3.1 = or i32 %or.i.1, -1073741696
  %arrayidx4.1 = getelementptr %struct.hso_net, ptr %1, i32 0, i32 8, i32 1
  %35 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx4.1, align 4
  %dev1.i.1 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 8
  %37 = ptrtoint ptr %dev1.i.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %27, ptr %dev1.i.1, align 4
  %pipe2.i.1 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 10
  %38 = ptrtoint ptr %pipe2.i.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or3.1, ptr %pipe2.i.1, align 4
  %transfer_buffer3.i.1 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 14
  %39 = ptrtoint ptr %transfer_buffer3.i.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %transfer_buffer3.i.1, align 4
  %transfer_buffer_length.i.1 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 19
  %40 = ptrtoint ptr %transfer_buffer_length.i.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2048, ptr %transfer_buffer_length.i.1, align 4
  %complete.i.1 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 28
  %41 = ptrtoint ptr %complete.i.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @read_bulk_callback, ptr %complete.i.1, align 4
  %context4.i.1 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 27
  %42 = ptrtoint ptr %context4.i.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %1, ptr %context4.i.1, align 4
  %43 = load ptr, ptr %arrayidx.1, align 4
  %call7.1 = tail call i32 @usb_submit_urb(ptr noundef %43, i32 noundef 3072) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1)
  %tobool8.not.1 = icmp eq i32 %call7.1, 0
  br i1 %tobool8.not.1, label %for.inc.for.inc.1_crit_edge, label %do.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

do.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %44 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usb, align 4
  %dev.1 = getelementptr inbounds %struct.usb_device, ptr %45, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 1, i32 noundef %call7.1) #19
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.hso_net, ptr %1, i32 0, i32 6, i32 2
  %46 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.2, align 4
  %48 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %usb, align 4
  %50 = ptrtoint ptr %in_endp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %in_endp, align 4
  %bEndpointAddress.2 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %bEndpointAddress.2 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bEndpointAddress.2, align 1
  %54 = and i8 %53, 127
  %and.2 = zext i8 %54 to i32
  %55 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %49, align 8
  %shl.i.2 = shl i32 %56, 8
  %shl1.i.2 = shl nuw nsw i32 %and.2, 15
  %or.i.2 = or i32 %shl.i.2, %shl1.i.2
  %or3.2 = or i32 %or.i.2, -1073741696
  %arrayidx4.2 = getelementptr %struct.hso_net, ptr %1, i32 0, i32 8, i32 2
  %57 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx4.2, align 4
  %dev1.i.2 = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 8
  %59 = ptrtoint ptr %dev1.i.2 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %49, ptr %dev1.i.2, align 4
  %pipe2.i.2 = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 10
  %60 = ptrtoint ptr %pipe2.i.2 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or3.2, ptr %pipe2.i.2, align 4
  %transfer_buffer3.i.2 = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 14
  %61 = ptrtoint ptr %transfer_buffer3.i.2 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %transfer_buffer3.i.2, align 4
  %transfer_buffer_length.i.2 = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 19
  %62 = ptrtoint ptr %transfer_buffer_length.i.2 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2048, ptr %transfer_buffer_length.i.2, align 4
  %complete.i.2 = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 28
  %63 = ptrtoint ptr %complete.i.2 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @read_bulk_callback, ptr %complete.i.2, align 4
  %context4.i.2 = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 27
  %64 = ptrtoint ptr %context4.i.2 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %1, ptr %context4.i.2, align 4
  %65 = load ptr, ptr %arrayidx.2, align 4
  %call7.2 = tail call i32 @usb_submit_urb(ptr noundef %65, i32 noundef 3072) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.2)
  %tobool8.not.2 = icmp eq i32 %call7.2, 0
  br i1 %tobool8.not.2, label %for.inc.1.for.inc.2_crit_edge, label %do.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

do.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  %66 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %usb, align 4
  %dev.2 = getelementptr inbounds %struct.usb_device, ptr %67, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.2, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 2, i32 noundef %call7.2) #19
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.hso_net, ptr %1, i32 0, i32 6, i32 3
  %68 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.3, align 4
  %70 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %usb, align 4
  %72 = ptrtoint ptr %in_endp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %in_endp, align 4
  %bEndpointAddress.3 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %bEndpointAddress.3 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bEndpointAddress.3, align 1
  %76 = and i8 %75, 127
  %and.3 = zext i8 %76 to i32
  %77 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %71, align 8
  %shl.i.3 = shl i32 %78, 8
  %shl1.i.3 = shl nuw nsw i32 %and.3, 15
  %or.i.3 = or i32 %shl.i.3, %shl1.i.3
  %or3.3 = or i32 %or.i.3, -1073741696
  %arrayidx4.3 = getelementptr %struct.hso_net, ptr %1, i32 0, i32 8, i32 3
  %79 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx4.3, align 4
  %dev1.i.3 = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 8
  %81 = ptrtoint ptr %dev1.i.3 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %71, ptr %dev1.i.3, align 4
  %pipe2.i.3 = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 10
  %82 = ptrtoint ptr %pipe2.i.3 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %or3.3, ptr %pipe2.i.3, align 4
  %transfer_buffer3.i.3 = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 14
  %83 = ptrtoint ptr %transfer_buffer3.i.3 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %transfer_buffer3.i.3, align 4
  %transfer_buffer_length.i.3 = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 19
  %84 = ptrtoint ptr %transfer_buffer_length.i.3 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 2048, ptr %transfer_buffer_length.i.3, align 4
  %complete.i.3 = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 28
  %85 = ptrtoint ptr %complete.i.3 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @read_bulk_callback, ptr %complete.i.3, align 4
  %context4.i.3 = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 27
  %86 = ptrtoint ptr %context4.i.3 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %1, ptr %context4.i.3, align 4
  %87 = load ptr, ptr %arrayidx.3, align 4
  %call7.3 = tail call i32 @usb_submit_urb(ptr noundef %87, i32 noundef 3072) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.3)
  %tobool8.not.3 = icmp eq i32 %call7.3, 0
  br i1 %tobool8.not.3, label %for.inc.2.cleanup_crit_edge, label %do.end.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  %88 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %usb, align 4
  %dev.3 = getelementptr inbounds %struct.usb_device, ptr %89, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.3, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 3, i32 noundef %call7.3) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end.3, %for.inc.2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call7.3, %do.end.3 ], [ 0, %for.inc.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @read_bulk_callback(ptr noundef %urb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call fastcc void @handle_usb_error(i32 noundef %3, ptr noundef nonnull @__func__.read_bulk_callback, ptr noundef %5)
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %flags3 = getelementptr inbounds %struct.hso_net, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags3, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool4.not = icmp eq i32 %and1.i, 0
  br i1 %tobool4.not, label %lor.lhs.false.do.body_crit_edge, label %if.end13

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  %8 = load i32, ptr @debug, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 996, ptr noundef nonnull @__func__.read_bulk_callback) #19
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #16
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15, i32 12, i32 22
  %11 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %net14 = getelementptr inbounds %struct.hso_net, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %net14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net14, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not = icmp eq i32 %16, 0
  br i1 %tobool.i.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %port_spec = getelementptr inbounds %struct.hso_device, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %port_spec to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_spec, align 4
  %and19 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.if.end22_crit_edge, label %if.then21

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

if.then21:                                        ; preds = %if.end17
  %in_endp = getelementptr inbounds %struct.hso_net, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %in_endp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %in_endp, align 4
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %wMaxPacketSize, align 1
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %25 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %actual_length.i, align 4
  %27 = tail call i16 @llvm.bswap.i16(i16 %24) #16
  %conv.i = zext i16 %27 to i32
  %rem.i = urem i32 %26, %conv.i
  %rem.off.i = add nsw i32 %rem.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem.off.i)
  %switch.i = icmp ult i32 %rem.off.i, 2
  br i1 %switch.i, label %land.lhs.true.i, label %if.then21.if.end22_crit_edge

if.then21.if.end22_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

land.lhs.true.i:                                  ; preds = %if.then21
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %28 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %transfer_buffer.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 %26
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 -4
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr5.i, ptr noundef nonnull dereferenceable(4) @fix_crc_bug.crc_check, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.if.end22_crit_edge

land.lhs.true.i.if.end22_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i = add i32 %26, -4
  %30 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub.i, ptr %actual_length.i, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end22_crit_edge, %if.then21.if.end22_crit_edge, %if.end17.if.end22_crit_edge
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %31 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool23.not = icmp eq i32 %32, 0
  br i1 %tobool23.not, label %if.end22.if.end40_crit_edge, label %do.body26

if.end22.if.end40_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

do.body26:                                        ; preds = %if.end22
  %net_lock = getelementptr inbounds %struct.hso_net, ptr %1, i32 0, i32 13
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %net_lock) #16
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %33 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %transfer_buffer, align 4
  %35 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %actual_length, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %37 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %transfer_buffer_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %36)
  %cmp36.not = icmp ugt i32 %38, %36
  %39 = load i32, ptr @debug, align 4
  %and.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i90 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i90, label %do.body26.do.end3.i_crit_edge, label %do.end.i

do.body26.do.end3.i_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end3.i

do.end.i:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef 848, ptr noundef nonnull @.str.51, i32 noundef %36) #19
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.body26.do.end3.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool4.not227.i = icmp eq i32 %36, 0
  br i1 %tobool4.not227.i, label %do.end3.i.while.end.i_crit_edge, label %while.body.lr.ph.i

do.end3.i.while.end.i_crit_edge:                  ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %do.end3.i
  %rx_parse_state.i = getelementptr inbounds %struct.hso_net, ptr %1, i32 0, i32 12
  %rx_buf_missing75.i = getelementptr inbounds %struct.hso_net, ptr %1, i32 0, i32 15
  %skb_rx_buf86.i = getelementptr inbounds %struct.hso_net, ptr %1, i32 0, i32 10
  %rx_buf_size103.i = getelementptr inbounds %struct.hso_net, ptr %1, i32 0, i32 14
  %rx_ip_hdr.i = getelementptr inbounds %struct.hso_net, ptr %1, i32 0, i32 16
  %tot_len.i = getelementptr inbounds %struct.hso_net, ptr %1, i32 0, i32 16, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %count.addr.0229.i = phi i32 [ %36, %while.body.lr.ph.i ], [ %count.addr.0.be.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %buffer_offset.0228.i = phi i16 [ 0, %while.body.lr.ph.i ], [ %buffer_offset.0.be.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %40 = ptrtoint ptr %rx_parse_state.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_parse_state.i, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %41, label %do.body138.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb74.i
    i32 2, label %do.body126.i
  ]

sw.bb.i:                                          ; preds = %while.body.i
  %43 = ptrtoint ptr %rx_buf_missing75.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %rx_buf_missing75.i, align 2
  %conv.i91 = zext i16 %44 to i32
  %45 = tail call i32 @llvm.umin.i32(i32 %count.addr.0229.i, i32 %conv.i91) #16
  %46 = ptrtoint ptr %rx_buf_size103.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %rx_buf_size103.i, align 4
  %conv9.i = zext i16 %47 to i32
  %add.ptr.i92 = getelementptr i8, ptr %rx_ip_hdr.i, i32 %conv9.i
  %conv10.i = zext i16 %buffer_offset.0228.i to i32
  %add.ptr11.i = getelementptr i8, ptr %34, i32 %conv10.i
  %48 = call ptr @memcpy(ptr %add.ptr.i92, ptr %add.ptr11.i, i32 %45)
  %49 = load i16, ptr %rx_buf_size103.i, align 4
  %50 = trunc i32 %45 to i16
  %conv16.i = add i16 %49, %50
  store i16 %conv16.i, ptr %rx_buf_size103.i, align 4
  %conv20.i = add i16 %buffer_offset.0228.i, %50
  %51 = ptrtoint ptr %rx_buf_missing75.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %rx_buf_missing75.i, align 2
  %conv24.i = sub i16 %52, %50
  store i16 %conv24.i, ptr %rx_buf_missing75.i, align 2
  %sub26.i = sub i32 %count.addr.0229.i, %45
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %50)
  %tobool28.not.i = icmp eq i16 %52, %50
  br i1 %tobool28.not.i, label %if.then29.i, label %sw.bb.i.while.cond.backedge.i_crit_edge

sw.bb.i.while.cond.backedge.i_crit_edge:          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge.i

if.then29.i:                                      ; preds = %sw.bb.i
  %53 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %tot_len.i, align 2
  %conv31.i = zext i16 %54 to i32
  %55 = add i16 %54, -1501
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1481, i16 %55)
  %56 = icmp ult i16 %55, -1481
  %57 = ptrtoint ptr %net14 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %net14, align 4
  br i1 %56, label %do.end40.i, label %if.end43.i

do.end40.i:                                       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.53, i32 noundef %conv31.i) #19
  %59 = ptrtoint ptr %rx_parse_state.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 2, ptr %rx_parse_state.i, align 4
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %do.end149.i, %if.then109.i, %sw.bb74.i.while.cond.backedge.i_crit_edge, %if.end63.i, %do.end61.i, %do.end40.i, %sw.bb.i.while.cond.backedge.i_crit_edge
  %buffer_offset.0.be.i = phi i16 [ %conv20.i, %do.end40.i ], [ %conv20.i, %do.end61.i ], [ %buffer_offset.0228.i, %do.end149.i ], [ %conv101.i, %sw.bb74.i.while.cond.backedge.i_crit_edge ], [ %conv101.i, %if.then109.i ], [ %conv20.i, %sw.bb.i.while.cond.backedge.i_crit_edge ], [ %conv20.i, %if.end63.i ]
  %count.addr.0.be.i = phi i32 [ %sub26.i, %do.end40.i ], [ %sub26.i, %do.end61.i ], [ %dec.i, %do.end149.i ], [ %sub97.i, %sw.bb74.i.while.cond.backedge.i_crit_edge ], [ %sub97.i, %if.then109.i ], [ %sub26.i, %sw.bb.i.while.cond.backedge.i_crit_edge ], [ %sub26.i, %if.end63.i ]
  %tobool4.not.i = icmp eq i32 %count.addr.0.be.i, 0
  br i1 %tobool4.not.i, label %while.cond.backedge.i.while.end.i_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.cond.backedge.i.while.end.i_crit_edge:      ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.end43.i:                                       ; preds = %if.then29.i
  %call.i.i93 = tail call ptr @__netdev_alloc_skb(ptr noundef %58, i32 noundef %conv31.i, i32 noundef 2592) #16
  %60 = ptrtoint ptr %skb_rx_buf86.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i.i93, ptr %skb_rx_buf86.i, align 4
  %tobool48.not.i = icmp eq ptr %call.i.i93, null
  br i1 %tobool48.not.i, label %do.body50.i, label %if.end63.i

do.body50.i:                                      ; preds = %if.end43.i
  %61 = load i32, ptr @debug, align 4
  %and51.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %do.body50.i.do.end61.i_crit_edge, label %do.end56.i

do.body50.i.do.end61.i_crit_edge:                 ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end61.i

do.end56.i:                                       ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #18
  %call58.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef 888, ptr noundef nonnull @.str.51) #19
  br label %do.end61.i

do.end61.i:                                       ; preds = %do.end56.i, %do.body50.i.do.end61.i_crit_edge
  %62 = ptrtoint ptr %rx_parse_state.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %rx_parse_state.i, align 4
  br label %while.cond.backedge.i

if.end63.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i225.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i93, i32 noundef 20) #16
  %63 = call ptr @memcpy(ptr %call.i225.i, ptr %rx_ip_hdr.i, i32 20)
  %64 = ptrtoint ptr %rx_buf_size103.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 20, ptr %rx_buf_size103.i, align 4
  %sub69.i = add nsw i16 %54, -20
  %65 = ptrtoint ptr %rx_buf_missing75.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %sub69.i, ptr %rx_buf_missing75.i, align 2
  %66 = ptrtoint ptr %rx_parse_state.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %rx_parse_state.i, align 4
  br label %while.cond.backedge.i

sw.bb74.i:                                        ; preds = %while.body.i
  %67 = ptrtoint ptr %rx_buf_missing75.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %rx_buf_missing75.i, align 2
  %conv76.i = zext i16 %68 to i32
  %69 = tail call i32 @llvm.umin.i32(i32 %count.addr.0229.i, i32 %conv76.i) #16
  %70 = ptrtoint ptr %skb_rx_buf86.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %skb_rx_buf86.i, align 4
  %conv87.i = zext i16 %buffer_offset.0228.i to i32
  %add.ptr88.i = getelementptr i8, ptr %34, i32 %conv87.i
  %call.i226.i = tail call ptr @skb_put(ptr noundef %71, i32 noundef %69) #16
  %72 = call ptr @memcpy(ptr %call.i226.i, ptr %add.ptr88.i, i32 %69)
  %73 = ptrtoint ptr %rx_buf_missing75.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %rx_buf_missing75.i, align 2
  %75 = trunc i32 %69 to i16
  %conv95.i = sub i16 %74, %75
  store i16 %conv95.i, ptr %rx_buf_missing75.i, align 2
  %sub97.i = sub i32 %count.addr.0229.i, %69
  %conv101.i = add i16 %buffer_offset.0228.i, %75
  %76 = ptrtoint ptr %rx_buf_size103.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %rx_buf_size103.i, align 4
  %conv106.i = add i16 %77, %75
  store i16 %conv106.i, ptr %rx_buf_size103.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %74, i16 %75)
  %tobool108.not.i = icmp eq i16 %74, %75
  br i1 %tobool108.not.i, label %if.then109.i, label %sw.bb74.i.while.cond.backedge.i_crit_edge

sw.bb74.i.while.cond.backedge.i_crit_edge:        ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge.i

if.then109.i:                                     ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #18
  %78 = ptrtoint ptr %skb_rx_buf86.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %skb_rx_buf86.i, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %79, i32 0, i32 15, i32 0, i32 18
  %80 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 2048, ptr %protocol.i, align 8
  %81 = load ptr, ptr %skb_rx_buf86.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %81, i32 0, i32 19
  %82 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %81, i32 0, i32 18
  %84 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %83 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %85 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %81, i32 0, i32 15, i32 0, i32 21
  %86 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %87 = load ptr, ptr %skb_rx_buf86.i, align 4
  %call113.i = tail call i32 @netif_rx(ptr noundef %87) #16
  %88 = ptrtoint ptr %skb_rx_buf86.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %skb_rx_buf86.i, align 4
  %89 = ptrtoint ptr %net14 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %net14, align 4
  %stats.i = getelementptr inbounds %struct.net_device, ptr %90, i32 0, i32 36
  %91 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %stats.i, align 8
  %inc.i = add i32 %92, 1
  store i32 %inc.i, ptr %stats.i, align 8
  %93 = ptrtoint ptr %rx_buf_size103.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %rx_buf_size103.i, align 4
  %conv117.i = zext i16 %94 to i32
  %95 = load ptr, ptr %net14, align 4
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %95, i32 0, i32 36, i32 2
  %96 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rx_bytes.i, align 8
  %add120.i = add i32 %97, %conv117.i
  store i32 %add120.i, ptr %rx_bytes.i, align 8
  store i16 0, ptr %rx_buf_size103.i, align 4
  %98 = ptrtoint ptr %rx_buf_missing75.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 20, ptr %rx_buf_missing75.i, align 2
  %99 = ptrtoint ptr %rx_parse_state.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %rx_parse_state.i, align 4
  br label %while.cond.backedge.i

do.body126.i:                                     ; preds = %while.body.i
  %100 = load i32, ptr @debug, align 4
  %and127.i = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127.i)
  %tobool128.not.i = icmp eq i32 %and127.i, 0
  br i1 %tobool128.not.i, label %do.body126.i.while.end.i_crit_edge, label %do.end132.i

do.body126.i.while.end.i_crit_edge:               ; preds = %do.body126.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

do.end132.i:                                      ; preds = %do.body126.i
  call void @__sanitizer_cov_trace_pc() #18
  %call134.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef 947, ptr noundef nonnull @.str.51) #19
  br label %while.end.i

do.body138.i:                                     ; preds = %while.body.i
  %101 = load i32, ptr @debug, align 4
  %and139.i = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139.i)
  %tobool140.not.i = icmp eq i32 %and139.i, 0
  br i1 %tobool140.not.i, label %do.body138.i.do.end149.i_crit_edge, label %do.end144.i

do.body138.i.do.end149.i_crit_edge:               ; preds = %do.body138.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end149.i

do.end144.i:                                      ; preds = %do.body138.i
  call void @__sanitizer_cov_trace_pc() #18
  %call146.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef 951, ptr noundef nonnull @.str.51) #19
  br label %do.end149.i

do.end149.i:                                      ; preds = %do.end144.i, %do.body138.i.do.end149.i_crit_edge
  %dec.i = add i32 %count.addr.0229.i, -1
  br label %while.cond.backedge.i

while.end.i:                                      ; preds = %do.end132.i, %do.body126.i.while.end.i_crit_edge, %while.cond.backedge.i.while.end.i_crit_edge, %do.end3.i.while.end.i_crit_edge
  br i1 %cmp36.not, label %if.then151.i, label %while.end.i.packetizeRx.exit_crit_edge

while.end.i.packetizeRx.exit_crit_edge:           ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %packetizeRx.exit

if.then151.i:                                     ; preds = %while.end.i
  %rx_parse_state152.i = getelementptr inbounds %struct.hso_net, ptr %1, i32 0, i32 12
  %102 = ptrtoint ptr %rx_parse_state152.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rx_parse_state152.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %103)
  %cmp153.i = icmp eq i32 %103, 2
  br i1 %cmp153.i, label %if.then155.i, label %if.then151.i.packetizeRx.exit_crit_edge

if.then151.i.packetizeRx.exit_crit_edge:          ; preds = %if.then151.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %packetizeRx.exit

if.then155.i:                                     ; preds = %if.then151.i
  call void @__sanitizer_cov_trace_pc() #18
  %104 = ptrtoint ptr %rx_parse_state152.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %rx_parse_state152.i, align 4
  %rx_buf_size157.i = getelementptr inbounds %struct.hso_net, ptr %1, i32 0, i32 14
  %105 = ptrtoint ptr %rx_buf_size157.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 0, ptr %rx_buf_size157.i, align 4
  %rx_buf_missing158.i = getelementptr inbounds %struct.hso_net, ptr %1, i32 0, i32 15
  %106 = ptrtoint ptr %rx_buf_missing158.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 20, ptr %rx_buf_missing158.i, align 2
  br label %packetizeRx.exit

packetizeRx.exit:                                 ; preds = %if.then155.i, %if.then151.i.packetizeRx.exit_crit_edge, %while.end.i.packetizeRx.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %net_lock, i32 noundef %call29) #16
  br label %if.end40

if.end40:                                         ; preds = %packetizeRx.exit, %if.end22.if.end40_crit_edge
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 4
  %usb = getelementptr inbounds %struct.hso_device, ptr %108, i32 0, i32 6
  %109 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %usb, align 4
  %in_endp44 = getelementptr inbounds %struct.hso_net, ptr %1, i32 0, i32 4
  %111 = ptrtoint ptr %in_endp44 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %in_endp44, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %bEndpointAddress, align 1
  %115 = and i8 %114, 127
  %and46 = zext i8 %115 to i32
  %116 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %110, align 8
  %shl.i = shl i32 %117, 8
  %shl1.i = shl nuw nsw i32 %and46, 15
  %or.i = or i32 %shl.i, %shl1.i
  %or48 = or i32 %or.i, -1073741696
  %118 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %110, ptr %dev, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %119 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %or48, ptr %pipe2.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %120 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 2048, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %121 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @read_bulk_callback, ptr %complete.i, align 4
  %122 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %1, ptr %context, align 4
  %call50 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end40.cleanup_crit_edge, label %do.end55

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end55:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %1, align 4
  %interface = getelementptr inbounds %struct.hso_device, ptr %124, i32 0, i32 7
  %125 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %interface, align 4
  %dev57 = getelementptr inbounds %struct.usb_interface, ptr %126, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev57, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.read_bulk_callback, i32 noundef %call50) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %if.end40.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_usb_error(i32 noundef %status, ptr noundef %function, ptr noundef readonly %hso_dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %status, label %sw.default [
    i32 -19, label %entry.do.body_crit_edge
    i32 -2, label %sw.bb1
    i32 -32, label %sw.bb2
    i32 -28, label %sw.bb3
    i32 -108, label %sw.bb4
    i32 -113, label %sw.bb5
    i32 -22, label %entry.sw.bb6_crit_edge
    i32 -11, label %entry.sw.bb6_crit_edge16
    i32 -27, label %entry.sw.bb6_crit_edge17
    i32 -90, label %entry.sw.bb6_crit_edge18
    i32 -84, label %entry.sw.bb7_crit_edge
    i32 -71, label %entry.sw.bb7_crit_edge19
    i32 -62, label %entry.sw.bb7_crit_edge20
    i32 -110, label %entry.sw.bb7_crit_edge21
  ]

entry.sw.bb7_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb7

entry.sw.bb7_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb7

entry.sw.bb7_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb7

entry.sw.bb6_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb6

entry.sw.bb6_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb6

entry.sw.bb6_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb6

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge16, %entry.sw.bb6_crit_edge17, %entry.sw.bb6_crit_edge18
  br label %do.body

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge19, %entry.sw.bb7_crit_edge20, %entry.sw.bb7_crit_edge21
  %tobool.not = icmp eq ptr %hso_dev, null
  br i1 %tobool.not, label %sw.bb7.do.body_crit_edge, label %if.then

sw.bb7.do.body_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #18
  %interface = getelementptr inbounds %struct.hso_device, ptr %hso_dev, i32 0, i32 7
  %1 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %interface, align 4
  tail call void @usb_queue_reset_device(ptr noundef %2) #16
  br label %do.body

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body:                                          ; preds = %sw.default, %if.then, %sw.bb7.do.body_crit_edge, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.do.body_crit_edge
  %explanation.0 = phi ptr [ @.str.47, %sw.default ], [ @.str.46, %if.then ], [ @.str.46, %sw.bb7.do.body_crit_edge ], [ @.str.45, %sw.bb6 ], [ @.str.44, %sw.bb5 ], [ @.str.43, %sw.bb4 ], [ @.str.42, %sw.bb3 ], [ @.str.41, %sw.bb2 ], [ @.str.40, %sw.bb1 ], [ @.str.39, %entry.do.body_crit_edge ]
  %3 = load i32, ptr @debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body.do.end13_crit_edge, label %do.end

do.body.do.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef 687, ptr noundef nonnull @.str.49, ptr noundef %function, ptr noundef nonnull %explanation.0, i32 noundef %status) #19
  br label %do.end13

do.end13:                                         ; preds = %do.end, %do.body.do.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_queue_reset_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hso_stop_net_device(ptr nocapture noundef readonly %hso_dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hso_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hso_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.hso_net, ptr %1, i32 0, i32 6, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %for.body.preheader.for.inc_crit_edge, label %if.then2

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then2:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @usb_kill_urb(ptr noundef nonnull %3) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %for.body.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.hso_net, ptr %1, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %tobool1.not.1 = icmp eq ptr %5, null
  br i1 %tobool1.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then2.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

if.then2.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @usb_kill_urb(ptr noundef nonnull %5) #16
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then2.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.hso_net, ptr %1, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %tobool1.not.2 = icmp eq ptr %7, null
  br i1 %tobool1.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then2.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

if.then2.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @usb_kill_urb(ptr noundef nonnull %7) #16
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then2.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.hso_net, ptr %1, i32 0, i32 6, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.3, align 4
  %tobool1.not.3 = icmp eq ptr %9, null
  br i1 %tobool1.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then2.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3

if.then2.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @usb_kill_urb(ptr noundef nonnull %9) #16
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then2.3, %for.inc.2.for.inc.3_crit_edge
  %mux_bulk_tx_urb = getelementptr inbounds %struct.hso_net, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %mux_bulk_tx_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mux_bulk_tx_urb, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %for.inc.3.cleanup_crit_edge, label %if.then7

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then7:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @usb_kill_urb(ptr noundef nonnull %11) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %for.inc.3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %for.inc.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @write_bulk_callback(ptr nocapture noundef readonly %urb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.hso_net, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %net = getelementptr inbounds %struct.hso_net, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %dev9 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %13 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev9, align 4
  %dev10 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.70) #19
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool12.not = icmp eq i32 %3, 0
  br i1 %tobool12.not, label %if.end11.if.end14_crit_edge, label %if.then13

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call fastcc void @handle_usb_error(i32 noundef %3, ptr noundef nonnull @.str.70, ptr noundef %16)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11.if.end14_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %usb.i = getelementptr inbounds %struct.hso_device, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb.i, align 4
  %state.i29 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %state.i29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state.i29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 8
  br i1 %cmp.not.i, label %if.end14.if.end3.i_crit_edge, label %if.then.i

if.end14.if.end3.i_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3.i

if.then.i:                                        ; preds = %if.end14
  %is_active.i = getelementptr inbounds %struct.hso_device, ptr %18, i32 0, i32 2
  %23 = ptrtoint ptr %is_active.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %if.then.i.if.end3.i_crit_edge, label %if.then1.i

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %25 = ptrtoint ptr %is_active.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %is_active.i, align 4
  %async_put_intf.i = getelementptr inbounds %struct.hso_device, ptr %18, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %async_put_intf.i) #16
  br label %hso_put_activity.exit

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %if.end14.if.end3.i_crit_edge
  %is_active4.i = getelementptr inbounds %struct.hso_device, ptr %18, i32 0, i32 2
  %27 = ptrtoint ptr %is_active4.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %is_active4.i, align 4
  br label %hso_put_activity.exit

hso_put_activity.exit:                            ; preds = %if.end3.i, %if.then1.i
  %28 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 103
  %30 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %31) #16
  br label %cleanup

cleanup:                                          ; preds = %hso_put_activity.exit, %do.end8, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rfkill_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rfkill_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfkill_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hso_rfkill_set_block(ptr noundef %data, i1 noundef zeroext %blocked) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.hso_device, ptr %data, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #16
  %usb_gone = getelementptr inbounds %struct.hso_device, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %usb_gone to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %usb_gone, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %usb = getelementptr inbounds %struct.hso_device, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i = shl i32 %5, 8
  %or = or i32 %shl.i, -2147483648
  %conv = select i1 %blocked, i8 -127, i8 -126
  %call4 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or, i8 noundef zeroext %conv, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %rv.0 = phi i32 [ %call4, %if.else ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #16
  ret i32 %rv.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hso_serial_common_create(ptr noundef %serial, i32 noundef %num_urbs, i32 noundef %rx_size, i32 noundef %tx_size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 22
  tail call void @tty_port_init(ptr noundef %port) #16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @serial_table_lock) #16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %index.024.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [256 x ptr], ptr @serial_table, i32 0, i32 %index.024.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %cmp7.i = icmp eq ptr %1, null
  br i1 %cmp7.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %index.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %obtain_minor.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

obtain_minor.exit:                                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serial_table_lock, i32 noundef %call2.i) #16
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101) #19
  br label %exit2

if.end:                                           ; preds = %for.body.i
  %2 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial, align 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %arrayidx.i, align 4
  %conv10.i = trunc i32 %index.024.i to i8
  %minor.i = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 2
  %5 = ptrtoint ptr %minor.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv10.i, ptr %minor.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serial_table_lock, i32 noundef %call2.i) #16
  %6 = load ptr, ptr @tty_drv, align 4
  %7 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %minor.i, align 4
  %conv = zext i8 %8 to i32
  %9 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %serial, align 4
  %interface = getelementptr inbounds %struct.hso_device, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %interface, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7
  %call3 = tail call ptr @tty_port_register_device_attr(ptr noundef %port, ptr noundef %6, i32 noundef %conv, ptr noundef %dev, ptr noundef %10, ptr noundef nonnull @hso_serial_dev_groups) #16
  %13 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %serial, align 4
  %dev5 = getelementptr inbounds %struct.hso_device, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call3, ptr %dev5, align 4
  %16 = load ptr, ptr %serial, align 4
  %dev7 = getelementptr inbounds %struct.hso_device, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev7, align 4
  %cmp.i = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call2.i102 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @serial_table_lock) #16
  %19 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %minor.i, align 4
  %idxprom.i = zext i8 %20 to i32
  %arrayidx.i104 = getelementptr [256 x ptr], ptr @serial_table, i32 0, i32 %idxprom.i
  %21 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx.i104, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serial_table_lock, i32 noundef %call2.i102) #16
  br label %exit2

if.end10:                                         ; preds = %if.end
  %magic = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 1
  %22 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1213419313, ptr %magic, align 4
  %serial_lock = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 23
  tail call void @__raw_spin_lock_init(ptr noundef %serial_lock, ptr noundef nonnull @.str.99, ptr noundef nonnull @hso_serial_common_create.__key, i16 noundef signext 3) #16
  %conv12 = trunc i32 %num_urbs to i8
  %num_rx_urbs = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 5
  %23 = ptrtoint ptr %num_rx_urbs to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv12, ptr %num_rx_urbs, align 4
  %conv13 = trunc i32 %rx_size to i16
  %rx_data_length = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 7
  %24 = ptrtoint ptr %rx_data_length to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv13, ptr %rx_data_length, align 4
  %conv15177 = and i32 %num_urbs, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15177)
  %cmp178.not = icmp eq i32 %conv15177, 0
  br i1 %cmp178.not, label %if.end10.for.end_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end10.for.body_crit_edge
  %i.0179 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %call17 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #16
  %arrayidx = getelementptr %struct.hso_serial, ptr %serial, i32 0, i32 4, i32 %i.0179
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call17, ptr %arrayidx, align 4
  %tobool20.not = icmp eq ptr %call17, null
  br i1 %tobool20.not, label %for.body.exit_crit_edge, label %if.end22

for.body.exit_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end22:                                         ; preds = %for.body
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call17, i32 0, i32 14
  %26 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %transfer_buffer, align 4
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %transfer_buffer_length, align 4
  %30 = ptrtoint ptr %rx_data_length to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %rx_data_length, align 4
  %conv28 = zext i16 %31 to i32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv28, i32 noundef 3520) #21
  %arrayidx30 = getelementptr %struct.hso_serial, ptr %serial, i32 0, i32 6, i32 %i.0179
  %32 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call9.i.i, ptr %arrayidx30, align 4
  %tobool33.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool33.not, label %if.end22.exit_crit_edge, label %for.inc

if.end22.exit_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

for.inc:                                          ; preds = %if.end22
  %inc = add nuw nsw i32 %i.0179, 1
  %33 = ptrtoint ptr %num_rx_urbs to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %num_rx_urbs, align 4
  %conv15 = zext i8 %34 to i32
  %cmp = icmp ult i32 %inc, %conv15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end10.for.end_crit_edge
  %call36 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #16
  %tx_urb = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 8
  %35 = ptrtoint ptr %tx_urb to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call36, ptr %tx_urb, align 4
  %tobool38.not = icmp eq ptr %call36, null
  br i1 %tobool38.not, label %for.end.exit_crit_edge, label %if.end40

for.end.exit_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end40:                                         ; preds = %for.end
  %transfer_buffer42 = getelementptr inbounds %struct.urb, ptr %call36, i32 0, i32 14
  %36 = ptrtoint ptr %transfer_buffer42 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %transfer_buffer42, align 4
  %37 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_urb, align 4
  %transfer_buffer_length44 = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 19
  %39 = ptrtoint ptr %transfer_buffer_length44 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %transfer_buffer_length44, align 4
  %tx_data_count = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 12
  %40 = ptrtoint ptr %tx_data_count to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %tx_data_count, align 2
  %tx_buffer_count = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 13
  %41 = ptrtoint ptr %tx_buffer_count to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %tx_buffer_count, align 4
  %conv45 = trunc i32 %tx_size to i16
  %tx_data_length = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 11
  %42 = ptrtoint ptr %tx_data_length to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv45, ptr %tx_data_length, align 4
  %conv47 = and i32 %tx_size, 65535
  %call9.i.i130 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv47, i32 noundef 3520) #21
  %tx_data = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 9
  %43 = ptrtoint ptr %tx_data to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call9.i.i130, ptr %tx_data, align 4
  %tobool50.not = icmp eq ptr %call9.i.i130, null
  br i1 %tobool50.not, label %if.end40.exit_crit_edge, label %if.end8.i.i160

if.end40.exit_crit_edge:                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end8.i.i160:                                   ; preds = %if.end40
  %44 = ptrtoint ptr %tx_data_length to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %tx_data_length, align 4
  %conv54 = zext i16 %45 to i32
  %call9.i.i159 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv54, i32 noundef 3520) #21
  %tx_buffer = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 10
  %46 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call9.i.i159, ptr %tx_buffer, align 4
  %tobool57.not = icmp eq ptr %call9.i.i159, null
  br i1 %tobool57.not, label %if.end8.i.i160.exit_crit_edge, label %if.end8.i.i160.cleanup_crit_edge

if.end8.i.i160.cleanup_crit_edge:                 ; preds = %if.end8.i.i160
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8.i.i160.exit_crit_edge:                    ; preds = %if.end8.i.i160
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

exit:                                             ; preds = %if.end8.i.i160.exit_crit_edge, %if.end40.exit_crit_edge, %for.end.exit_crit_edge, %if.end22.exit_crit_edge, %for.body.exit_crit_edge
  %47 = load ptr, ptr @tty_drv, align 4
  %48 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %minor.i, align 4
  %conv.i = zext i8 %49 to i32
  tail call void @tty_unregister_device(ptr noundef %47, i32 noundef %conv.i) #16
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @serial_table_lock) #16
  %50 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %minor.i, align 4
  %idxprom.i.i = zext i8 %51 to i32
  %arrayidx.i.i = getelementptr [256 x ptr], ptr @serial_table, i32 0, i32 %idxprom.i.i
  %52 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %arrayidx.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serial_table_lock, i32 noundef %call2.i.i) #16
  br label %exit2

exit2:                                            ; preds = %exit, %if.then9, %obtain_minor.exit
  tail call fastcc void @hso_serial_common_free(ptr noundef %serial)
  br label %cleanup

cleanup:                                          ; preds = %exit2, %if.end8.i.i160.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %exit2 ], [ 0, %if.end8.i.i160.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hso_mux_serial_write_data(ptr noundef %serial) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %serial, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %port_spec = getelementptr inbounds %struct.hso_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port_spec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_spec, align 4
  %4 = trunc i32 %3 to i16
  %conv = and i16 %4, 255
  %tx_urb = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 8
  %5 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_urb, align 4
  %ctrl_req_tx = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 14
  %tx_data = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 9
  %7 = ptrtoint ptr %tx_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_data, align 4
  %tx_data_count = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 12
  %9 = ptrtoint ptr %tx_data_count to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tx_data_count, align 2
  %conv1 = zext i16 %10 to i32
  %call = tail call fastcc i32 @mux_device_request(ptr noundef nonnull %serial, i8 noundef zeroext 0, i16 noundef zeroext %conv, ptr noundef %6, ptr noundef %ctrl_req_tx, ptr noundef %8, i32 noundef %conv1)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_register_device_attr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hso_serial_tty_unregister(ptr nocapture noundef readonly %serial) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tty_drv, align 4
  %minor = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 2
  %1 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %minor, align 4
  %conv = zext i8 %2 to i32
  tail call void @tty_unregister_device(ptr noundef %0, i32 noundef %conv) #16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @serial_table_lock) #16
  %3 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %minor, align 4
  %idxprom.i = zext i8 %4 to i32
  %arrayidx.i = getelementptr [256 x ptr], ptr @serial_table, i32 0, i32 %idxprom.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serial_table_lock, i32 noundef %call2.i) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hso_serial_common_free(ptr noundef %serial) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rx_urbs = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 5
  %0 = ptrtoint ptr %num_rx_urbs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_rx_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp13.not = icmp eq i8 %1, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hso_serial, ptr %serial, i32 0, i32 4, i32 %i.014
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_free_urb(ptr noundef %3) #16
  %arrayidx2 = getelementptr %struct.hso_serial, ptr %serial, i32 0, i32 6, i32 %i.014
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  tail call void @kfree(ptr noundef %5) #16
  %inc = add nuw nsw i32 %i.014, 1
  %6 = ptrtoint ptr %num_rx_urbs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_rx_urbs, align 4
  %conv = zext i8 %7 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %tx_urb = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 8
  %8 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_urb, align 4
  tail call void @usb_free_urb(ptr noundef %9) #16
  %tx_buffer = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 10
  %10 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_buffer, align 4
  tail call void @kfree(ptr noundef %11) #16
  %tx_data = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 9
  %12 = ptrtoint ptr %tx_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_data, align 4
  tail call void @kfree(ptr noundef %13) #16
  %port = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 22
  tail call void @tty_port_destroy(ptr noundef %port) #16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsotype_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_spec = getelementptr inbounds %struct.hso_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port_spec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_spec, align 4
  %trunc = trunc i32 %3 to i8
  %switch.tableidx = add i8 %trunc, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %switch.tableidx)
  %4 = icmp ult i8 %switch.tableidx, 18
  br i1 %4, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %5 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [18 x ptr], ptr @switch.table.hsotype_show, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %port_name.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.87, %if.end.sw.epilog_crit_edge ]
  %call10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.105, ptr noundef nonnull %port_name.0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_device(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mux_device_request(ptr noundef %serial, i8 noundef zeroext %type, i16 noundef zeroext %port, ptr noundef %ctrl_urb, ptr noundef %ctrl_req, ptr noundef %ctrl_urb_data, i32 noundef %size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %serial, null
  %tobool1.not = icmp eq ptr %ctrl_urb, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %ctrl_req, null
  %or.cond75 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond75, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.107) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl_req, i32 0, i32 2
  %0 = ptrtoint ptr %wValue to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 0, ptr %wValue, align 1
  %conv = zext i16 %port to i32
  %trunc.i = trunc i16 %port to i8
  %switch.tableidx = add i8 %trunc.i, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %1 = icmp ult i8 %switch.tableidx, 4
  br i1 %1, label %switch.lookup, label %if.end.hso_port_to_mux.exit_crit_edge

if.end.hso_port_to_mux.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_port_to_mux.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %2 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i16], ptr @switch.table.mux_device_request, i32 0, i32 %2
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %3)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %hso_port_to_mux.exit

hso_port_to_mux.exit:                             ; preds = %switch.lookup, %if.end.hso_port_to_mux.exit_crit_edge
  %result.0.i = phi i16 [ 0, %if.end.hso_port_to_mux.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl_req, i32 0, i32 3
  %4 = ptrtoint ptr %wIndex to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %result.0.i, ptr %wIndex, align 1
  %conv6 = trunc i32 %size to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv6)
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl_req, i32 0, i32 4
  %6 = ptrtoint ptr %wLength to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %wLength, align 1
  %conv7 = zext i8 %type to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cmp = icmp eq i8 %type, 1
  %. = select i1 %cmp, i8 -95, i8 33
  %.82 = zext i1 %cmp to i8
  %.83 = select i1 %cmp, i32 -2147483520, i32 -2147483648
  %7 = ptrtoint ptr %ctrl_req to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %., ptr %ctrl_req, align 1
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl_req, i32 0, i32 1
  %8 = ptrtoint ptr %bRequest to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.82, ptr %bRequest, align 1
  %9 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %serial, align 4
  %usb = getelementptr inbounds %struct.hso_device, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i = shl i32 %14, 8
  %or11 = or i32 %shl.i, %.83
  %15 = load i32, ptr @debug, align 4
  %and = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %hso_port_to_mux.exit.do.end37_crit_edge, label %do.end24

hso_port_to_mux.exit.do.end37_crit_edge:          ; preds = %hso_port_to_mux.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end37

do.end24:                                         ; preds = %hso_port_to_mux.exit
  call void @__sanitizer_cov_trace_pc() #18
  %cond = select i1 %cmp, ptr @.str.111, ptr @.str.112
  %16 = ptrtoint ptr %ctrl_req to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ctrl_req, align 1
  %conv30 = zext i8 %17 to i32
  %conv32 = zext i16 %5 to i32
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i32 noundef 1786, ptr noundef nonnull @.str.107, ptr noundef nonnull %cond, i32 noundef %conv30, i32 noundef %conv32, i32 noundef %conv) #19
  br label %do.end37

do.end37:                                         ; preds = %do.end24, %hso_port_to_mux.exit.do.end37_crit_edge
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %ctrl_urb, i32 0, i32 13
  %18 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %transfer_flags, align 4
  %19 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %serial, align 4
  %usb39 = getelementptr inbounds %struct.hso_device, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %usb39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb39, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %ctrl_urb, i32 0, i32 8
  %23 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %ctrl_urb, i32 0, i32 10
  %24 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or11, ptr %pipe2.i, align 4
  %setup_packet3.i = getelementptr inbounds %struct.urb, ptr %ctrl_urb, i32 0, i32 21
  %25 = ptrtoint ptr %setup_packet3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %ctrl_req, ptr %setup_packet3.i, align 4
  %transfer_buffer4.i = getelementptr inbounds %struct.urb, ptr %ctrl_urb, i32 0, i32 14
  %26 = ptrtoint ptr %transfer_buffer4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %ctrl_urb_data, ptr %transfer_buffer4.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %ctrl_urb, i32 0, i32 19
  %27 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %size, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %ctrl_urb, i32 0, i32 28
  %28 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ctrl_callback, ptr %complete.i, align 4
  %context5.i = getelementptr inbounds %struct.urb, ptr %ctrl_urb, i32 0, i32 27
  %29 = ptrtoint ptr %context5.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %serial, ptr %context5.i, align 4
  %call40 = tail call i32 @usb_submit_urb(ptr noundef nonnull %ctrl_urb, i32 noundef 2592) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %do.end37.cleanup_crit_edge, label %do.end45

do.end37.cleanup_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end45:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev1.i, align 4
  %dev46 = getelementptr inbounds %struct.usb_device, ptr %31, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.107, i32 noundef %call40, i32 noundef %conv7) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %do.end37.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call40, %do.end45 ], [ -22, %do.end ], [ %size, %do.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ctrl_callback(ptr nocapture noundef readonly %urb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body2:                                         ; preds = %entry
  %serial_lock = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 23
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %serial_lock) #16
  %tx_urb_used = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %tx_urb_used to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %tx_urb_used, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %tx_urb_used, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %serial_lock, i32 noundef %call3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call fastcc void @handle_usb_error(i32 noundef %3, ptr noundef nonnull @__func__.ctrl_callback, ptr noundef %6)
  br label %cleanup

if.end9:                                          ; preds = %do.body2
  %setup_packet = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %7 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %setup_packet, align 4
  %9 = load i32, ptr @debug, align 4
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end9.do.body21_crit_edge, label %do.end15

if.end9.do.body21_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body21

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef 1977, ptr noundef nonnull @__func__.ctrl_callback, i32 noundef 0) #19
  br label %do.body21

do.body21:                                        ; preds = %do.end15, %if.end9.do.body21_crit_edge
  %10 = load i32, ptr @debug, align 4
  %and22 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body21.do.end32_crit_edge, label %do.end27

do.body21.do.end32_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end32

do.end27:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #18
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %11 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual_length, align 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef 1978, ptr noundef nonnull @__func__.ctrl_callback, i32 noundef %12) #19
  br label %do.end32

do.end32:                                         ; preds = %do.end27, %do.body21.do.end32_crit_edge
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %14)
  %cmp34 = icmp eq i8 %14, -95
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #18
  %rx_urb_filled = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 27
  %15 = ptrtoint ptr %rx_urb_filled to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %rx_urb_filled, align 4
  %call46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %serial_lock) #16
  tail call fastcc void @put_rxbuf_data_and_resubmit_ctrl_urb(ptr noundef nonnull %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %serial_lock, i32 noundef %call46) #16
  br label %cleanup

if.else:                                          ; preds = %do.end32
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %usb.i = getelementptr inbounds %struct.hso_device, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb.i, align 4
  %state.i = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 8
  br i1 %cmp.not.i, label %if.else.if.end3.i_crit_edge, label %if.then.i

if.else.if.end3.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3.i

if.then.i:                                        ; preds = %if.else
  %is_active.i = getelementptr inbounds %struct.hso_device, ptr %17, i32 0, i32 2
  %22 = ptrtoint ptr %is_active.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.then.i.if.end3.i_crit_edge, label %if.then1.i

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %is_active.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %is_active.i, align 4
  %async_put_intf.i = getelementptr inbounds %struct.hso_device, ptr %17, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %25 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %async_put_intf.i) #16
  br label %hso_put_activity.exit

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %if.else.if.end3.i_crit_edge
  %is_active4.i = getelementptr inbounds %struct.hso_device, ptr %17, i32 0, i32 2
  %26 = ptrtoint ptr %is_active4.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %is_active4.i, align 4
  br label %hso_put_activity.exit

hso_put_activity.exit:                            ; preds = %if.end3.i, %if.then1.i
  %port = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 22
  tail call void @tty_port_tty_wakeup(ptr noundef %port) #16
  tail call fastcc void @hso_kick_transmit(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %hso_put_activity.exit, %if.then36, %if.then8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_rxbuf_data_and_resubmit_ctrl_urb(ptr noundef %serial) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_urb = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 4
  %0 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_urb, align 4
  %count1 = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 22, i32 7
  %2 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @put_rxbuf_data(ptr noundef %1, ptr noundef %serial)
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %call, label %if.then.if.else_crit_edge [
    i32 -1, label %if.then.cleanup_crit_edge
    i32 0, label %if.then.land.lhs.true_crit_edge
  ]

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true:                                    ; preds = %if.then.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %actual_length = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6.not = icmp eq i32 %6, 0
  br i1 %cmp6.not, label %lor.lhs.false, label %land.lhs.true.if.then8_crit_edge

land.lhs.true.if.then8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8

lor.lhs.false:                                    ; preds = %land.lhs.true
  %rx_state = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 18
  %7 = ptrtoint ptr %rx_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp7 = icmp eq i32 %8, 2
  br i1 %cmp7, label %lor.lhs.false.if.then8_crit_edge, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %land.lhs.true.if.then8_crit_edge
  %rx_state9 = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 18
  %9 = ptrtoint ptr %rx_state9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %rx_state9, align 4
  %tobool.not.i = icmp eq ptr %serial, null
  br i1 %tobool.not.i, label %if.then8.cleanup_crit_edge, label %if.end.i

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %if.then8
  %rx_data.i = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 6
  %10 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_data.i, align 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 1024)
  %num_rx_urbs.i = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 5
  %13 = ptrtoint ptr %num_rx_urbs.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_rx_urbs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp.not.i = icmp eq i8 %14, 1
  %15 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %serial, align 4
  br i1 %cmp.not.i, label %if.end3.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %interface.i = getelementptr inbounds %struct.hso_device, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %interface.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %18, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.130) #19
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %port_spec.i = getelementptr inbounds %struct.hso_device, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %port_spec.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_spec.i, align 4
  %21 = trunc i32 %20 to i16
  %conv5.i = and i16 %21, 255
  %22 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_urb, align 4
  %ctrl_req_rx.i = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 15
  %24 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_data.i, align 4
  %rx_data_length.i = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 7
  %26 = ptrtoint ptr %rx_data_length.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %rx_data_length.i, align 4
  %conv9.i = zext i16 %27 to i32
  %call.i = tail call fastcc i32 @mux_device_request(ptr noundef nonnull %serial, i8 noundef zeroext 1, i16 noundef zeroext %conv5.i, ptr noundef %23, ptr noundef %ctrl_req_rx.i, ptr noundef %25, i32 noundef %conv9.i) #16
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %if.then.if.else_crit_edge
  %rx_state11 = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 18
  %28 = ptrtoint ptr %rx_state11 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %rx_state11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end3.i, %do.end.i, %if.then8.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hso_kick_transmit(ptr noundef %serial) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %serial_lock = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 23
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %serial_lock) #16
  %tx_buffer_count = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 13
  %0 = ptrtoint ptr %tx_buffer_count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tx_buffer_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %entry
  %tx_urb_used = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 21
  %2 = ptrtoint ptr %tx_urb_used to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %tx_urb_used, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool5.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool5.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end7:                                          ; preds = %if.end
  %3 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %serial, align 4
  %usb.i = getelementptr inbounds %struct.hso_device, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb.i, align 4
  %state.i = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp.i = icmp eq i32 %8, 8
  br i1 %cmp.i, label %if.then.i, label %if.end7.if.end3.i_crit_edge

if.end7.if.end3.i_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3.i

if.then.i:                                        ; preds = %if.end7
  %is_active.i = getelementptr inbounds %struct.hso_device, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %is_active.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.then1.i, label %if.then.i.if.end3.i_crit_edge

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %is_active.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %is_active.i, align 4
  %async_get_intf.i = getelementptr inbounds %struct.hso_device, ptr %4, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %async_get_intf.i) #16
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %if.then.i.if.end3.i_crit_edge, %if.end7.if.end3.i_crit_edge
  %13 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb.i, align 4
  %state5.i = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %state5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %16)
  %cmp6.not.i = icmp eq i32 %16, 7
  br i1 %cmp6.not.i, label %do.body13, label %if.end3.i.out_crit_edge

if.end3.i.out_crit_edge:                          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.body13:                                        ; preds = %if.end3.i
  %call.i.i15.i = tail call i64 @ktime_get_mono_fast_ns() #16
  %last_busy.i.i.i = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15, i32 12, i32 22
  %17 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store volatile i64 %call.i.i15.i, ptr %last_busy.i.i.i, align 8
  %tx_buffer = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 10
  %18 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_buffer, align 4
  %tx_data = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 9
  %20 = ptrtoint ptr %tx_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_data, align 4
  store ptr %21, ptr %tx_buffer, align 4
  store ptr %19, ptr %tx_data, align 4
  %22 = ptrtoint ptr %tx_buffer_count to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %tx_buffer_count, align 4
  %tx_data_count = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 12
  %24 = ptrtoint ptr %tx_data_count to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %tx_data_count, align 2
  store i16 0, ptr %tx_buffer_count, align 4
  %tobool21.not = icmp eq ptr %19, null
  br i1 %tobool21.not, label %do.body13.out_crit_edge, label %land.lhs.true

do.body13.out_crit_edge:                          ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

land.lhs.true:                                    ; preds = %do.body13
  %write_data = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 24
  %25 = ptrtoint ptr %write_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_data, align 4
  %tobool22.not = icmp eq ptr %26, null
  br i1 %tobool22.not, label %land.lhs.true.out_crit_edge, label %if.then23

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then23:                                        ; preds = %land.lhs.true
  %call25 = tail call i32 %26(ptr noundef %serial) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call25)
  %cmp26 = icmp sgt i32 %call25, -1
  br i1 %cmp26, label %if.then28, label %if.then23.out_crit_edge

if.then23.out_crit_edge:                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then28:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %tx_urb_used to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load30 = load i8, ptr %tx_urb_used, align 2
  %bf.set = or i8 %bf.load30, -128
  store i8 %bf.set, ptr %tx_urb_used, align 2
  br label %out

out:                                              ; preds = %if.then28, %if.then23.out_crit_edge, %land.lhs.true.out_crit_edge, %do.body13.out_crit_edge, %if.end3.i.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %serial_lock, i32 noundef %call2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @put_rxbuf_data(ptr noundef readonly %urb, ptr noundef %serial) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %urb, null
  %cmp1 = icmp eq ptr %serial, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i32 noundef 2004, ptr noundef nonnull @.str.121) #19
  br label %cleanup

if.end6:                                          ; preds = %entry
  %port = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 22
  %call7 = tail call ptr @tty_port_tty_get(ptr noundef %port) #16
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.do.body12_crit_edge, label %land.lhs.true

if.end6.do.body12_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body12

land.lhs.true:                                    ; preds = %if.end6
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %call7, i32 0, i32 16
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.do.body12_crit_edge, label %if.then10

land.lhs.true.do.body12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body12

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @tty_kref_put(ptr noundef nonnull %call7) #16
  br label %cleanup

do.body12:                                        ; preds = %land.lhs.true.do.body12_crit_edge, %if.end6.do.body12_crit_edge
  %3 = load i32, ptr @debug, align 4
  %and13 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.do.end23_crit_edge, label %do.end18

do.body12.do.end23_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end23

do.end18:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #18
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef 2016, ptr noundef nonnull @.str.121) #19
  br label %do.end23

do.end23:                                         ; preds = %do.end18, %do.body12.do.end23_crit_edge
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %4 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual_length, align 4
  %call25 = tail call i32 @tty_buffer_request_room(ptr noundef %port, i32 noundef %5) #16
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call25, i32 %7)
  %cmp27.not = icmp ult i32 %call25, %7
  br i1 %cmp27.not, label %do.end35, label %if.then28

if.then28:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #18
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %8 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_buffer, align 4
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port, ptr noundef %9, i8 noundef zeroext 0, i32 noundef %7) #16
  tail call void @tty_flip_buffer_push(ptr noundef %port) #16
  br label %if.end37

do.end35:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %serial, align 4
  %usb = getelementptr inbounds %struct.hso_device, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.126, i32 noundef %7) #19
  br label %if.end37

if.end37:                                         ; preds = %do.end35, %if.then28
  tail call void @tty_kref_put(ptr noundef %call7) #16
  %num_rx_urbs.i = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 5
  %14 = ptrtoint ptr %num_rx_urbs.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_rx_urbs.i, align 4
  %conv.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp10.not.i = icmp eq i8 %15, 0
  br i1 %cmp10.not.i, label %if.end37.do.end.i_crit_edge, label %if.end37.for.body.i_crit_edge

if.end37.for.body.i_crit_edge:                    ; preds = %if.end37
  br label %for.body.i

if.end37.do.end.i_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end37.for.body.i_crit_edge
  %idx.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end37.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hso_serial, ptr %serial, i32 0, i32 4, i32 %idx.011.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %17, %urb
  br i1 %cmp2.i, label %for.body.i.hso_urb_to_index.exit_crit_edge, label %for.inc.i

for.body.i.hso_urb_to_index.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_urb_to_index.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %idx.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.do.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.end37.do.end.i_crit_edge
  %18 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %serial, align 4
  %dev.i = getelementptr inbounds %struct.hso_device, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.128) #19
  br label %hso_urb_to_index.exit

hso_urb_to_index.exit:                            ; preds = %do.end.i, %for.body.i.hso_urb_to_index.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %do.end.i ], [ %idx.011.i, %for.body.i.hso_urb_to_index.exit_crit_edge ]
  %arrayidx = getelementptr %struct.hso_serial, ptr %serial, i32 0, i32 27, i32 %retval.0.i
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %hso_urb_to_index.exit, %if.then10, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then10 ], [ 0, %hso_urb_to_index.exit ], [ -2, %do.end ], [ -2, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_buffer_request_room(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hso_std_serial_write_data(ptr noundef %serial) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_data_count = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 12
  %0 = ptrtoint ptr %tx_data_count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tx_data_count, align 2
  %tx_urb = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 8
  %2 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_urb, align 4
  %4 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial, align 4
  %usb = getelementptr inbounds %struct.hso_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb, align 4
  %out_endp = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 17
  %8 = ptrtoint ptr %out_endp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %out_endp, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bEndpointAddress, align 1
  %12 = and i8 %11, 127
  %and = zext i8 %12 to i32
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %7, align 8
  %shl.i = shl i32 %14, 8
  %shl1.i = shl nuw nsw i32 %and, 15
  %or.i = or i32 %shl.i, %shl1.i
  %or = or i32 %or.i, -1073741824
  %tx_data = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 9
  %15 = ptrtoint ptr %tx_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_data, align 4
  %conv5 = zext i16 %1 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 8
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %7, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 10
  %18 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 14
  %19 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 19
  %20 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv5, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 28
  %21 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @hso_std_serial_write_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 27
  %22 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %serial, ptr %context4.i, align 4
  %23 = load ptr, ptr %tx_urb, align 4
  %call7 = tail call i32 @usb_submit_urb(ptr noundef %23, i32 noundef 2592) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %serial, align 4
  %usb9 = getelementptr inbounds %struct.hso_device, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %usb9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb9, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.143, i32 noundef %call7) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ %conv5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hso_std_serial_write_bulk_callback(ptr nocapture noundef readonly %urb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %do.body9

do.body:                                          ; preds = %entry
  %4 = load i32, ptr @debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, i32 noundef 1913, ptr noundef nonnull @.str.146) #19
  br label %cleanup

do.body9:                                         ; preds = %entry
  %serial_lock = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 23
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %serial_lock) #16
  %tx_urb_used = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 21
  %5 = ptrtoint ptr %tx_urb_used to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %tx_urb_used, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %tx_urb_used, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %serial_lock, i32 noundef %call12) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool18.not = icmp eq i32 %3, 0
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @handle_usb_error(i32 noundef %3, ptr noundef nonnull @.str.146, ptr noundef %7)
  br label %cleanup

if.end20:                                         ; preds = %do.body9
  %usb.i = getelementptr inbounds %struct.hso_device, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb.i, align 4
  %state.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 8
  br i1 %cmp.not.i, label %if.end20.if.end3.i_crit_edge, label %if.then.i

if.end20.if.end3.i_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3.i

if.then.i:                                        ; preds = %if.end20
  %is_active.i = getelementptr inbounds %struct.hso_device, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %is_active.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.then.i.if.end3.i_crit_edge, label %if.then1.i

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %is_active.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %is_active.i, align 4
  %async_put_intf.i = getelementptr inbounds %struct.hso_device, ptr %7, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %15 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %async_put_intf.i) #16
  br label %hso_put_activity.exit

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %if.end20.if.end3.i_crit_edge
  %is_active4.i = getelementptr inbounds %struct.hso_device, ptr %7, i32 0, i32 2
  %16 = ptrtoint ptr %is_active4.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %is_active4.i, align 4
  br label %hso_put_activity.exit

hso_put_activity.exit:                            ; preds = %if.end3.i, %if.then1.i
  %port = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 22
  tail call void @tty_port_tty_wakeup(ptr noundef %port) #16
  tail call fastcc void @hso_kick_transmit(ptr noundef nonnull %1)
  %17 = load i32, ptr @debug, align 4
  %and24 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %hso_put_activity.exit.cleanup_crit_edge, label %do.end29

hso_put_activity.exit.cleanup_crit_edge:          ; preds = %hso_put_activity.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end29:                                         ; preds = %hso_put_activity.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef 1928, ptr noundef nonnull @.str.146) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %hso_put_activity.exit.cleanup_crit_edge, %if.then19, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_hangup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !501
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #16, !srcloc !502
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !503

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #16
  br label %return

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !504
  %add.ptr.i = getelementptr i8, ptr %kref, i32 -112
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.then.return_crit_edge, label %if.end.i.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end.i.i:                                       ; preds = %if.then
  tail call fastcc void @hso_serial_common_free(ptr noundef nonnull %2) #16
  %shared_int.i.i = getelementptr inbounds %struct.hso_serial, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %shared_int.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %shared_int.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.end.i.i.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end.i.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %shared_int_lock.i.i = getelementptr inbounds %struct.hso_shared_int, ptr %4, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %shared_int_lock.i.i, i32 noundef 0) #16
  %5 = ptrtoint ptr %shared_int.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %shared_int.i.i, align 4
  %ref_count.i.i = getelementptr inbounds %struct.hso_shared_int, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %ref_count.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ref_count.i.i, align 4
  %dec.i.i = add i32 %8, -1
  store i32 %dec.i.i, ptr %ref_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i.i = icmp eq i32 %dec.i.i, 0
  %9 = ptrtoint ptr %shared_int.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shared_int.i.i, align 4
  br i1 %cmp.i.i, label %if.then5.i.i, label %if.else.i.i

if.then5.i.i:                                     ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %shared_intr_urb.i.i.i = getelementptr inbounds %struct.hso_shared_int, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %shared_intr_urb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shared_intr_urb.i.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %12) #16
  %shared_intr_buf.i.i.i = getelementptr inbounds %struct.hso_shared_int, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %shared_intr_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shared_intr_buf.i.i.i, align 4
  tail call void @kfree(ptr noundef %14) #16
  %shared_int_lock.i.i.i = getelementptr inbounds %struct.hso_shared_int, ptr %10, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %shared_int_lock.i.i.i) #16
  tail call void @kfree(ptr noundef %10) #16
  br label %if.end.i.i.i

if.else.i.i:                                      ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %shared_int_lock8.i.i = getelementptr inbounds %struct.hso_shared_int, ptr %10, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %shared_int_lock8.i.i) #16
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i, %if.then5.i.i, %if.end.i.i.if.end.i.i.i_crit_edge
  %tiocmget1.i.i.i = getelementptr inbounds %struct.hso_serial, ptr %2, i32 0, i32 25
  %15 = ptrtoint ptr %tiocmget1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tiocmget1.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %16, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.hso_free_tiomget.exit.i.i_crit_edge, label %if.then3.i.i.i

if.end.i.i.i.hso_free_tiomget.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_free_tiomget.exit.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %urb.i.i.i = getelementptr inbounds %struct.hso_tiocmget, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %urb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %urb.i.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %18) #16
  %19 = ptrtoint ptr %urb.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %urb.i.i.i, align 4
  %20 = ptrtoint ptr %tiocmget1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %tiocmget1.i.i.i, align 4
  %serial_state_notification.i.i.i = getelementptr inbounds %struct.hso_tiocmget, ptr %16, i32 0, i32 5
  %21 = ptrtoint ptr %serial_state_notification.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %serial_state_notification.i.i.i, align 4
  tail call void @kfree(ptr noundef %22) #16
  %23 = ptrtoint ptr %serial_state_notification.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %serial_state_notification.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %16) #16
  br label %hso_free_tiomget.exit.i.i

hso_free_tiomget.exit.i.i:                        ; preds = %if.then3.i.i.i, %if.end.i.i.i.hso_free_tiomget.exit.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %2) #16
  tail call void @kfree(ptr noundef %add.ptr.i) #16
  br label %return

return:                                           ; preds = %hso_free_tiomget.exit.i.i, %if.then.return_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfkill_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hso_stop_serial_device(ptr nocapture noundef readonly %hso_dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hso_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hso_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_rx_urbs = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_rx_urbs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_rx_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp64.not = icmp eq i8 %3, 0
  br i1 %cmp64.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.065 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hso_serial, ptr %1, i32 0, i32 4, i32 %i.065
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @usb_kill_urb(ptr noundef nonnull %5) #16
  %arrayidx6 = getelementptr %struct.hso_serial, ptr %1, i32 0, i32 27, i32 %i.065
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx6, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.065, 1
  %7 = ptrtoint ptr %num_rx_urbs to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_rx_urbs, align 4
  %conv = zext i8 %8 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %curr_rx_urb_idx = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 26
  %9 = ptrtoint ptr %curr_rx_urb_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %curr_rx_urb_idx, align 4
  %tx_urb = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_urb, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %for.end.if.end11_crit_edge, label %if.then9

for.end.if.end11_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then9:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @usb_kill_urb(ptr noundef nonnull %11) #16
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %for.end.if.end11_crit_edge
  %shared_int = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %shared_int to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shared_int, align 4
  %tobool12.not = icmp eq ptr %13, null
  br i1 %tobool12.not, label %if.end11.if.end29_crit_edge, label %if.then13

if.end11.if.end29_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then13:                                        ; preds = %if.end11
  %shared_int_lock = getelementptr inbounds %struct.hso_shared_int, ptr %13, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %shared_int_lock, i32 noundef 0) #16
  %14 = ptrtoint ptr %shared_int to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shared_int, align 4
  %use_count = getelementptr inbounds %struct.hso_shared_int, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %use_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool16.not = icmp eq i32 %17, 0
  br i1 %tobool16.not, label %if.then13.if.end26_crit_edge, label %land.lhs.true

if.then13.if.end26_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

land.lhs.true:                                    ; preds = %if.then13
  %dec = add i32 %17, -1
  %18 = ptrtoint ptr %use_count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %dec, ptr %use_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp19 = icmp eq i32 %dec, 0
  br i1 %cmp19, label %if.then21, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.then21:                                        ; preds = %land.lhs.true
  %19 = ptrtoint ptr %shared_int to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %shared_int, align 4
  %shared_intr_urb = getelementptr inbounds %struct.hso_shared_int, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %shared_intr_urb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %shared_intr_urb, align 4
  %tobool23.not = icmp eq ptr %22, null
  br i1 %tobool23.not, label %if.then21.if.end26_crit_edge, label %if.then24

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @usb_kill_urb(ptr noundef nonnull %22) #16
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.then21.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %if.then13.if.end26_crit_edge
  %23 = ptrtoint ptr %shared_int to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %shared_int, align 4
  %shared_int_lock28 = getelementptr inbounds %struct.hso_shared_int, ptr %24, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %shared_int_lock28) #16
  br label %if.end29

if.end29:                                         ; preds = %if.end26, %if.end11.if.end29_crit_edge
  %tiocmget30 = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 25
  %25 = ptrtoint ptr %tiocmget30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tiocmget30, align 4
  %tobool31.not = icmp eq ptr %26, null
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %if.then32

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  %waitq = getelementptr inbounds %struct.hso_tiocmget, ptr %26, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  %urb33 = getelementptr inbounds %struct.hso_tiocmget, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %urb33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %urb33, align 4
  tail call void @usb_kill_urb(ptr noundef %28) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end29.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hso_start_serial_device(ptr nocapture noundef readonly %hso_dev, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hso_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hso_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %port_spec = getelementptr inbounds %struct.hso_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %port_spec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_spec, align 4
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.end
  %num_rx_urbs = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %num_rx_urbs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_rx_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp72.not = icmp eq i8 %7, 0
  br i1 %cmp72.not, label %for.cond.preheader.if.end33_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end33_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %in_endp = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 16
  %rx_data_length = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 7
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.073, 1
  %8 = ptrtoint ptr %num_rx_urbs to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_rx_urbs, align 4
  %conv = zext i8 %9 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.if.end33_crit_edge

for.cond.if.end33_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.073 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hso_serial, ptr %1, i32 0, i32 4, i32 %i.073
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %usb = getelementptr inbounds %struct.hso_device, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb, align 4
  %16 = ptrtoint ptr %in_endp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %in_endp, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bEndpointAddress, align 1
  %20 = and i8 %19, 127
  %and8 = zext i8 %20 to i32
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %15, align 8
  %shl.i = shl i32 %22, 8
  %shl1.i = shl nuw nsw i32 %and8, 15
  %or.i = or i32 %shl.i, %shl1.i
  %or10 = or i32 %or.i, -1073741696
  %arrayidx11 = getelementptr %struct.hso_serial, ptr %1, i32 0, i32 6, i32 %i.073
  %23 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx11, align 4
  %25 = ptrtoint ptr %rx_data_length to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rx_data_length, align 4
  %conv12 = zext i16 %26 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 8
  %27 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %15, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 10
  %28 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or10, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 14
  %29 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %24, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 19
  %30 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv12, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 28
  %31 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @hso_std_serial_read_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 27
  %32 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %1, ptr %context4.i, align 4
  %33 = load ptr, ptr %arrayidx, align 4
  %call15 = tail call i32 @usb_submit_urb(ptr noundef %33, i32 noundef %flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %for.cond, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %usb19 = getelementptr inbounds %struct.hso_device, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %usb19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usb19, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.143, i32 noundef %call15) #19
  br label %if.end33

if.else:                                          ; preds = %if.end
  %shared_int = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %shared_int to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %shared_int, align 4
  %shared_int_lock = getelementptr inbounds %struct.hso_shared_int, ptr %39, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %shared_int_lock, i32 noundef 0) #16
  %40 = ptrtoint ptr %shared_int to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %shared_int, align 4
  %use_count = getelementptr inbounds %struct.hso_shared_int, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %use_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool22.not = icmp eq i32 %43, 0
  br i1 %tobool22.not, label %if.then23, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then23:                                        ; preds = %if.else
  %usb25 = getelementptr inbounds %struct.hso_device, ptr %hso_dev, i32 0, i32 6
  %44 = ptrtoint ptr %usb25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usb25, align 4
  %shared_intr_urb.i = getelementptr inbounds %struct.hso_shared_int, ptr %41, i32 0, i32 2
  %46 = ptrtoint ptr %shared_intr_urb.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %shared_intr_urb.i, align 4
  %48 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %41, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bEndpointAddress.i, align 1
  %52 = and i8 %51, 127
  %and.i = zext i8 %52 to i32
  %53 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %45, align 8
  %shl.i.i = shl i32 %54, 8
  %shl1.i.i = shl nuw nsw i32 %and.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or1.i = or i32 %or.i.i, 1073741952
  %shared_intr_buf.i = getelementptr inbounds %struct.hso_shared_int, ptr %41, i32 0, i32 1
  %55 = ptrtoint ptr %shared_intr_buf.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %shared_intr_buf.i, align 4
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %49, i32 0, i32 5
  %57 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bInterval.i, align 1
  %conv3.i = zext i8 %58 to i32
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 8
  %59 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %45, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 10
  %60 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or1.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 14
  %61 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %56, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 19
  %62 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 28
  %63 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @intr_callback, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 27
  %64 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %41, ptr %context4.i.i, align 4
  %speed.i.i = getelementptr inbounds %struct.usb_device, ptr %45, i32 0, i32 4
  %65 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %66)
  %cmp.i.i = icmp eq i32 %66, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %66)
  %cmp6.i.i = icmp ugt i32 %66, 4
  %or.cond.i.i = or i1 %cmp.i.i, %cmp6.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.then23.usb_fill_int_urb.exit.i_crit_edge

if.then23.usb_fill_int_urb.exit.i_crit_edge:      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  br label %usb_fill_int_urb.exit.i

if.then.i.i:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  %67 = tail call i32 @llvm.smax.i32(i32 %conv3.i, i32 1) #16
  %68 = tail call i32 @llvm.umin.i32(i32 %67, i32 16) #16
  %sub.i.i = add nsw i32 %68, -1
  %shl.i15.i = shl nuw nsw i32 1, %sub.i.i
  br label %usb_fill_int_urb.exit.i

usb_fill_int_urb.exit.i:                          ; preds = %if.then.i.i, %if.then23.usb_fill_int_urb.exit.i_crit_edge
  %interval.sink.i.i = phi i32 [ %shl.i15.i, %if.then.i.i ], [ %conv3.i, %if.then23.usb_fill_int_urb.exit.i_crit_edge ]
  %69 = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 25
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %interval.sink.i.i, ptr %69, align 4
  %start_frame.i.i = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 23
  %71 = ptrtoint ptr %start_frame.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %start_frame.i.i, align 4
  %72 = ptrtoint ptr %shared_intr_urb.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %shared_intr_urb.i, align 4
  %call5.i = tail call i32 @usb_submit_urb(ptr noundef %73, i32 noundef %flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %usb_fill_int_urb.exit.i.if.end27_crit_edge, label %do.end.i

usb_fill_int_urb.exit.i.if.end27_crit_edge:       ; preds = %usb_fill_int_urb.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

do.end.i:                                         ; preds = %usb_fill_int_urb.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %45, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.162, i32 noundef %call5.i) #19
  br label %if.end27

if.end27:                                         ; preds = %do.end.i, %usb_fill_int_urb.exit.i.if.end27_crit_edge, %if.else.if.end27_crit_edge
  %result.1 = phi i32 [ 0, %if.else.if.end27_crit_edge ], [ 0, %usb_fill_int_urb.exit.i.if.end27_crit_edge ], [ %call5.i, %do.end.i ]
  %74 = ptrtoint ptr %shared_int to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %shared_int, align 4
  %use_count29 = getelementptr inbounds %struct.hso_shared_int, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %use_count29 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %use_count29, align 4
  %inc30 = add i32 %77, 1
  store i32 %inc30, ptr %use_count29, align 4
  %78 = load ptr, ptr %shared_int, align 4
  %shared_int_lock32 = getelementptr inbounds %struct.hso_shared_int, ptr %78, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %shared_int_lock32) #16
  br label %if.end33

if.end33:                                         ; preds = %if.end27, %do.end, %for.cond.if.end33_crit_edge, %for.cond.preheader.if.end33_crit_edge
  %result.2 = phi i32 [ %result.1, %if.end27 ], [ %call15, %do.end ], [ 0, %for.cond.preheader.if.end33_crit_edge ], [ 0, %for.cond.if.end33_crit_edge ]
  %tiocmget = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 25
  %79 = ptrtoint ptr %tiocmget to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tiocmget, align 4
  %tobool34.not = icmp eq ptr %80, null
  br i1 %tobool34.not, label %if.end33.cleanup_crit_edge, label %if.then35

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %usb38 = getelementptr inbounds %struct.hso_device, ptr %82, i32 0, i32 6
  %83 = ptrtoint ptr %usb38 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %usb38, align 4
  tail call fastcc void @tiocmget_submit_urb(ptr noundef nonnull %1, ptr noundef nonnull %80, ptr noundef %84)
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end33.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %result.2, %if.then35 ], [ %result.2, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hso_std_serial_read_bulk_callback(ptr noundef %urb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %4 = load i32, ptr @debug, align 4
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, i32 noundef 1181, ptr noundef nonnull @.str.153, i32 noundef %3) #19
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.body7, label %if.end19

do.body7:                                         ; preds = %do.end4
  %5 = load i32, ptr @debug, align 4
  %and8 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body7.cleanup_crit_edge, label %do.end13

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #18
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, i32 noundef 1185, ptr noundef nonnull @.str.153) #19
  br label %cleanup

if.end19:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool20.not = icmp eq i32 %3, 0
  br i1 %tobool20.not, label %do.body23, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call fastcc void @handle_usb_error(i32 noundef %3, ptr noundef nonnull @.str.153, ptr noundef %7)
  br label %cleanup

do.body23:                                        ; preds = %if.end19
  %8 = load i32, ptr @debug, align 4
  %and24 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body23.do.end34_crit_edge, label %do.end29

do.body23.do.end34_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end34

do.end29:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #18
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %9 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual_length, align 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, i32 noundef 1193, ptr noundef nonnull @.str.153, i32 noundef %10) #19
  br label %do.end34

do.end34:                                         ; preds = %do.end29, %do.body23.do.end34_crit_edge
  %count = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 22, i32 7
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %do.end34.cleanup_crit_edge, label %if.end36

do.end34.cleanup_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end36:                                         ; preds = %do.end34
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %port_spec = getelementptr inbounds %struct.hso_device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %port_spec to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_spec, align 4
  %and38 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end36.do.body43_crit_edge, label %if.then40

if.end36.do.body43_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body43

if.then40:                                        ; preds = %if.end36
  %in_endp = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 16
  %17 = ptrtoint ptr %in_endp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in_endp, align 4
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %wMaxPacketSize, align 1
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %21 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %actual_length.i, align 4
  %23 = tail call i16 @llvm.bswap.i16(i16 %20) #16
  %conv.i = zext i16 %23 to i32
  %rem.i = urem i32 %22, %conv.i
  %rem.off.i = add nsw i32 %rem.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem.off.i)
  %switch.i = icmp ult i32 %rem.off.i, 2
  br i1 %switch.i, label %land.lhs.true.i, label %if.then40.do.body43_crit_edge

if.then40.do.body43_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body43

land.lhs.true.i:                                  ; preds = %if.then40
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %24 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %transfer_buffer.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 %22
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 -4
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr5.i, ptr noundef nonnull dereferenceable(4) @fix_crc_bug.crc_check, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.do.body43_crit_edge

land.lhs.true.i.do.body43_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body43

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i = add i32 %22, -4
  %26 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.i, ptr %actual_length.i, align 4
  br label %do.body43

do.body43:                                        ; preds = %if.then.i, %land.lhs.true.i.do.body43_crit_edge, %if.then40.do.body43_crit_edge, %if.end36.do.body43_crit_edge
  %serial_lock = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 23
  %call47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %serial_lock) #16
  %num_rx_urbs.i = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %num_rx_urbs.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %num_rx_urbs.i, align 4
  %conv.i72 = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp10.not.i = icmp eq i8 %28, 0
  br i1 %cmp10.not.i, label %do.body43.do.end.i_crit_edge, label %do.body43.for.body.i_crit_edge

do.body43.for.body.i_crit_edge:                   ; preds = %do.body43
  br label %for.body.i

do.body43.do.end.i_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body43.for.body.i_crit_edge
  %idx.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.body43.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hso_serial, ptr %1, i32 0, i32 4, i32 %idx.011.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %30, %urb
  br i1 %cmp2.i, label %for.body.i.hso_urb_to_index.exit_crit_edge, label %for.inc.i

for.body.i.hso_urb_to_index.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_urb_to_index.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %idx.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i72
  br i1 %exitcond.not.i, label %for.inc.i.do.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %do.body43.do.end.i_crit_edge
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.hso_device, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.128) #19
  br label %hso_urb_to_index.exit

hso_urb_to_index.exit:                            ; preds = %do.end.i, %for.body.i.hso_urb_to_index.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %do.end.i ], [ %idx.011.i, %for.body.i.hso_urb_to_index.exit_crit_edge ]
  %arrayidx = getelementptr %struct.hso_serial, ptr %1, i32 0, i32 27, i32 %retval.0.i
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %arrayidx, align 1
  tail call fastcc void @put_rxbuf_data_and_resubmit_bulk_urb(ptr noundef nonnull %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %serial_lock, i32 noundef %call47) #16
  br label %cleanup

cleanup:                                          ; preds = %hso_urb_to_index.exit, %do.end34.cleanup_crit_edge, %if.then21, %do.end13, %do.body7.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tiocmget_submit_urb(ptr noundef %serial, ptr nocapture noundef readonly %tiocmget, ptr noundef %usb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %usb_gone = getelementptr inbounds %struct.hso_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %usb_gone to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %usb_gone, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %urb = getelementptr inbounds %struct.hso_tiocmget, ptr %tiocmget, i32 0, i32 4
  %4 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb, align 4
  %endp = getelementptr inbounds %struct.hso_tiocmget, ptr %tiocmget, i32 0, i32 3
  %6 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %endp, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bEndpointAddress, align 1
  %10 = and i8 %9, 127
  %and = zext i8 %10 to i32
  %11 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %usb, align 8
  %shl.i = shl i32 %12, 8
  %shl1.i = shl nuw nsw i32 %and, 15
  %or.i = or i32 %shl.i, %shl1.i
  %or1 = or i32 %or.i, 1073741952
  %serial_state_notification = getelementptr inbounds %struct.hso_tiocmget, ptr %tiocmget, i32 0, i32 5
  %13 = ptrtoint ptr %serial_state_notification to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %serial_state_notification, align 4
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 5
  %15 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bInterval, align 1
  %conv3 = zext i8 %16 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 8
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %usb, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 10
  %18 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or1, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 14
  %19 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %14, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 19
  %20 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 10, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 28
  %21 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @tiocmget_intr_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 27
  %22 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %serial, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %usb, i32 0, i32 4
  %23 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp.i = icmp eq i32 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp6.i = icmp ugt i32 %24, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.end.usb_fill_int_urb.exit_crit_edge

if.end.usb_fill_int_urb.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %25 = tail call i32 @llvm.smax.i32(i32 %conv3, i32 1) #16
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 16) #16
  %sub.i = add nsw i32 %26, -1
  %shl.i1 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.end.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i1, %if.then.i ], [ %conv3, %if.end.usb_fill_int_urb.exit_crit_edge ]
  %27 = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 25
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %interval.sink.i, ptr %27, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 23
  %29 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %start_frame.i, align 4
  %30 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %urb, align 4
  %call5 = tail call i32 @usb_submit_urb(ptr noundef %31, i32 noundef 2592) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %usb_fill_int_urb.exit.cleanup_crit_edge, label %do.end

usb_fill_int_urb.exit.cleanup_crit_edge:          ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.usb_device, ptr %usb, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.174, i32 noundef %call5) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end, %usb_fill_int_urb.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_rxbuf_data_and_resubmit_bulk_urb(ptr noundef %serial) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_rx_urb_idx = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 26
  %0 = ptrtoint ptr %curr_rx_urb_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curr_rx_urb_idx, align 4
  %arrayidx25 = getelementptr %struct.hso_serial, ptr %serial, i32 0, i32 27, i32 %1
  %2 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not26 = icmp eq i8 %3, 0
  br i1 %tobool.not26, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %num_rx_urbs = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 5
  %in_endp.i = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 16
  %rx_data_length.i = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i32 [ %1, %while.body.lr.ph ], [ %34, %if.end12.while.body_crit_edge ]
  %arrayidx2 = getelementptr %struct.hso_serial, ptr %serial, i32 0, i32 4, i32 %4
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx2, align 4
  %call = tail call fastcc i32 @put_rxbuf_data(ptr noundef %6, ptr noundef %serial)
  %7 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.214)
  switch i32 %call, label %while.body.if.end12_crit_edge [
    i32 -1, label %while.body.cleanup_crit_edge
    i32 0, label %if.then4
  ]

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body.if.end12_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then4:                                         ; preds = %while.body
  %8 = ptrtoint ptr %curr_rx_urb_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %curr_rx_urb_idx, align 4
  %inc = add i32 %9, 1
  %10 = ptrtoint ptr %num_rx_urbs to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_rx_urbs, align 4
  %conv = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp7.not = icmp slt i32 %inc, %conv
  %spec.store.select = select i1 %cmp7.not, i32 %inc, i32 0
  %12 = ptrtoint ptr %curr_rx_urb_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.store.select, ptr %curr_rx_urb_idx, align 4
  %13 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %serial, align 4
  %usb.i = getelementptr inbounds %struct.hso_device, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb.i, align 4
  %17 = ptrtoint ptr %in_endp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in_endp.i, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bEndpointAddress.i, align 1
  %21 = and i8 %20, 127
  %and.i = zext i8 %21 to i32
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %16, align 8
  %shl.i.i = shl i32 %23, 8
  %shl1.i.i = shl nuw nsw i32 %and.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or3.i = or i32 %or.i.i, -1073741696
  %24 = ptrtoint ptr %rx_data_length.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %rx_data_length.i, align 4
  %conv4.i = zext i16 %25 to i32
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 8
  %26 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %16, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 10
  %27 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or3.i, ptr %pipe2.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 19
  %28 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv4.i, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 28
  %29 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @hso_std_serial_read_bulk_callback, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 27
  %30 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %serial, ptr %context4.i.i, align 4
  %call5.i = tail call i32 @usb_submit_urb(ptr noundef %6, i32 noundef 2592) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.then4.if.end12_crit_edge, label %do.end.i

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev1.i.i, align 4
  %dev6.i = getelementptr inbounds %struct.usb_device, ptr %32, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.160, i32 noundef %call5.i) #19
  br label %if.end12

if.end12:                                         ; preds = %do.end.i, %if.then4.if.end12_crit_edge, %while.body.if.end12_crit_edge
  %33 = ptrtoint ptr %curr_rx_urb_idx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %curr_rx_urb_idx, align 4
  %arrayidx = getelementptr %struct.hso_serial, ptr %serial, i32 0, i32 27, i32 %34
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 1
  %tobool.not = icmp eq i8 %36, 0
  br i1 %tobool.not, label %if.end12.cleanup_crit_edge, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %if.end12.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intr_callback(ptr nocapture noundef readonly %urb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #16
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15, i32 12, i32 22
  %6 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %do.body, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @handle_usb_error(i32 noundef %3, ptr noundef nonnull @__func__.intr_callback, ptr noundef null)
  br label %cleanup

do.body:                                          ; preds = %if.end
  %7 = load i32, ptr @debug, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.do.end10_crit_edge, label %do.end

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, i32 noundef 1853, ptr noundef nonnull @__func__.intr_callback, i32 noundef 0) #19
  br label %do.end10

do.end10:                                         ; preds = %do.end, %do.body.do.end10_crit_edge
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %8 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_buffer, align 4
  %10 = load i32, ptr @debug, align 4
  %and12 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.end10.for.body.preheader_crit_edge, label %do.end17

do.end10.for.body.preheader_crit_edge:            ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.preheader

do.end17:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %9, align 1
  %conv = zext i8 %12 to i32
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, i32 noundef 1857, ptr noundef nonnull @__func__.intr_callback, i32 noundef %conv) #19
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end17, %do.end10.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0123 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %9, align 1
  %conv24 = zext i8 %14 to i32
  %shl = shl nuw nsw i32 1, %i.0123
  %and25 = and i32 %shl, %conv24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %for.body.for.inc_crit_edge, label %if.then27

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then27:                                        ; preds = %for.body
  %15 = zext i32 %shl to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.215)
  switch i32 %shl, label %sw.default.i.i [
    i32 1, label %if.then27.hso_mux_to_port.exit.i_crit_edge
    i32 2, label %if.then27.hso_mux_to_port.exit.i_crit_edge127
    i32 4, label %if.then27.hso_mux_to_port.exit.i_crit_edge128
    i32 8, label %sw.bb3.i.i
    i32 16, label %sw.bb4.i.i
  ]

if.then27.hso_mux_to_port.exit.i_crit_edge128:    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_mux_to_port.exit.i

if.then27.hso_mux_to_port.exit.i_crit_edge127:    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_mux_to_port.exit.i

if.then27.hso_mux_to_port.exit.i_crit_edge:       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_mux_to_port.exit.i

sw.bb3.i.i:                                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_mux_to_port.exit.i

sw.bb4.i.i:                                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_mux_to_port.exit.i

sw.default.i.i:                                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  br label %hso_mux_to_port.exit.i

hso_mux_to_port.exit.i:                           ; preds = %sw.default.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %if.then27.hso_mux_to_port.exit.i_crit_edge, %if.then27.hso_mux_to_port.exit.i_crit_edge127, %if.then27.hso_mux_to_port.exit.i_crit_edge128
  %result.0.i.i = phi i32 [ 0, %sw.default.i.i ], [ 5, %sw.bb4.i.i ], [ 3, %sw.bb3.i.i ], [ %shl, %if.then27.hso_mux_to_port.exit.i_crit_edge ], [ %shl, %if.then27.hso_mux_to_port.exit.i_crit_edge127 ], [ %shl, %if.then27.hso_mux_to_port.exit.i_crit_edge128 ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %hso_mux_to_port.exit.i
  %i.016.i = phi i32 [ 0, %hso_mux_to_port.exit.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [256 x ptr], ptr @serial_table, i32 0, i32 %i.016.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %shared_int3.i = getelementptr inbounds %struct.hso_serial, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %shared_int3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %shared_int3.i, align 4
  %cmp4.i = icmp eq ptr %21, %1
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %port_spec.i = getelementptr inbounds %struct.hso_device, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %port_spec.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port_spec.i, align 4
  %and.i = and i32 %23, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %result.0.i.i)
  %cmp7.i = icmp eq i32 %and.i, %result.0.i.i
  br i1 %cmp7.i, label %get_serial_by_shared_int_and_type.exit, label %land.lhs.true5.i.for.inc.i_crit_edge

land.lhs.true5.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true5.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.inc.i.for.inc_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

get_serial_by_shared_int_and_type.exit:           ; preds = %land.lhs.true5.i
  %cmp30.not = icmp eq ptr %19, null
  br i1 %cmp30.not, label %get_serial_by_shared_int_and_type.exit.for.inc_crit_edge, label %do.body33

get_serial_by_shared_int_and_type.exit.for.inc_crit_edge: ; preds = %get_serial_by_shared_int_and_type.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

do.body33:                                        ; preds = %get_serial_by_shared_int_and_type.exit
  %24 = load i32, ptr @debug, align 4
  %and34 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body33.do.body46_crit_edge, label %do.end39

do.body33.do.body46_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body46

do.end39:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #18
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, i32 noundef 1866, ptr noundef nonnull @__func__.intr_callback, i32 noundef %i.0123) #19
  br label %do.body46

do.body46:                                        ; preds = %do.end39, %do.body33.do.body46_crit_edge
  %serial_lock = getelementptr inbounds %struct.hso_serial, ptr %19, i32 0, i32 23
  %call51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %serial_lock) #16
  %rx_state = getelementptr inbounds %struct.hso_serial, ptr %19, i32 0, i32 18
  %25 = ptrtoint ptr %rx_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp56 = icmp eq i32 %26, 0
  br i1 %cmp56, label %land.lhs.true, label %do.body46.do.body68_crit_edge

do.body46.do.body68_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body68

land.lhs.true:                                    ; preds = %do.body46
  %count = getelementptr inbounds %struct.hso_serial, ptr %19, i32 0, i32 22, i32 7
  %27 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp58 = icmp sgt i32 %28, 0
  br i1 %cmp58, label %if.then60, label %land.lhs.true.do.body68_crit_edge

land.lhs.true.do.body68_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body68

if.then60:                                        ; preds = %land.lhs.true
  %rx_urb_filled = getelementptr inbounds %struct.hso_serial, ptr %19, i32 0, i32 27
  %29 = ptrtoint ptr %rx_urb_filled to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rx_urb_filled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool61.not = icmp eq i8 %30, 0
  br i1 %tobool61.not, label %if.end.i, label %if.else

if.end.i:                                         ; preds = %if.then60
  %31 = ptrtoint ptr %rx_state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %rx_state, align 4
  %rx_data.i = getelementptr inbounds %struct.hso_serial, ptr %19, i32 0, i32 6
  %32 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_data.i, align 4
  %34 = call ptr @memset(ptr %33, i32 0, i32 1024)
  %num_rx_urbs.i = getelementptr inbounds %struct.hso_serial, ptr %19, i32 0, i32 5
  %35 = ptrtoint ptr %num_rx_urbs.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %num_rx_urbs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp.not.i = icmp eq i8 %36, 1
  %37 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %19, align 4
  br i1 %cmp.not.i, label %if.end3.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %interface.i = getelementptr inbounds %struct.hso_device, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %interface.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %40, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.130) #19
  br label %if.end80

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %port_spec.i115 = getelementptr inbounds %struct.hso_device, ptr %38, i32 0, i32 1
  %41 = ptrtoint ptr %port_spec.i115 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port_spec.i115, align 4
  %43 = trunc i32 %42 to i16
  %conv5.i = and i16 %43, 255
  %rx_urb.i = getelementptr inbounds %struct.hso_serial, ptr %19, i32 0, i32 4
  %44 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rx_urb.i, align 4
  %ctrl_req_rx.i = getelementptr inbounds %struct.hso_serial, ptr %19, i32 0, i32 15
  %46 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_data.i, align 4
  %rx_data_length.i = getelementptr inbounds %struct.hso_serial, ptr %19, i32 0, i32 7
  %48 = ptrtoint ptr %rx_data_length.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %rx_data_length.i, align 4
  %conv9.i = zext i16 %49 to i32
  %call.i = tail call fastcc i32 @mux_device_request(ptr noundef nonnull %19, i8 noundef zeroext 1, i16 noundef zeroext %conv5.i, ptr noundef %45, ptr noundef %ctrl_req_rx.i, ptr noundef %47, i32 noundef %conv9.i) #16
  br label %if.end80

if.else:                                          ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #18
  %50 = ptrtoint ptr %rx_state to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %rx_state, align 4
  br label %if.end80

do.body68:                                        ; preds = %land.lhs.true.do.body68_crit_edge, %do.body46.do.body68_crit_edge
  %51 = load i32, ptr @debug, align 4
  %and69 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %do.body68.if.end80_crit_edge, label %do.end74

do.body68.if.end80_crit_edge:                     ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80

do.end74:                                         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #18
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, i32 noundef 1879, ptr noundef nonnull @__func__.intr_callback, i32 noundef %i.0123) #19
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %do.body68.if.end80_crit_edge, %if.else, %if.end3.i, %do.end.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %serial_lock, i32 noundef %call51) #16
  br label %for.inc

for.inc:                                          ; preds = %if.end80, %get_serial_by_shared_int_and_type.exit.for.inc_crit_edge, %for.inc.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0123, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %shared_intr_urb.i = getelementptr inbounds %struct.hso_shared_int, ptr %1, i32 0, i32 2
  %54 = ptrtoint ptr %shared_intr_urb.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %shared_intr_urb.i, align 4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bEndpointAddress.i, align 1
  %60 = and i8 %59, 127
  %and.i116 = zext i8 %60 to i32
  %61 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %53, align 8
  %shl.i.i = shl i32 %62, 8
  %shl1.i.i = shl nuw nsw i32 %and.i116, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or1.i = or i32 %or.i.i, 1073741952
  %shared_intr_buf.i = getelementptr inbounds %struct.hso_shared_int, ptr %1, i32 0, i32 1
  %63 = ptrtoint ptr %shared_intr_buf.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %shared_intr_buf.i, align 4
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %57, i32 0, i32 5
  %65 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bInterval.i, align 1
  %conv3.i = zext i8 %66 to i32
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %55, i32 0, i32 8
  %67 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %53, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %55, i32 0, i32 10
  %68 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or1.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %55, i32 0, i32 14
  %69 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %64, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %55, i32 0, i32 19
  %70 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %55, i32 0, i32 28
  %71 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @intr_callback, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %55, i32 0, i32 27
  %72 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %1, ptr %context4.i.i, align 4
  %speed.i.i = getelementptr inbounds %struct.usb_device, ptr %53, i32 0, i32 4
  %73 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %74)
  %cmp.i.i = icmp eq i32 %74, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %74)
  %cmp6.i.i = icmp ugt i32 %74, 4
  %or.cond.i.i = or i1 %cmp.i.i, %cmp6.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %for.end.usb_fill_int_urb.exit.i_crit_edge

for.end.usb_fill_int_urb.exit.i_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %usb_fill_int_urb.exit.i

if.then.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %75 = tail call i32 @llvm.smax.i32(i32 %conv3.i, i32 1) #16
  %76 = tail call i32 @llvm.umin.i32(i32 %75, i32 16) #16
  %sub.i.i = add nsw i32 %76, -1
  %shl.i15.i = shl nuw nsw i32 1, %sub.i.i
  br label %usb_fill_int_urb.exit.i

usb_fill_int_urb.exit.i:                          ; preds = %if.then.i.i, %for.end.usb_fill_int_urb.exit.i_crit_edge
  %interval.sink.i.i = phi i32 [ %shl.i15.i, %if.then.i.i ], [ %conv3.i, %for.end.usb_fill_int_urb.exit.i_crit_edge ]
  %77 = getelementptr inbounds %struct.urb, ptr %55, i32 0, i32 25
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %interval.sink.i.i, ptr %77, align 4
  %start_frame.i.i = getelementptr inbounds %struct.urb, ptr %55, i32 0, i32 23
  %79 = ptrtoint ptr %start_frame.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %start_frame.i.i, align 4
  %80 = ptrtoint ptr %shared_intr_urb.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %shared_intr_urb.i, align 4
  %call5.i = tail call i32 @usb_submit_urb(ptr noundef %81, i32 noundef 2592) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i117 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i117, label %usb_fill_int_urb.exit.i.cleanup_crit_edge, label %do.end.i119

usb_fill_int_urb.exit.i.cleanup_crit_edge:        ; preds = %usb_fill_int_urb.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end.i119:                                      ; preds = %usb_fill_int_urb.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i118 = getelementptr inbounds %struct.usb_device, ptr %53, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i118, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.162, i32 noundef %call5.i) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end.i119, %usb_fill_int_urb.exit.i.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tiocmget_intr_callback(ptr nocapture noundef readonly %urb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call fastcc void @handle_usb_error(i32 noundef %3, ptr noundef nonnull @__func__.tiocmget_intr_callback, ptr noundef %5)
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tiocmget5 = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %tiocmget5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tiocmget5, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %do.body

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body:                                          ; preds = %if.end4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %port_spec = getelementptr inbounds %struct.hso_device, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %port_spec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_spec, align 4
  %and = and i32 %11, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and)
  %cmp.not = icmp eq i32 %and, 17
  br i1 %cmp.not, label %do.end19, label %do.body13, !prof !503

do.body13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/hso.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1470, 0\0A.popsection", ""() #16, !srcloc !505
  unreachable

do.end19:                                         ; preds = %do.body
  %usb21 = getelementptr inbounds %struct.hso_device, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %usb21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb21, align 4
  %interface23 = getelementptr inbounds %struct.hso_device, ptr %9, i32 0, i32 7
  %14 = ptrtoint ptr %interface23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %interface23, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bInterfaceNumber, align 2
  %serial_state_notification24 = getelementptr inbounds %struct.hso_tiocmget, ptr %7, i32 0, i32 5
  %20 = ptrtoint ptr %serial_state_notification24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %serial_state_notification24, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %23)
  %cmp26.not = icmp eq i8 %23, -95
  br i1 %cmp26.not, label %lor.lhs.false, label %do.end19.do.end46_crit_edge

do.end19.do.end46_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end46

lor.lhs.false:                                    ; preds = %do.end19
  %bNotification = getelementptr inbounds %struct.hso_serial_state_notification, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %bNotification to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bNotification, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %25)
  %cmp29.not = icmp eq i8 %25, 32
  br i1 %cmp29.not, label %lor.lhs.false31, label %lor.lhs.false.do.end46_crit_edge

lor.lhs.false.do.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end46

lor.lhs.false31:                                  ; preds = %lor.lhs.false
  %wValue = getelementptr inbounds %struct.hso_serial_state_notification, ptr %21, i32 0, i32 2
  %26 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %wValue, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp33.not = icmp eq i16 %27, 0
  br i1 %cmp33.not, label %lor.lhs.false35, label %lor.lhs.false31.do.end46_crit_edge

lor.lhs.false31.do.end46_crit_edge:               ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end46

lor.lhs.false35:                                  ; preds = %lor.lhs.false31
  %wIndex = getelementptr inbounds %struct.hso_serial_state_notification, ptr %21, i32 0, i32 3
  %28 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %wIndex, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %31 = zext i8 %19 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %31)
  %cmp37.not = icmp eq i16 %30, %31
  br i1 %cmp37.not, label %lor.lhs.false39, label %lor.lhs.false35.do.end46_crit_edge

lor.lhs.false35.do.end46_crit_edge:               ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end46

lor.lhs.false39:                                  ; preds = %lor.lhs.false35
  %wLength = getelementptr inbounds %struct.hso_serial_state_notification, ptr %21, i32 0, i32 4
  %32 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %wLength, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %33)
  %cmp41.not = icmp eq i16 %33, 512
  br i1 %cmp41.not, label %if.else, label %lor.lhs.false39.do.end46_crit_edge

lor.lhs.false39.do.end46_crit_edge:               ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end46

do.end46:                                         ; preds = %lor.lhs.false39.do.end46_crit_edge, %lor.lhs.false35.do.end46_crit_edge, %lor.lhs.false31.do.end46_crit_edge, %lor.lhs.false.do.end46_crit_edge, %do.end19.do.end46_crit_edge
  %dev = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.175) #19
  br label %if.end124

if.else:                                          ; preds = %lor.lhs.false39
  %UART_state_bitmap47 = getelementptr inbounds %struct.hso_serial_state_notification, ptr %21, i32 0, i32 5
  %34 = ptrtoint ptr %UART_state_bitmap47 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %UART_state_bitmap47, align 1
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  %prev_UART_state_bitmap48 = getelementptr inbounds %struct.hso_tiocmget, ptr %7, i32 0, i32 6
  %37 = ptrtoint ptr %prev_UART_state_bitmap48 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %prev_UART_state_bitmap48, align 4
  %serial_lock = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 23
  %call54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %serial_lock) #16
  %39 = xor i16 %36, %38
  %40 = and i16 %39, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %cmp63.not = icmp eq i16 %40, 0
  br i1 %cmp63.not, label %if.else.if.end66_crit_edge, label %if.then65

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66

if.then65:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %parity = getelementptr inbounds %struct.hso_tiocmget, ptr %7, i32 0, i32 7, i32 8
  %41 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %parity, align 4
  %inc = add i32 %42, 1
  store i32 %inc, ptr %parity, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.else.if.end66_crit_edge
  %43 = and i16 %39, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp71.not = icmp eq i16 %43, 0
  br i1 %cmp71.not, label %if.end66.if.end76_crit_edge, label %if.then73

if.end66.if.end76_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end76

if.then73:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #18
  %parity74 = getelementptr inbounds %struct.hso_tiocmget, ptr %7, i32 0, i32 7, i32 8
  %44 = ptrtoint ptr %parity74 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %parity74, align 4
  %inc75 = add i32 %45, 1
  store i32 %inc75, ptr %parity74, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %if.end66.if.end76_crit_edge
  %46 = and i16 %39, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp81.not = icmp eq i16 %46, 0
  br i1 %cmp81.not, label %if.end76.if.end85_crit_edge, label %if.then83

if.end76.if.end85_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

if.then83:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  %frame = getelementptr inbounds %struct.hso_tiocmget, ptr %7, i32 0, i32 7, i32 6
  %47 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %frame, align 4
  %inc84 = add i32 %48, 1
  store i32 %inc84, ptr %frame, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end76.if.end85_crit_edge
  %49 = and i16 %36, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool88.not = icmp ne i16 %49, 0
  %50 = and i16 %38, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool91.not = icmp eq i16 %50, 0
  %or.cond = select i1 %tobool88.not, i1 %tobool91.not, i1 false
  br i1 %or.cond, label %if.then92, label %if.end85.if.end94_crit_edge

if.end85.if.end94_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end94

if.then92:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #18
  %rng = getelementptr inbounds %struct.hso_tiocmget, ptr %7, i32 0, i32 7, i32 2
  %51 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rng, align 4
  %inc93 = add i32 %52, 1
  store i32 %inc93, ptr %rng, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end85.if.end94_crit_edge
  %53 = and i16 %39, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp99.not = icmp eq i16 %53, 0
  br i1 %cmp99.not, label %if.end94.if.end103_crit_edge, label %if.then101

if.end94.if.end103_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end103

if.then101:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #18
  %brk = getelementptr inbounds %struct.hso_tiocmget, ptr %7, i32 0, i32 7, i32 9
  %54 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %brk, align 4
  %inc102 = add i32 %55, 1
  store i32 %inc102, ptr %brk, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.end94.if.end103_crit_edge
  %56 = and i16 %39, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp108.not = icmp eq i16 %56, 0
  br i1 %cmp108.not, label %if.end103.if.end112_crit_edge, label %if.then110

if.end103.if.end112_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end112

if.then110:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #18
  %dsr = getelementptr inbounds %struct.hso_tiocmget, ptr %7, i32 0, i32 7, i32 1
  %57 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dsr, align 4
  %inc111 = add i32 %58, 1
  store i32 %inc111, ptr %dsr, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %if.end103.if.end112_crit_edge
  %59 = and i16 %39, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %cmp117.not = icmp eq i16 %59, 0
  br i1 %cmp117.not, label %if.end112.if.end121_crit_edge, label %if.then119

if.end112.if.end121_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end121

if.then119:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #18
  %dcd = getelementptr inbounds %struct.hso_tiocmget, ptr %7, i32 0, i32 7, i32 3
  %60 = ptrtoint ptr %dcd to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dcd, align 4
  %inc120 = add i32 %61, 1
  store i32 %inc120, ptr %dcd, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.end112.if.end121_crit_edge
  %62 = ptrtoint ptr %prev_UART_state_bitmap48 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %36, ptr %prev_UART_state_bitmap48, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %serial_lock, i32 noundef %call54) #16
  %intr_completed = getelementptr inbounds %struct.hso_tiocmget, ptr %7, i32 0, i32 2
  %63 = ptrtoint ptr %intr_completed to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %intr_completed, align 4
  %waitq = getelementptr inbounds %struct.hso_tiocmget, ptr %7, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  br label %if.end124

if.end124:                                        ; preds = %if.end121, %do.end46
  %64 = call ptr @memset(ptr %21, i32 0, i32 10)
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %usb126 = getelementptr inbounds %struct.hso_device, ptr %66, i32 0, i32 6
  %67 = ptrtoint ptr %usb126 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %usb126, align 4
  tail call fastcc void @tiocmget_submit_urb(ptr noundef nonnull %1, ptr noundef nonnull %7, ptr noundef %68)
  br label %cleanup

cleanup:                                          ; preds = %if.end124, %if.end4.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hso_serial_open(ptr noundef %tty, ptr nocapture noundef readnone %filp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @serial_table_lock) #16
  %arrayidx.i = getelementptr [256 x ptr], ptr @serial_table, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %get_serial_by_index.exit.thread, label %get_serial_by_index.exit

get_serial_by_index.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serial_table_lock, i32 noundef %call2.i) #16
  br label %do.end

get_serial_by_index.exit:                         ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serial_table_lock, i32 noundef %call2.i) #16
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %get_serial_by_index.exit.do.end_crit_edge, label %lor.lhs.false

get_serial_by_index.exit.do.end_crit_edge:        ; preds = %get_serial_by_index.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.lhs.false:                                    ; preds = %get_serial_by_index.exit
  %magic = getelementptr inbounds %struct.hso_serial, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1213419313, i32 %7)
  %cmp1.not = icmp eq i32 %7, 1213419313
  br i1 %cmp1.not, label %if.end28, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %get_serial_by_index.exit.do.end_crit_edge, %get_serial_by_index.exit.thread
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1242, i32 noundef 9, ptr noundef null) #16
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %driver_data, align 4
  %9 = load i32, ptr @debug, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %do.end.cleanup_crit_edge, label %do.end22

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end22:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, i32 noundef 1244, ptr noundef nonnull @.str.186) #19
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %mutex = getelementptr inbounds %struct.hso_device, ptr %11, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #16
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  %interface = getelementptr inbounds %struct.hso_device, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %interface, align 4
  %call30 = tail call i32 @usb_autopm_get_interface(ptr noundef %15) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end28.err_out_crit_edge, label %do.body34

if.end28.err_out_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_out

do.body34:                                        ; preds = %if.end28
  %16 = load i32, ptr @debug, align 4
  %and35 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body34.do.end45_crit_edge, label %do.end40

do.body34.do.end45_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end45

do.end40:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #18
  %minor = getelementptr inbounds %struct.hso_serial, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %minor, align 4
  %conv = zext i8 %18 to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, i32 noundef 1253, ptr noundef nonnull @.str.186, i32 noundef %conv) #19
  br label %do.end45

do.end45:                                         ; preds = %do.end40, %do.body34.do.end45_crit_edge
  %driver_data46 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %19 = ptrtoint ptr %driver_data46 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %5, ptr %driver_data46, align 4
  %port = getelementptr inbounds %struct.hso_serial, ptr %5, i32 0, i32 22
  tail call void @tty_port_tty_set(ptr noundef %port, ptr noundef %tty) #16
  %count = getelementptr inbounds %struct.hso_serial, ptr %5, i32 0, i32 22, i32 7
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp50 = icmp eq i32 %21, 0
  br i1 %cmp50, label %if.then52, label %do.body64

if.then52:                                        ; preds = %do.end45
  %rx_state = getelementptr inbounds %struct.hso_serial, ptr %5, i32 0, i32 18
  %22 = ptrtoint ptr %rx_state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %rx_state, align 4
  %23 = ptrtoint ptr %driver_data46 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data46, align 4
  %tobool.not.i111 = icmp eq ptr %24, null
  br i1 %tobool.not.i111, label %do.end.i, label %do.body1.i

do.end.i:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.194) #19
  br label %_hso_serial_set_termios.exit

do.body1.i:                                       ; preds = %if.then52
  %25 = load i32, ptr @debug, align 4
  %and.i = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %do.body1.i.do.end11.i_crit_edge, label %do.end6.i

do.body1.i.do.end11.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end11.i

do.end6.i:                                        ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  %minor.i = getelementptr inbounds %struct.hso_serial, ptr %24, i32 0, i32 2
  %26 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %minor.i, align 4
  %conv.i = zext i8 %27 to i32
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, i32 noundef 1091, ptr noundef nonnull @.str.194, i32 noundef %conv.i) #19
  br label %do.end11.i

do.end11.i:                                       ; preds = %do.end6.i, %do.body1.i.do.end11.i_crit_edge
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %28 = ptrtoint ptr %termios.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %termios.i, align 4
  %and12.i = and i32 %29, -1025
  store i32 %and12.i, ptr %termios.i, align 4
  %c_cflag.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %30 = ptrtoint ptr %c_cflag.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %c_cflag.i, align 4
  %and14.i = and i32 %31, -4416
  %or.i = or i32 %and14.i, 48
  store i32 %or.i, ptr %c_cflag.i, align 4
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef 115200, i32 noundef 115200) #16
  br label %_hso_serial_set_termios.exit

_hso_serial_set_termios.exit:                     ; preds = %do.end11.i, %do.end.i
  %unthrottle_tasklet = getelementptr inbounds %struct.hso_serial, ptr %5, i32 0, i32 28
  tail call void @tasklet_setup(ptr noundef %unthrottle_tasklet, ptr noundef nonnull @hso_unthrottle_tasklet) #16
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %call54 = tail call fastcc i32 @hso_start_serial_device(ptr noundef %33, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 4
  br i1 %tobool55.not, label %if.else, label %if.then56

if.then56:                                        ; preds = %_hso_serial_set_termios.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call58 = tail call fastcc i32 @hso_stop_serial_device(ptr noundef %35)
  %36 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count, align 4
  %dec = add i32 %37, -1
  store i32 %dec, ptr %count, align 4
  br label %if.end76

if.else:                                          ; preds = %_hso_serial_set_termios.exit
  %ref = getelementptr inbounds %struct.hso_device, ptr %35, i32 0, i32 9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #16
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #16, !srcloc !506
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.else.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !507

if.else.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.else
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %39 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %.not.i.i.i.i = icmp sgt i32 %39, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end76_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !503

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end76_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end76

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.else.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.else.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i.i) #16
  br label %if.end76

do.body64:                                        ; preds = %do.end45
  %40 = load i32, ptr @debug, align 4
  %and65 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %do.body64.if.end76_crit_edge, label %do.end70

do.body64.if.end76_crit_edge:                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end76

do.end70:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #18
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, i32 noundef 1275, ptr noundef nonnull @.str.186) #19
  br label %if.end76

if.end76:                                         ; preds = %do.end70, %do.body64.if.end76_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end76_crit_edge, %if.then56
  %result.0 = phi i32 [ %call54, %if.then56 ], [ %call30, %do.end70 ], [ %call30, %do.body64.if.end76_crit_edge ], [ 0, %if.else.i.i.i.i.if.end76_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i ]
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %5, align 4
  %interface78 = getelementptr inbounds %struct.hso_device, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %interface78 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %interface78, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %44) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0)
  %tobool79.not = icmp eq i32 %result.0, 0
  br i1 %tobool79.not, label %if.end76.err_out_crit_edge, label %if.then80

if.end76.err_out_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_out

if.then80:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  %call81 = tail call i32 @hso_serial_tiocmset(ptr noundef %tty, i32 noundef 6, i32 noundef 0)
  br label %err_out

err_out:                                          ; preds = %if.then80, %if.end76.err_out_crit_edge, %if.end28.err_out_crit_edge
  %result.1 = phi i32 [ %call30, %if.end28.err_out_crit_edge ], [ %result.0, %if.then80 ], [ 0, %if.end76.err_out_crit_edge ]
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %5, align 4
  %mutex84 = getelementptr inbounds %struct.hso_device, ptr %46, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %mutex84) #16
  br label %cleanup

cleanup:                                          ; preds = %err_out, %do.end22, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.1, %err_out ], [ -19, %do.end22 ], [ -19, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hso_serial_close(ptr nocapture noundef readonly %tty, ptr nocapture noundef readnone %filp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, i32 noundef 1294, ptr noundef nonnull @.str.199) #19
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %if.end5

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %do.end3
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.hso_device, ptr %4, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #16
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %usb_gone7 = getelementptr inbounds %struct.hso_device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %usb_gone7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %usb_gone7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %if.then9, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %interface = getelementptr inbounds %struct.hso_device, ptr %6, i32 0, i32 7
  %9 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %interface, align 4
  %call11 = tail call i32 @usb_autopm_get_interface(ptr noundef %10) #16
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end5.if.end12_crit_edge
  %count = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 22, i32 7
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp15 = icmp slt i32 %dec, 1
  br i1 %cmp15, label %if.then16, label %if.end12.if.end25_crit_edge

if.end12.if.end25_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

if.then16:                                        ; preds = %if.end12
  %port = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 22
  %13 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %count, align 4
  tail call void @tty_port_tty_set(ptr noundef %port, ptr noundef null) #16
  br i1 %tobool8.not, label %if.then21, label %if.then16.if.end24_crit_edge

if.then16.if.end24_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

if.then21:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call23 = tail call fastcc i32 @hso_stop_serial_device(ptr noundef %15)
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.then16.if.end24_crit_edge
  %unthrottle_tasklet = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 28
  tail call void @tasklet_kill(ptr noundef %unthrottle_tasklet) #16
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end12.if.end25_crit_edge
  br i1 %tobool8.not, label %if.then27, label %if.end25.if.end30_crit_edge

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %interface29 = getelementptr inbounds %struct.hso_device, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %interface29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %interface29, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %19) #16
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end25.if.end30_crit_edge
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %mutex32 = getelementptr inbounds %struct.hso_device, ptr %21, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %mutex32) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end3.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hso_serial_cleanup(ptr nocapture noundef readonly %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ref = getelementptr inbounds %struct.hso_device, ptr %3, i32 0, i32 9
  tail call fastcc void @kref_put(ptr noundef %ref)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hso_serial_write(ptr nocapture noundef readonly %tty, ptr nocapture noundef readonly %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.201) #19
  br label %cleanup

do.body2:                                         ; preds = %entry
  %serial_lock = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 23
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %serial_lock) #16
  %tx_data_length = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %tx_data_length to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tx_data_length, align 4
  %conv11 = zext i16 %3 to i32
  %tx_buffer_count = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %tx_buffer_count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tx_buffer_count, align 4
  %conv12 = zext i16 %5 to i32
  %sub = sub nsw i32 %conv11, %conv12
  %6 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.body2.out_crit_edge, label %if.end16

do.body2.out_crit_edge:                           ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end16:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #18
  %tx_buffer = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_buffer, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %conv12
  %9 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %6)
  %10 = ptrtoint ptr %tx_buffer_count to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tx_buffer_count, align 4
  %12 = trunc i32 %6 to i16
  %conv21 = add i16 %11, %12
  store i16 %conv21, ptr %tx_buffer_count, align 4
  br label %out

out:                                              ; preds = %if.end16, %do.body2.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %serial_lock, i32 noundef %call6) #16
  tail call fastcc void @hso_kick_transmit(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %6, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hso_serial_write_room(ptr nocapture noundef readonly %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %serial_lock = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 23
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %serial_lock) #16
  %tx_data_length = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %tx_data_length to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tx_data_length, align 4
  %conv5 = zext i16 %3 to i32
  %tx_buffer_count = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %tx_buffer_count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tx_buffer_count, align 4
  %conv6 = zext i16 %5 to i32
  %sub = sub nsw i32 %conv5, %conv6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %serial_lock, i32 noundef %call2) #16
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hso_serial_chars_in_buffer(ptr nocapture noundef readonly %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %serial_lock = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 23
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %serial_lock) #16
  %tx_buffer_count = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %tx_buffer_count to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tx_buffer_count, align 4
  %conv6 = zext i16 %3 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %serial_lock, i32 noundef %call3) #16
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv6, %do.body1 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hso_serial_ioctl(ptr nocapture noundef readonly %tty, i32 noundef %cmd, i32 noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202, i32 noundef 1700, ptr noundef nonnull @.str.203, i32 noundef %cmd, i32 noundef %arg) #19
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 21596, i32 %cmd)
  %cond = icmp eq i32 %cmd, 21596
  br i1 %cond, label %sw.bb, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %call7 = tail call fastcc i32 @hso_wait_modem_status(ptr noundef nonnull %1, i32 noundef %arg)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end6.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end3.cleanup_crit_edge ], [ %call7, %sw.bb ], [ -515, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hso_serial_set_termios(ptr noundef %tty, ptr noundef readonly %old) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %old, null
  br i1 %tobool.not, label %entry.do.body9_crit_edge, label %do.body

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body9

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.body9_crit_edge, label %do.end

do.body.do.body9_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %3 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %c_cflag, align 4
  %c_cflag4 = getelementptr inbounds %struct.ktermios, ptr %old, i32 0, i32 2
  %5 = ptrtoint ptr %c_cflag4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %c_cflag4, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205, i32 noundef 1391, ptr noundef nonnull @.str.206, i32 noundef %4, i32 noundef %6) #19
  br label %do.body9

do.body9:                                         ; preds = %do.end, %do.body.do.body9_crit_edge, %entry.do.body9_crit_edge
  %serial_lock = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 23
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %serial_lock) #16
  %count = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 22, i32 7
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool17.not = icmp eq i32 %8, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %do.body9
  %9 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %do.end.i, label %do.body1.i

do.end.i:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.194) #19
  br label %if.end20

do.body1.i:                                       ; preds = %if.then18
  %11 = load i32, ptr @debug, align 4
  %and.i = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %do.body1.i.do.end11.i_crit_edge, label %do.end6.i

do.body1.i.do.end11.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end11.i

do.end6.i:                                        ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  %minor.i = getelementptr inbounds %struct.hso_serial, ptr %10, i32 0, i32 2
  %12 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %minor.i, align 4
  %conv.i = zext i8 %13 to i32
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, i32 noundef 1091, ptr noundef nonnull @.str.194, i32 noundef %conv.i) #19
  br label %do.end11.i

do.end11.i:                                       ; preds = %do.end6.i, %do.body1.i.do.end11.i_crit_edge
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %14 = ptrtoint ptr %termios.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %termios.i, align 4
  %and12.i = and i32 %15, -1025
  store i32 %and12.i, ptr %termios.i, align 4
  %c_cflag.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %16 = ptrtoint ptr %c_cflag.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %c_cflag.i, align 4
  %and14.i = and i32 %17, -4416
  %or.i = or i32 %and14.i, 48
  store i32 %or.i, ptr %c_cflag.i, align 4
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef 115200, i32 noundef 115200) #16
  br label %if.end20

if.else:                                          ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #18
  %termios19 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %18 = call ptr @memcpy(ptr %termios19, ptr %old, i32 44)
  br label %if.end20

if.end20:                                         ; preds = %if.else, %do.end11.i, %do.end.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %serial_lock, i32 noundef %call12) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hso_unthrottle(ptr nocapture noundef readonly %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %state.i = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 28, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_hi_schedule.exit_crit_edge

entry.tasklet_hi_schedule.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %tasklet_hi_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %unthrottle_tasklet = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 28
  tail call void @__tasklet_hi_schedule(ptr noundef %unthrottle_tasklet) #16
  br label %tasklet_hi_schedule.exit

tasklet_hi_schedule.exit:                         ; preds = %if.then.i, %entry.tasklet_hi_schedule.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hso_serial_tiocmget(ptr nocapture noundef readonly %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, i32 noundef 1628, ptr noundef nonnull @.str.208) #19
  br label %cleanup

if.end7:                                          ; preds = %entry
  %serial_lock = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 23
  tail call void @_raw_spin_lock_irq(ptr noundef %serial_lock) #16
  %rts_state = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 19
  %3 = ptrtoint ptr %rts_state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rts_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool8.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool8.not, i32 0, i32 4
  %dtr_state = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %dtr_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dtr_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool10.not = icmp eq i8 %6, 0
  %cond11 = select i1 %tobool10.not, i32 0, i32 2
  %or = or i32 %cond11, %cond
  %tiocmget12 = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 25
  %7 = ptrtoint ptr %tiocmget12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tiocmget12, align 4
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %if.end7.if.end33_crit_edge, label %if.then14

if.end7.if.end33_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %prev_UART_state_bitmap = getelementptr inbounds %struct.hso_tiocmget, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %prev_UART_state_bitmap to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %prev_UART_state_bitmap, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv15 = zext i16 %11 to i32
  %and16 = shl nuw nsw i32 %conv15, 4
  %12 = and i32 %and16, 128
  %13 = or i32 %12, %or
  %and22 = shl nuw nsw i32 %conv15, 6
  %14 = and i32 %and22, 64
  %15 = or i32 %13, %14
  %and28 = shl nuw nsw i32 %conv15, 7
  %16 = and i32 %and28, 256
  %17 = or i32 %15, %16
  br label %if.end33

if.end33:                                         ; preds = %if.then14, %if.end7.if.end33_crit_edge
  %retval1.2 = phi i32 [ %or, %if.end7.if.end33_crit_edge ], [ %17, %if.then14 ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %serial_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.2, %if.end33 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hso_serial_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, i32 noundef 1661, ptr noundef nonnull @.str.209) #19
  br label %cleanup

if.end6:                                          ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %port_spec = getelementptr inbounds %struct.hso_device, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %port_spec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port_spec, align 4
  %and7 = and i32 %6, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and7)
  %cmp.not = icmp eq i32 %and7, 17
  br i1 %cmp.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %interface11 = getelementptr inbounds %struct.hso_device, ptr %4, i32 0, i32 7
  %7 = ptrtoint ptr %interface11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %interface11, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bInterfaceNumber, align 2
  %serial_lock = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 23
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %serial_lock) #16
  %and23 = and i32 %set, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end9.if.end26_crit_edge, label %if.then25

if.end9.if.end26_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.then25:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %rts_state = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %rts_state to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %rts_state, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end9.if.end26_crit_edge
  %and27 = and i32 %set, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end30_crit_edge, label %if.then29

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  %dtr_state = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 20
  %14 = ptrtoint ptr %dtr_state to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %dtr_state, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end26.if.end30_crit_edge
  %and31 = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end35_crit_edge, label %if.then33

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  %rts_state34 = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 19
  %15 = ptrtoint ptr %rts_state34 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %rts_state34, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end30.if.end35_crit_edge
  %and36 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end40_crit_edge, label %if.then38

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  %dtr_state39 = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 20
  %16 = ptrtoint ptr %dtr_state39 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %dtr_state39, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end35.if.end40_crit_edge
  %dtr_state41 = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 20
  %17 = ptrtoint ptr %dtr_state41 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dtr_state41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool42.not = icmp ne i8 %18, 0
  %spec.select = zext i1 %tobool42.not to i32
  %rts_state45 = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 19
  %19 = ptrtoint ptr %rts_state45 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rts_state45, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool46.not = icmp eq i8 %20, 0
  %or48 = or i32 %spec.select, 2
  %val.1 = select i1 %tobool46.not, i32 %spec.select, i32 %or48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %serial_lock, i32 noundef %call18) #16
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %usb = getelementptr inbounds %struct.hso_device, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i = shl i32 %26, 8
  %or55 = or i32 %shl.i, -2147483648
  %conv56 = trunc i32 %val.1 to i16
  %conv57 = zext i8 %12 to i16
  %call58 = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or55, i8 noundef zeroext 34, i8 noundef zeroext 33, i16 noundef zeroext %conv56, i16 noundef zeroext %conv57, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end6.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call58, %if.end40 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hso_get_count(ptr nocapture noundef readonly %tty, ptr nocapture noundef writeonly %icount) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tiocmget1 = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %tiocmget1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tiocmget1, align 4
  %4 = call ptr @memset(ptr %icount, i32 0, i32 80)
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %serial_lock = getelementptr inbounds %struct.hso_serial, ptr %1, i32 0, i32 23
  tail call void @_raw_spin_lock_irq(ptr noundef %serial_lock) #16
  %icount2 = getelementptr inbounds %struct.hso_tiocmget, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %icount2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %cnow.sroa.0.0.copyload = load i32, ptr %icount2, align 4
  %cnow.sroa.5.0.icount2.sroa_idx = getelementptr inbounds %struct.hso_tiocmget, ptr %3, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %cnow.sroa.5.0.icount2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %cnow.sroa.5.0.copyload = load i32, ptr %cnow.sroa.5.0.icount2.sroa_idx, align 4
  %cnow.sroa.6.0.icount2.sroa_idx = getelementptr inbounds %struct.hso_tiocmget, ptr %3, i32 0, i32 7, i32 2
  %7 = ptrtoint ptr %cnow.sroa.6.0.icount2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %cnow.sroa.6.0.copyload = load i32, ptr %cnow.sroa.6.0.icount2.sroa_idx, align 4
  %cnow.sroa.7.0.icount2.sroa_idx = getelementptr inbounds %struct.hso_tiocmget, ptr %3, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %cnow.sroa.7.0.icount2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %cnow.sroa.7.0.copyload = load i32, ptr %cnow.sroa.7.0.icount2.sroa_idx, align 4
  %cnow.sroa.8.0.icount2.sroa_idx = getelementptr inbounds %struct.hso_tiocmget, ptr %3, i32 0, i32 7, i32 4
  %9 = ptrtoint ptr %cnow.sroa.8.0.icount2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %cnow.sroa.8.0.copyload = load i32, ptr %cnow.sroa.8.0.icount2.sroa_idx, align 4
  %cnow.sroa.9.0.icount2.sroa_idx = getelementptr inbounds %struct.hso_tiocmget, ptr %3, i32 0, i32 7, i32 5
  %10 = ptrtoint ptr %cnow.sroa.9.0.icount2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %cnow.sroa.9.0.copyload = load i32, ptr %cnow.sroa.9.0.icount2.sroa_idx, align 4
  %cnow.sroa.10.0.icount2.sroa_idx = getelementptr inbounds %struct.hso_tiocmget, ptr %3, i32 0, i32 7, i32 6
  %11 = ptrtoint ptr %cnow.sroa.10.0.icount2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %cnow.sroa.10.0.copyload = load i32, ptr %cnow.sroa.10.0.icount2.sroa_idx, align 4
  %cnow.sroa.11.0.icount2.sroa_idx = getelementptr inbounds %struct.hso_tiocmget, ptr %3, i32 0, i32 7, i32 7
  %12 = ptrtoint ptr %cnow.sroa.11.0.icount2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %cnow.sroa.11.0.copyload = load i32, ptr %cnow.sroa.11.0.icount2.sroa_idx, align 4
  %cnow.sroa.12.0.icount2.sroa_idx = getelementptr inbounds %struct.hso_tiocmget, ptr %3, i32 0, i32 7, i32 8
  %13 = ptrtoint ptr %cnow.sroa.12.0.icount2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %cnow.sroa.12.0.copyload = load i32, ptr %cnow.sroa.12.0.icount2.sroa_idx, align 4
  %cnow.sroa.13.0.icount2.sroa_idx = getelementptr inbounds %struct.hso_tiocmget, ptr %3, i32 0, i32 7, i32 9
  %14 = ptrtoint ptr %cnow.sroa.13.0.icount2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %cnow.sroa.13.0.copyload = load i32, ptr %cnow.sroa.13.0.icount2.sroa_idx, align 4
  %cnow.sroa.14.0.icount2.sroa_idx = getelementptr inbounds %struct.hso_tiocmget, ptr %3, i32 0, i32 7, i32 10
  %15 = ptrtoint ptr %cnow.sroa.14.0.icount2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %cnow.sroa.14.0.copyload = load i32, ptr %cnow.sroa.14.0.icount2.sroa_idx, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %serial_lock) #16
  %16 = ptrtoint ptr %icount to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cnow.sroa.0.0.copyload, ptr %icount, align 4
  %dsr5 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 1
  %17 = ptrtoint ptr %dsr5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cnow.sroa.5.0.copyload, ptr %dsr5, align 4
  %rng6 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 2
  %18 = ptrtoint ptr %rng6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cnow.sroa.6.0.copyload, ptr %rng6, align 4
  %dcd7 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 3
  %19 = ptrtoint ptr %dcd7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cnow.sroa.7.0.copyload, ptr %dcd7, align 4
  %rx8 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 4
  %20 = ptrtoint ptr %rx8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cnow.sroa.8.0.copyload, ptr %rx8, align 4
  %tx9 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 5
  %21 = ptrtoint ptr %tx9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cnow.sroa.9.0.copyload, ptr %tx9, align 4
  %frame10 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 6
  %22 = ptrtoint ptr %frame10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cnow.sroa.10.0.copyload, ptr %frame10, align 4
  %overrun11 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 7
  %23 = ptrtoint ptr %overrun11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cnow.sroa.11.0.copyload, ptr %overrun11, align 4
  %parity12 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 8
  %24 = ptrtoint ptr %parity12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cnow.sroa.12.0.copyload, ptr %parity12, align 4
  %brk13 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 9
  %25 = ptrtoint ptr %brk13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cnow.sroa.13.0.copyload, ptr %brk13, align 4
  %buf_overrun14 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 10
  %26 = ptrtoint ptr %buf_overrun14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cnow.sroa.14.0.copyload, ptr %buf_overrun14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hso_unthrottle_tasklet(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -728
  %serial_lock = getelementptr i8, ptr %t, i32 -60
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %serial_lock) #16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %port_spec = getelementptr inbounds %struct.hso_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port_spec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_spec, align 4
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @put_rxbuf_data_and_resubmit_ctrl_urb(ptr noundef %add.ptr)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @put_rxbuf_data_and_resubmit_bulk_urb(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %serial_lock, i32 noundef %call3) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hso_wait_modem_status(ptr noundef %serial, i32 noundef %arg) #3 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #16
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !490) #16
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %tiocmget2 = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 25
  %13 = ptrtoint ptr %tiocmget2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tiocmget2, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %serial_lock = getelementptr inbounds %struct.hso_serial, ptr %serial, i32 0, i32 23
  tail call void @_raw_spin_lock_irq(ptr noundef %serial_lock) #16
  %cprev.sroa.5.0.icount.sroa_idx = getelementptr inbounds %struct.hso_tiocmget, ptr %14, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %cprev.sroa.5.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %cprev.sroa.5.0.copyload = load i32, ptr %cprev.sroa.5.0.icount.sroa_idx, align 4
  %cprev.sroa.7.0.icount.sroa_idx = getelementptr inbounds %struct.hso_tiocmget, ptr %14, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %cprev.sroa.7.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %cprev.sroa.7.0.copyload = load i32, ptr %cprev.sroa.7.0.icount.sroa_idx, align 4
  %cprev.sroa.9.0.icount.sroa_idx = getelementptr inbounds %struct.hso_tiocmget, ptr %14, i32 0, i32 7, i32 3
  %17 = ptrtoint ptr %cprev.sroa.9.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %cprev.sroa.9.0.copyload = load i32, ptr %cprev.sroa.9.0.icount.sroa_idx, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %serial_lock) #16
  %waitq = getelementptr inbounds %struct.hso_tiocmget, ptr %14, i32 0, i32 1
  call void @add_wait_queue(ptr noundef %waitq, ptr noundef nonnull %wait) #16
  %and = and i32 %arg, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool71.not = icmp eq i32 %and, 0
  %and73 = and i32 %arg, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  %and79 = and i32 %arg, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br label %for.cond

for.cond:                                         ; preds = %signal_pending.exit.for.cond_crit_edge, %if.end
  %cprev.sroa.9.0 = phi i32 [ %cprev.sroa.9.0.copyload, %if.end ], [ %cnow.sroa.7.0.copyload, %signal_pending.exit.for.cond_crit_edge ]
  %cprev.sroa.7.0 = phi i32 [ %cprev.sroa.7.0.copyload, %if.end ], [ %cnow.sroa.6.0.copyload, %signal_pending.exit.for.cond_crit_edge ]
  %cprev.sroa.5.0 = phi i32 [ %cprev.sroa.5.0.copyload, %if.end ], [ %cnow.sroa.5.0.copyload, %signal_pending.exit.for.cond_crit_edge ]
  call void @_raw_spin_lock_irq(ptr noundef %serial_lock) #16
  %18 = ptrtoint ptr %cprev.sroa.5.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %cnow.sroa.5.0.copyload = load i32, ptr %cprev.sroa.5.0.icount.sroa_idx, align 4
  %19 = ptrtoint ptr %cprev.sroa.7.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %cnow.sroa.6.0.copyload = load i32, ptr %cprev.sroa.7.0.icount.sroa_idx, align 4
  %20 = ptrtoint ptr %cprev.sroa.9.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %cnow.sroa.7.0.copyload = load i32, ptr %cprev.sroa.9.0.icount.sroa_idx, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %serial_lock) #16
  br label %__here

__here:                                           ; preds = %for.cond
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 212
  %23 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 ptrtoint (ptr blockaddress(@hso_wait_modem_status, %__here) to i32), ptr %task_state_change, align 4
  %24 = load ptr, ptr %task, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 1, ptr %24, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !508
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.6.0.copyload, i32 %cprev.sroa.7.0)
  %cmp.not = icmp eq i32 %cnow.sroa.6.0.copyload, %cprev.sroa.7.0
  %or.cond = select i1 %tobool71.not, i1 true, i1 %cmp.not
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.5.0.copyload, i32 %cprev.sroa.5.0)
  %cmp77.not = icmp eq i32 %cnow.sroa.5.0.copyload, %cprev.sroa.5.0
  %or.cond189 = select i1 %tobool74.not, i1 true, i1 %cmp77.not
  %or.cond193 = select i1 %or.cond, i1 %or.cond189, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.7.0.copyload, i32 %cprev.sroa.9.0)
  %cmp83.not = icmp eq i32 %cnow.sroa.7.0.copyload, %cprev.sroa.9.0
  %or.cond190 = select i1 %tobool80.not, i1 true, i1 %cmp83.not
  %or.cond194 = select i1 %or.cond193, i1 %or.cond190, i1 false
  br i1 %or.cond194, label %if.end85, label %__here.__here142_crit_edge

__here.__here142_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here142

if.end85:                                         ; preds = %__here
  call void @schedule() #16
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stack.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %32 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end85.__here142_crit_edge, !prof !503

if.end85.__here142_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here142

signal_pending.exit:                              ; preds = %if.end85
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %29, align 4
  %and1.i.i.i.i.i = and i32 %34, 1
  %tobool89.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool89.not, label %signal_pending.exit.for.cond_crit_edge, label %signal_pending.exit.__here142_crit_edge

signal_pending.exit.__here142_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here142

signal_pending.exit.for.cond_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

__here142:                                        ; preds = %signal_pending.exit.__here142_crit_edge, %if.end85.__here142_crit_edge, %__here.__here142_crit_edge
  %ret.0 = phi i32 [ 0, %__here.__here142_crit_edge ], [ -512, %signal_pending.exit.__here142_crit_edge ], [ -512, %if.end85.__here142_crit_edge ]
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %task_state_change146 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 212
  %37 = ptrtoint ptr %task_state_change146 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 ptrtoint (ptr blockaddress(@hso_wait_modem_status, %__here142) to i32), ptr %task_state_change146, align 4
  %38 = load ptr, ptr %task, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 0, ptr %38, align 128
  call void @remove_wait_queue(ptr noundef %waitq, ptr noundef nonnull %wait) #16
  br label %cleanup

cleanup:                                          ; preds = %__here142, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %__here142 ], [ -2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias nocapture readonly) local_unnamed_addr #14

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 251)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 251)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind readonly }
attributes #14 = { argmemonly nofree nounwind willreturn }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nobuiltin }
attributes #23 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !22, !24, !26, !27, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !50, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !87, !88, !90, !91, !93, !95, !96, !97, !98, !100, !101, !102, !103, !104, !106, !108, !109, !110, !112, !113, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !135, !136, !137, !139, !141, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !173, !174, !176, !177, !178, !180, !181, !182, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !220, !221, !222, !224, !226, !228, !230, !231, !232, !233, !235, !237, !238, !239, !240, !242, !243, !245, !246, !248, !249, !250, !251, !253, !254, !256, !258, !259, !261, !263, !264, !266, !268, !270, !271, !272, !273, !275, !276, !277, !278, !279, !281, !282, !283, !285, !287, !288, !289, !291, !292, !293, !295, !296, !297, !298, !300, !301, !302, !304, !305, !306, !308, !309, !310, !311, !313, !314, !315, !316, !318, !319, !320, !321, !323, !324, !326, !327, !329, !330, !331, !333, !334, !335, !337, !338, !339, !340, !342, !343, !344, !345, !347, !348, !350, !351, !352, !354, !355, !356, !358, !359, !360, !361, !363, !364, !366, !367, !368, !370, !371, !372, !373, !375, !376, !377, !378, !380, !382, !383, !384, !386, !387, !388, !390, !391, !392, !394, !395, !396, !398, !399, !400, !401, !403, !405, !406, !407, !409, !411, !413, !415, !416, !417, !418, !420, !421, !422, !424, !425, !426, !428, !430, !432, !434, !435, !436, !437, !439, !440, !441, !443, !444, !445, !447, !448, !449, !450, !452, !453, !454, !456, !457, !458, !459, !461, !462, !463, !464, !466, !467, !468, !469, !471, !473, !475, !476, !477, !478, !480, !481, !482, !483, !485, !486, !487, !488, !489}
!llvm.named.register.sp = !{!490}
!llvm.module.flags = !{!491, !492, !493, !494, !495, !496, !497, !498}
!llvm.ident = !{!499}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/hso.c", i32 3293, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hso_exit._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hso_exit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_hso__361_3302_hso_init6, !7, !"__initcall__kmod_hso__361_3302_hso_init6", i1 false, i1 false}
!7 = !{!"../drivers/net/usb/hso.c", i32 3302, i32 1}
!8 = !{ptr @__exitcall_hso_exit, !9, !"__exitcall_hso_exit", i1 false, i1 false}
!9 = !{!"../drivers/net/usb/hso.c", i32 3303, i32 1}
!10 = !{ptr @__UNIQUE_ID_author362, !11, !"__UNIQUE_ID_author362", i1 false, i1 false}
!11 = !{!"../drivers/net/usb/hso.c", i32 3305, i32 1}
!12 = !{ptr @__UNIQUE_ID_description363, !13, !"__UNIQUE_ID_description363", i1 false, i1 false}
!13 = !{!"../drivers/net/usb/hso.c", i32 3306, i32 1}
!14 = !{ptr @__UNIQUE_ID_file364, !15, !"__UNIQUE_ID_file364", i1 false, i1 false}
!15 = !{!"../drivers/net/usb/hso.c", i32 3307, i32 1}
!16 = !{ptr @__UNIQUE_ID_license365, !15, !"__UNIQUE_ID_license365", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_debug366, !18, !"__UNIQUE_ID_debug366", i1 false, i1 false}
!18 = !{!"../drivers/net/usb/hso.c", i32 3310, i32 1}
!19 = !{ptr @__param_debug, !20, !"__param_debug", i1 false, i1 false}
!20 = !{!"../drivers/net/usb/hso.c", i32 3311, i32 1}
!21 = !{ptr @__UNIQUE_ID_debugtype367, !20, !"__UNIQUE_ID_debugtype367", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_tty_major368, !23, !"__UNIQUE_ID_tty_major368", i1 false, i1 false}
!23 = !{!"../drivers/net/usb/hso.c", i32 3314, i32 1}
!24 = !{ptr @__param_tty_major, !25, !"__param_tty_major", i1 false, i1 false}
!25 = !{!"../drivers/net/usb/hso.c", i32 3315, i32 1}
!26 = !{ptr @__UNIQUE_ID_tty_majortype369, !25, !"__UNIQUE_ID_tty_majortype369", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_disable_net370, !28, !"__UNIQUE_ID_disable_net370", i1 false, i1 false}
!28 = !{!"../drivers/net/usb/hso.c", i32 3318, i32 1}
!29 = !{ptr @__param_disable_net, !30, !"__param_disable_net", i1 false, i1 false}
!30 = !{!"../drivers/net/usb/hso.c", i32 3319, i32 1}
!31 = !{ptr @__UNIQUE_ID_disable_nettype371, !30, !"__UNIQUE_ID_disable_nettype371", i1 false, i1 false}
!32 = !{ptr @debug, !33, !"debug", i1 false, i1 false}
!33 = !{!"../drivers/net/usb/hso.c", i32 359, i32 12}
!34 = !{ptr @tty_major, !35, !"tty_major", i1 false, i1 false}
!35 = !{!"../drivers/net/usb/hso.c", i32 360, i32 12}
!36 = !{ptr @disable_net, !37, !"disable_net", i1 false, i1 false}
!37 = !{!"../drivers/net/usb/hso.c", i32 361, i32 12}
!38 = !{ptr @tty_drv, !39, !"tty_drv", i1 false, i1 false}
!39 = !{!"../drivers/net/usb/hso.c", i32 370, i32 27}
!40 = !{ptr @hso_driver, !41, !"hso_driver", i1 false, i1 false}
!41 = !{!"../drivers/net/usb/hso.c", i32 3222, i32 26}
!42 = !{ptr @driver_name, !43, !"driver_name", i1 false, i1 false}
!43 = !{!"../drivers/net/usb/hso.c", i32 364, i32 19}
!44 = !{ptr @.str.3, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/usb/hso.c", i32 2881, i32 3}
!46 = !{ptr @.str.4, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.5, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @hso_probe._entry, !45, !"_entry", i1 false, i1 false}
!50 = !{ptr @hso_probe._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.7, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/usb/hso.c", i32 2493, i32 8}
!53 = !{ptr @.str.8, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/usb/hso.c", i32 2496, i32 3}
!55 = !{ptr @.str.9, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @hso_create_net_device._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @hso_create_net_device._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.11, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/usb/hso.c", i32 2509, i32 3}
!60 = !{ptr @hso_create_net_device._entry.10, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @hso_create_net_device._entry_ptr.12, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.14, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/usb/hso.c", i32 2515, i32 3}
!64 = !{ptr @hso_create_net_device._entry.13, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @hso_create_net_device._entry_ptr.15, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/usb/hso.c", i32 2540, i32 3}
!68 = !{ptr @hso_create_net_device._entry.16, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @hso_create_net_device._entry_ptr.18, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/usb/hso.c", i32 2547, i32 3}
!72 = !{ptr @hso_create_net_device._entry.19, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @hso_create_net_device._entry_ptr.21, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @hso_create_device.__key, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/net/usb/hso.c", i32 2330, i32 2}
!76 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @hso_create_device.__key.23, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/net/usb/hso.c", i32 2332, i32 2}
!79 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @hso_create_device.__key.25, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/net/usb/hso.c", i32 2333, i32 2}
!82 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/usb/hso.c", i32 2396, i32 2}
!85 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @hso_net_init._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @hso_net_init._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @hso_net_init.__key, !89, !"__key", i1 false, i1 false}
!89 = !{!"../drivers/net/usb/hso.c", i32 2408, i32 2}
!90 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @hso_netdev_ops, !92, !"hso_netdev_ops", i1 false, i1 false}
!92 = !{!"../drivers/net/usb/hso.c", i32 2384, i32 36}
!93 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/usb/hso.c", i32 699, i32 3}
!95 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @hso_net_open._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @hso_net_open._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/usb/hso.c", i32 2112, i32 4}
!100 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @hso_start_net_device._entry, !99, !"_entry", i1 false, i1 false}
!103 = !{ptr @hso_start_net_device._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @__func__.read_bulk_callback, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/usb/hso.c", i32 990, i32 28}
!106 = !{ptr @.str.35, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/usb/hso.c", i32 996, i32 3}
!108 = !{ptr @read_bulk_callback._entry, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @read_bulk_callback._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.37, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/usb/hso.c", i32 1036, i32 3}
!112 = !{ptr @read_bulk_callback._entry.36, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @read_bulk_callback._entry_ptr.38, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.39, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/usb/hso.c", i32 649, i32 17}
!116 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/usb/hso.c", i32 652, i32 17}
!118 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/usb/hso.c", i32 655, i32 17}
!120 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/usb/hso.c", i32 658, i32 17}
!122 = !{ptr @.str.43, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/usb/hso.c", i32 661, i32 17}
!124 = !{ptr @.str.44, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/usb/hso.c", i32 664, i32 17}
!126 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/usb/hso.c", i32 670, i32 17}
!128 = !{ptr @.str.46, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/usb/hso.c", i32 676, i32 17}
!130 = !{ptr @.str.47, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/usb/hso.c", i32 681, i32 17}
!132 = !{ptr @.str.48, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/usb/hso.c", i32 686, i32 2}
!134 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @handle_usb_error._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @handle_usb_error._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @fix_crc_bug.crc_check, !138, !"crc_check", i1 false, i1 false}
!138 = !{!"../drivers/net/usb/hso.c", i32 969, i32 18}
!139 = !{ptr @.str.50, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/usb/hso.c", i32 848, i32 2}
!141 = !{ptr @.str.51, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @packetizeRx._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @packetizeRx._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.53, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/usb/hso.c", i32 877, i32 6}
!146 = !{ptr @packetizeRx._entry.52, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @packetizeRx._entry_ptr.54, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.56, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/usb/hso.c", i32 888, i32 6}
!150 = !{ptr @packetizeRx._entry.55, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @packetizeRx._entry_ptr.57, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.59, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/usb/hso.c", i32 947, i32 4}
!154 = !{ptr @packetizeRx._entry.58, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @packetizeRx._entry_ptr.60, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.62, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/usb/hso.c", i32 951, i32 4}
!158 = !{ptr @packetizeRx._entry.61, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @packetizeRx._entry_ptr.63, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.64, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/usb/hso.c", i32 786, i32 2}
!162 = !{ptr @.str.65, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @hso_net_start_xmit._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @hso_net_start_xmit._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.67, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/usb/hso.c", i32 803, i32 3}
!167 = !{ptr @hso_net_start_xmit._entry.66, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @hso_net_start_xmit._entry_ptr.68, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.69, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/usb/hso.c", i32 746, i32 3}
!171 = !{ptr @.str.70, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @write_bulk_callback._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @write_bulk_callback._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.72, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/usb/hso.c", i32 752, i32 3}
!176 = !{ptr @write_bulk_callback._entry.71, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @write_bulk_callback._entry_ptr.73, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.74, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/usb/hso.c", i32 829, i32 2}
!180 = !{ptr @.str.75, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @hso_net_tx_timeout._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @hso_net_tx_timeout._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @ops, !184, !"ops", i1 false, i1 false}
!184 = !{!"../drivers/net/usb/hso.c", i32 816, i32 33}
!185 = !{ptr @.str.76, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/usb/hso.c", i32 2475, i32 10}
!187 = !{ptr @hso_type, !188, !"hso_type", i1 false, i1 false}
!188 = !{!"../drivers/net/usb/hso.c", i32 2474, i32 27}
!189 = !{ptr @network_table, !190, !"network_table", i1 false, i1 false}
!190 = !{!"../drivers/net/usb/hso.c", i32 372, i32 27}
!191 = !{ptr @.str.77, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/usb/hso.c", i32 2044, i32 15}
!193 = !{ptr @.str.78, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/usb/hso.c", i32 2047, i32 15}
!195 = !{ptr @.str.79, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/usb/hso.c", i32 2050, i32 15}
!197 = !{ptr @.str.80, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/usb/hso.c", i32 2053, i32 15}
!199 = !{ptr @.str.81, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/usb/hso.c", i32 2056, i32 15}
!201 = !{ptr @.str.82, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/usb/hso.c", i32 2059, i32 15}
!203 = !{ptr @.str.83, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/usb/hso.c", i32 2062, i32 15}
!205 = !{ptr @.str.84, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/usb/hso.c", i32 2065, i32 15}
!207 = !{ptr @.str.85, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/usb/hso.c", i32 2068, i32 15}
!209 = !{ptr @.str.86, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/usb/hso.c", i32 2071, i32 15}
!211 = !{ptr @.str.87, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/usb/hso.c", i32 2074, i32 15}
!213 = distinct !{null, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/usb/hso.c", i32 2078, i32 21}
!215 = !{ptr @.str.89, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/usb/hso.c", i32 2080, i32 21}
!217 = !{ptr @.str.90, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/usb/hso.c", i32 2083, i32 2}
!219 = !{ptr @.str.91, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.92, !218, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @hso_log_port.__UNIQUE_ID_ddebug359, !218, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!222 = !{ptr @tty_filename, !223, !"tty_filename", i1 false, i1 false}
!223 = !{!"../drivers/net/usb/hso.c", i32 365, i32 19}
!224 = !{ptr @hso_create_rfkill.rfkill_counter, !225, !"rfkill_counter", i1 false, i1 false}
!225 = !{!"../drivers/net/usb/hso.c", i32 2454, i32 13}
!226 = !{ptr @.str.93, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/usb/hso.c", i32 2456, i32 49}
!228 = !{ptr @.str.94, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/usb/hso.c", i32 2469, i32 3}
!230 = !{ptr @.str.95, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @hso_create_rfkill._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @hso_create_rfkill._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @hso_rfkill_ops, !234, !"hso_rfkill_ops", i1 false, i1 false}
!234 = !{!"../drivers/net/usb/hso.c", i32 2444, i32 32}
!235 = !{ptr @.str.96, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/usb/hso.c", i32 2772, i32 3}
!237 = !{ptr @.str.97, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @hso_create_shared_int._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @hso_create_shared_int._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @hso_create_shared_int.__key, !241, !"__key", i1 false, i1 false}
!241 = !{!"../drivers/net/usb/hso.c", i32 2785, i32 2}
!242 = !{ptr @.str.98, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @hso_serial_common_create.__key, !244, !"__key", i1 false, i1 false}
!244 = !{!"../drivers/net/usb/hso.c", i32 2271, i32 2}
!245 = !{ptr @.str.99, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.100, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/usb/hso.c", i32 629, i32 2}
!248 = !{ptr @.str.101, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @obtain_minor._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @obtain_minor._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.102, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/usb/hso.c", i32 373, i32 8}
!253 = !{ptr @serial_table_lock, !252, !"serial_table_lock", i1 false, i1 false}
!254 = !{ptr @serial_table, !255, !"serial_table", i1 false, i1 false}
!255 = !{!"../drivers/net/usb/hso.c", i32 371, i32 27}
!256 = !{ptr @hso_serial_dev_groups, !257, !"hso_serial_dev_groups", i1 false, i1 false}
!257 = !{!"../drivers/net/usb/hso.c", i32 514, i32 1}
!258 = !{ptr @hso_serial_dev_group, !257, !"hso_serial_dev_group", i1 false, i1 false}
!259 = !{ptr @hso_serial_dev_attrs, !260, !"hso_serial_dev_attrs", i1 false, i1 false}
!260 = !{!"../drivers/net/usb/hso.c", i32 509, i32 26}
!261 = !{ptr @.str.103, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/usb/hso.c", i32 507, i32 8}
!263 = !{ptr @dev_attr_hsotype, !262, !"dev_attr_hsotype", i1 false, i1 false}
!264 = !{ptr @.str.104, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/usb/hso.c", i32 483, i32 15}
!266 = !{ptr @.str.105, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/usb/hso.c", i32 505, i32 22}
!268 = !{ptr @.str.106, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/usb/hso.c", i32 1759, i32 3}
!270 = !{ptr @.str.107, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @mux_device_request._entry, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @mux_device_request._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.109, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/usb/hso.c", i32 1784, i32 2}
!275 = !{ptr @mux_device_request._entry.108, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @mux_device_request._entry_ptr.110, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.111, !274, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @.str.112, !274, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @.str.114, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/usb/hso.c", i32 1798, i32 3}
!281 = !{ptr @mux_device_request._entry.113, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @mux_device_request._entry_ptr.115, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @__func__.ctrl_callback, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/usb/hso.c", i32 1971, i32 28}
!285 = !{ptr @.str.116, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/usb/hso.c", i32 1977, i32 2}
!287 = !{ptr @ctrl_callback._entry, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @ctrl_callback._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.118, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/usb/hso.c", i32 1978, i32 2}
!291 = !{ptr @ctrl_callback._entry.117, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @ctrl_callback._entry_ptr.119, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.120, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/usb/hso.c", i32 2004, i32 3}
!295 = !{ptr @.str.121, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @put_rxbuf_data._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @put_rxbuf_data._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.123, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/usb/hso.c", i32 2016, i32 2}
!300 = !{ptr @put_rxbuf_data._entry.122, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @put_rxbuf_data._entry_ptr.124, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.126, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/usb/hso.c", i32 2023, i32 3}
!304 = !{ptr @put_rxbuf_data._entry.125, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @put_rxbuf_data._entry_ptr.127, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.128, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/usb/hso.c", i32 523, i32 2}
!308 = !{ptr @.str.129, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @hso_urb_to_index._entry, !307, !"_entry", i1 false, i1 false}
!310 = !{ptr @hso_urb_to_index._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.130, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/usb/hso.c", i32 1819, i32 3}
!313 = !{ptr @.str.131, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @hso_mux_serial_read._entry, !312, !"_entry", i1 false, i1 false}
!315 = !{ptr @hso_mux_serial_read._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.132, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/usb/hso.c", i32 2649, i32 4}
!318 = !{ptr @.str.133, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @hso_create_bulk_serial_device._entry, !317, !"_entry", i1 false, i1 false}
!320 = !{ptr @hso_create_bulk_serial_device._entry_ptr, !317, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @hso_create_bulk_serial_device.__key, !322, !"__key", i1 false, i1 false}
!322 = !{!"../drivers/net/usb/hso.c", i32 2657, i32 3}
!323 = !{ptr @.str.134, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @hso_create_bulk_serial_device.__key.135, !325, !"__key", i1 false, i1 false}
!325 = !{!"../drivers/net/usb/hso.c", i32 2658, i32 3}
!326 = !{ptr @.str.136, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @.str.138, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/usb/hso.c", i32 2670, i32 3}
!329 = !{ptr @hso_create_bulk_serial_device._entry.137, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @hso_create_bulk_serial_device._entry_ptr.139, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.141, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/net/usb/hso.c", i32 2677, i32 3}
!333 = !{ptr @hso_create_bulk_serial_device._entry.140, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @hso_create_bulk_serial_device._entry_ptr.142, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.143, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/usb/hso.c", i32 1947, i32 3}
!337 = !{ptr @.str.144, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @hso_std_serial_write_data._entry, !336, !"_entry", i1 false, i1 false}
!339 = !{ptr @hso_std_serial_write_data._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.145, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/usb/hso.c", i32 1913, i32 3}
!342 = !{ptr @.str.146, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @hso_std_serial_write_bulk_callback._entry, !341, !"_entry", i1 false, i1 false}
!344 = !{ptr @hso_std_serial_write_bulk_callback._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @hso_std_serial_write_bulk_callback._entry.147, !346, !"_entry", i1 false, i1 false}
!346 = !{!"../drivers/net/usb/hso.c", i32 1928, i32 2}
!347 = !{ptr @hso_std_serial_write_bulk_callback._entry_ptr.148, !346, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.149, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/usb/hso.c", i32 3079, i32 6}
!350 = !{ptr @.str.150, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @hso_resume.__UNIQUE_ID_ddebug360, !349, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!352 = !{ptr @.str.151, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/usb/hso.c", i32 2163, i32 5}
!354 = !{ptr @hso_start_serial_device._entry, !353, !"_entry", i1 false, i1 false}
!355 = !{ptr @hso_start_serial_device._entry_ptr, !353, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.152, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/usb/hso.c", i32 1181, i32 2}
!358 = !{ptr @.str.153, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @hso_std_serial_read_bulk_callback._entry, !357, !"_entry", i1 false, i1 false}
!360 = !{ptr @hso_std_serial_read_bulk_callback._entry_ptr, !357, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @hso_std_serial_read_bulk_callback._entry.154, !362, !"_entry", i1 false, i1 false}
!362 = !{!"../drivers/net/usb/hso.c", i32 1185, i32 3}
!363 = !{ptr @hso_std_serial_read_bulk_callback._entry_ptr.155, !362, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.157, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/usb/hso.c", i32 1193, i32 2}
!366 = !{ptr @hso_std_serial_read_bulk_callback._entry.156, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @hso_std_serial_read_bulk_callback._entry_ptr.158, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.159, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/usb/hso.c", i32 1125, i32 3}
!370 = !{ptr @.str.160, !369, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @hso_resubmit_rx_bulk_urb._entry, !369, !"_entry", i1 false, i1 false}
!372 = !{ptr @hso_resubmit_rx_bulk_urb._entry_ptr, !369, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.161, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/net/usb/hso.c", i32 3200, i32 3}
!375 = !{ptr @.str.162, !374, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @hso_mux_submit_intr_urb._entry, !374, !"_entry", i1 false, i1 false}
!377 = !{ptr @hso_mux_submit_intr_urb._entry_ptr, !374, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @__func__.intr_callback, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/usb/hso.c", i32 1850, i32 28}
!380 = !{ptr @.str.163, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/net/usb/hso.c", i32 1853, i32 2}
!382 = !{ptr @intr_callback._entry, !381, !"_entry", i1 false, i1 false}
!383 = !{ptr @intr_callback._entry_ptr, !381, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.165, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/net/usb/hso.c", i32 1857, i32 2}
!386 = !{ptr @intr_callback._entry.164, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @intr_callback._entry_ptr.166, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.168, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/net/usb/hso.c", i32 1865, i32 5}
!390 = !{ptr @intr_callback._entry.167, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @intr_callback._entry_ptr.169, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.171, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/net/usb/hso.c", i32 1878, i32 6}
!394 = !{ptr @intr_callback._entry.170, !393, !"_entry", i1 false, i1 false}
!395 = !{ptr @intr_callback._entry_ptr.172, !393, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @.str.173, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/net/usb/hso.c", i32 1439, i32 3}
!398 = !{ptr @.str.174, !397, !"<string literal>", i1 false, i1 false}
!399 = !{ptr @tiocmget_submit_urb._entry, !397, !"_entry", i1 false, i1 false}
!400 = !{ptr @tiocmget_submit_urb._entry_ptr, !397, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @__func__.tiocmget_intr_callback, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/usb/hso.c", i32 1462, i32 28}
!403 = !{ptr @.str.175, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/usb/hso.c", i32 1486, i32 3}
!405 = !{ptr @tiocmget_intr_callback._entry, !404, !"_entry", i1 false, i1 false}
!406 = !{ptr @tiocmget_intr_callback._entry_ptr, !404, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @hso_ids, !408, !"hso_ids", i1 false, i1 false}
!408 = !{!"../drivers/net/usb/hso.c", i32 399, i32 35}
!409 = !{ptr @default_port_spec, !410, !"default_port_spec", i1 false, i1 false}
!410 = !{!"../drivers/net/usb/hso.c", i32 375, i32 18}
!411 = !{ptr @icon321_port_spec, !412, !"icon321_port_spec", i1 false, i1 false}
!412 = !{!"../drivers/net/usb/hso.c", i32 382, i32 18}
!413 = !{ptr @.str.176, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/net/usb/hso.c", i32 3240, i32 2}
!415 = !{ptr @.str.177, !414, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @hso_init._entry, !414, !"_entry", i1 false, i1 false}
!417 = !{ptr @hso_init._entry_ptr, !414, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @.str.179, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/net/usb/hso.c", i32 3270, i32 3}
!420 = !{ptr @hso_init._entry.178, !419, !"_entry", i1 false, i1 false}
!421 = !{ptr @hso_init._entry_ptr.180, !419, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.182, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/net/usb/hso.c", i32 3278, i32 3}
!424 = !{ptr @hso_init._entry.181, !423, !"_entry", i1 false, i1 false}
!425 = !{ptr @hso_init._entry_ptr.183, !423, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.184, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/net/usb/hso.c", i32 366, i32 30}
!428 = distinct !{null, !429, !"version", i1 false, i1 false}
!429 = !{!"../drivers/net/usb/hso.c", i32 366, i32 20}
!430 = !{ptr @hso_serial_ops, !431, !"hso_serial_ops", i1 false, i1 false}
!431 = !{!"../drivers/net/usb/hso.c", i32 3207, i32 36}
!432 = !{ptr @.str.185, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/net/usb/hso.c", i32 1244, i32 3}
!434 = !{ptr @.str.186, !433, !"<string literal>", i1 false, i1 false}
!435 = !{ptr @hso_serial_open._entry, !433, !"_entry", i1 false, i1 false}
!436 = !{ptr @hso_serial_open._entry_ptr, !433, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @.str.188, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/net/usb/hso.c", i32 1253, i32 2}
!439 = !{ptr @hso_serial_open._entry.187, !438, !"_entry", i1 false, i1 false}
!440 = !{ptr @hso_serial_open._entry_ptr.189, !438, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @.str.191, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/net/usb/hso.c", i32 1275, i32 3}
!443 = !{ptr @hso_serial_open._entry.190, !442, !"_entry", i1 false, i1 false}
!444 = !{ptr @hso_serial_open._entry_ptr.192, !442, !"_entry_ptr", i1 false, i1 false}
!445 = !{ptr @.str.193, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/net/usb/hso.c", i32 1087, i32 3}
!447 = !{ptr @.str.194, !446, !"<string literal>", i1 false, i1 false}
!448 = !{ptr @_hso_serial_set_termios._entry, !446, !"_entry", i1 false, i1 false}
!449 = !{ptr @_hso_serial_set_termios._entry_ptr, !446, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @.str.196, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/net/usb/hso.c", i32 1091, i32 2}
!452 = !{ptr @_hso_serial_set_termios._entry.195, !451, !"_entry", i1 false, i1 false}
!453 = !{ptr @_hso_serial_set_termios._entry_ptr.197, !451, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @.str.198, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/net/usb/hso.c", i32 1294, i32 2}
!456 = !{ptr @.str.199, !455, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @hso_serial_close._entry, !455, !"_entry", i1 false, i1 false}
!458 = !{ptr @hso_serial_close._entry_ptr, !455, !"_entry_ptr", i1 false, i1 false}
!459 = !{ptr @.str.200, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/net/usb/hso.c", i32 1334, i32 3}
!461 = !{ptr @.str.201, !460, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @hso_serial_write._entry, !460, !"_entry", i1 false, i1 false}
!463 = !{ptr @hso_serial_write._entry_ptr, !460, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @.str.202, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/net/usb/hso.c", i32 1700, i32 2}
!466 = !{ptr @.str.203, !465, !"<string literal>", i1 false, i1 false}
!467 = !{ptr @hso_serial_ioctl._entry, !465, !"_entry", i1 false, i1 false}
!468 = !{ptr @hso_serial_ioctl._entry_ptr, !465, !"_entry_ptr", i1 false, i1 false}
!469 = distinct !{null, !470, !"__already_done", i1 false, i1 false}
!470 = !{!"../drivers/net/usb/hso.c", i32 1561, i32 3}
!471 = distinct !{null, !472, !"__already_done", i1 false, i1 false}
!472 = !{!"../drivers/net/usb/hso.c", i32 1576, i32 2}
!473 = !{ptr @.str.205, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/net/usb/hso.c", i32 1389, i32 3}
!475 = !{ptr @.str.206, !474, !"<string literal>", i1 false, i1 false}
!476 = !{ptr @hso_serial_set_termios._entry, !474, !"_entry", i1 false, i1 false}
!477 = !{ptr @hso_serial_set_termios._entry_ptr, !474, !"_entry_ptr", i1 false, i1 false}
!478 = !{ptr @.str.207, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/net/usb/hso.c", i32 1628, i32 3}
!480 = !{ptr @.str.208, !479, !"<string literal>", i1 false, i1 false}
!481 = !{ptr @hso_serial_tiocmget._entry, !479, !"_entry", i1 false, i1 false}
!482 = !{ptr @hso_serial_tiocmget._entry_ptr, !479, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @.str.209, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/net/usb/hso.c", i32 1661, i32 3}
!485 = !{ptr @hso_serial_tiocmset._entry, !484, !"_entry", i1 false, i1 false}
!486 = !{ptr @hso_serial_tiocmset._entry_ptr, !484, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @__param_str_debug, !20, !"__param_str_debug", i1 false, i1 false}
!488 = !{ptr @__param_str_tty_major, !25, !"__param_str_tty_major", i1 false, i1 false}
!489 = !{ptr @__param_str_disable_net, !30, !"__param_str_disable_net", i1 false, i1 false}
!490 = !{!"sp"}
!491 = !{i32 1, !"wchar_size", i32 2}
!492 = !{i32 1, !"min_enum_size", i32 4}
!493 = !{i32 8, !"branch-target-enforcement", i32 0}
!494 = !{i32 8, !"sign-return-address", i32 0}
!495 = !{i32 8, !"sign-return-address-all", i32 0}
!496 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!497 = !{i32 7, !"uwtable", i32 1}
!498 = !{i32 7, !"frame-pointer", i32 2}
!499 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!500 = !{i64 2148865303, i64 2148865308, i64 2148865321, i64 2148865365, i64 2148865399, i64 2148865420}
!501 = !{i64 2148489379}
!502 = !{i64 2148403819, i64 2148403851, i64 2148403880, i64 2148403914, i64 2148403945, i64 2148403968}
!503 = !{!"branch_weights", i32 2000, i32 1}
!504 = !{i64 2149705594}
!505 = !{i64 2156897630, i64 2156898117, i64 2156897667, i64 2156897723, i64 2156897757, i64 2156897781, i64 2156897822, i64 2156897843, i64 2156897871, i64 2156897905}
!506 = !{i64 2148401354, i64 2148401386, i64 2148401415, i64 2148401449, i64 2148401480, i64 2148401503}
!507 = !{!"branch_weights", i32 1, i32 2000}
!508 = !{i64 2156907091}
