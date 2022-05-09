; ModuleID = '/llk/IR_all_yes/drivers/net/usb/qmi_wwan.c_pt.bc'
source_filename = "../drivers/net/usb/qmi_wwan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.driver_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usbnet = type { ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.mutex, i8, i8, i8, i16, i16, i8, i32, i32, ptr, i32, %struct.timer_list, ptr, ptr, i32, [5 x i32], i32, i32, i32, %struct.mii_if_info, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, %struct.mutex, %struct.usb_anchor, %struct.tasklet_struct, %struct.work_struct, i32 }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.122, i32 }
%union.anon.122 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.83, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.83 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.usb_cdc_parsed_header = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_cdc_union_desc = type { i8, i8, i8, i8, i8 }
%struct.usb_cdc_ether_desc = type <{ i8, i8, i8, i8, i32, i16, i16, i8 }>
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
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
%struct.qmimux_hdr = type { i8, i8, i16 }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.sockaddr = type { i16, [14 x i8] }

@__initcall__kmod_qmi_wwan__353_1579_qmi_wwan_driver_init6 = internal global ptr @qmi_wwan_driver_init, section ".initcall6.init", align 4
@qmi_wwan_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @qmi_wwan_probe, ptr @qmi_wwan_disconnect, ptr null, ptr @qmi_wwan_suspend, ptr @qmi_wwan_resume, ptr @qmi_wwan_resume, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 96 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_qmi_wwan_driver_exit = internal global ptr @qmi_wwan_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author354 = internal constant [44 x i8] c"qmi_wwan.author=Bj\C3\B8rn Mork <bjorn@mork.no>\00", section ".modinfo", align 1
@__UNIQUE_ID_description355 = internal constant [62 x i8] c"qmi_wwan.description=Qualcomm MSM Interface (QMI) WWAN driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file356 = internal constant [39 x i8] c"qmi_wwan.file=drivers/net/usb/qmi_wwan\00", section ".modinfo", align 1
@__UNIQUE_ID_license357 = internal constant [21 x i8] c"qmi_wwan.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qmi_wwan\00", [23 x i8] zeroinitializer }, align 32
@products = internal constant { [403 x %struct.usb_device_id], [2424 x i8] } { [403 x %struct.usb_device_id] [%struct.usb_device_id { i16 897, i16 4817, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 9, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 897, i16 4817, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 57, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 897, i16 4817, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 105, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 897, i16 8888, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -5, i8 -1, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 897, i16 4817, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 7, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 897, i16 4817, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 17, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 897, i16 4817, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 55, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 897, i16 4817, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 103, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 897, i16 4204, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -16, i8 -1, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 897, i16 4204, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -15, i8 -1, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 5136, i16 -20479, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 5136, i16 -28656, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 5136, i16 -28655, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 16700, i16 -32363, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 16700, i16 -32362, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 16700, i16 -32357, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 5845, i16 25866, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 1008, i16 16925, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 1008, i16 22557, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 7, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 11388, i16 293, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 899, i16 11388, i16 774, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 899, i16 11388, i16 1298, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 899, i16 11388, i16 1568, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 899, i16 11388, i16 2048, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 1032, i16 -5566, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 24577, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 28672, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 28673, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 28674, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 28929, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 28929, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 28929, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 28930, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 28930, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 28930, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -32768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 7, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -32767, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28672, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28669, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28667, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28662, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28661, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28660, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28660, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28660, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28659, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28657, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28657, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28657, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28656, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28656, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28655, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28655, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28639, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28638, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28635, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28634, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28626, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28623, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28622, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28621, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28621, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28621, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28621, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28620, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28620, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28620, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28620, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28620, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 7, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28619, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28618, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28617, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28616, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28613, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 7, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28612, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28611, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28610, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28605, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28602, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28602, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28602, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28601, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28601, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28601, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28600, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28600, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28600, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28600, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 7, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28600, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28596, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28596, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28596, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 7, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28596, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28592, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28590, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28589, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28589, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 7, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28588, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28588, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28587, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28587, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28587, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28587, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28587, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 7, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28586, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28574, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28574, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28574, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28574, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28574, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28574, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 7, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28574, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28574, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28572, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28571, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28571, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 7, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28570, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28570, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28569, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28568, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28568, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28568, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28568, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28568, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28568, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 7, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28567, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28567, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28567, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 7, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28567, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28560, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28560, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28555, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28554, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28554, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28554, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28554, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 7, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28554, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28553, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28553, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28553, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28553, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28552, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28551, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28551, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28551, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28551, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 7, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28551, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28544, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28544, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28544, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 7, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28544, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28541, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28540, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28494, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28147, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28147, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -27099, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 2118, i16 26786, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 2118, i16 26835, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4817, i16 5132, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4817, i16 5292, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5173, i16 2328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5173, i16 2328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5173, i16 2328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5173, i16 12677, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5173, i16 -12015, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5173, i16 -11903, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5173, i16 -11903, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5173, i16 -11903, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5173, i16 -11902, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5173, i16 -11902, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5173, i16 -11887, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5384, i16 4097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 5776, i16 30088, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5848, i16 24579, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5848, i16 24583, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5848, i16 24584, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5848, i16 25216, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5848, i16 28673, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5848, i16 28674, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5848, i16 28675, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5848, i16 28676, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5848, i16 28678, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5848, i16 28682, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5848, i16 29201, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5848, i16 29202, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5848, i16 29203, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5848, i16 29265, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5848, i16 29266, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5848, i16 29267, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 18, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 23, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 25, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 33, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 37, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 49, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 66, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 73, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 82, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 85, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 88, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 99, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 260, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 275, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 280, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 289, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 291, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 292, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 293, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 294, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 304, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 307, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 321, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 343, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 344, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 359, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 360, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 374, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 376, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 401, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 409, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 512, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 599, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 613, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 644, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 806, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 918, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 1042, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 4104, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 4112, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 4114, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 4120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 4129, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 4677, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 4679, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 4690, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 4692, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 4693, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 4693, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 4694, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 4720, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 4725, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 5121, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 5122, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 5156, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 5157, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 5158, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 5160, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 5170, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 5253, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 8194, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 8193, i16 32278, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 8193, i16 32281, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 8193, i16 32309, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 8193, i16 32317, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 8224, i16 8241, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 8224, i16 8243, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 8224, i16 8288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 3901, i16 26786, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4431, i16 26786, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 26786, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 26786, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 19, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 26816, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 26816, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 10, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28644, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28641, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28607, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28607, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 10, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28591, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28589, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28588, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28587, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28586, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28585, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28575, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28573, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28573, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 10, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28559, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28559, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 10, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28551, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28551, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 10, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28549, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28549, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 10, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28527, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 7099, i16 286, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 7099, i16 515, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 9047, i16 513, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 9047, i16 -28672, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 7111, i16 4145, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 7111, i16 4160, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 7111, i16 4176, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 7111, i16 4192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 7111, i16 4208, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 7111, i16 4352, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 7111, i16 4353, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 7111, i16 4608, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 7111, i16 4609, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 7111, i16 4656, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 7111, i16 4704, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 7111, i16 4705, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 7111, i16 6400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 7326, i16 -26623, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 7326, i16 -26621, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 7326, i16 -25855, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 2876, i16 -16384, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 2876, i16 -16383, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 2876, i16 -16382, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 2876, i16 -16380, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 2876, i16 -16379, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 2876, i16 -16374, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 2876, i16 -16373, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 7725, i16 96, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 7725, i16 111, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 7725, i16 83, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 7725, i16 99, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 10, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 7725, i16 130, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 7725, i16 130, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 7725, i16 131, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 7725, i16 176, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 7725, i16 183, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 16700, i16 -32350, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 16700, i16 -32349, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 16700, i16 -32348, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 16700, i16 -32344, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 16700, i16 -32343, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 16700, i16 -32335, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 16700, i16 -32333, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 16700, i16 -32330, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 16700, i16 -32330, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 10, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 16700, i16 -32308, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 16700, i16 -32297, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 16700, i16 -32297, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 16700, i16 -32288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 16700, i16 -32284, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 16700, i16 -32282, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1008, i16 19997, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1008, i16 -25315, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 8926, i16 -28591, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 8926, i16 -28575, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 7694, i16 -28671, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 11388, i16 289, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 11388, i16 401, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 11388, i16 405, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 11388, i16 662, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 11447, i16 260, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32) }, %struct.usb_device_id { i16 1027, i16 1161, i16 -8012, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1161, i16 -8011, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 9874, i16 -28635, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28142, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1008, i16 7965, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1242, i16 9485, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 16700, i16 -32398, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5136, i16 -24575, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5136, i16 -24574, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5136, i16 -24573, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5136, i16 -24572, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5136, i16 -24571, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5136, i16 -24570, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5136, i16 -24569, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 2821, i16 6006, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 6610, i16 -13, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28671, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28670, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28158, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28157, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28126, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28663, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 16700, i16 -32378, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 16700, i16 -32364, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28149, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28123, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28091, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1008, i16 9501, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28139, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28139, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28059, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28107, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28043, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 2800, i16 -32480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 26789, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 26793, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28671, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28670, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28669, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28668, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28667, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28666, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28665, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28664, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28663, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28662, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28655, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5848, i16 -32766, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1478, i16 -28155, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28653, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 1008, i16 14109, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28651, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28647, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 -28645, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 4817, i16 5361, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id { i16 1027, i16 5136, i16 -24543, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qmi_wwan_info to i32) }, %struct.usb_device_id zeroinitializer], [2424 x i8] zeroinitializer }, align 32
@qmi_wwan_probe.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qmi_wwan_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/net/usb/qmi_wwan.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"setting defaults for dynamic device id\0A\00", [56 x i8] zeroinitializer }, align 32
@qmi_wwan_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.6, i32 1536, ptr @qmi_wwan_bind, ptr @qmi_wwan_unbind, ptr null, ptr null, ptr null, ptr @qmi_wwan_manage_power, ptr null, ptr null, ptr @qmi_wwan_rx_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@qmi_wwan_probe.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 1, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Rejecting interface number match for class %02x\0A\00", [47 x i8] zeroinitializer }, align 32
@qmi_wwan_probe.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 1, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Quectel EC20 quirk, skipping interface 0\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WWAN/QMI device\00", [16 x i8] zeroinitializer }, align 32
@qmi_wwan_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 778, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bogus CDC Union: master=%u, slave=%u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qmi_wwan_bind\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qmi_wwan_bind._entry_ptr = internal global ptr @qmi_wwan_bind._entry, section ".printk_index", align 4
@qmi_wwan_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @qmi_wwan_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_change_mtu, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@qmi_wwan_sysfs_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.13, ptr null, ptr null, ptr @qmi_wwan_sysfs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@qmi_wwan_register_subdriver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 716, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"subdriver registration failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qmi_wwan_register_subdriver\00", [36 x i8] zeroinitializer }, align 32
@qmi_wwan_register_subdriver._entry_ptr = internal global ptr @qmi_wwan_register_subdriver._entry, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"qmi\00", [28 x i8] zeroinitializer }, align 32
@qmi_wwan_sysfs_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_raw_ip, ptr @dev_attr_add_mux, ptr @dev_attr_del_mux, ptr @dev_attr_pass_through, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_raw_ip = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @raw_ip_show, ptr @raw_ip_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_add_mux = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @add_mux_show, ptr @add_mux_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_del_mux = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @del_mux_show, ptr @del_mux_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pass_through = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pass_through_show, ptr @pass_through_store }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"raw_ip\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%c\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Cannot clear ip mode on pass through device\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot change a running device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Type change was refused\0A\00", [39 x i8] zeroinitializer }, align 32
@qmi_wwan_netdev_setup.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qmi_wwan_netdev_setup\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mode: raw IP\0A\00", [18 x i8] zeroinitializer }, align 32
@qmi_wwan_netdev_setup.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.21, i8 0, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mode: Ethernet\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"add_mux\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%02x\0A\00", [24 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mux_id already present\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qmimux%d\00", [23 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@qmimux_register_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@qmi_wwan_sysfs_qmimux_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.31, ptr null, ptr null, ptr @qmi_wwan_sysfs_qmimux_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@qmimux_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @qmimux_open, ptr @qmimux_stop, ptr @qmimux_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qmap\00", [27 x i8] zeroinitializer }, align 32
@qmi_wwan_sysfs_qmimux_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_mux_id, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_mux_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mux_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mux_id\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"del_mux\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mux_id not present\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pass_through\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Cannot set pass through mode on non ip device\0A\00", [49 x i8] zeroinitializer }, align 32
@qmi_wwan_manage_power.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qmi_wwan_manage_power\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s() pmcount=%d, on=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@qmi_wwan_info_quirk_dtr = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.6, i32 1536, ptr @qmi_wwan_bind, ptr @qmi_wwan_unbind, ptr null, ptr null, ptr null, ptr @qmi_wwan_manage_power, ptr null, ptr null, ptr @qmi_wwan_rx_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 1 }, [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 96]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 64, i64 96]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"qmi_wwan_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1567, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1579, i32 1 }
@___asan_gen_.48 = private unnamed_addr constant [9 x i8] c"products\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 982, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1505, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"qmi_wwan_info\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 930, i32 33 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1515, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1523, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 931, i32 17 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 775, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant [20 x i8] c"qmi_wwan_netdev_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 641, i32 36 }
@___asan_gen_.90 = private unnamed_addr constant [26 x i8] c"qmi_wwan_sysfs_attr_group\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 533, i32 31 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 716, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 534, i32 10 }
@___asan_gen_.105 = private unnamed_addr constant [21 x i8] c"qmi_wwan_sysfs_attrs\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 525, i32 26 }
@___asan_gen_.108 = private unnamed_addr constant [16 x i8] c"dev_attr_raw_ip\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"dev_attr_add_mux\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"dev_attr_del_mux\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [22 x i8] c"dev_attr_pass_through\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 520, i32 8 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 337, i32 22 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 357, i32 7 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 366, i32 24 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 375, i32 24 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 318, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 325, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 521, i32 8 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 403, i32 8 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 695, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 723, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 427, i32 24 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 250, i32 12 }
@___asan_gen_.165 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 260, i32 20 }
@___asan_gen_.171 = private unnamed_addr constant [33 x i8] c"qmi_wwan_sysfs_qmimux_attr_group\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 239, i32 31 }
@___asan_gen_.174 = private unnamed_addr constant [18 x i8] c"qmimux_netdev_ops\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 119, i32 36 }
@___asan_gen_.178 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 271, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 240, i32 10 }
@___asan_gen_.183 = private unnamed_addr constant [28 x i8] c"qmi_wwan_sysfs_qmimux_attrs\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 234, i32 26 }
@___asan_gen_.186 = private unnamed_addr constant [16 x i8] c"dev_attr_mux_id\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 232, i32 8 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 522, i32 8 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 463, i32 24 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 523, i32 8 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 508, i32 7 }
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 660, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [24 x i8] c"qmi_wwan_info_quirk_dtr\00", align 1
@___asan_gen_.211 = private constant [30 x i8] c"../drivers/net/usb/qmi_wwan.c\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 939, i32 33 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author354, ptr @__UNIQUE_ID_description355, ptr @__UNIQUE_ID_file356, ptr @__UNIQUE_ID_license357, ptr @__exitcall_qmi_wwan_driver_exit, ptr @__initcall__kmod_qmi_wwan__353_1579_qmi_wwan_driver_init6, ptr @qmi_wwan_bind._entry, ptr @qmi_wwan_bind._entry_ptr, ptr @qmi_wwan_driver_exit, ptr @qmi_wwan_register_subdriver._entry, ptr @qmi_wwan_register_subdriver._entry_ptr, ptr @qmi_wwan_driver, ptr @.str, ptr @products, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @qmi_wwan_info, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @qmi_wwan_netdev_ops, ptr @qmi_wwan_sysfs_attr_group, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @qmi_wwan_sysfs_attrs, ptr @dev_attr_raw_ip, ptr @dev_attr_add_mux, ptr @dev_attr_del_mux, ptr @dev_attr_pass_through, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @qmimux_register_device.__key, ptr @.str.29, ptr @qmi_wwan_sysfs_qmimux_attr_group, ptr @qmimux_netdev_ops, ptr @.str.30, ptr @.str.31, ptr @qmi_wwan_sysfs_qmimux_attrs, ptr @dev_attr_mux_id, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @qmi_wwan_info_quirk_dtr], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wwan_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @products to i32), i32 9672, i32 12096, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wwan_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wwan_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wwan_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wwan_sysfs_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wwan_register_subdriver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wwan_sysfs_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_raw_ip to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_add_mux to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_del_mux to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pass_through to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmimux_register_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wwan_sysfs_qmimux_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmimux_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wwan_sysfs_qmimux_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mux_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wwan_info_quirk_dtr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qmi_wwan_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @qmi_wwan_driver, ptr noundef null, ptr noundef nonnull @.str) #15
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qmi_wwan_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @usb_deregister(ptr noundef nonnull @qmi_wwan_driver) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qmi_wwan_probe(ptr noundef %intf, ptr noundef %prod) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %prod, i32 0, i32 12
  %2 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qmi_wwan_probe.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qmi_wwan_probe, %if.then5)) #15
          to label %do.end [label %if.then5], !srcloc !131

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qmi_wwan_probe.__UNIQUE_ID_ddebug350, ptr noundef %dev, ptr noundef nonnull @.str.3) #15
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %4 = ptrtoint ptr %driver_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr @qmi_wwan_info to i32), ptr %driver_info, align 4
  br label %if.end7

if.end7:                                          ; preds = %do.end, %entry.if.end7_crit_edge
  %5 = ptrtoint ptr %prod to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %prod, align 4
  %7 = and i16 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool8.not = icmp eq i16 %7, 0
  br i1 %tobool8.not, label %if.end7.if.end31_crit_edge, label %land.lhs.true

if.end7.if.end31_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end7
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bInterfaceClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp.not = icmp eq i8 %9, -1
  br i1 %cmp.not, label %land.lhs.true.if.end31_crit_edge, label %do.body12

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

do.body12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qmi_wwan_probe.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qmi_wwan_probe, %if.then24)) #15
          to label %cleanup [label %if.then24], !srcloc !131

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #17
  %dev25 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %10 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bInterfaceClass, align 1
  %conv27 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qmi_wwan_probe.__UNIQUE_ID_ddebug351, ptr noundef %dev25, ptr noundef nonnull @.str.4, i32 noundef %conv27) #15
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true.if.end31_crit_edge, %if.end7.if.end31_crit_edge
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i.i, align 8
  %actconfig.i = getelementptr i8, ptr %13, i32 956
  %14 = ptrtoint ptr %actconfig.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %actconfig.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end31.if.end56_crit_edge, label %land.lhs.true.i

if.end31.if.end56_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

land.lhs.true.i:                                  ; preds = %if.end31
  %idVendor.i = getelementptr i8, ptr %13, i32 936
  %16 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %idVendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14843, i16 %17)
  %cmp.i = icmp eq i16 %17, -14843
  br i1 %cmp.i, label %land.lhs.true2.i, label %land.lhs.true.i.if.end56_crit_edge

land.lhs.true.i.if.end56_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %idProduct.i = getelementptr i8, ptr %13, i32 938
  %18 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %idProduct.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5522, i16 %19)
  %cmp5.i = icmp eq i16 %19, 5522
  br i1 %cmp5.i, label %land.lhs.true7.i, label %land.lhs.true2.i.if.end56_crit_edge

land.lhs.true2.i.if.end56_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

land.lhs.true7.i:                                 ; preds = %land.lhs.true2.i
  %bNumInterfaces.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %15, i32 0, i32 3
  %20 = ptrtoint ptr %bNumInterfaces.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bNumInterfaces.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %21)
  %cmp10.i = icmp eq i8 %21, 5
  br i1 %cmp10.i, label %land.lhs.true34, label %land.lhs.true7.i.if.end56_crit_edge

land.lhs.true7.i.if.end56_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

land.lhs.true34:                                  ; preds = %land.lhs.true7.i
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bInterfaceNumber, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp36 = icmp eq i8 %23, 0
  br i1 %cmp36, label %do.body39, label %land.lhs.true34.if.end56_crit_edge

land.lhs.true34.if.end56_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

do.body39:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qmi_wwan_probe.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qmi_wwan_probe, %if.then51)) #15
          to label %cleanup [label %if.then51], !srcloc !131

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #17
  %dev52 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qmi_wwan_probe.__UNIQUE_ID_ddebug352, ptr noundef %dev52, ptr noundef nonnull @.str.5) #15
  br label %cleanup

if.end56:                                         ; preds = %land.lhs.true34.if.end56_crit_edge, %land.lhs.true7.i.if.end56_crit_edge, %land.lhs.true2.i.if.end56_crit_edge, %land.lhs.true.i.if.end56_crit_edge, %if.end31.if.end56_crit_edge
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bNumEndpoints, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp58 = icmp eq i8 %25, 2
  br i1 %cmp58, label %if.end56.cleanup_crit_edge, label %if.end61

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end61:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  %call62 = tail call i32 @usbnet_probe(ptr noundef %intf, ptr noundef %prod) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.end56.cleanup_crit_edge, %if.then51, %do.body39, %if.then24, %do.body12
  %retval.0 = phi i32 [ %call62, %if.end61 ], [ -19, %if.then24 ], [ -19, %if.then51 ], [ -19, %if.end56.cleanup_crit_edge ], [ -19, %do.body12 ], [ -19, %do.body39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qmi_wwan_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  %iter = alloca ptr, align 4
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter) #15
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !132
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #15
  %3 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %list, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %3, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 21, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end15_crit_edge, label %if.then2

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @rtnl_trylock() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %8 = call i32 @llvm.read_register.i32(metadata !121) #15
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stack.i.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %13) #15
  br label %cleanup

if.end7:                                          ; preds = %if.then2
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !133
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.end7.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end7.rcu_read_lock.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end7
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 696, ptr noundef nonnull @.str.25) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end7.rcu_read_lock.exit_crit_edge
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %16 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net, align 4
  %adj_list = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %adj_list, ptr %iter, align 4
  %call9 = call ptr @netdev_upper_get_next_dev_rcu(ptr noundef %17, ptr noundef nonnull %iter) #15
  %tobool10.not36 = icmp eq ptr %call9, null
  br i1 %tobool10.not36, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %qmimux_unregister_device.exit.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %ldev.037 = phi ptr [ %call12, %qmimux_unregister_device.exit.for.body_crit_edge ], [ %call9, %rcu_read_lock.exit.for.body_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %ldev.037, i32 2304
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i.i, align 4
  %21 = getelementptr inbounds %struct.net_device, ptr %ldev.037, i32 0, i32 130
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 64
  call void @free_percpu(ptr noundef %23) #15
  call void @netdev_upper_dev_unlink(ptr noundef %20, ptr noundef nonnull %ldev.037) #15
  call void @unregister_netdevice_queue(ptr noundef nonnull %ldev.037, ptr noundef nonnull %list) #15
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %for.body.qmimux_unregister_device.exit_crit_edge, label %do.body1.i.i

for.body.qmimux_unregister_device.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %qmimux_unregister_device.exit

do.body1.i.i:                                     ; preds = %for.body
  %24 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !134
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 118
  %25 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = call i32 @llvm.read_register.i32(metadata !121) #15
  %and.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %33, %27
  %34 = inttoptr i32 %add.i.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %add13.i.i = add i32 %36, -1
  store i32 %add13.i.i, ptr %34, align 4
  %37 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !135
  %and.i.i.i.i = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !136

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %24) #15, !srcloc !137
  br label %qmimux_unregister_device.exit

qmimux_unregister_device.exit:                    ; preds = %do.end30.i.i, %for.body.qmimux_unregister_device.exit_crit_edge
  %38 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net, align 4
  %call12 = call ptr @netdev_upper_get_next_dev_rcu(ptr noundef %39, ptr noundef nonnull %iter) #15
  %tobool10.not = icmp eq ptr %call12, null
  br i1 %tobool10.not, label %qmimux_unregister_device.exit.for.end_crit_edge, label %qmimux_unregister_device.exit.for.body_crit_edge

qmimux_unregister_device.exit.for.body_crit_edge: ; preds = %qmimux_unregister_device.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

qmimux_unregister_device.exit.for.end_crit_edge:  ; preds = %qmimux_unregister_device.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %qmimux_unregister_device.exit.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i27 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i27, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i30

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i30:                                ; preds = %for.end
  %call1.i28 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %tobool.not.i29 = icmp eq i32 %call1.i28, 0
  br i1 %tobool.not.i29, label %land.lhs.true.i30.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i32

land.lhs.true.i30.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i32:                               ; preds = %land.lhs.true.i30
  %.b4.i31 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i31, label %land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge, label %if.then.i33

land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i32
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i33:                                      ; preds = %land.lhs.true2.i32
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 724, ptr noundef nonnull @.str.26) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i33, %land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i30.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !138
  %40 = call i32 @llvm.read_register.i32(metadata !121) #15
  %and.i.i.i.i.i34 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i34 to ptr
  %preempt_count.i.i.i.i35 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i35, align 4
  %sub.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i35, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  call void @unregister_netdevice_many(ptr noundef nonnull %list) #15
  call void @rtnl_unlock() #15
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 4
  %and14 = and i32 %45, -3
  store i32 %and14, ptr %flags, align 4
  br label %if.end15

if.end15:                                         ; preds = %rcu_read_unlock.exit, %if.end.if.end15_crit_edge
  call void @usbnet_disconnect(ptr noundef %intf) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then5, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qmi_wwan_suspend(ptr noundef %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %data = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 21
  %call2 = tail call i32 @usbnet_suspend(ptr noundef %intf, [1 x i32] %message.coerce) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end:                                           ; preds = %entry
  %control = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 21, i32 3
  %2 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %control, align 4
  %cmp3 = icmp eq ptr %3, %intf
  br i1 %cmp3, label %land.lhs.true, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true.err_crit_edge, label %land.lhs.true4

land.lhs.true.err_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

land.lhs.true4:                                   ; preds = %land.lhs.true
  %suspend = getelementptr inbounds %struct.usb_driver, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %suspend, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %land.lhs.true4.err_crit_edge, label %if.end12

land.lhs.true4.err_crit_edge:                     ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end12:                                         ; preds = %land.lhs.true4
  %call11 = tail call i32 %7(ptr noundef %intf, [1 x i32] %message.coerce) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp13 = icmp slt i32 %call11, 0
  br i1 %cmp13, label %if.then14, label %if.end12.err_crit_edge

if.end12.err_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  %call15 = tail call i32 @usbnet_resume(ptr noundef %intf) #15
  br label %err

err:                                              ; preds = %if.then14, %if.end12.err_crit_edge, %land.lhs.true4.err_crit_edge, %land.lhs.true.err_crit_edge, %if.end.err_crit_edge, %entry.err_crit_edge
  %ret.1 = phi i32 [ %call2, %entry.err_crit_edge ], [ %call11, %if.then14 ], [ %call11, %if.end12.err_crit_edge ], [ %call2, %land.lhs.true4.err_crit_edge ], [ %call2, %land.lhs.true.err_crit_edge ], [ %call2, %if.end.err_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qmi_wwan_resume(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %data = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 21
  %control = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 21, i32 3
  %2 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %control, align 4
  %cmp = icmp eq ptr %3, %intf
  br i1 %cmp, label %land.lhs.true, label %entry.if.end9.thread_crit_edge

entry.if.end9.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9.thread

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true.if.end9.thread_crit_edge, label %land.end

land.lhs.true.if.end9.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9.thread

land.end:                                         ; preds = %land.lhs.true
  %resume = getelementptr inbounds %struct.usb_driver, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resume, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.end.if.end9.thread_crit_edge, label %if.end

land.end.if.end9.thread_crit_edge:                ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9.thread

if.end:                                           ; preds = %land.end
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %resume5 = getelementptr inbounds %struct.usb_driver, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %resume5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resume5, align 4
  %call6 = tail call i32 %11(ptr noundef %intf) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.err_crit_edge, label %if.end9

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end9.thread:                                   ; preds = %land.end.if.end9.thread_crit_edge, %land.lhs.true.if.end9.thread_crit_edge, %entry.if.end9.thread_crit_edge
  %call1031 = tail call i32 @usbnet_resume(ptr noundef %intf) #15
  br label %err

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @usbnet_resume(ptr noundef %intf) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10)
  %cmp11 = icmp sgt i32 %call10, -1
  br i1 %cmp11, label %if.end9.err_crit_edge, label %if.then14

if.end9.err_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %suspend = getelementptr inbounds %struct.usb_driver, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %suspend, align 4
  %call16 = tail call i32 %15(ptr noundef %intf, [1 x i32] [i32 2]) #15
  br label %err

err:                                              ; preds = %if.then14, %if.end9.err_crit_edge, %if.end9.thread, %if.end.err_crit_edge
  %ret.1 = phi i32 [ %call6, %if.end.err_crit_edge ], [ %call10, %if.then14 ], [ %call10, %if.end9.err_crit_edge ], [ %call1031, %if.end9.thread ]
  ret i32 %ret.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qmi_wwan_bind(ptr noundef %dev, ptr noundef %intf) #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  %hdr = alloca %struct.usb_cdc_parsed_header, align 4
  %addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %extra = getelementptr inbounds %struct.usb_host_interface, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extra, align 4
  %extralen = getelementptr inbounds %struct.usb_host_interface, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %extralen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %extralen, align 4
  %driver.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 6
  %6 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 -96
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %hdr) #15
  %8 = call ptr @memset(ptr %hdr, i32 255, i32 60)
  %control = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 3
  %9 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %intf, ptr %control, align 4
  %data4 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 4
  %10 = ptrtoint ptr %data4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %intf, ptr %data4, align 4
  %call5 = call i32 @cdc_parse_cdc_header(ptr noundef nonnull %hdr, ptr noundef %intf, ptr noundef %3, i32 noundef %5) #15
  %11 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdr, align 4
  %usb_cdc_ether_desc = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %hdr, i32 0, i32 6
  %13 = ptrtoint ptr %usb_cdc_ether_desc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_cdc_ether_desc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %if.then

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then:                                          ; preds = %entry
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %bSlaveInterface0 = getelementptr inbounds %struct.usb_cdc_union_desc, ptr %12, i32 0, i32 4
  %17 = ptrtoint ptr %bSlaveInterface0 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bSlaveInterface0, align 1
  %conv = zext i8 %18 to i32
  %call6 = call ptr @usb_ifnum_to_if(ptr noundef %16, i32 noundef %conv) #15
  %19 = ptrtoint ptr %data4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call6, ptr %data4, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bInterfaceNumber, align 1
  %bMasterInterface0 = getelementptr inbounds %struct.usb_cdc_union_desc, ptr %12, i32 0, i32 3
  %22 = ptrtoint ptr %bMasterInterface0 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bMasterInterface0, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp.not = icmp ne i8 %21, %23
  %tobool12.not = icmp eq ptr %call6, null
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %do.end16, label %if.then.if.end23_crit_edge

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

do.end16:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %dev17 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %conv19 = zext i8 %23 to i32
  %24 = ptrtoint ptr %bSlaveInterface0 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bSlaveInterface0, align 1
  %conv21 = zext i8 %25 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.7, i32 noundef %conv19, i32 noundef %conv21) #18
  %26 = ptrtoint ptr %data4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %intf, ptr %data4, align 4
  br label %if.end23

if.end23:                                         ; preds = %do.end16, %if.then.if.end23_crit_edge, %entry.if.end23_crit_edge
  %tobool24.not = icmp eq ptr %14, null
  br i1 %tobool24.not, label %if.end23.if.end32_crit_edge, label %land.lhs.true

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end23
  %wMaxSegmentSize = getelementptr inbounds %struct.usb_cdc_ether_desc, ptr %14, i32 0, i32 5
  %27 = ptrtoint ptr %wMaxSegmentSize to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %wMaxSegmentSize, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool26.not = icmp eq i16 %28, 0
  br i1 %tobool26.not, label %land.lhs.true.if.end32_crit_edge, label %if.then27

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %29 = call i16 @llvm.bswap.i16(i16 %28)
  %conv29 = zext i16 %29 to i32
  %hard_mtu = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 23
  %30 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv29, ptr %hard_mtu, align 4
  %iMACAddress = getelementptr inbounds %struct.usb_cdc_ether_desc, ptr %14, i32 0, i32 3
  %31 = ptrtoint ptr %iMACAddress to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %iMACAddress, align 1
  %conv30 = zext i8 %32 to i32
  %call31 = call i32 @usbnet_get_ethernet_addr(ptr noundef %dev, i32 noundef %conv30) #15
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %land.lhs.true.if.end32_crit_edge, %if.end23.if.end32_crit_edge
  %33 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %control, align 4
  %35 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data4, align 4
  %cmp35.not = icmp eq ptr %34, %36
  br i1 %cmp35.not, label %if.end32.if.end44_crit_edge, label %if.then37

if.end32.if.end44_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then37:                                        ; preds = %if.end32
  %call39 = call i32 @usb_driver_claim_interface(ptr noundef %add.ptr.i, ptr noundef %36, ptr noundef %dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then37.err_crit_edge, label %if.then37.if.end44_crit_edge

if.then37.if.end44_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then37.err_crit_edge:                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end44:                                         ; preds = %if.then37.if.end44_crit_edge, %if.end32.if.end44_crit_edge
  %data.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  %37 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data4, align 4
  %call.i = call i32 @usbnet_get_endpoints(ptr noundef %dev, ptr noundef %38) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end44.land.lhs.true48_crit_edge, label %if.end.i

if.end44.land.lhs.true48_crit_edge:               ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true48

if.end.i:                                         ; preds = %if.end44
  %39 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %control, align 4
  %41 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data4, align 4
  %cmp3.not.i = icmp eq ptr %40, %42
  br i1 %cmp3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur_altsetting.i, align 4
  %endpoint.i = getelementptr inbounds %struct.usb_host_interface, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %endpoint.i, align 4
  %status.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 15
  %47 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %status.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %status7.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 15
  %48 = ptrtoint ptr %status7.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %status7.i, align 4
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %if.end6.i.land.lhs.true48_crit_edge, label %if.end9.i

if.end6.i.land.lhs.true48_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true48

if.end9.i:                                        ; preds = %if.end6.i
  %pmcount.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 1
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pmcount.i, i32 noundef 4) #15
  %50 = ptrtoint ptr %pmcount.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 0, ptr %pmcount.i, align 4
  %51 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %control, align 4
  %53 = ptrtoint ptr %status7.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %status7.i, align 4
  %call12.i = call ptr @usb_cdc_wdm_register(ptr noundef %52, ptr noundef %54, i32 noundef 4096, i32 noundef 2, ptr noundef nonnull @qmi_wwan_cdc_wdm_manage_power) #15
  %cmp.i.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %qmi_wwan_register_subdriver.exit, label %qmi_wwan_register_subdriver.exit.thread157

qmi_wwan_register_subdriver.exit.thread157:       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  %55 = ptrtoint ptr %status7.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %status7.i, align 4
  %56 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call12.i, ptr %data.i, align 4
  br label %if.end56

qmi_wwan_register_subdriver.exit:                 ; preds = %if.end9.i
  %57 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %control, align 4
  %dev16.i = getelementptr inbounds %struct.usb_interface, ptr %58, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i, ptr noundef nonnull @.str.11) #18
  %59 = ptrtoint ptr %call12.i to i32
  %cmp46 = icmp slt ptr %call12.i, null
  br i1 %cmp46, label %qmi_wwan_register_subdriver.exit.land.lhs.true48_crit_edge, label %qmi_wwan_register_subdriver.exit.if.end56_crit_edge

qmi_wwan_register_subdriver.exit.if.end56_crit_edge: ; preds = %qmi_wwan_register_subdriver.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

qmi_wwan_register_subdriver.exit.land.lhs.true48_crit_edge: ; preds = %qmi_wwan_register_subdriver.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true48

land.lhs.true48:                                  ; preds = %qmi_wwan_register_subdriver.exit.land.lhs.true48_crit_edge, %if.end6.i.land.lhs.true48_crit_edge, %if.end44.land.lhs.true48_crit_edge
  %rv.0.i156 = phi i32 [ %59, %qmi_wwan_register_subdriver.exit.land.lhs.true48_crit_edge ], [ -22, %if.end6.i.land.lhs.true48_crit_edge ], [ %call.i, %if.end44.land.lhs.true48_crit_edge ]
  %60 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %control, align 4
  %62 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data4, align 4
  %cmp51.not = icmp eq ptr %61, %63
  br i1 %cmp51.not, label %land.lhs.true48.if.end56_crit_edge, label %if.then53

land.lhs.true48.if.end56_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

if.then53:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #17
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %63, i32 0, i32 7, i32 8
  %64 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %driver_data.i.i, align 4
  %65 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data4, align 4
  call void @usb_driver_release_interface(ptr noundef %add.ptr.i, ptr noundef %66) #15
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %land.lhs.true48.if.end56_crit_edge, %qmi_wwan_register_subdriver.exit.if.end56_crit_edge, %qmi_wwan_register_subdriver.exit.thread157
  %rv.0.i155 = phi i32 [ %rv.0.i156, %if.then53 ], [ %rv.0.i156, %land.lhs.true48.if.end56_crit_edge ], [ %59, %qmi_wwan_register_subdriver.exit.if.end56_crit_edge ], [ %call.i, %qmi_wwan_register_subdriver.exit.thread157 ]
  %driver_info = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 2
  %67 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %driver_info, align 4
  %data57 = getelementptr inbounds %struct.driver_info, ptr %68, i32 0, i32 18
  %69 = ptrtoint ptr %data57 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %data57, align 4
  %and = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool58.not = icmp eq i32 %and, 0
  br i1 %tobool58.not, label %lor.lhs.false59, label %if.end56.if.then64_crit_edge

if.end56.if.then64_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then64

lor.lhs.false59:                                  ; preds = %if.end56
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 4
  %bcdUSB = getelementptr inbounds %struct.usb_device, ptr %72, i32 0, i32 16, i32 2
  %73 = ptrtoint ptr %bcdUSB to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %bcdUSB, align 2
  %75 = call i16 @llvm.bswap.i16(i16 %74)
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %75)
  %cmp62 = icmp ugt i16 %75, 512
  br i1 %cmp62, label %lor.lhs.false59.if.then64_crit_edge, label %lor.lhs.false59.if.end67_crit_edge

lor.lhs.false59.if.end67_crit_edge:               ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67

lor.lhs.false59.if.then64_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then64

if.then64:                                        ; preds = %lor.lhs.false59.if.then64_crit_edge, %if.end56.if.then64_crit_edge
  %call65 = call i32 @qmi_wwan_manage_power(ptr noundef %dev, i32 noundef 1)
  %intf1.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 1
  %76 = ptrtoint ptr %intf1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %intf1.i, align 4
  %cur_altsetting.i143 = getelementptr inbounds %struct.usb_interface, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %cur_altsetting.i143 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cur_altsetting.i143, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv2.i = zext i8 %81 to i16
  %call.i144 = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 34, i8 noundef zeroext 33, i16 noundef zeroext 1, i16 noundef zeroext %conv2.i, ptr noundef null, i16 noundef zeroext 0) #15
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %lor.lhs.false59.if.end67_crit_edge
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %82 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %net, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %83, i32 0, i32 86
  %84 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev_addr, align 64
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %xor.i = xor i32 %87, 38859520
  %add.ptr.i145 = getelementptr i8, ptr %85, i32 4
  %88 = ptrtoint ptr %add.ptr.i145 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %add.ptr.i145, align 2
  %xor3.i = zext i16 %89 to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i146 = icmp eq i32 %or.i, 0
  br i1 %cmp.i146, label %if.end67.if.then75_crit_edge, label %lor.lhs.false70

if.end67.if.then75_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then75

lor.lhs.false70:                                  ; preds = %if.end67
  %xor.i147 = xor i32 %87, 10536448
  %or.i150 = or i32 %xor.i147, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i150)
  %cmp.i151 = icmp eq i32 %or.i150, 0
  br i1 %cmp.i151, label %lor.lhs.false70.if.then75_crit_edge, label %lor.lhs.false70.if.end77_crit_edge

lor.lhs.false70.if.end77_crit_edge:               ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

lor.lhs.false70.if.then75_crit_edge:              ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then75

if.then75:                                        ; preds = %lor.lhs.false70.if.then75_crit_edge, %if.end67.if.then75_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #15
  %90 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #15
  %91 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %addr.i, align 1
  %93 = and i8 %92, -4
  %94 = or i8 %93, 2
  store i8 %94, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %83, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #15
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %83, i32 0, i32 55
  %95 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #15
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %lor.lhs.false70.if.end77_crit_edge
  %96 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %net, align 4
  %dev_addr79 = getelementptr inbounds %struct.net_device, ptr %97, i32 0, i32 86
  %98 = ptrtoint ptr %dev_addr79 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev_addr79, align 64
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %99, align 1
  %102 = and i8 %101, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %102)
  %cmp.i152 = icmp eq i8 %102, 64
  br i1 %cmp.i152, label %if.then81, label %if.end77.if.end90_crit_edge

if.end77.if.end90_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end90

if.then81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr) #15
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %99, align 1
  %105 = and i8 %104, -67
  %106 = or i8 %105, 2
  %107 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %97, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #15
  br label %if.end90

if.end90:                                         ; preds = %if.then81, %if.end77.if.end90_crit_edge
  %108 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %net, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %109, i32 0, i32 16
  %110 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @qmi_wwan_netdev_ops, ptr %netdev_ops, align 8
  %111 = load ptr, ptr %net, align 4
  %sysfs_groups = getelementptr inbounds %struct.net_device, ptr %111, i32 0, i32 134
  %112 = ptrtoint ptr %sysfs_groups to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @qmi_wwan_sysfs_attr_group, ptr %sysfs_groups, align 16
  br label %err

err:                                              ; preds = %if.end90, %if.then37.err_crit_edge
  %status.0 = phi i32 [ %call39, %if.then37.err_crit_edge ], [ %rv.0.i155, %if.end90 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %hdr) #15
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qmi_wwan_unbind(ptr noundef %dev, ptr noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  %driver.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 6
  %0 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -96
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %disconnect = getelementptr inbounds %struct.usb_driver, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disconnect, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %control = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 3
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %control, align 4
  tail call void %5(ptr noundef %7) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %bcdUSB = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 16, i32 2
  %10 = ptrtoint ptr %bcdUSB to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bcdUSB, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %12)
  %cmp = icmp ugt i16 %12, 512
  br i1 %cmp, label %if.then6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %intf1.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 1
  %13 = ptrtoint ptr %intf1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf1.i, align 4
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur_altsetting.i, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv2.i = zext i8 %18 to i16
  %call.i = tail call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 34, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext %conv2.i, ptr noundef null, i16 noundef zeroext 0) #15
  %call8 = tail call i32 @qmi_wwan_manage_power(ptr noundef %dev, i32 noundef 0)
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %control10 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 3
  %19 = ptrtoint ptr %control10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %control10, align 4
  %cmp11 = icmp eq ptr %20, %intf
  br i1 %cmp11, label %if.then13, label %if.end9.if.end16_crit_edge

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %data14 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 4
  %21 = ptrtoint ptr %data14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data14, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end9.if.end16_crit_edge
  %other.0 = phi ptr [ %22, %if.then13 ], [ %20, %if.end9.if.end16_crit_edge ]
  %tobool17.not = icmp eq ptr %other.0, null
  %cmp19.not = icmp eq ptr %other.0, %intf
  %or.cond = or i1 %tobool17.not, %cmp19.not
  br i1 %or.cond, label %if.end16.if.end22_crit_edge, label %if.then21

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %other.0, i32 0, i32 7, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @usb_driver_release_interface(ptr noundef %add.ptr.i, ptr noundef nonnull %other.0) #15
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end16.if.end22_crit_edge
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %data, align 4
  %data24 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 4
  %25 = ptrtoint ptr %data24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %data24, align 4
  %26 = ptrtoint ptr %control10 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %control10, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qmi_wwan_manage_power(ptr noundef %dev, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qmi_wwan_manage_power.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qmi_wwan_manage_power, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !131

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %intf = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %pmcount = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pmcount, i32 noundef 4) #15
  %2 = ptrtoint ptr %pmcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %pmcount, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qmi_wwan_manage_power.__UNIQUE_ID_ddebug348, ptr noundef %dev3, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef %3, i32 noundef %on) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool5.not = icmp eq i32 %on, 0
  %pmcount10 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 1
  %call.i.i31 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pmcount10, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15
  tail call void @llvm.prefetch.p0(ptr %pmcount10, i32 1, i32 3, i32 1) #15
  br i1 %tobool5.not, label %land.lhs.true9.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pmcount10, ptr %pmcount10, i32 1, ptr elementtype(i32) %pmcount10) #15, !srcloc !139
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !140
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i, 1
  br i1 %cmp, label %land.lhs.true.if.then12_crit_edge, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

land.lhs.true.if.then12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12

land.lhs.true9.critedge:                          ; preds = %do.end
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pmcount10, ptr %pmcount10, i32 1, ptr elementtype(i32) %pmcount10) #15, !srcloc !141
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true9.critedge.if.then12_crit_edge, label %land.lhs.true9.critedge.if.end20_crit_edge

land.lhs.true9.critedge.if.end20_crit_edge:       ; preds = %land.lhs.true9.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

land.lhs.true9.critedge.if.then12_crit_edge:      ; preds = %land.lhs.true9.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12

if.then12:                                        ; preds = %land.lhs.true9.critedge.if.then12_crit_edge, %land.lhs.true.if.then12_crit_edge
  %intf13 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %intf13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf13, align 4
  %call14 = tail call i32 @usb_autopm_get_interface(ptr noundef %7) #15
  %8 = ptrtoint ptr %intf13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf13, align 4
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 6
  %10 = trunc i32 %on to i8
  %11 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.value = shl i8 %10, 4
  %bf.shl = and i8 %bf.value, 16
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %needs_remote_wakeup, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool16.not = icmp eq i32 %call14, 0
  br i1 %tobool16.not, label %if.then17, label %if.then12.if.end20_crit_edge

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %intf13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intf13, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %13) #15
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then12.if.end20_crit_edge, %land.lhs.true9.critedge.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qmi_wwan_rx_fixup(ptr nocapture noundef readonly %dev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp = icmp ult i32 %3, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp92.i = icmp ugt i32 %3, 4
  br i1 %cmp92.i, label %while.body.lr.ph.i, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %if.then5
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %while.body.i

while.body.i:                                     ; preds = %skip.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %8 = phi i32 [ %3, %while.body.lr.ph.i ], [ %55, %skip.i.while.body.i_crit_edge ]
  %add94.i = phi i32 [ 4, %while.body.lr.ph.i ], [ %add.i, %skip.i.while.body.i_crit_edge ]
  %offset.093.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add7.i, %skip.i.while.body.i_crit_edge ]
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %offset.093.i
  %pkt_len3.i = getelementptr inbounds %struct.qmimux_hdr, ptr %add.ptr.i, i32 0, i32 2
  %11 = ptrtoint ptr %pkt_len3.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pkt_len3.i, align 2
  %conv4.i = zext i16 %12 to i32
  %add5.i = add i32 %offset.093.i, 4
  %add7.i = add i32 %add5.i, %conv4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i, i32 %8)
  %cmp9.i = icmp ugt i32 %add7.i, %8
  br i1 %cmp9.i, label %while.body.i.cleanup_crit_edge, label %if.end.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %while.body.i
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr.i, align 2
  %conv11.i = zext i8 %14 to i32
  %and.i = and i32 %conv11.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end13.i, label %if.end.i.skip.i_crit_edge

if.end.i.skip.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skip.i

if.end13.i:                                       ; preds = %if.end.i
  %and16.i = and i32 %conv11.i, 63
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp17.i = icmp ne i16 %12, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and16.i, i32 %conv4.i)
  %cmp19.not.i = icmp ult i32 %and16.i, %conv4.i
  %or.cond.i = select i1 %cmp17.i, i1 %cmp19.not.i, i1 false
  br i1 %or.cond.i, label %if.end22.i, label %if.end13.i.skip.i_crit_edge

if.end13.i.skip.i_crit_edge:                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skip.i

if.end22.i:                                       ; preds = %if.end13.i
  %sub.i = sub nsw i32 %conv4.i, %and16.i
  %mux_id.i = getelementptr inbounds %struct.qmimux_hdr, ptr %add.ptr.i, i32 0, i32 1
  %15 = ptrtoint ptr %mux_id.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mux_id.i, align 1
  %call.i = tail call fastcc ptr @qmimux_find_dev(ptr noundef %dev, i8 noundef zeroext %16) #15
  %tobool23.not.i = icmp eq ptr %call.i, null
  br i1 %tobool23.not.i, label %if.end22.i.skip.i_crit_edge, label %if.end25.i

if.end22.i.skip.i_crit_edge:                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skip.i

if.end25.i:                                       ; preds = %if.end22.i
  %add26.i = add nsw i32 %sub.i, 128
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef nonnull %call.i, i32 noundef %add26.i, i32 noundef 2592) #15
  %tobool28.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool28.not.i, label %if.end25.i.cleanup_crit_edge, label %if.end30.i

if.end25.i.cleanup_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end30.i:                                       ; preds = %if.end25.i
  %17 = getelementptr inbounds %struct.anon.44, ptr %call.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %17, align 8
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %20, i32 %add94.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  %23 = and i8 %22, -16
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i8 %23, label %if.end30.i.skip.i_crit_edge [
    i8 64, label %if.end30.i.sw.epilog.i_crit_edge
    i8 96, label %sw.bb36.i
  ]

if.end30.i.sw.epilog.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

if.end30.i.skip.i_crit_edge:                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skip.i

sw.bb36.i:                                        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb36.i, %if.end30.i.sw.epilog.i_crit_edge
  %.sink.i = phi i16 [ -31011, %sw.bb36.i ], [ 2048, %if.end30.i.sw.epilog.i_crit_edge ]
  %protocol37.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %25 = ptrtoint ptr %protocol37.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %.sink.i, ptr %protocol37.i, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %26 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 128
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %28 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %29, i32 128
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %31, i32 4
  %add.ptr41.i = getelementptr i8, ptr %add.ptr39.i, i32 %offset.093.i
  %call.i91.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %sub.i) #15
  %32 = call ptr @memcpy(ptr %call.i91.i, ptr %add.ptr41.i, i32 %sub.i)
  %call43.i = tail call i32 @netif_rx(ptr noundef nonnull %call.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp44.not.i = icmp eq i32 %call43.i, 0
  br i1 %cmp44.not.i, label %if.else.i, label %if.then46.i

if.then46.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 36, i32 4
  %33 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_errors.i, align 8
  %inc.i = add i32 %34, 1
  store i32 %inc.i, ptr %rx_errors.i, align 8
  br label %cleanup

if.else.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  %35 = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 130
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 64
  %38 = ptrtoint ptr %37 to i32
  %39 = tail call i32 @llvm.read_register.i32(metadata !121) #15
  %and.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %44, %38
  %45 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %45, i32 0, i32 4
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i.i) #15
  %conv.i.i = zext i32 %sub.i to i64
  %rx_bytes.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %rx_bytes.i.i, align 8
  %add2.i.i = add i64 %47, %conv.i.i
  store i64 %add2.i.i, ptr %rx_bytes.i.i, align 8
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %45, align 32
  %inc.i.i = add i64 %49, 1
  store i64 %inc.i.i, ptr %45, align 32
  %dep_map.i.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %45, i32 0, i32 4, i32 0, i32 1
  %50 = tail call ptr @llvm.returnaddress(i32 0) #15
  %51 = ptrtoint ptr %50 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %51) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !143
  %52 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %53, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br label %skip.i

skip.i:                                           ; preds = %if.else.i, %if.end30.i.skip.i_crit_edge, %if.end22.i.skip.i_crit_edge, %if.end13.i.skip.i_crit_edge, %if.end.i.skip.i_crit_edge
  %add.i = add i32 %add7.i, 4
  %54 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len, align 4
  %cmp.i = icmp ult i32 %add.i, %55
  br i1 %cmp.i, label %skip.i.while.body.i_crit_edge, label %skip.i.cleanup_crit_edge

skip.i.cleanup_crit_edge:                         ; preds = %skip.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

skip.i.while.body.i_crit_edge:                    ; preds = %skip.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

if.end6:                                          ; preds = %if.end
  %and8 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %56 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 249, ptr %protocol, align 8
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %data12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %57 = ptrtoint ptr %data12 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data12, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 1
  %61 = and i8 %60, -16
  %62 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %61, label %sw.default [
    i8 64, label %if.end11.sw.epilog_crit_edge
    i8 96, label %sw.bb15
    i8 0, label %sw.bb16
  ]

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end11
  br i1 %tobool.not, label %if.end19, label %sw.bb16.cleanup_crit_edge

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end19:                                         ; preds = %sw.bb16
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %58, align 4
  %65 = and i32 %64, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.i.not = icmp eq i32 %65, 0
  br i1 %tobool.i.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %66 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %58 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %67 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %68 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.i, ptr %mac_header.i, align 2
  br label %fix_dest

sw.default:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %69 = xor i32 %and, 1
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb15, %if.end11.sw.epilog_crit_edge
  %proto.0 = phi i16 [ -31011, %sw.bb15 ], [ 2048, %if.end11.sw.epilog_crit_edge ]
  %head.i77 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %70 = ptrtoint ptr %head.i77 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %head.i77, align 8
  %sub.ptr.lhs.cast.i78 = ptrtoint ptr %58 to i32
  %sub.ptr.rhs.cast.i79 = ptrtoint ptr %71 to i32
  %sub.ptr.sub.i80 = sub i32 %sub.ptr.lhs.cast.i78, %sub.ptr.rhs.cast.i79
  br i1 %tobool.not, label %if.end31, label %if.then28

if.then28:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i74 = trunc i32 %sub.ptr.sub.i80 to i16
  %mac_header.i75 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %72 = ptrtoint ptr %mac_header.i75 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv.i74, ptr %mac_header.i75, align 2
  %73 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %net, align 4
  %75 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %74, ptr %75, align 8
  %protocol30 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %77 = ptrtoint ptr %protocol30 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %proto.0, ptr %protocol30, align 8
  br label %cleanup

if.end31:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub.i80)
  %cmp33 = icmp ult i32 %sub.ptr.sub.i80, 14
  br i1 %cmp33, label %if.end31.cleanup_crit_edge, label %if.end36

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  %call37 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 14) #15
  %78 = ptrtoint ptr %data12 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data12, align 4
  %80 = ptrtoint ptr %head.i77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %head.i77, align 8
  %sub.ptr.lhs.cast.i83 = ptrtoint ptr %79 to i32
  %sub.ptr.rhs.cast.i84 = ptrtoint ptr %81 to i32
  %sub.ptr.sub.i85 = sub i32 %sub.ptr.lhs.cast.i83, %sub.ptr.rhs.cast.i84
  %conv.i86 = trunc i32 %sub.ptr.sub.i85 to i16
  %mac_header.i87 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %82 = ptrtoint ptr %mac_header.i87 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv.i86, ptr %mac_header.i87, align 2
  %conv.i.i88 = and i32 %sub.ptr.sub.i85, 65535
  %add.ptr.i.i89 = getelementptr i8, ptr %81, i32 %conv.i.i88
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i89, i32 0, i32 2
  %83 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 %proto.0, ptr %h_proto, align 1
  %84 = load ptr, ptr %head.i77, align 8
  %85 = load i16, ptr %mac_header.i87, align 2
  %conv.i.i92 = zext i16 %85 to i32
  %add.ptr.i.i93 = getelementptr i8, ptr %84, i32 %conv.i.i92
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i93, i32 0, i32 1
  %86 = call ptr @memset(ptr %h_source, i32 0, i32 6)
  br label %fix_dest

fix_dest:                                         ; preds = %if.end36, %if.end23
  %head.i.i94 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %87 = ptrtoint ptr %head.i.i94 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %head.i.i94, align 8
  %mac_header.i.i95 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %89 = ptrtoint ptr %mac_header.i.i95 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %mac_header.i.i95, align 2
  %conv.i.i96 = zext i16 %90 to i32
  %add.ptr.i.i97 = getelementptr i8, ptr %88, i32 %conv.i.i96
  %91 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %net, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %92, i32 0, i32 86
  %93 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev_addr, align 64
  %95 = call ptr @memcpy(ptr %add.ptr.i.i97, ptr %94, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %fix_dest, %if.end31.cleanup_crit_edge, %if.then28, %sw.default, %if.end19.cleanup_crit_edge, %sw.bb16.cleanup_crit_edge, %if.then10, %skip.i.cleanup_crit_edge, %if.then46.i, %if.end25.i.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then10 ], [ 1, %fix_dest ], [ 1, %if.then28 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb16.cleanup_crit_edge ], [ 1, %if.end19.cleanup_crit_edge ], [ %69, %sw.default ], [ 0, %if.end31.cleanup_crit_edge ], [ 0, %if.then46.i ], [ 1, %if.then5.cleanup_crit_edge ], [ 1, %skip.i.cleanup_crit_edge ], [ 0, %if.end25.i.cleanup_crit_edge ], [ 0, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdc_parse_cdc_header(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_ethernet_addr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_claim_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_driver_release_interface(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_cdc_wdm_register(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qmi_wwan_cdc_wdm_manage_power(ptr nocapture noundef readonly %intf, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 @qmi_wwan_manage_power(ptr noundef nonnull %1, i32 noundef %on)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_start_xmit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qmi_wwan_mac_addr(ptr noundef %dev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @eth_prepare_mac_addr_change(ptr noundef %dev, ptr noundef %p) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sa_data, align 1
  %2 = and i8 %1, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %2)
  %cmp.i = icmp eq i8 %2, 64
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @eth_commit_mac_addr_change(ptr noundef %dev, ptr noundef %p) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ %call, %entry.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_tx_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_prepare_mac_addr_change(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @eth_commit_mac_addr_change(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_ip_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %d, i32 1460
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 78, i32 89
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %cond)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_ip_store(ptr nocapture noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #15
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %enable, align 1, !annotation !132
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %enable) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %enable, align 1, !range !144
  %3 = zext i8 %2 to i32
  %flags = getelementptr i8, ptr %d, i32 1460
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %3)
  %cmp = icmp eq i32 %and, %3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp ne i8 %2, 0
  %and8 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %net = getelementptr i8, ptr %d, i32 1444
  %6 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.16) #18
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %call12 = call i32 @rtnl_trylock() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %8 = call i32 @llvm.read_register.i32(metadata !121) #15
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stack.i.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %13) #15
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %net17 = getelementptr i8, ptr %d, i32 1444
  %14 = ptrtoint ptr %net17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net17, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.17) #18
  br label %err

if.end21:                                         ; preds = %if.end16
  %call23 = call i32 @call_netdevice_notifiers(i32 noundef 15, ptr noundef %15) #15
  %and.i = and i32 %call23, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp sgt i32 %and.i, 1
  %sub.i = sub i32 1, %and.i
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool25.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool25.not, label %if.end28, label %if.then26

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %net17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net17, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.18) #18
  br label %err

if.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %enable, align 1, !range !144
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and33 = and i32 %23, -2
  %24 = zext i8 %21 to i32
  %storemerge = or i32 %and33, %24
  store i32 %storemerge, ptr %flags, align 4
  %25 = ptrtoint ptr %net17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net17, align 4
  call fastcc void @qmi_wwan_netdev_setup(ptr noundef %26)
  %27 = ptrtoint ptr %net17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net17, align 4
  %call37 = call i32 @call_netdevice_notifiers(i32 noundef 16, ptr noundef %28) #15
  br label %err

err:                                              ; preds = %if.end28, %if.then26, %if.then19
  %ret.0 = phi i32 [ -16, %if.then19 ], [ %spec.select.i, %if.then26 ], [ %len, %if.end28 ]
  call void @rtnl_unlock() #15
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then14, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ -513, %if.then14 ], [ -22, %if.then10 ], [ -22, %entry.cleanup_crit_edge ], [ %len, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #15
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_trylock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netdevice_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qmi_wwan_netdev_setup(ptr noundef %net) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %net, i32 2564
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %header_ops11 = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 49
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %header_ops11 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %header_ops11, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 32
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -2, ptr %type, align 16
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 19
  %4 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %hard_header_len, align 2
  %addr_len = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 56
  %5 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %addr_len, align 1
  %flags1 = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 14
  %6 = ptrtoint ptr %flags1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4240, ptr %flags1, align 8
  %flags2 = getelementptr i8, ptr %net, i32 3132
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags2) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qmi_wwan_netdev_setup.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qmi_wwan_netdev_setup, %if.then8)) #15
          to label %if.end35 [label %if.then8], !srcloc !131

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qmi_wwan_netdev_setup.__UNIQUE_ID_ddebug346, ptr noundef %net, ptr noundef nonnull @.str.20) #15
  br label %if.end35

if.else:                                          ; preds = %entry
  %7 = ptrtoint ptr %header_ops11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %header_ops11, align 4
  %tobool12.not = icmp eq ptr %8, null
  br i1 %tobool12.not, label %if.then13, label %if.else.if.end35_crit_edge

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @ether_setup(ptr noundef %net) #15
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 30
  %9 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 31
  %10 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 65535, ptr %max_mtu, align 4
  %flags14 = getelementptr i8, ptr %net, i32 3132
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %flags14) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qmi_wwan_netdev_setup.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qmi_wwan_netdev_setup, %if.then28)) #15
          to label %if.end35 [label %if.then28], !srcloc !131

if.then28:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qmi_wwan_netdev_setup.__UNIQUE_ID_ddebug347, ptr noundef %net, ptr noundef nonnull @.str.21) #15
  br label %if.end35

if.end35:                                         ; preds = %if.then28, %if.then13, %if.else.if.end35_crit_edge, %if.then8, %if.then
  %mtu = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 20
  %11 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mtu, align 4
  %call36 = tail call i32 @usbnet_change_mtu(ptr noundef %net, i32 noundef %12) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @add_mux_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %iter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter) #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !121) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !133
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 696, ptr noundef nonnull @.str.25) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %adj_list = getelementptr i8, ptr %d, i32 -1016
  %4 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %adj_list, ptr %iter, align 4
  %call = call ptr @netdev_upper_get_next_dev_rcu(ptr noundef %add.ptr, ptr noundef nonnull %iter) #15
  %tobool.not19 = icmp eq ptr %call, null
  br i1 %tobool.not19, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %count.021 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %rcu_read_lock.exit.for.body_crit_edge ]
  %ldev.020 = phi ptr [ %call3, %for.body.for.body_crit_edge ], [ %call, %rcu_read_lock.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %count.021
  %sub = sub i32 4096, %count.021
  %mux_id = getelementptr i8, ptr %ldev.020, i32 2308
  %5 = ptrtoint ptr %mux_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mux_id, align 4
  %conv = zext i8 %6 to i32
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.23, i32 noundef %conv) #15
  %add = add i32 %call2, %count.021
  %call3 = call ptr @netdev_upper_get_next_dev_rcu(ptr noundef %add.ptr, ptr noundef nonnull %iter) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %rcu_read_lock.exit.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %call.i10 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i10, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %for.end
  %call1.i11 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 724, ptr noundef nonnull @.str.26) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !138
  %7 = call i32 @llvm.read_register.i32(metadata !121) #15
  %and.i.i.i.i.i17 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter) #15
  ret i32 %count.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @add_mux_store(ptr nocapture noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %mux_id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %d, i32 1200
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mux_id) #15
  %0 = ptrtoint ptr %mux_id to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %mux_id, align 1, !annotation !132
  %call1 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %mux_id) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %mux_id to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %mux_id, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %2, label %if.end7 [
    i8 0, label %if.end.cleanup_crit_edge
    i8 -1, label %if.end.cleanup_crit_edge31
  ]

if.end.cleanup_crit_edge31:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @rtnl_trylock() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %4 = call i32 @llvm.read_register.i32(metadata !121) #15
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stack.i.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %9) #15
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %mux_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mux_id, align 1
  %call13 = call fastcc ptr @qmimux_find_dev(ptr noundef %add.ptr.i, i8 noundef zeroext %11)
  %tobool14.not = icmp eq ptr %call13, null
  %net17 = getelementptr i8, ptr %d, i32 1444
  %12 = ptrtoint ptr %net17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net17, align 4
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.27) #18
  br label %err

if.end16:                                         ; preds = %if.end12
  %14 = ptrtoint ptr %mux_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mux_id, align 1
  %call.i = call ptr @alloc_netdev_mqs(i32 noundef 8, ptr noundef nonnull @.str.28, i8 noundef zeroext 0, ptr noundef nonnull @qmimux_setup, i32 noundef 1, i32 noundef 1) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end16.err_crit_edge, label %if.end.i

if.end16.err_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end.i:                                         ; preds = %if.end16
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 127
  %16 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nd_net.i.i, align 4
  %nd_net.i51.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 127
  %18 = ptrtoint ptr %nd_net.i51.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %nd_net.i51.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 2304
  %mux_id3.i = getelementptr i8, ptr %call.i, i32 2308
  %19 = ptrtoint ptr %mux_id3.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %15, ptr %mux_id3.i, align 4
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %13, ptr %add.ptr.i.i, align 4
  %call5.i = call noalias ptr @__alloc_percpu_gfp(i32 noundef 64, i32 noundef 32, i32 noundef 3264) #19
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.then16.critedge.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %call864.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call864.i, i32 %21)
  %cmp65.i = icmp ult i32 %call864.i, %21
  br i1 %cmp65.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.if.end17.i_crit_edge

for.cond.preheader.i.if.end17.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %22 = ptrtoint ptr %call5.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %call866.i = phi i32 [ %call864.i, %for.body.lr.ph.i ], [ %call8.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call866.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %24, %22
  %25 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %25, i32 0, i32 4
  %dep_map.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %25, i32 0, i32 4, i32 0, i32 1
  call void @lockdep_init_map_type(ptr noundef %dep_map.i.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @qmimux_register_device.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %26 = ptrtoint ptr %syncp.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %syncp.i, align 4
  %call8.i = call i32 @cpumask_next(i32 noundef %call866.i, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call8.i, %27
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end17.i_crit_edge

for.body.i.if.end17.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

if.then16.critedge.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %28 = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 130
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %28, align 64
  br label %out_free_newdev.i

if.end17.i:                                       ; preds = %for.body.i.if.end17.i_crit_edge, %for.cond.preheader.i.if.end17.i_crit_edge
  %30 = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 130
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call5.i, ptr %30, align 64
  %sysfs_groups.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 134
  %32 = ptrtoint ptr %sysfs_groups.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @qmi_wwan_sysfs_qmimux_attr_group, ptr %sysfs_groups.i, align 16
  %call19.i = call i32 @register_netdevice(ptr noundef nonnull %call.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %if.end17.i.out_free_newdev.i_crit_edge, label %if.end22.i

if.end17.i.out_free_newdev.i_crit_edge:           ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_newdev.i

if.end22.i:                                       ; preds = %if.end17.i
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end22.i.dev_hold.exit.i_crit_edge, label %do.body1.i.i

if.end22.i.dev_hold.exit.i_crit_edge:             ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_hold.exit.i

do.body1.i.i:                                     ; preds = %if.end22.i
  %33 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !134
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 118
  %34 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  %37 = call i32 @llvm.read_register.i32(metadata !121) #15
  %and.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %42, %36
  %43 = inttoptr i32 %add.i.i to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add13.i.i = add i32 %45, 1
  store i32 %add13.i.i, ptr %43, align 4
  %46 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !135
  %and.i.i.i.i = and i32 %46, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !136

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %33) #15, !srcloc !137
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %do.end30.i.i, %if.end22.i.dev_hold.exit.i_crit_edge
  %call23.i = call i32 @netdev_upper_dev_link(ptr noundef %13, ptr noundef nonnull %call.i, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.then20, label %out_unregister_netdev.i

out_unregister_netdev.i:                          ; preds = %dev_hold.exit.i
  call void @unregister_netdevice_queue(ptr noundef nonnull %call.i, ptr noundef null) #15
  br i1 %tobool.not.i.i, label %out_unregister_netdev.i.out_free_newdev.i_crit_edge, label %do.body1.i61.i

out_unregister_netdev.i.out_free_newdev.i_crit_edge: ; preds = %out_unregister_netdev.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_newdev.i

do.body1.i61.i:                                   ; preds = %out_unregister_netdev.i
  %47 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !134
  %pcpu_refcnt.i53.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 118
  %48 = ptrtoint ptr %pcpu_refcnt.i53.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pcpu_refcnt.i53.i, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = call i32 @llvm.read_register.i32(metadata !121) #15
  %and.i.i54.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i54.i to ptr
  %cpu.i55.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %cpu.i55.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cpu.i55.i, align 4
  %arrayidx.i56.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx.i56.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i56.i, align 4
  %add.i57.i = add i32 %56, %50
  %57 = inttoptr i32 %add.i57.i to ptr
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %add13.i58.i = add i32 %59, -1
  store i32 %add13.i58.i, ptr %57, align 4
  %60 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !135
  %and.i.i.i59.i = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i59.i)
  %tobool24.not.i60.i = icmp eq i32 %and.i.i.i59.i, 0
  br i1 %tobool24.not.i60.i, label %if.then28.i62.i, label %do.body1.i61.i.do.end30.i63.i_crit_edge, !prof !136

do.body1.i61.i.do.end30.i63.i_crit_edge:          ; preds = %do.body1.i61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end30.i63.i

if.then28.i62.i:                                  ; preds = %do.body1.i61.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %do.end30.i63.i

do.end30.i63.i:                                   ; preds = %if.then28.i62.i, %do.body1.i61.i.do.end30.i63.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %47) #15, !srcloc !137
  br label %out_free_newdev.i

out_free_newdev.i:                                ; preds = %do.end30.i63.i, %out_unregister_netdev.i.out_free_newdev.i_crit_edge, %if.end17.i.out_free_newdev.i_crit_edge, %if.then16.critedge.i
  %err.0.i = phi i32 [ %call19.i, %if.end17.i.out_free_newdev.i_crit_edge ], [ -105, %if.then16.critedge.i ], [ %call23.i, %out_unregister_netdev.i.out_free_newdev.i_crit_edge ], [ %call23.i, %do.end30.i63.i ]
  call void @free_netdev(ptr noundef nonnull %call.i) #15
  br label %err

if.then20:                                        ; preds = %dev_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @netif_stacked_transfer_operstate(ptr noundef %13, ptr noundef nonnull %call.i) #15
  %flags = getelementptr i8, ptr %d, i32 1460
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags, align 4
  %or = or i32 %62, 2
  store i32 %or, ptr %flags, align 4
  br label %err

err:                                              ; preds = %if.then20, %out_free_newdev.i, %if.end16.err_crit_edge, %if.then15
  %ret.0 = phi i32 [ -22, %if.then15 ], [ %len, %if.then20 ], [ -105, %if.end16.err_crit_edge ], [ %err.0.i, %out_free_newdev.i ]
  call void @rtnl_unlock() #15
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then10, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ -513, %if.then10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge31 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mux_id) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_upper_get_next_dev_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qmimux_find_dev(ptr nocapture noundef readonly %dev, i8 noundef zeroext %mux_id) unnamed_addr #2 align 64 {
entry:
  %iter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter) #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !121) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !133
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 696, ptr noundef nonnull @.str.25) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  %adj_list = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %adj_list, ptr %iter, align 4
  %call = call ptr @netdev_upper_get_next_dev_rcu(ptr noundef %5, ptr noundef nonnull %iter) #15
  %tobool.not36 = icmp eq ptr %call, null
  br i1 %tobool.not36, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %ldev.037 = phi ptr [ %call7, %for.inc.for.body_crit_edge ], [ %call, %rcu_read_lock.exit.for.body_crit_edge ]
  %mux_id3 = getelementptr i8, ptr %ldev.037, i32 2308
  %7 = ptrtoint ptr %mux_id3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mux_id3, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %mux_id)
  %cmp = icmp eq i8 %8, %mux_id
  br i1 %cmp, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %call.i14 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i14, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i17

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i17:                                ; preds = %if.then
  %call1.i15 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i19

land.lhs.true.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i19:                               ; preds = %land.lhs.true.i17
  %.b4.i18 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18, label %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, label %if.then.i20

land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i20:                                      ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 724, ptr noundef nonnull @.str.26) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i20, %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !138
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %9 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net, align 4
  %call7 = call ptr @netdev_upper_get_next_dev_rcu(ptr noundef %10, ptr noundef nonnull %iter) #15
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i23 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i23, label %for.end.rcu_read_unlock.exit33_crit_edge, label %land.lhs.true.i26

for.end.rcu_read_unlock.exit33_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit33

land.lhs.true.i26:                                ; preds = %for.end
  %call1.i24 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true.i26.rcu_read_unlock.exit33_crit_edge, label %land.lhs.true2.i28

land.lhs.true.i26.rcu_read_unlock.exit33_crit_edge: ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit33

land.lhs.true2.i28:                               ; preds = %land.lhs.true.i26
  %.b4.i27 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i27, label %land.lhs.true2.i28.rcu_read_unlock.exit33_crit_edge, label %if.then.i29

land.lhs.true2.i28.rcu_read_unlock.exit33_crit_edge: ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit33

if.then.i29:                                      ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 724, ptr noundef nonnull @.str.26) #15
  br label %rcu_read_unlock.exit33

rcu_read_unlock.exit33:                           ; preds = %if.then.i29, %land.lhs.true2.i28.rcu_read_unlock.exit33_crit_edge, %land.lhs.true.i26.rcu_read_unlock.exit33_crit_edge, %for.end.rcu_read_unlock.exit33_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !138
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit33, %rcu_read_unlock.exit
  %ldev.035 = phi ptr [ null, %rcu_read_unlock.exit33 ], [ %ldev.037, %rcu_read_unlock.exit ]
  %11 = call i32 @llvm.read_register.i32(metadata !121) #15
  %and.i.i.i.i.i30 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i30 to ptr
  %preempt_count.i.i.i.i31 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i31, align 4
  %sub.i.i.i32 = add i32 %14, -1
  store volatile i32 %sub.i.i.i32, ptr %preempt_count.i.i.i.i31, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter) #15
  ret ptr %ldev.035
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @qmimux_setup(ptr nocapture noundef writeonly %dev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %0 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %header_ops, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -2, ptr %type, align 16
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %hard_header_len, align 2
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %3 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %addr_len, align 1
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4240, ptr %flags, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %5 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @qmimux_netdev_ops, ptr %netdev_ops, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %6 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1500, ptr %mtu, align 4
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %7 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %needs_free_netdev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_upper_dev_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_stacked_transfer_operstate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qmimux_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @netif_carrier_on(ptr noundef %dev) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -100, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qmimux_stop(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @netif_carrier_off(ptr noundef %dev) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qmimux_start_xmit(ptr noundef %skb, ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %call2 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #15
  %2 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %call2, align 2
  %mux_id = getelementptr i8, ptr %dev, i32 2308
  %3 = ptrtoint ptr %mux_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mux_id, align 4
  %mux_id3 = getelementptr inbounds %struct.qmimux_hdr, ptr %call2, i32 0, i32 1
  %5 = ptrtoint ptr %mux_id3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %mux_id3, align 1
  %conv = trunc i32 %1 to i16
  %pkt_len = getelementptr inbounds %struct.qmimux_hdr, ptr %call2, i32 0, i32 2
  %6 = ptrtoint ptr %pkt_len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %pkt_len, align 2
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 4
  %9 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %9, align 8
  %call4 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #15
  %11 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call4, label %if.else [
    i32 2, label %entry.if.then_crit_edge
    i32 0, label %entry.if.then_crit_edge21
  ]

entry.if.then_crit_edge21:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge21
  %12 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 64
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !121) #15
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %21, %15
  %22 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %22, i32 0, i32 4
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #15
  %conv.i = zext i32 %1 to i64
  %tx_bytes.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %tx_bytes.i, align 8
  %add2.i = add i64 %24, %conv.i
  store i64 %add2.i, ptr %tx_bytes.i, align 8
  %tx_packets.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %tx_packets.i, align 16
  %add4.i = add i64 %26, 1
  store i64 %add4.i, ptr %tx_packets.i, align 16
  %dep_map.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %22, i32 0, i32 4, i32 0, i32 1
  %27 = tail call ptr @llvm.returnaddress(i32 0) #15
  %28 = ptrtoint ptr %27 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %28) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !143
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tx_dropped.sink20 = phi ptr [ %tx_dropped, %if.else ], [ %syncp.i, %if.then ]
  %29 = ptrtoint ptr %tx_dropped.sink20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_dropped.sink20, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %tx_dropped.sink20, align 4
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !121) #15
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !145
  %5 = tail call i32 @llvm.read_register.i32(metadata !121) #15
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !146
  %14 = tail call i32 @llvm.read_register.i32(metadata !121) #15
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !121) #15
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !121) #15
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !147
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !148
  %33 = tail call i32 @llvm.read_register.i32(metadata !121) #15
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !149

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 271, i32 noundef 9, ptr noundef null) #15
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !150
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #15
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mux_id_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mux_id = getelementptr i8, ptr %d, i32 1204
  %0 = ptrtoint ptr %mux_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mux_id, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.23, i32 noundef %conv) #15
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @del_mux_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @add_mux_show(ptr noundef %d, ptr noundef %attr, ptr noundef %buf)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @del_mux_store(ptr nocapture noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %mux_id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %d, i32 1200
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mux_id) #15
  %0 = ptrtoint ptr %mux_id to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %mux_id, align 1, !annotation !132
  %call1 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %mux_id) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @rtnl_trylock() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %1 = call i32 @llvm.read_register.i32(metadata !121) #15
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stack.i.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %6) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %mux_id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mux_id, align 1
  %call7 = call fastcc ptr @qmimux_find_dev(ptr noundef %add.ptr.i, i8 noundef zeroext %8)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %net = getelementptr i8, ptr %d, i32 1444
  %9 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.34) #18
  br label %err

if.end10:                                         ; preds = %if.end6
  %add.ptr.i.i = getelementptr i8, ptr %call7, i32 2304
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i.i, align 4
  %13 = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 130
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 64
  call void @free_percpu(ptr noundef %15) #15
  call void @netdev_upper_dev_unlink(ptr noundef %12, ptr noundef nonnull %call7) #15
  call void @unregister_netdevice_queue(ptr noundef nonnull %call7, ptr noundef null) #15
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end10.qmimux_unregister_device.exit_crit_edge, label %do.body1.i.i

if.end10.qmimux_unregister_device.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %qmimux_unregister_device.exit

do.body1.i.i:                                     ; preds = %if.end10
  %16 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !134
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 118
  %17 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = call i32 @llvm.read_register.i32(metadata !121) #15
  %and.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %25, %19
  %26 = inttoptr i32 %add.i.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add13.i.i = add i32 %28, -1
  store i32 %add13.i.i, ptr %26, align 4
  %29 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !135
  %and.i.i.i.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !136

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #15, !srcloc !137
  br label %qmimux_unregister_device.exit

qmimux_unregister_device.exit:                    ; preds = %do.end30.i.i, %if.end10.qmimux_unregister_device.exit_crit_edge
  %net.i = getelementptr i8, ptr %d, i32 1444
  %30 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net.i, align 4
  %adj_list.i = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 13
  %32 = ptrtoint ptr %adj_list.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %adj_list.i, align 4
  %cmp.i.i.not = icmp eq ptr %33, %adj_list.i
  br i1 %cmp.i.i.not, label %if.then12, label %qmimux_unregister_device.exit.err_crit_edge

qmimux_unregister_device.exit.err_crit_edge:      ; preds = %qmimux_unregister_device.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.then12:                                        ; preds = %qmimux_unregister_device.exit
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr i8, ptr %d, i32 1460
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %and = and i32 %35, -3
  store i32 %and, ptr %flags, align 4
  br label %err

err:                                              ; preds = %if.then12, %qmimux_unregister_device.exit.err_crit_edge, %if.then9
  %ret.0 = phi i32 [ -22, %if.then9 ], [ %len, %if.then12 ], [ %len, %qmimux_unregister_device.exit.err_crit_edge ]
  call void @rtnl_unlock() #15
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ -513, %if.then4 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mux_id) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_upper_dev_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pass_through_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %d, i32 1460
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 78, i32 89
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %cond)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pass_through_store(ptr nocapture noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #15
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %enable, align 1, !annotation !132
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %enable) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %enable, align 1, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  %3 = zext i8 %2 to i32
  %flags = getelementptr i8, ptr %d, i32 1460
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %3)
  %cmp = icmp eq i32 %and, %3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %and7 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %net = getelementptr i8, ptr %d, i32 1444
  %6 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.36) #18
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %and15 = and i32 %5, -5
  %masksel = select i1 %tobool2.not, i32 0, i32 4
  %storemerge = or i32 %and15, %masksel
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end10 ], [ -22, %if.then9 ], [ -22, %entry.cleanup_crit_edge ], [ %len, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !16, !17, !18, !20, !21, !23, !24, !26, !28, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !55, !57, !59, !61, !63, !65, !66, !67, !69, !70, !72, !73, !75, !77, !78, !79, !81, !82, !84, !86, !88, !89, !91, !93, !94, !96, !98, !100, !102, !103, !105, !106, !108, !110, !111, !113, !115, !116, !117, !119}
!llvm.named.register.sp = !{!121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @__initcall__kmod_qmi_wwan__353_1579_qmi_wwan_driver_init6, !1, !"__initcall__kmod_qmi_wwan__353_1579_qmi_wwan_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/qmi_wwan.c", i32 1579, i32 1}
!2 = !{ptr @__exitcall_qmi_wwan_driver_exit, !1, !"__exitcall_qmi_wwan_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author354, !4, !"__UNIQUE_ID_author354", i1 false, i1 false}
!4 = !{!"../drivers/net/usb/qmi_wwan.c", i32 1581, i32 1}
!5 = !{ptr @__UNIQUE_ID_description355, !6, !"__UNIQUE_ID_description355", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/qmi_wwan.c", i32 1582, i32 1}
!7 = !{ptr @__UNIQUE_ID_file356, !8, !"__UNIQUE_ID_file356", i1 false, i1 false}
!8 = !{!"../drivers/net/usb/qmi_wwan.c", i32 1583, i32 1}
!9 = !{ptr @__UNIQUE_ID_license357, !8, !"__UNIQUE_ID_license357", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @qmi_wwan_driver, !12, !"qmi_wwan_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/usb/qmi_wwan.c", i32 1567, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/qmi_wwan.c", i32 1505, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @qmi_wwan_probe.__UNIQUE_ID_ddebug350, !14, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/usb/qmi_wwan.c", i32 1515, i32 3}
!20 = !{ptr @qmi_wwan_probe.__UNIQUE_ID_ddebug351, !19, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/usb/qmi_wwan.c", i32 1523, i32 3}
!23 = !{ptr @qmi_wwan_probe.__UNIQUE_ID_ddebug352, !22, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/usb/qmi_wwan.c", i32 931, i32 17}
!26 = !{ptr @qmi_wwan_info, !27, !"qmi_wwan_info", i1 false, i1 false}
!27 = !{!"../drivers/net/usb/qmi_wwan.c", i32 930, i32 33}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/usb/qmi_wwan.c", i32 775, i32 4}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @qmi_wwan_bind._entry, !29, !"_entry", i1 false, i1 false}
!34 = !{ptr @qmi_wwan_bind._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/usb/qmi_wwan.c", i32 716, i32 3}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @qmi_wwan_register_subdriver._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @qmi_wwan_register_subdriver._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = distinct !{null, !41, !"default_modem_addr", i1 false, i1 false}
!41 = !{!"../drivers/net/usb/qmi_wwan.c", i32 539, i32 17}
!42 = distinct !{null, !43, !"buggy_fw_addr", i1 false, i1 false}
!43 = !{!"../drivers/net/usb/qmi_wwan.c", i32 541, i32 17}
!44 = !{ptr @qmi_wwan_netdev_ops, !45, !"qmi_wwan_netdev_ops", i1 false, i1 false}
!45 = !{!"../drivers/net/usb/qmi_wwan.c", i32 641, i32 36}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/usb/qmi_wwan.c", i32 534, i32 10}
!48 = !{ptr @qmi_wwan_sysfs_attr_group, !49, !"qmi_wwan_sysfs_attr_group", i1 false, i1 false}
!49 = !{!"../drivers/net/usb/qmi_wwan.c", i32 533, i32 31}
!50 = !{ptr @qmi_wwan_sysfs_attrs, !51, !"qmi_wwan_sysfs_attrs", i1 false, i1 false}
!51 = !{!"../drivers/net/usb/qmi_wwan.c", i32 525, i32 26}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/usb/qmi_wwan.c", i32 520, i32 8}
!54 = !{ptr @dev_attr_raw_ip, !53, !"dev_attr_raw_ip", i1 false, i1 false}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/usb/qmi_wwan.c", i32 337, i32 22}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/usb/qmi_wwan.c", i32 357, i32 7}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/usb/qmi_wwan.c", i32 366, i32 24}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/usb/qmi_wwan.c", i32 375, i32 24}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/usb/qmi_wwan.c", i32 318, i32 3}
!65 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @qmi_wwan_netdev_setup.__UNIQUE_ID_ddebug346, !64, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/usb/qmi_wwan.c", i32 325, i32 3}
!69 = !{ptr @qmi_wwan_netdev_setup.__UNIQUE_ID_ddebug347, !68, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/usb/qmi_wwan.c", i32 521, i32 8}
!72 = !{ptr @dev_attr_add_mux, !71, !"dev_attr_add_mux", i1 false, i1 false}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/usb/qmi_wwan.c", i32 403, i32 8}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!77 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!81 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/usb/qmi_wwan.c", i32 427, i32 24}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/usb/qmi_wwan.c", i32 250, i32 12}
!86 = !{ptr @qmimux_register_device.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/net/usb/qmi_wwan.c", i32 260, i32 20}
!88 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @qmimux_netdev_ops, !90, !"qmimux_netdev_ops", i1 false, i1 false}
!90 = !{!"../drivers/net/usb/qmi_wwan.c", i32 119, i32 36}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!93 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.31, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/usb/qmi_wwan.c", i32 240, i32 10}
!96 = !{ptr @qmi_wwan_sysfs_qmimux_attr_group, !97, !"qmi_wwan_sysfs_qmimux_attr_group", i1 false, i1 false}
!97 = !{!"../drivers/net/usb/qmi_wwan.c", i32 239, i32 31}
!98 = !{ptr @qmi_wwan_sysfs_qmimux_attrs, !99, !"qmi_wwan_sysfs_qmimux_attrs", i1 false, i1 false}
!99 = !{!"../drivers/net/usb/qmi_wwan.c", i32 234, i32 26}
!100 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/usb/qmi_wwan.c", i32 232, i32 8}
!102 = !{ptr @dev_attr_mux_id, !101, !"dev_attr_mux_id", i1 false, i1 false}
!103 = !{ptr @.str.33, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/usb/qmi_wwan.c", i32 522, i32 8}
!105 = !{ptr @dev_attr_del_mux, !104, !"dev_attr_del_mux", i1 false, i1 false}
!106 = !{ptr @.str.34, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/usb/qmi_wwan.c", i32 463, i32 24}
!108 = !{ptr @.str.35, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/usb/qmi_wwan.c", i32 523, i32 8}
!110 = !{ptr @dev_attr_pass_through, !109, !"dev_attr_pass_through", i1 false, i1 false}
!111 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/usb/qmi_wwan.c", i32 508, i32 7}
!113 = !{ptr @.str.37, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/usb/qmi_wwan.c", i32 660, i32 2}
!115 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @qmi_wwan_manage_power.__UNIQUE_ID_ddebug348, !114, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!117 = !{ptr @products, !118, !"products", i1 false, i1 false}
!118 = !{!"../drivers/net/usb/qmi_wwan.c", i32 982, i32 35}
!119 = !{ptr @qmi_wwan_info_quirk_dtr, !120, !"qmi_wwan_info_quirk_dtr", i1 false, i1 false}
!120 = !{!"../drivers/net/usb/qmi_wwan.c", i32 939, i32 33}
!121 = !{!"sp"}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{i64 2149007231, i64 2149007236, i64 2149007249, i64 2149007293, i64 2149007327, i64 2149007348}
!132 = !{!"auto-init"}
!133 = !{i64 2149410013}
!134 = !{i64 797554, i64 797615}
!135 = !{i64 800286}
!136 = !{!"branch_weights", i32 1, i32 2000}
!137 = !{i64 800571}
!138 = !{i64 2149410279}
!139 = !{i64 2148394574, i64 2148394606, i64 2148394635, i64 2148394669, i64 2148394700, i64 2148394723}
!140 = !{i64 2148479518}
!141 = !{i64 2148397039, i64 2148397071, i64 2148397100, i64 2148397134, i64 2148397165, i64 2148397188}
!142 = !{i64 2148482559}
!143 = !{i64 2150026330}
!144 = !{i8 0, i8 2}
!145 = !{i64 2149918012}
!146 = !{i64 2149922944}
!147 = !{i64 2149944656}
!148 = !{i64 2149949548}
!149 = !{!"branch_weights", i32 2000, i32 1}
!150 = !{i64 2150026005}
